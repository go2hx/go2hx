package stdgo._internal.crypto.tls;
@:keep class ClientSessionCache_static_extension {
    @:interfacetypeffun
    static public function put(t:stdgo._internal.crypto.tls.Tls_clientsessioncache.ClientSessionCache, _sessionKey:stdgo.GoString, _cs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState>):Void t.put(_sessionKey, _cs);
    @:interfacetypeffun
    static public function get(t:stdgo._internal.crypto.tls.Tls_clientsessioncache.ClientSessionCache, _sessionKey:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState>; var _1 : Bool; } return t.get(_sessionKey);
}
