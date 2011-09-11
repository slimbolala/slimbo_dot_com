require 'rubygems'
require 'sinatra'
require 'couchrest'

get '/:id' do
  slimbo_db = CouchRest.database("http://localhost:5984/slimbo")
  @doc = slimbo_db.get(params[:id])
  @baby_docs = slimbo_db.view('slimbo_docs/by_tag', {:key => params[:id]})["rows"]
  haml :solo_doc
end

get '/*/:id' do
  slimbo_db = CouchRest.database("http://localhost:5984/slimbo")
  @doc = slimbo_db.get(params[:id])
  @baby_docs = slimbo_db.view('slimbo_docs/by_tag', {:key => params[:id]})["rows"]
  haml :solo_doc
end

get '/' do
  haml :index
end

__END__


@@ layout
%html
  %head
    %title
      Slimbolala.com
    %link{:rel => "stylesheet", :href => "/slimbo.css"}
    %script{:type => "text/javascript",
            :src  => "//ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"}
    %script{:src => "/slimbo.jquery.zrssfeed.min.js", :type => "text/javascript"}
  %body
    %a{:href => "/"}
      #header
        %h1
          Slimbolala.com
          %span{:class => "h1_sub"}
            Stuff I Make and Do
    #nav
      #nav_item
        %a{:href => "http://slimbolala.blogspot.com/"}
          Blog
      #nav_item
        %a{:href => "illos"}
          Illos
      #nav_item
        %a{:href => "photos"}
          Photos
      #nav_item
        %a{:href => "music"}
          Music
      #nav_item
        %a{:href => "writing"}
          Writing
      #nav_item
        %a{:href => "design"}
          Design
      #nav_item
        %a{:href => "geek"}
          Geek
      #nav_item
        %a{:href => "merch"}
          Merch
    #main
      = yield
    #sidebar
      %a{:href => "____"}
        %h3
          About Me 
      %p
        %img{:src => "/images/slimbo_thumb.png", :style => "height: 5.545em;", :alt => "Slimbo"}
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae consequat ante. Donec purus tortor, dapibus et gravida ut, consequat nec quam. Aliquam nunc tellus, venenatis id adipiscing sed, pharetra ac sapien. Nunc feugiat eleifend magna, vitae auctor mi sollicitudin nec.
        %a{:href => "____", :style => "font-style: italic; margin: 0em 0em 0em .191em;"}
          more...
      #hr
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
      #hr
      .lil_label
        RSS:
      :javascript
        $(document).ready(function () {
          $('#slimbo_feed').rssfeed('http://slimbolala.blogspot.com/feeds/posts/default', {
            limit: 5,
            header: false
          });
        });
      #slimbo_feed
    #footer
      %p
        Nam ullamcorper urna quis augue facilisis quis egestas diam fermentum. Lorem non sagittis tincidunt, nisl massa porttitor justo, ut auctor lectus nisi a lectus.


@@ index
.panel
  %a{:href => "/geek/lorem_ipsum"}
    %h3
      Lorem Ipsum
  %p
    %img{:src => "/images/map_thumb.png", :class => "thumb", :alt => "funny thing map"}
    <span class="small">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eu tellus neque. Maecenas consequat convallis risus at ornare. Curabitur vel odio arcu. In hendrerit leo ut quam gravida consectetur. Pellentesque faucibus, diam id sollicitudin gravida, neque justo ultrices est, ut sagittis magna ligula sed felis. Nam eget ipsum et felis iaculis tristique. Morbi malesuada elit a arcu pretium hendrerit.</span>
.panel
  %a{:href => "/illos/in_non_mauris"}
    %h3
      In Non Mauris
  %p
    %img{:src => "/images/koala_thumb.jpg", :class => "thumb", :alt => "koala"}
    <span class="small">In non mauris vel lectus molestie ultrices. Proin pharetra sollicitudin pulvinar. Praesent vitae laoreet enim. Ut porttitor mollis condimentum. Vivamus nisi enim, blandit vel convallis id, venenatis a purus. Etiam feugiat lectus ornare enim imperdiet semper. Vivamus posuere pellentesque dui, eu varius lectus tincidunt vitae. Etiam fringilla facilisis porta. Nunc cursus nulla at neque consectetur ac posuere nisl tincidunt.</span> 
.panel
  %a{:href => "____"}
    %h3
      Vestibulum Blandit
  %p
    %img{:src => "/images/willow_thumb.jpg", :class => "thumb", :alt => "willow"}
    <span class="small">Vestibulum blandit lacinia odio, ac auctor ligula tincidunt scelerisque. Duis lacinia, orci in gravida sodales, sem velit semper sem, et auctor tellus turpis non dui. Aliquam erat volutpat. Praesent ullamcorper, augue at pretium pellentesque, purus quam auctor massa, vitae aliquam massa lectus in mauris. Integer aliquet leo lorem, et posuere nisl. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.  Sed eleifend euismod massa at fringilla. Sed eleifend euismod massa at fringilla.</span>
.panel
  %a{:href => "____"}
    %h3
      In Hac Habitasse
  %p
    %img{:src => "/images/7_inch_thumb.png", :class => "thumb", :alt => "7 inch"}
    <span class="small">In hac habitasse platea dictumst. Nunc ut auctor magna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla ultricies erat sit amet urna dignissim pellentesque. Praesent hendrerit, diam eu laoreet venenatis, libero libero blandit dolor, a tempor nisl augue vitae sem. Cras dignissim metus odio, quis aliquam orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed eleifend euismod massa at fringilla. Sed eleifend euismod massa at fringilla.</span>


@@ solo_doc
.big_panel
  %h2= @doc['title']
  #body= markdown(@doc['body'])
  - @baby_docs.each do |baby_doc|
    .panel
      %a{:href => "/geek/lorem_ipsum"}
        %h4
          = baby_doc["value"]["title"]
      %p
        %img{:src => "/images/map_thumb.png", :class => "thumb", :alt => "funny thing map"}
        %span{:class => "small"}
          = baby_doc["value"]["body"]
