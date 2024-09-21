package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Option_static_extension.Option_static_extension) class Option {
    public var code : stdgo.GoUInt16 = 0;
    public var data : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?code:stdgo.GoUInt16, ?data:stdgo.Slice<stdgo.GoUInt8>) {
        if (code != null) this.code = code;
        if (data != null) this.data = data;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Option(code, data);
    }
}
