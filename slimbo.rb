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
      %h2
        Stuff I Make and Do
    #main
      = yield
    #sidebar
      %h3
        Lorem Ipsum Dolor Sit Amet
      %p
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae consequat ante. Donec purus tortor, dapibus et gravida ut, consequat nec quam. Aliquam nunc tellus, venenatis id adipiscing sed, pharetra ac sapien. Nunc feugiat eleifend magna, vitae auctor mi sollicitudin nec. Nunc leo velit, bibendum vel ultricies in, porta eu nisi. Morbi vitae iaculis orci. Nam posuere libero lectus, eget laoreet augue. Suspendisse potenti. Nunc cursus tristique sollicitudin. Phasellus egestas malesuada lacinia. Ut dapibus dapibus blandit. Praesent viverra placerat odio, a suscipit justo aliquet sed.
    #footer
      %p
        Nam ullamcorper urna quis augue facilisis quis egestas diam fermentum. Ut pellentesque, lorem non sagittis tincidunt, nisl massa porttitor justo, ut auctor lectus nisi a lectus. Curabitur faucibus feugiat lectus porttitor ornare. Phasellus lacus neque, accumsan non lacinia at, bibendum vel lectus. Suspendisse auctor massa vel neque tempus ullamcorper. Aliquam erat volutpat. Duis ut purus urna, rutrum ultrices eros. Praesent aliquet hendrerit quam non vehicula. Suspendisse rhoncus commodo metus ac tincidunt. Etiam facilisis, mauris luctus pretium porta, urna urna aliquet sapien, convallis adipiscing libero arcu eu nulla. Vestibulum sit amet nisi ac nibh tincidunt rhoncus. 

@@ index
%h3
  Lorem Ipsum Dolor Sit Amet
%p
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eu tellus neque. Curabitur sollicitudin tellus vel quam accumsan quis lacinia lectus cursus. Cras blandit dictum urna quis dapibus. Maecenas consequat convallis risus at ornare. Morbi euismod, enim sit amet tempus facilisis, magna ante vestibulum velit, eget ullamcorper metus ipsum sed sapien. Nam cursus dictum orci a vehicula. Vestibulum euismod nibh sit amet arcu tincidunt condimentum. Vestibulum blandit lacinia odio, ac auctor ligula tincidunt scelerisque. Duis lacinia, orci in gravida sodales, sem velit semper sem, et auctor tellus turpis non dui. Aliquam erat volutpat. Praesent ullamcorper, augue at pretium pellentesque, purus quam auctor massa, vitae aliquam massa lectus in mauris. Integer aliquet leo lorem, et posuere nisl. Praesent commodo blandit diam, nec vehicula mi adipiscing pharetra. Etiam imperdiet posuere ante, scelerisque tincidunt risus dictum sed. Quisque ipsum diam, feugiat vel rutrum ut, iaculis laoreet diam.
%p 
  In non mauris vel lectus molestie ultrices. Proin pharetra sollicitudin pulvinar. Praesent vitae laoreet enim. Ut porttitor mollis condimentum. Vivamus nisi enim, blandit vel convallis id, venenatis a purus. Etiam feugiat lectus ornare enim imperdiet semper. Vivamus posuere pellentesque dui, eu varius lectus tincidunt vitae. In hac habitasse platea dictumst. Nunc ut auctor magna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla ultricies erat sit amet urna dignissim pellentesque. Praesent hendrerit, diam eu laoreet venenatis, libero libero blandit dolor, a tempor nisl augue vitae sem. Nullam at lacus magna. 
