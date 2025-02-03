package stdgo.crypto.tls;
class T_certificateVerifyMsg_static_extension {
    static public function _unmarshal(_m:T_certificateVerifyMsg, _data:Array<std.UInt>):Bool {
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateVerifyMsg.T_certificateVerifyMsg>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.tls.Tls_T_certificateVerifyMsg_static_extension.T_certificateVerifyMsg_static_extension._unmarshal(_m, _data);
    }
    static public function _marshal(_m:T_certificateVerifyMsg):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateVerifyMsg.T_certificateVerifyMsg>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_T_certificateVerifyMsg_static_extension.T_certificateVerifyMsg_static_extension._marshal(_m);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
