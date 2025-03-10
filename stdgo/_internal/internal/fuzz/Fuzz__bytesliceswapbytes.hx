package stdgo._internal.internal.fuzz;
function _byteSliceSwapBytes(_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        if (((_b.length) <= (1 : stdgo.GoInt) : Bool)) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _src = (@:check2r _m._rand((_b.length)) : stdgo.GoInt);
        var _dst = (@:check2r _m._rand((_b.length)) : stdgo.GoInt);
        while (_dst == (_src)) {
            _dst = @:check2r _m._rand((_b.length));
        };
        var _max = (_dst : stdgo.GoInt);
        if ((_src > _max : Bool)) {
            _max = _src;
        };
        var _n = (@:check2r _m._chooseLen((((_b.length) - _max : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        if ((((_src > _dst : Bool) && ((_dst + _n : stdgo.GoInt) >= _src : Bool) : Bool) || ((_dst > _src : Bool) && ((_src + _n : stdgo.GoInt) >= _dst : Bool) : Bool) : Bool)) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        if ((((_b.length) + _n : stdgo.GoInt) >= _b.capacity : Bool)) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _end = (_b.length : stdgo.GoInt);
        _b = (_b.__slice__(0, (_end + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        (_b.__slice__(_end) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_b.__slice__(_dst, (_dst + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        (_b.__slice__(_dst) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_b.__slice__(_src, (_src + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        (_b.__slice__(_src) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_b.__slice__(_end) : stdgo.Slice<stdgo.GoUInt8>));
        _b = (_b.__slice__(0, _end) : stdgo.Slice<stdgo.GoUInt8>);
        return _b;
    }
