package stdgo._internal.crypto.tls;
function _sha1Hash(_slices:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> {
        var _hsha1 = (stdgo._internal.crypto.sha1.Sha1_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
        for (__65 => _slice in _slices) {
            _hsha1.write(_slice);
        };
        return _hsha1.sum((null : stdgo.Slice<stdgo.GoUInt8>));
    }
