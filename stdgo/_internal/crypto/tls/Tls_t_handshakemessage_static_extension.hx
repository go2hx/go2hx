package stdgo._internal.crypto.tls;
@:keep class T_handshakeMessage_static_extension {
    @:interfacetypeffun
    static public function _unmarshal(t:stdgo._internal.crypto.tls.Tls_t_handshakemessage.T_handshakeMessage, _0:stdgo.Slice<stdgo.GoUInt8>):Bool return t._unmarshal(_0);
    @:interfacetypeffun
    static public function _marshal(t:stdgo._internal.crypto.tls.Tls_t_handshakemessage.T_handshakeMessage):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return t._marshal();
}
