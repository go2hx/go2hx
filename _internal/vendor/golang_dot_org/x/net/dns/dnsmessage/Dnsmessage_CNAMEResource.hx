package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_CNAMEResource_static_extension.CNAMEResource_static_extension) class CNAMEResource {
    public var cname : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name);
    public function new(?cname:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name) {
        if (cname != null) this.cname = cname;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CNAMEResource(cname);
    }
}
