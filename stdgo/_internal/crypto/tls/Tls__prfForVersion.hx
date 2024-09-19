package stdgo._internal.crypto.tls;
function _prfForVersion(_version:stdgo.GoUInt16, _suite:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite>):(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> Void {
        var __tmp__ = stdgo._internal.crypto.tls.Tls__prfAndHashForVersion._prfAndHashForVersion(_version, _suite), _prf:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> Void = __tmp__._0, __65:stdgo._internal.crypto.Crypto_Hash.Hash = __tmp__._1;
        return _prf;
    }