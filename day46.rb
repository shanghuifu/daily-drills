# 以下のようなビューファイルがあります。

# index.html.erb
<div id="main-content" class="col-sm-9">
  <h3 class="page-name"><%= link_to 'Post', posts_path %></h3>
  <div class="row">
    <%= render @posts %>
  </div>
</div>

# _post.html.erb
<div class="col-sm-3 single-post-card" id=<%= post_path(post.id) %>>
  <div class="card">
    <div class="card-block">
      <h4 class="post-text">
        <%= truncate(post.title, length: 60) %>
      </h4>
      <div class="post-content">
        <div class="posted-by">Posted by <%= post.user.name %></div>
        <h3><%= post.title %></h3>
        <p><%= post.content %></p>
        <%= link_to "I'm interested", post_path(post.id), class: 'interested' %>
      </div>
    </div>
  </div>
</div>

# このとき、4行目のrenderメソッドを利用せずに同じ表示を得るためには、
# 4行目以降をどのように書き換えれば良いでしょうか？_post.html.erbの記述を参考にしてください。

<div id="main-content" class="col-sm-9">
  <h3 class="page-name"><%= link_to 'Post', posts_path %></h3>
  <div class="row">
    <% @posts.each do |post| %>
      <div class="col-sm-3 single-post-card" id=<%= post_path(post.id) %>>
        <div class="card">
          <div class="card-block">
            <h4 class="post-text">
              <%= truncate(post.title, length: 60) %>
            </h4>
           <div class="post-content">
             <div class="posted-by">Posted by <%= post.user.name %></div>
                 <h3><%= post.title %></h3>
                 <p><%= post.content %></p>
                 <%= link_to "I'm interested", post_path(post.id), class: 'interested' %>
            </div>
          </div>
        </div>
      </div>
    <% end %>
  </div>
</div>