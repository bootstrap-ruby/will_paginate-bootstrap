module BootstrapPagination
  module FixSymbolizeUpdate
    def symbolized_update(target, other)
      other.each do |key, value|
        key = key.to_sym
        existing = target[key]

        is_params = lambda { |obj| obj.is_a?(Hash) || obj.is_a?(ActionController::Parameters) }

        if is_params.call(value) and (is_params.call(existing) or existing.nil?)
          symbolized_update(existing || (target[key] = {}), value)
        else
          target[key] = value
        end
      end
    end
  end
end
