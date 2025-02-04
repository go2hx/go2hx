package stdgo._internal.math.big;
function _shrVU_g(_z:stdgo.Slice<stdgo._internal.math.big.Big_word.Word>, _x:stdgo.Slice<stdgo._internal.math.big.Big_word.Word>, _s:stdgo.GoUInt):stdgo._internal.math.big.Big_word.Word {
        var _c = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
        if (_s == ((0u32 : stdgo.GoUInt))) {
            _z.__copyTo__(_x);
            return _c;
        };
        if ((_z.length) == ((0 : stdgo.GoInt))) {
            return _c;
        };
        if ((_x.length) != ((_z.length))) {
            throw stdgo.Go.toInterface(("len(x) != len(z)" : stdgo.GoString));
        };
        _s = (_s & ((31u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        var __349 = ((32u32 : stdgo.GoUInt) - _s : stdgo.GoUInt);
        __349 = (__349 & ((31u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        _c = (_x[(0 : stdgo.GoInt)] << __349 : stdgo._internal.math.big.Big_word.Word);
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (_z.length) : Bool)) {
                _z[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] = ((_x[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] >> _s : stdgo._internal.math.big.Big_word.Word) | (_x[(_i : stdgo.GoInt)] << __349 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
                _i++;
            };
        };
        _z[((_z.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (_x[((_z.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] >> _s : stdgo._internal.math.big.Big_word.Word);
        return _c;
    }
