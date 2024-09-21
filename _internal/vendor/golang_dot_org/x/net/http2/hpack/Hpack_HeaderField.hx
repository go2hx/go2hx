package _internal.vendor.golang_dot_org.x.net.http2.hpack;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField_static_extension.HeaderField_static_extension) class HeaderField {
    public var name : stdgo.GoString = "";
    public var value : stdgo.GoString = "";
    public var sensitive : Bool = false;
    public function new(?name:stdgo.GoString, ?value:stdgo.GoString, ?sensitive:Bool) {
        if (name != null) this.name = name;
        if (value != null) this.value = value;
        if (sensitive != null) this.sensitive = sensitive;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new HeaderField(name, value, sensitive);
    }
}
