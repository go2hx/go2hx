package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource_static_extension.Resource_static_extension) class Resource {
    public var header : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader);
    public var body : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceBody.ResourceBody = (null : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceBody.ResourceBody);
    public function new(?header:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader, ?body:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceBody.ResourceBody) {
        if (header != null) this.header = header;
        if (body != null) this.body = body;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Resource(header, body);
    }
}
