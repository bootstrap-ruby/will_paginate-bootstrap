require "will_paginate/view_helpers/action_view"
require "bootstrap_pagination/bootstrap_renderer"

# TODO: Remove when will be fixed in will-paginate
if defined?(ActionController::Parameters)
  require "bootstrap_pagination/fix_symbolize_update"
end

module BootstrapPagination
  # A custom renderer class for WillPaginate that produces markup suitable for use with Twitter Bootstrap.
  class Rails < WillPaginate::ActionView::LinkRenderer
    include BootstrapPagination::BootstrapRenderer

    if defined?(ActionController::Parameters)
      include BootstrapPagination::FixSymbolizeUpdate
    end
  end
end
