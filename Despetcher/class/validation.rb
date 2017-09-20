# Validation module hw 10
module Validation
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods

    def validate(name, type, option = nil)
      @validations = []
      presense(name) if type == :presense
      format(name, option) if type == :format
      type(name, option) if type == :type
    end

    def presense(name)
      def_name = create_name(name, 'presense')
      method = proc do
        instance_variable = instance_variable_get("@#{name}")
        !instance_variable.nil?
      end
      define_method("#{def_name}".to_sym, &method)
      @validations.push def_name
    end

    def format(name, option)
      def_name = create_name(name, 'format')
      method = proc do
        instance_variable = instance_variable_get("@#{name}")
        !!(instance_variable.to_s =~ option)
      end
      define_method("#{def_name}".to_sym, &method)
      @validations.push def_name
    end

    def type(name, option)
      def_name = create_name(name, 'type')
      method = proc do
        instance_variable = instance_variable_get("@#{name}")
        instance_variable.class == option
      end
      define_method("#{def_name}".to_sym, &method)
      @validations.push def_name
    end

    def create_name(name, type)
      "#{name}_#{type}"
    end

    def validation_list_get
      @validations
    end
  end


  def validation?
    list = self.class.validation_list_get
    list.any? {|method| self.send method}
  end

  def validation!
    fail "validation error" unless validation?
  end

end

# Test
class Test
  include Validation

  attr_accessor :a, :b, :c, :d

  validate :a, :presense
  validate :b, :type, String
  validate :c, :type, Fixnum
  validate :b, :format, /^([a-z]{3}|\d{3})-?([a-z]{2}|\d{2})$/i
end

test = Test.new
test.b = "aaa-11"
p test.validation?

