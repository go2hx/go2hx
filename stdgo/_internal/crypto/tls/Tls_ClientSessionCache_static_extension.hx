package stdgo._internal.crypto.tls;
@:keep class ClientSessionCache_static_extension {
    static public function put(t:ClientSessionCache, _sessionKey:stdgo.GoString, _cs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState>):Void t.put(_sessionKey, _cs);
    static public function get(t:ClientSessionCache, _sessionKey:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState>; var _1 : Bool; } return t.get(_sessionKey);
}
