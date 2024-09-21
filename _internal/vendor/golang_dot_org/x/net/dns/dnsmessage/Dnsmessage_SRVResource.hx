package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SRVResource_static_extension.SRVResource_static_extension) class SRVResource {
    public var priority : stdgo.GoUInt16 = 0;
    public var weight : stdgo.GoUInt16 = 0;
    public var port : stdgo.GoUInt16 = 0;
    public var target : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name);
    public function new(?priority:stdgo.GoUInt16, ?weight:stdgo.GoUInt16, ?port:stdgo.GoUInt16, ?target:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name) {
        if (priority != null) this.priority = priority;
        if (weight != null) this.weight = weight;
        if (port != null) this.port = port;
        if (target != null) this.target = target;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SRVResource(priority, weight, port, target);
    }
}
