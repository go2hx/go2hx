package stdgo.crypto.tls;
class T_handshakeMessage_static_extension {
    static public function _unmarshal(t:stdgo._internal.crypto.tls.Tls_T_handshakeMessage.T_handshakeMessage, _0:Array<std.UInt>):Bool {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.tls.Tls_T_handshakeMessage_static_extension.T_handshakeMessage_static_extension._unmarshal(t, _0);
    }
    static public function _marshal(t:stdgo._internal.crypto.tls.Tls_T_handshakeMessage.T_handshakeMessage):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.tls.Tls_T_handshakeMessage_static_extension.T_handshakeMessage_static_extension._marshal(t);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
