package stdgo.crypto.tls;
class T_halfConn_static_extension {
    static public function _encrypt(_hc:T_halfConn, _record:Array<std.UInt>, _payload:Array<std.UInt>, _rand:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _hc = (_hc : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn>);
        final _record = ([for (i in _record) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _payload = ([for (i in _payload) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_T_halfConn_static_extension.T_halfConn_static_extension._encrypt(_hc, _record, _payload, _rand);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _decrypt(_hc:T_halfConn, _record:Array<std.UInt>):stdgo.Tuple.Tuple3<Array<std.UInt>, T_recordType, stdgo.Error> {
        final _hc = (_hc : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn>);
        final _record = ([for (i in _record) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_T_halfConn_static_extension.T_halfConn_static_extension._decrypt(_hc, _record);
            { _0 : [for (i in obj._0) i], _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _explicitNonceLen(_hc:T_halfConn):StdTypes.Int {
        final _hc = (_hc : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn>);
        return stdgo._internal.crypto.tls.Tls_T_halfConn_static_extension.T_halfConn_static_extension._explicitNonceLen(_hc);
    }
    static public function _incSeq(_hc:T_halfConn):Void {
        final _hc = (_hc : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn>);
        stdgo._internal.crypto.tls.Tls_T_halfConn_static_extension.T_halfConn_static_extension._incSeq(_hc);
    }
    static public function _setTrafficSecret(_hc:T_halfConn, _suite:T_cipherSuiteTLS13, _level:QUICEncryptionLevel, _secret:Array<std.UInt>):Void {
        final _hc = (_hc : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn>);
        final _suite = (_suite : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13>);
        final _secret = ([for (i in _secret) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.tls.Tls_T_halfConn_static_extension.T_halfConn_static_extension._setTrafficSecret(_hc, _suite, _level, _secret);
    }
    static public function _changeCipherSpec(_hc:T_halfConn):stdgo.Error {
        final _hc = (_hc : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn>);
        return stdgo._internal.crypto.tls.Tls_T_halfConn_static_extension.T_halfConn_static_extension._changeCipherSpec(_hc);
    }
    static public function _prepareCipherSpec(_hc:T_halfConn, _version:std.UInt, _cipher:stdgo.AnyInterface, _mac:stdgo._internal.hash.Hash_Hash.Hash):Void {
        final _hc = (_hc : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn>);
        final _version = (_version : stdgo.GoUInt16);
        final _cipher = (_cipher : stdgo.AnyInterface);
        stdgo._internal.crypto.tls.Tls_T_halfConn_static_extension.T_halfConn_static_extension._prepareCipherSpec(_hc, _version, _cipher, _mac);
    }
    static public function _setErrorLocked(_hc:T_halfConn, _err:stdgo.Error):stdgo.Error {
        final _hc = (_hc : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn>);
        final _err = (_err : stdgo.Error);
        return stdgo._internal.crypto.tls.Tls_T_halfConn_static_extension.T_halfConn_static_extension._setErrorLocked(_hc, _err);
    }
    public static function _unlockSlow(__self__:stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn, _0:StdTypes.Int):Void {
        final _0 = (_0 : stdgo.GoInt32);
        stdgo._internal.crypto.tls.Tls_T_halfConn_static_extension.T_halfConn_static_extension._unlockSlow(__self__, _0);
    }
    public static function _lockSlow(__self__:stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn):Void {
        stdgo._internal.crypto.tls.Tls_T_halfConn_static_extension.T_halfConn_static_extension._lockSlow(__self__);
    }
    public static function unlock(__self__:stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn):Void {
        stdgo._internal.crypto.tls.Tls_T_halfConn_static_extension.T_halfConn_static_extension.unlock(__self__);
    }
    public static function tryLock(__self__:stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn):Bool {
        return stdgo._internal.crypto.tls.Tls_T_halfConn_static_extension.T_halfConn_static_extension.tryLock(__self__);
    }
    public static function lock(__self__:stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn):Void {
        stdgo._internal.crypto.tls.Tls_T_halfConn_static_extension.T_halfConn_static_extension.lock(__self__);
    }
}
