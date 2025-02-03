package stdgo.text.template;
@:structInit @:using(stdgo.text.template.Template.T_variable_static_extension) abstract T_variable(stdgo._internal.text.template.Template_T_variable.T_variable) from stdgo._internal.text.template.Template_T_variable.T_variable to stdgo._internal.text.template.Template_T_variable.T_variable {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _value(get, set) : stdgo._internal.reflect.Reflect_Value.Value;
    function get__value():stdgo._internal.reflect.Reflect_Value.Value return this._value;
    function set__value(v:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        this._value = v;
        return v;
    }
    public function new(?_name:String, ?_value:stdgo._internal.reflect.Reflect_Value.Value) this = new stdgo._internal.text.template.Template_T_variable.T_variable((_name : stdgo.GoString), _value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
