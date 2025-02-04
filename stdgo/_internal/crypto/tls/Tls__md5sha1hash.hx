package stdgo._internal.crypto.tls;
function _md5SHA1Hash(_slices:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> {
        var _md5sha1 = (new stdgo.Slice<stdgo.GoUInt8>((36 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _hmd5 = (stdgo._internal.crypto.md5.Md5_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
        for (__65 => _slice in _slices) {
            _hmd5.write(_slice);
        };
        _md5sha1.__copyTo__(_hmd5.sum((null : stdgo.Slice<stdgo.GoUInt8>)));
        (_md5sha1.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(stdgo._internal.crypto.tls.Tls__sha1hash._sha1Hash(_slices));
        return _md5sha1;
    }
