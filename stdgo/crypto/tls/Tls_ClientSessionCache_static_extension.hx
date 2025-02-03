package stdgo.crypto.tls;
class ClientSessionCache_static_extension {
    static public function put(t:stdgo._internal.crypto.tls.Tls_ClientSessionCache.ClientSessionCache, _sessionKey:String, _cs:ClientSessionState):Void {
        final _sessionKey = (_sessionKey : stdgo.GoString);
        final _cs = (_cs : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState>);
        stdgo._internal.crypto.tls.Tls_ClientSessionCache_static_extension.ClientSessionCache_static_extension.put(t, _sessionKey, _cs);
    }
    static public function get(t:stdgo._internal.crypto.tls.Tls_ClientSessionCache.ClientSessionCache, _sessionKey:String):stdgo.Tuple<ClientSessionState, Bool> {
        final _sessionKey = (_sessionKey : stdgo.GoString);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_ClientSessionCache_static_extension.ClientSessionCache_static_extension.get(t, _sessionKey);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
