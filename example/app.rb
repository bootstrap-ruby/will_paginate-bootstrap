require "sinatra"
require "will_paginate-bootstrap"
require "will_paginate/collection"

CDN_PATHS = {
  2 => "//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css",
  3 => "//netdna.bootstrapcdn.com/bootstrap/3.0.0-rc1/css/bootstrap.min.css"
}

$menu = <<EOHTML
<html>
<head>
<title>will_paginate-boostrap Example App</title>
</head>
<body>
<ul>
<h1>Which Twitter Boostrap version?</h1>
<li><a href="/2">Bootstrap 2</a></li>
<li><a href="/3">Bootstrap 3</a></li>
</ul>
</body>
</html>
EOHTML

$template = <<EOHTML
<html>
<head>
<title>will_paginate-boostrap Example App</title>
<link href="<%= href %>" rel="stylesheet">
</head>
<body>
<%= will_paginate @collection, renderer: BootstrapPagination::Sinatra, bootstrap: version %>
</body>
</html>
EOHTML

def build_collection
  page = if params[:page].to_i > 0
    params[:page].to_i
  else
    1
  end

  @collection = WillPaginate::Collection.new page, 10, 100000
end

get "/" do
  erb $menu
end

get "/2" do
  build_collection
  erb $template, locals: {href: CDN_PATHS[2], version: 2}
end

get "/3" do
  build_collection
  erb $template, locals: {href: CDN_PATHS[3], version: 3}
end
