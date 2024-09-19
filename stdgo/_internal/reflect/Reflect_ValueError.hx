package stdgo._internal.reflect;
@:structInit @:using(stdgo._internal.reflect.Reflect_ValueError_static_extension.ValueError_static_extension) class ValueError {
    public var method : stdgo.GoString = "";
    public var kind : stdgo._internal.reflect.Reflect_Kind.Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect_Kind.Kind);
    @:splitdeps
    dynamic public function toString():String {
        return "" + method;
    }
    public function new(?method:stdgo.GoString, ?kind:stdgo._internal.reflect.Reflect_Kind.Kind, ?toString) {
        if (method != null) this.method = method;
        if (kind != null) this.kind = kind;
        if (toString != null) this.toString = toString;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ValueError(method, kind);
    }
}
