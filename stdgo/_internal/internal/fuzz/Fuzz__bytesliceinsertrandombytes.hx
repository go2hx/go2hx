package stdgo._internal.internal.fuzz;
function _byteSliceInsertRandomBytes(_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var _pos = (@:check2r _m._rand(((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        var _n = (@:check2r _m._chooseLen((1024 : stdgo.GoInt)) : stdgo.GoInt);
        if ((((_b.length) + _n : stdgo.GoInt) >= _b.capacity : Bool)) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        _b = (_b.__slice__(0, ((_b.length) + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        (_b.__slice__((_pos + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_b.__slice__(_pos) : stdgo.Slice<stdgo.GoUInt8>));
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _b[(_pos + _i : stdgo.GoInt)] = (@:check2r _m._rand((256 : stdgo.GoInt)) : stdgo.GoUInt8);
                _i++;
            };
        };
        return _b;
    }
