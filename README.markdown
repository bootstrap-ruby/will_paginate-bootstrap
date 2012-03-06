# will_paginate-bootstrap

<<<<<<< HEAD
![Bootstrap Pagination Component](//github.com/nickpad/will_paginate-bootstrap/raw/master/pagination.png)
=======
![Bootstrap Pagination Component](//nickpad/will_paginate-bootstrap/raw/master/pagination.png)
>>>>>>> 01cedd9... fix image link

This gem integrates the [Twitter Bootstrap](http://twitter.github.com/bootstrap/) [pagination component](http://twitter.github.com/bootstrap/components.html#pagination) with the [will_paginate](https://github.com/mislav/will_paginate) pagination gem.

As with will_paginate itself, Rails and Sinatra are supported.

## Usage

### Rails

  1. Load the Bootstrap CSS in your template.
  3. `require "will_paginate/bootstrap"` (`config/initializers/will_paginate.rb` would be a good place to put this).
  2. In your view, `<%= will_paginate @collection, :renderer => WillPaginate::Rails %>`
  3. Done!

### Sinatra

TODO: Add instructions for Sinatra!

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
