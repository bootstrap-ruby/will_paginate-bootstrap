require "will_paginate/view_helpers/action_view"
require "bootstrap_pagination/link_renderer"

module BootstrapPagination
  # A custom renderer class for WillPaginate that produces markup suitable for use with Twitter Bootstrap.
  class Sinatra < WillPaginate::Sinatra::LinkRenderer
    include LinkRenderer
  end
end
