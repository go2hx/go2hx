package stdgo.internal.reflectlite;
@:structInit @:using(stdgo.internal.reflectlite.Reflectlite.ValueError_static_extension) abstract ValueError(stdgo._internal.internal.reflectlite.Reflectlite_ValueError.ValueError) from stdgo._internal.internal.reflectlite.Reflectlite_ValueError.ValueError to stdgo._internal.internal.reflectlite.Reflectlite_ValueError.ValueError {
    public var method(get, set) : String;
    function get_method():String return this.method;
    function set_method(v:String):String {
        this.method = (v : stdgo.GoString);
        return v;
    }
    public var kind(get, set) : stdgo._internal.internal.abi.Abi_Kind.Kind;
    function get_kind():stdgo._internal.internal.abi.Abi_Kind.Kind return this.kind;
    function set_kind(v:stdgo._internal.internal.abi.Abi_Kind.Kind):stdgo._internal.internal.abi.Abi_Kind.Kind {
        this.kind = v;
        return v;
    }
    public function new(?method:String, ?kind:stdgo._internal.internal.abi.Abi_Kind.Kind) this = new stdgo._internal.internal.reflectlite.Reflectlite_ValueError.ValueError((method : stdgo.GoString), kind);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
