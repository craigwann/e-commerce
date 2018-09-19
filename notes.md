<% if can? :manage, User %>
<%= render 'form', product: @product %><% end %>
