package stdgo.syscall.js;
@:structInit @:using(stdgo.syscall.js.Js.Error_static_extension) abstract Error(stdgo._internal.syscall.js.Js_Error.Error) from stdgo._internal.syscall.js.Js_Error.Error to stdgo._internal.syscall.js.Js_Error.Error {
    public var value(get, set) : Value;
    function get_value():Value return this.value;
    function set_value(v:Value):Value {
        this.value = v;
        return v;
    }
    public function new(?value:Value) this = new stdgo._internal.syscall.js.Js_Error.Error(value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
