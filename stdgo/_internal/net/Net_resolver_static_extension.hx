package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.Resolver_asInterface) class Resolver_static_extension {
    @:keep
    @:tdfield
    static public function lookupAddr( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _addr:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } throw "Resolver:net.lookupAddr is not yet implemented";
    @:keep
    @:tdfield
    static public function lookupTXT( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } throw "Resolver:net.lookupTXT is not yet implemented";
    @:keep
    @:tdfield
    static public function lookupNS( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>; var _1 : stdgo.Error; } throw "Resolver:net.lookupNS is not yet implemented";
    @:keep
    @:tdfield
    static public function lookupMX( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>; var _1 : stdgo.Error; } throw "Resolver:net.lookupMX is not yet implemented";
    @:keep
    @:tdfield
    static public function lookupSRV( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _service:stdgo.GoString, _proto:stdgo.GoString, _name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>; var _2 : stdgo.Error; } throw "Resolver:net.lookupSRV is not yet implemented";
    @:keep
    @:tdfield
    static public function lookupCNAME( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _host:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } throw "Resolver:net.lookupCNAME is not yet implemented";
    @:keep
    @:tdfield
    static public function lookupPort( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _service:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "Resolver:net.lookupPort is not yet implemented";
    @:keep
    @:tdfield
    static public function lookupNetIP( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _host:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.net.netip.Netip_addr.Addr>; var _1 : stdgo.Error; } throw "Resolver:net.lookupNetIP is not yet implemented";
    @:keep
    @:tdfield
    static public function lookupIP( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _host:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.net.Net_ip.IP>; var _1 : stdgo.Error; } throw "Resolver:net.lookupIP is not yet implemented";
    @:keep
    @:tdfield
    static public function lookupIPAddr( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _host:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : stdgo.Error; } throw "Resolver:net.lookupIPAddr is not yet implemented";
    @:keep
    @:tdfield
    static public function lookupHost( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _host:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } throw "Resolver:net.lookupHost is not yet implemented";
}
