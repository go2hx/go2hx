package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_TXTResource_static_extension.TXTResource_static_extension) class TXTResource {
    public var txt : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?txt:stdgo.Slice<stdgo.GoString>) {
        if (txt != null) this.txt = txt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TXTResource(txt);
    }
}
