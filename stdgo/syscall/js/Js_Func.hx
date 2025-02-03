package stdgo.syscall.js;
@:structInit @:using(stdgo.syscall.js.Js.Func_static_extension) abstract Func(stdgo._internal.syscall.js.Js_Func.Func) from stdgo._internal.syscall.js.Js_Func.Func to stdgo._internal.syscall.js.Js_Func.Func {
    public var value(get, set) : Value;
    function get_value():Value return this.value;
    function set_value(v:Value):Value {
        this.value = v;
        return v;
    }
    public var _id(get, set) : std.UInt;
    function get__id():std.UInt return this._id;
    function set__id(v:std.UInt):std.UInt {
        this._id = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?value:Value, ?_id:std.UInt) this = new stdgo._internal.syscall.js.Js_Func.Func(value, (_id : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
