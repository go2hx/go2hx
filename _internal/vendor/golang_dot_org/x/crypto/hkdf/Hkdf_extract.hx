package _internal.vendor.golang_dot_org.x.crypto.hkdf;
function extract(_hash:() -> stdgo._internal.hash.Hash_Hash.Hash, _secret:stdgo.Slice<stdgo.GoUInt8>, _salt:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        if (_salt == null) {
            _salt = (new stdgo.Slice<stdgo.GoUInt8>((_hash().size() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _extractor = (stdgo._internal.crypto.hmac.Hmac_new_.new_(_hash, _salt) : stdgo._internal.hash.Hash_Hash.Hash);
        _extractor.write(_secret);
        return _extractor.sum((null : stdgo.Slice<stdgo.GoUInt8>));
    }
