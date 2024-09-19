package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SOAResource_static_extension.SOAResource_static_extension) class SOAResource {
    public var ns : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name);
    public var mbox : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name);
    public var serial : stdgo.GoUInt32 = 0;
    public var refresh : stdgo.GoUInt32 = 0;
    public var retry : stdgo.GoUInt32 = 0;
    public var expire : stdgo.GoUInt32 = 0;
    public var minTTL : stdgo.GoUInt32 = 0;
    public function new(?ns:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name, ?mbox:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name, ?serial:stdgo.GoUInt32, ?refresh:stdgo.GoUInt32, ?retry:stdgo.GoUInt32, ?expire:stdgo.GoUInt32, ?minTTL:stdgo.GoUInt32) {
        if (ns != null) this.ns = ns;
        if (mbox != null) this.mbox = mbox;
        if (serial != null) this.serial = serial;
        if (refresh != null) this.refresh = refresh;
        if (retry != null) this.retry = retry;
        if (expire != null) this.expire = expire;
        if (minTTL != null) this.minTTL = minTTL;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SOAResource(ns, mbox, serial, refresh, retry, expire, minTTL);
    }
}
