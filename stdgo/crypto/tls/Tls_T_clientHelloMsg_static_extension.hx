package stdgo.crypto.tls;
class T_clientHelloMsg_static_extension {
    static public function _unmarshal(_m:T_clientHelloMsg, _data:Array<std.UInt>):Bool {
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.tls.Tls_T_clientHelloMsg_static_extension.T_clientHelloMsg_static_extension._unmarshal(_m, _data);
    }
    static public function _updateBinders(_m:T_clientHelloMsg, _pskBinders:Array<Array<std.UInt>>):stdgo.Error {
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>);
        final _pskBinders = ([for (i in _pskBinders) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        return stdgo._internal.crypto.tls.Tls_T_clientHelloMsg_static_extension.T_clientHelloMsg_static_extension._updateBinders(_m, _pskBinders);
    }
    static public function _marshalWithoutBinders(_m:T_clientHelloMsg):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_T_clientHelloMsg_static_extension.T_clientHelloMsg_static_extension._marshalWithoutBinders(_m);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _marshal(_m:T_clientHelloMsg):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_T_clientHelloMsg_static_extension.T_clientHelloMsg_static_extension._marshal(_m);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
