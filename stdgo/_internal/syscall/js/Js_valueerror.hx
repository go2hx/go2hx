package stdgo._internal.syscall.js;
@:structInit @:using(stdgo._internal.syscall.js.Js_valueerror_static_extension.ValueError_static_extension) class ValueError {
    public var method : stdgo.GoString = "";
    public var type : stdgo._internal.syscall.js.Js_type_.Type_ = ((0 : stdgo.GoInt) : stdgo._internal.syscall.js.Js_type_.Type_);
    public function new(?method:stdgo.GoString, ?type:stdgo._internal.syscall.js.Js_type_.Type_) {
        if (method != null) this.method = method;
        if (type != null) this.type = type;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ValueError(method, type);
    }
}
