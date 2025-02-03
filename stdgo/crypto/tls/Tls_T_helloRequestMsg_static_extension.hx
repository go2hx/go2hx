package stdgo.crypto.tls;
class T_helloRequestMsg_static_extension {
    static public function _unmarshal(_:T_helloRequestMsg, _data:Array<std.UInt>):Bool {
        final _ = (_ : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_helloRequestMsg.T_helloRequestMsg>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.tls.Tls_T_helloRequestMsg_static_extension.T_helloRequestMsg_static_extension._unmarshal(_, _data);
    }
    static public function _marshal(_:T_helloRequestMsg):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _ = (_ : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_helloRequestMsg.T_helloRequestMsg>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_T_helloRequestMsg_static_extension.T_helloRequestMsg_static_extension._marshal(_);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
