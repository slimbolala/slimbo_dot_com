require 'rubygems'
require 'sinatra'
require 'couchrest'

set :raise_errors, Proc.new { false }
#set :show_exceptions, false

get '/:id/?' do
  # -- move this --
  slimbo_db = CouchRest.database("http://localhost:5984/slimbo")
  @nav_items = slimbo_db.get("-nav")['nav_items'].sort
  @about_me = slimbo_db.get("about_me")
  # ---------------
  begin
    @doc = slimbo_db.get(params[:id])
  rescue RestClient::ResourceNotFound
    @doc = nil
  end
  @baby_docs = slimbo_db.view('slimbo_docs/by_tag', {:key => params[:id]})["rows"]
  if (@doc == nil && @baby_docs.length == 0)
    redirect '/whoops'
  end
  haml :solo_doc
end

get '/' do
  redirect '/front'
end

get '*' do
  redirect '/whoops'
end

#error do
#  haml :crash_n_burn, :layout => false
#end

__END__


@@ layout
%html
  %head
    %title
      Slimbolala.com :
      - if (@doc.nil?)
        = params[:id]
      - else
        = @doc["title"]
    %link{:rel => "stylesheet", :href => "/slimbo.css"}
    %link{:rel => "shortcut icon", :href => "/favicon.ico"} 
    %script{:type => "text/javascript",
            :src  => "//ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"}
    %script{:src => "/slimbo.jquery.zrssfeed.min.js", :type => "text/javascript"}
  %body
    #content
      #header
      - unless (params[:id] == 'front')
        %h1
          %a{:href => "/"} Slimbolala.com
          %span{:class => "h1_sub"}
            \: &nbsp;Stuff I Make and Do
      - else
        %h1
          Slimbolala.com
          %span{:class => "h1_sub"}
            \: &nbsp;Stuff I Make and Do
      #nav
        - @nav_items.each do |nav_item|
          #nav_item
            - if (params[:id] == nav_item)
              = nav_item
            - else
              %a{:href => nav_item} 
                = nav_item
          #nav_spacer
      #main
        = yield
      #sidebar
        - if (params[:id] == 'about_me')
          %h3
            = @about_me['title']
          %img{:src => "/images/thumbs/about_me.png", :class => "lil_thumb", :alt => "Slimbo"}
        - else
          %a{:href => "/about_me"}
            %h3
              = @about_me['title']
            %img{:src => "/images/thumbs/about_me.png", :class => "lil_thumb", :alt => "Slimbo"}
        = markdown(@about_me['body']).split(' ')[0,30].join(' ').gsub(/<\/?[^>]*>/, "")
        %a{:href => "/about_me"}
          %em
            &hellip;more&hellip;
        #mild_hr
        %table
          %tr
            %th
              Blog:
            %td
              %a{:href => "http://slimbolala.blogspot.com/"}
                slimbolala.blogspot.com
          %tr
            %th
              Email:
            %td
              %a{:href => "mailto:____@____.com"}
                &#115;&#108;&#105;&#109;&#98;&#111;&#108;&#97;&#108;&#97;&#64;&#103;&#109;&#97;&#105;&#108;&#46;&#99;&#111;&#109;
          %tr
            %th
              GitHub:
            %td
              %a{:href => "https://github.com/slimbolala"}
                github.com/slimbolala
        #mild_hr
        .lil_label
          RSS:
        #slimbo_feed
      #footer
        %p
          Nam ullamcorper urna quis augue facilisis quis egestas diam fermentum. Lorem non sagittis tincidunt, nisl massa porttitor justo, ut auctor lectus nisi a lectus.
      :javascript
        $(document).ready(function () {

          // show the rss feed
          $('#slimbo_feed').rssfeed('http://slimbolala.blogspot.com/feeds/posts/default', {
            limit: 5,
            header: false
          });

          // fade in main panel
          $('.fade_panel').hide().fadeIn('slow');

          
        });

@@ solo_doc
.fade_panel
  - unless @doc.nil?
    .big_panel
      %h2= @doc['title']
      .lil_label
        = @doc["published"]
        - @doc["tags"].sort.each do |tag|
          &mdash;
          %a{:href => tag}
            = tag
      #body= markdown(@doc['body'])
      .clear 
      #mild_hr
  - @baby_docs.each do |baby_doc|
    .panel
      %a{:href => baby_doc["value"]["id"]}
        %h3
          - if baby_doc["value"]["title"].split(' ').length > 4
            = baby_doc["value"]["title"].split(' ')[0,4].join(' ') + '&hellip;'
          - else
            = baby_doc["value"]["title"]
        %img{:src => "/images/thumbs/#{baby_doc["value"]["id"]}.png", :class => "thumb", :alt => baby_doc["value"]["title"]}
      = markdown(baby_doc["value"]["teaser"]).split(' ')[0,20].join(' ').gsub(/<\/?[^>]*>/, "")
      %a{:href => baby_doc["value"]["id"]}
        %em
          &hellip;more&hellip;
      .lil_label
        = baby_doc["value"]["published"]
        - baby_doc["value"]["tags"].sort.each do |tag|
          &mdash; 
          - if (params[:id] == tag)
            = tag
          - else
            %a{:href => tag} 
              = tag
      #mild_hr

@@ crash_n_burn
%html
  %head
    %title
      Slimbolala.com
    %link{:rel => "stylesheet", :href => "/slimbo.css"}
  %body
    %h2 Doh!
    %p Wow, something went totally wrong. Yikes. Maybe hit refresh and see if it starts working. Or back up to where you were. If it keeps acting funky, let me know.+++ Obliged.
