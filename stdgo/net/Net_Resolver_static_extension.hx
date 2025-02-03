package stdgo.net;
class Resolver_static_extension {
    static public function lookupAddr(_r:Resolver, _ctx:stdgo._internal.context.Context_Context.Context, _addr:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.Net_Resolver.Resolver>);
        final _addr = (_addr : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_Resolver_static_extension.Resolver_static_extension.lookupAddr(_r, _ctx, _addr);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function lookupTXT(_r:Resolver, _ctx:stdgo._internal.context.Context_Context.Context, _name:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.Net_Resolver.Resolver>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_Resolver_static_extension.Resolver_static_extension.lookupTXT(_r, _ctx, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function lookupNS(_r:Resolver, _ctx:stdgo._internal.context.Context_Context.Context, _name:String):stdgo.Tuple<Array<NS>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.Net_Resolver.Resolver>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_Resolver_static_extension.Resolver_static_extension.lookupNS(_r, _ctx, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function lookupMX(_r:Resolver, _ctx:stdgo._internal.context.Context_Context.Context, _name:String):stdgo.Tuple<Array<MX>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.Net_Resolver.Resolver>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_Resolver_static_extension.Resolver_static_extension.lookupMX(_r, _ctx, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function lookupSRV(_r:Resolver, _ctx:stdgo._internal.context.Context_Context.Context, _service:String, _proto:String, _name:String):stdgo.Tuple.Tuple3<String, Array<SRV>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.Net_Resolver.Resolver>);
        final _service = (_service : stdgo.GoString);
        final _proto = (_proto : stdgo.GoString);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_Resolver_static_extension.Resolver_static_extension.lookupSRV(_r, _ctx, _service, _proto, _name);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    static public function lookupCNAME(_r:Resolver, _ctx:stdgo._internal.context.Context_Context.Context, _host:String):stdgo.Tuple<String, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.Net_Resolver.Resolver>);
        final _host = (_host : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_Resolver_static_extension.Resolver_static_extension.lookupCNAME(_r, _ctx, _host);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function lookupPort(_r:Resolver, _ctx:stdgo._internal.context.Context_Context.Context, _network:String, _service:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.Net_Resolver.Resolver>);
        final _network = (_network : stdgo.GoString);
        final _service = (_service : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_Resolver_static_extension.Resolver_static_extension.lookupPort(_r, _ctx, _network, _service);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function lookupNetIP(_r:Resolver, _ctx:stdgo._internal.context.Context_Context.Context, _network:String, _host:String):stdgo.Tuple<Array<Addr>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.Net_Resolver.Resolver>);
        final _network = (_network : stdgo.GoString);
        final _host = (_host : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_Resolver_static_extension.Resolver_static_extension.lookupNetIP(_r, _ctx, _network, _host);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function lookupIP(_r:Resolver, _ctx:stdgo._internal.context.Context_Context.Context, _network:String, _host:String):stdgo.Tuple<Array<IP>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.Net_Resolver.Resolver>);
        final _network = (_network : stdgo.GoString);
        final _host = (_host : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_Resolver_static_extension.Resolver_static_extension.lookupIP(_r, _ctx, _network, _host);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function lookupIPAddr(_r:Resolver, _ctx:stdgo._internal.context.Context_Context.Context, _host:String):stdgo.Tuple<Array<IPAddr>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.Net_Resolver.Resolver>);
        final _host = (_host : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_Resolver_static_extension.Resolver_static_extension.lookupIPAddr(_r, _ctx, _host);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function lookupHost(_r:Resolver, _ctx:stdgo._internal.context.Context_Context.Context, _host:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.Net_Resolver.Resolver>);
        final _host = (_host : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_Resolver_static_extension.Resolver_static_extension.lookupHost(_r, _ctx, _host);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
