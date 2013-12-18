module QchanApi
  module Memoizable
    def memoize(method_name)
      define_method("#{method_name}_with_memoize") do |*args, &block|
        if instance_variable_defined?("@#{method_name}")
          instance_variable_get("@#{method_name}")
        else
          instance_variable_set("@#{method_name}", send("#{method_name}_without_memoize", *args, &block))
        end
      end
    end
  end
end
