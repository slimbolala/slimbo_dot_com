require 'rubygems'
require 'sinatra'

get '/' do
  haml :index
end

__END__

@@ layout
%html
  %head
    %title
      Slimbolala.com
    %link{:rel => "stylesheet", :href => "slimbo.css"}
    %script{:type => "text/javascript",
            :src  => "//ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"}
    %script{:src => "jquery.zrssfeed.min.js", :type => "text/javascript"}
    :javascript
      $(document).ready(function () {
        $('#test').rssfeed('http://feeds.reuters.com/reuters/oddlyEnoughNews', {
          limit: 5
        });
      });
  %body
    #header
      %h1
        Slimbolala.com
        %span{:class => "h1_sub"}
          Stuff I Make and Do
    #nav
      #nav_item
        %a{:href => "____"}
          Lorem Ipsum
      #nav_item
        %a{:href => "____"}
          Dolor Sit
      #nav_item
        %a{:href => "____"}
          Consectetur 
      #nav_item
        %a{:href => "____"}
          Adipiscing 
      #nav_item
        %a{:href => "____"}
          Elit
    #main
      = yield
    #sidebar
      %a{:href => "____"}
        %h3
          Lorem Ipsum Dolor Sit Amet
      %p
        %img{:src => "images/slimbo.png", :alt => "Slimbo"}
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae consequat ante. Donec purus tortor, dapibus et gravida ut, consequat nec quam. Aliquam nunc tellus, venenatis id adipiscing sed, pharetra ac sapien. Nunc feugiat eleifend magna, vitae auctor mi sollicitudin nec. Nunc leo velit, bibendum vel ultricies in, porta eu nisi. 
      #hr
      :javascript
        $(document).ready(function () {
          $('#slimbo_feed').rssfeed('http://slimbolala.blogspot.com/feeds/posts/default', {
            limit: 5
          });
        });
      %p
        #slimbo_feed
    #footer
      %p
        Nam ullamcorper urna quis augue facilisis quis egestas diam fermentum. Ut pellentesque, lorem non sagittis tincidunt, nisl massa porttitor justo, ut auctor lectus nisi a lectus. Curabitur faucibus feugiat lectus porttitor ornare. Phasellus lacus neque, accumsan non lacinia at, bibendum vel lectus.

@@ index
.panel
  %a{:href => "____"}
    %h3
      Lorem Ipsum
  %p
    %img{:src => "images/map.png", :alt => "funny thing map"}
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eu tellus neque. Curabitur sollicitudin tellus vel quam accumsan quis lacinia lectus cursus. Cras blandit dictum urna quis dapibus. Maecenas consequat convallis risus at ornare.
.panel
  %a{:href => "____"}
    %h3
      In Non Mauris
  %p
    %img{:src => "images/koala.jpg", :alt => "koala"}
    In non mauris vel lectus molestie ultrices. Proin pharetra sollicitudin pulvinar. Praesent vitae laoreet enim. Ut porttitor mollis condimentum. Vivamus nisi enim, blandit vel convallis id, venenatis a purus. Etiam feugiat lectus ornare enim imperdiet semper. Vivamus posuere pellentesque dui, eu varius lectus tincidunt vitae. 
.panel
  %a{:href => "____"}
    %h3
      Vestibulum Blandit
  %p
    %img{:src => "images/willow.jpg", :alt => "willow"}
    Vestibulum blandit lacinia odio, ac auctor ligula tincidunt scelerisque. Duis lacinia, orci in gravida sodales, sem velit semper sem, et auctor tellus turpis non dui. Aliquam erat volutpat. Praesent ullamcorper, augue at pretium pellentesque, purus quam auctor massa, vitae aliquam massa lectus in mauris. Integer aliquet leo lorem, et posuere nisl.
.panel
  %a{:href => "____"}
    %h3
      In Hac Habitasse
  %p
    %img{:src => "images/7_inch.png", :alt => "7 inch"}
    In hac habitasse platea dictumst. Nunc ut auctor magna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla ultricies erat sit amet urna dignissim pellentesque. Praesent hendrerit, diam eu laoreet venenatis, libero libero blandit dolor, a tempor nisl augue vitae sem.
