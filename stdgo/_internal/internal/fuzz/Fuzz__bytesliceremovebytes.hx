package stdgo._internal.internal.fuzz;
function _byteSliceRemoveBytes(_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        if (((_b.length) <= (1 : stdgo.GoInt) : Bool)) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _pos0 = (@:check2r _m._rand((_b.length)) : stdgo.GoInt);
        var _pos1 = (_pos0 + @:check2r _m._chooseLen(((_b.length) - _pos0 : stdgo.GoInt)) : stdgo.GoInt);
        (_b.__slice__(_pos0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_b.__slice__(_pos1) : stdgo.Slice<stdgo.GoUInt8>));
        _b = (_b.__slice__(0, ((_b.length) - ((_pos1 - _pos0 : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        return _b;
    }
