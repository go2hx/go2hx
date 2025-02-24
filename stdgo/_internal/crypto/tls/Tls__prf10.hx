package stdgo._internal.crypto.tls;
function _prf10(_result:stdgo.Slice<stdgo.GoUInt8>, _secret:stdgo.Slice<stdgo.GoUInt8>, _label:stdgo.Slice<stdgo.GoUInt8>, _seed:stdgo.Slice<stdgo.GoUInt8>):Void {
        var _hashSHA1 = (stdgo._internal.crypto.sha1.Sha1_new_.new_ : () -> stdgo._internal.hash.Hash_hash.Hash);
        var _hashMD5 = (stdgo._internal.crypto.md5.Md5_new_.new_ : () -> stdgo._internal.hash.Hash_hash.Hash);
        var _labelAndSeed = (new stdgo.Slice<stdgo.GoUInt8>(((_label.length) + (_seed.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _labelAndSeed.__copyTo__(_label);
        (_labelAndSeed.__slice__((_label.length)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_seed);
        var __tmp__ = stdgo._internal.crypto.tls.Tls__splitpremastersecret._splitPreMasterSecret(_secret), _s1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _s2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1;
        stdgo._internal.crypto.tls.Tls__phash._pHash(_result, _s1, _labelAndSeed, _hashMD5);
        var _result2 = (new stdgo.Slice<stdgo.GoUInt8>((_result.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.tls.Tls__phash._pHash(_result2, _s2, _labelAndSeed, _hashSHA1);
        for (_i => _b in _result2) {
            _result[(_i : stdgo.GoInt)] = (_result[(_i : stdgo.GoInt)] ^ (_b) : stdgo.GoUInt8);
        };
    }
