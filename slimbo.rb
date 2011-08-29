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
  %body
    #header
      %h1
        Slimbolala.com
    #body
      = yield

@@ index
%p
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eu tellus neque. Curabitur sollicitudin tellus vel quam accumsan quis lacinia lectus cursus. Cras blandit dictum urna quis dapibus. Maecenas consequat convallis risus at ornare. Morbi euismod, enim sit amet tempus facilisis, magna ante vestibulum velit, eget ullamcorper metus ipsum sed sapien. Nam cursus dictum orci a vehicula. Vestibulum euismod nibh sit amet arcu tincidunt condimentum. Vestibulum blandit lacinia odio, ac auctor ligula tincidunt scelerisque. Duis lacinia, orci in gravida sodales, sem velit semper sem, et auctor tellus turpis non dui. Aliquam erat volutpat. Praesent ullamcorper, augue at pretium pellentesque, purus quam auctor massa, vitae aliquam massa lectus in mauris. Integer aliquet leo lorem, et posuere nisl. Praesent commodo blandit diam, nec vehicula mi adipiscing pharetra. Etiam imperdiet posuere ante, scelerisque tincidunt risus dictum sed. Quisque ipsum diam, feugiat vel rutrum ut, iaculis laoreet diam.
%p 
  In non mauris vel lectus molestie ultrices. Proin pharetra sollicitudin pulvinar. Praesent vitae laoreet enim. Ut porttitor mollis condimentum. Vivamus nisi enim, blandit vel convallis id, venenatis a purus. Etiam feugiat lectus ornare enim imperdiet semper. Vivamus posuere pellentesque dui, eu varius lectus tincidunt vitae. In hac habitasse platea dictumst. Nunc ut auctor magna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla ultricies erat sit amet urna dignissim pellentesque. Praesent hendrerit, diam eu laoreet venenatis, libero libero blandit dolor, a tempor nisl augue vitae sem. Nullam at lacus magna. 
