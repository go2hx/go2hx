package stdgo._internal.internal.reflectlite;
@:structInit @:using(stdgo._internal.internal.reflectlite.Reflectlite_ValueError_static_extension.ValueError_static_extension) class ValueError {
    public var method : stdgo.GoString = "";
    public var kind : stdgo._internal.internal.abi.Abi_Kind.Kind = ((0 : stdgo.GoUInt) : stdgo._internal.internal.abi.Abi_Kind.Kind);
    public function new(?method:stdgo.GoString, ?kind:stdgo._internal.internal.abi.Abi_Kind.Kind) {
        if (method != null) this.method = method;
        if (kind != null) this.kind = kind;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ValueError(method, kind);
    }
}
