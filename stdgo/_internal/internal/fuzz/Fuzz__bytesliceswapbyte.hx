package stdgo._internal.internal.fuzz;
function _byteSliceSwapByte(_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        if (((_b.length) <= (1 : stdgo.GoInt) : Bool)) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _src = (@:check2r _m._rand((_b.length)) : stdgo.GoInt);
        var _dst = (@:check2r _m._rand((_b.length)) : stdgo.GoInt);
        while (_dst == (_src)) {
            _dst = @:check2r _m._rand((_b.length));
        };
        {
            final __tmp__0 = _b[(_dst : stdgo.GoInt)];
            final __tmp__1 = _b[(_src : stdgo.GoInt)];
            final __tmp__2 = _b;
            final __tmp__3 = (_src : stdgo.GoInt);
            final __tmp__4 = _b;
            final __tmp__5 = (_dst : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
        return _b;
    }
