package stdgo._internal.net;
class Resolver_asInterface {
    @:keep
    @:tdfield
    public dynamic function lookupAddr(_ctx:stdgo._internal.context.Context_context.Context, _addr:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value.lookupAddr(_ctx, _addr);
    @:keep
    @:tdfield
    public dynamic function lookupTXT(_ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value.lookupTXT(_ctx, _name);
    @:keep
    @:tdfield
    public dynamic function lookupNS(_ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>; var _1 : stdgo.Error; } return @:_0 __self__.value.lookupNS(_ctx, _name);
    @:keep
    @:tdfield
    public dynamic function lookupMX(_ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>; var _1 : stdgo.Error; } return @:_0 __self__.value.lookupMX(_ctx, _name);
    @:keep
    @:tdfield
    public dynamic function lookupSRV(_ctx:stdgo._internal.context.Context_context.Context, _service:stdgo.GoString, _proto:stdgo.GoString, _name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>; var _2 : stdgo.Error; } return @:_0 __self__.value.lookupSRV(_ctx, _service, _proto, _name);
    @:keep
    @:tdfield
    public dynamic function lookupCNAME(_ctx:stdgo._internal.context.Context_context.Context, _host:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_0 __self__.value.lookupCNAME(_ctx, _host);
    @:keep
    @:tdfield
    public dynamic function lookupPort(_ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _service:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.lookupPort(_ctx, _network, _service);
    @:keep
    @:tdfield
    public dynamic function lookupNetIP(_ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _host:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.net.netip.Netip_addr.Addr>; var _1 : stdgo.Error; } return @:_0 __self__.value.lookupNetIP(_ctx, _network, _host);
    @:keep
    @:tdfield
    public dynamic function lookupIP(_ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _host:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.net.Net_ip.IP>; var _1 : stdgo.Error; } return @:_0 __self__.value.lookupIP(_ctx, _network, _host);
    @:keep
    @:tdfield
    public dynamic function lookupIPAddr(_ctx:stdgo._internal.context.Context_context.Context, _host:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : stdgo.Error; } return @:_0 __self__.value.lookupIPAddr(_ctx, _host);
    @:keep
    @:tdfield
    public dynamic function lookupHost(_ctx:stdgo._internal.context.Context_context.Context, _host:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value.lookupHost(_ctx, _host);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.Net_resolverpointer.ResolverPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
