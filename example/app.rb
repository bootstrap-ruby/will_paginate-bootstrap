require "sinatra"
require "will_paginate-bootstrap"
require "will_paginate/collection"

$template = <<EOHTML
<html>
<head>
<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css" rel="stylesheet">
</head>
<body>
<%= will_paginate @collection, :renderer => BootstrapPagination::Sinatra %>
</body>
</html>
EOHTML

get "/" do
  page = if params[:page].to_i > 0
    params[:page].to_i
  else
    1
  end

  @collection = WillPaginate::Collection.new page, 10, 100000
  erb $template
end