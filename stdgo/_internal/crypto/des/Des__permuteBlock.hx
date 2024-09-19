package stdgo._internal.crypto.des;
function _permuteBlock(_src:stdgo.GoUInt64, _permutation:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 {
        var _block = (0 : stdgo.GoUInt64);
        for (_position => _n in _permutation) {
            var _bit = (((_src >> _n : stdgo.GoUInt64)) & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            _block = (_block | ((_bit << (((((_permutation.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) - _position : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        return _block;
    }
