package stdgo._internal.text.template;
@:structInit @:using(stdgo._internal.text.template.Template_t_variable_static_extension.T_variable_static_extension) class T_variable {
    public var _name : stdgo.GoString = "";
    public var _value : stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
    public function new(?_name:stdgo.GoString, ?_value:stdgo._internal.reflect.Reflect_value.Value) {
        if (_name != null) this._name = _name;
        if (_value != null) this._value = _value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_variable(_name, _value);
    }
}
