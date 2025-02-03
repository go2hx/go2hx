package stdgo.reflect;
@:structInit @:using(stdgo.reflect.Reflect.ValueError_static_extension) abstract ValueError(stdgo._internal.reflect.Reflect_ValueError.ValueError) from stdgo._internal.reflect.Reflect_ValueError.ValueError to stdgo._internal.reflect.Reflect_ValueError.ValueError {
    public var method(get, set) : String;
    function get_method():String return this.method;
    function set_method(v:String):String {
        this.method = (v : stdgo.GoString);
        return v;
    }
    public var kind(get, set) : Kind;
    function get_kind():Kind return this.kind;
    function set_kind(v:Kind):Kind {
        this.kind = v;
        return v;
    }
    public function new(?method:String, ?kind:Kind, ?toString) this = new stdgo._internal.reflect.Reflect_ValueError.ValueError((method : stdgo.GoString), kind, toString);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
