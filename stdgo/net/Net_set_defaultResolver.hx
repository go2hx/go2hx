package stdgo.net;
private function set_defaultResolver(v:Resolver):Resolver {
        stdgo._internal.net.Net_defaultResolver.defaultResolver = (v : stdgo.Ref<stdgo._internal.net.Net_Resolver.Resolver>);
        return v;
    }
