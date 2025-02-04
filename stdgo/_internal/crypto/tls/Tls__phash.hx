package stdgo._internal.crypto.tls;
function _pHash(_result:stdgo.Slice<stdgo.GoUInt8>, _secret:stdgo.Slice<stdgo.GoUInt8>, _seed:stdgo.Slice<stdgo.GoUInt8>, _hash:() -> stdgo._internal.hash.Hash_hash.Hash):Void {
        var _h = (stdgo._internal.crypto.hmac.Hmac_new_.new_(_hash, _secret) : stdgo._internal.hash.Hash_hash.Hash);
        _h.write(_seed);
        var _a = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        var _j = (0 : stdgo.GoInt);
        while ((_j < (_result.length) : Bool)) {
            _h.reset();
            _h.write(_a);
            _h.write(_seed);
            var _b = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
            (_result.__slice__(_j) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_b);
            _j = (_j + ((_b.length)) : stdgo.GoInt);
            _h.reset();
            _h.write(_a);
            _a = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        };
    }
