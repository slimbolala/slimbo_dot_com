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
      %h3
        Lorem Ipsum Dolor Sit Amet
      %p
        %img{:src => "images/slimbo.png", :alt => "Slimbo"}
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae consequat ante. Donec purus tortor, dapibus et gravida ut, consequat nec quam. Aliquam nunc tellus, venenatis id adipiscing sed, pharetra ac sapien. Nunc feugiat eleifend magna, vitae auctor mi sollicitudin nec. Nunc leo velit, bibendum vel ultricies in, porta eu nisi. Morbi vitae iaculis orci. Nam posuere libero lectus, eget laoreet augue. Suspendisse potenti. Nunc cursus tristique sollicitudin. Phasellus egestas malesuada lacinia. Ut dapibus dapibus blandit. Praesent viverra placerat odio, a suscipit justo aliquet sed.
      %h3
        Cras Enim Est
      %p
        Cras enim est, laoreet in vestibulum vitae, viverra ut sem. Cras at nisi sed urna tempus gravida tristique vitae nibh. Sed interdum eleifend interdum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In in felis ac lacus commodo tempor sed nec ligula. Proin enim risus, imperdiet sed accumsan sed, malesuada eu nulla. Aenean sit amet nisi et velit ultricies vestibulum. Phasellus facilisis diam ac quam ultricies quis elementum est blandit. Sed blandit vestibulum est, eget pulvinar leo hendrerit non. Suspendisse potenti. Curabitur non eros lorem, vel tristique odio. Ut sed metus enim. Nam venenatis dignissim commodo. Mauris aliquam dui in leo viverra blandit tristique erat commodo. 
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
