package stdgo.crypto.tls;
class T_finishedHash_static_extension {
    static public function _discardHandshakeBuffer(_h:T_finishedHash):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>);
        stdgo._internal.crypto.tls.Tls_T_finishedHash_static_extension.T_finishedHash_static_extension._discardHandshakeBuffer(_h);
    }
    static public function _hashForClientCertificate(_h:T_finishedHash, _sigType:std.UInt, _hashAlg:stdgo._internal.crypto.Crypto_Hash.Hash):Array<std.UInt> {
        final _sigType = (_sigType : stdgo.GoUInt8);
        return [for (i in stdgo._internal.crypto.tls.Tls_T_finishedHash_static_extension.T_finishedHash_static_extension._hashForClientCertificate(_h, _sigType, _hashAlg)) i];
    }
    static public function _serverSum(_h:T_finishedHash, _masterSecret:Array<std.UInt>):Array<std.UInt> {
        final _masterSecret = ([for (i in _masterSecret) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.crypto.tls.Tls_T_finishedHash_static_extension.T_finishedHash_static_extension._serverSum(_h, _masterSecret)) i];
    }
    static public function _clientSum(_h:T_finishedHash, _masterSecret:Array<std.UInt>):Array<std.UInt> {
        final _masterSecret = ([for (i in _masterSecret) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.crypto.tls.Tls_T_finishedHash_static_extension.T_finishedHash_static_extension._clientSum(_h, _masterSecret)) i];
    }
    static public function sum(_h:T_finishedHash):Array<std.UInt> {
        return [for (i in stdgo._internal.crypto.tls.Tls_T_finishedHash_static_extension.T_finishedHash_static_extension.sum(_h)) i];
    }
    static public function write(_h:T_finishedHash, _msg:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _h = (_h : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>);
        final _msg = ([for (i in _msg) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_T_finishedHash_static_extension.T_finishedHash_static_extension.write(_h, _msg);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
