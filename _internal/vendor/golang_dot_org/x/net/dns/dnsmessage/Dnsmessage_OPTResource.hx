package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OPTResource_static_extension.OPTResource_static_extension) class OPTResource {
    public var options : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Option.Option> = (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Option.Option>);
    public function new(?options:stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Option.Option>) {
        if (options != null) this.options = options;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new OPTResource(options);
    }
}
