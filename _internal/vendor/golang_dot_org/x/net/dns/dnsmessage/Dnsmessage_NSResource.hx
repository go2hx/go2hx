package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_NSResource_static_extension.NSResource_static_extension) class NSResource {
    public var ns : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name);
    public function new(?ns:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name) {
        if (ns != null) this.ns = ns;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NSResource(ns);
    }
}
