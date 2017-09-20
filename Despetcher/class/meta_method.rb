module MetaMethod
  def att_accessor_with_history(*args)
    args.each do |arg|
      var_arg = "@#{arg}".to_sym
      define_method(arg) { instance_variable_get(var_arg) }
      define_method("#{arg}=".to_sym) do |value|
        @history ||= {}
        instance_variable_set(var_arg, value)
        number = @history.length + 1
        @history[number] = value
      end
      define_method("#{arg}_history".to_sym) { instance_variable_get(@history)}
    end
  end
  def strong_attr_acessor(name, attr)
    var_name = "@#{name}".to_sym
    var_attr = attr
    define_method(name) { instance_variable_get(var_name) }
    define_method("#{name}=".to_sym) do |value|
      if var_attr == value.class
        instance_variable_set(var_name, value)
      else
        raise "Тип не підходить"
      end
    end
  end
end