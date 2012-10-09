# will_paginate-bootstrap

![Bootstrap Pagination Component](//github.com/nickpad/will_paginate-bootstrap/raw/master/pagination.png)

This gem integrates the [Twitter Bootstrap](http://twitter.github.com/bootstrap/) [pagination component](http://twitter.github.com/bootstrap/components.html#pagination) with the [will_paginate](https://github.com/mislav/will_paginate) pagination gem.

As with will_paginate itself, Rails and Sinatra are supported.

## Install

  * `gem install will_paginate-bootstrap`, *or*
  * For projects using Bundler, add `gem 'will_paginate-bootstrap'` to your `Gemfile` (and then run `bundle install`).

## Usage

### Rails

  1. Load the Bootstrap CSS in your template.
  2. In your view, use the `:renderer => BootstrapPagination::Rails` option with the `will_paginate` helper, for example:

`<%= will_paginate @collection, :renderer => BootstrapPagination::Rails %>`

### Sinatra

  1. Load the Bootstrap CSS in your template.
  2. `require "will_paginate-bootstrap"` in your Sinatra app.
  3. In your view, use the `:renderer => BootstrapPagination::Sinatra` option with the `will_paginate` helper, for example:

`<%= will_paginate @collection, :renderer => BootstrapPagination::Sinatra %>`

## Compatibility

<table>
	<tr>
		<th>Ruby</th>
		<td>>= 1.9.2</td>
	</tr>
	<tr>
		<th>will_paginate</th>
		<td>>= 3.0.3</td>
	</tr>
	<tr>
		<th>Bootstrap</th>
		<td>>= 2.0.0</td>
	</tr>
</table>
