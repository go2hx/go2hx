package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_MXResource_static_extension.MXResource_static_extension) class MXResource {
    public var pref : stdgo.GoUInt16 = 0;
    public var mx : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name);
    public function new(?pref:stdgo.GoUInt16, ?mx:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name) {
        if (pref != null) this.pref = pref;
        if (mx != null) this.mx = mx;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MXResource(pref, mx);
    }
}
