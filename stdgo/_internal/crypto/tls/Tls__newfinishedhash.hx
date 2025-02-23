package stdgo._internal.crypto.tls;
function _newFinishedHash(_version:stdgo.GoUInt16, _cipherSuite:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuite.T_cipherSuite>):stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash {
        var _buffer:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        if ((_version >= (771 : stdgo.GoUInt16) : Bool)) {
            _buffer = (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        var __tmp__ = stdgo._internal.crypto.tls.Tls__prfandhashforversion._prfAndHashForVersion(_version, _cipherSuite), _prf:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> Void = __tmp__._0, _hash:stdgo._internal.crypto.Crypto_hash.Hash = __tmp__._1;
        if (_hash != ((0u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
            return (new stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash(_hash.new_(), _hash.new_(), (null : stdgo._internal.hash.Hash_hash.Hash), (null : stdgo._internal.hash.Hash_hash.Hash), _buffer, _version, _prf) : stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash);
        };
        return (new stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash(stdgo._internal.crypto.sha1.Sha1_new_.new_(), stdgo._internal.crypto.sha1.Sha1_new_.new_(), stdgo._internal.crypto.md5.Md5_new_.new_(), stdgo._internal.crypto.md5.Md5_new_.new_(), _buffer, _version, _prf) : stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash);
    }
