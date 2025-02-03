package stdgo.syscall.js;
@:structInit @:using(stdgo.syscall.js.Js.ValueError_static_extension) abstract ValueError(stdgo._internal.syscall.js.Js_ValueError.ValueError) from stdgo._internal.syscall.js.Js_ValueError.ValueError to stdgo._internal.syscall.js.Js_ValueError.ValueError {
    public var method(get, set) : String;
    function get_method():String return this.method;
    function set_method(v:String):String {
        this.method = (v : stdgo.GoString);
        return v;
    }
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public function new(?method:String, ?type:Type_) this = new stdgo._internal.syscall.js.Js_ValueError.ValueError((method : stdgo.GoString), type);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
