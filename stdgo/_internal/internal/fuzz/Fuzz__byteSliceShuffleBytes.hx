package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
function _byteSliceShuffleBytes(_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        if (((_b.length) <= (1 : stdgo.GoInt) : Bool)) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _dst = (_m._rand((_b.length)) : stdgo.GoInt);
        var _n = (_m._chooseLen(((_b.length) - _dst : stdgo.GoInt)) : stdgo.GoInt);
        if ((_n <= (2 : stdgo.GoInt) : Bool)) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        {
            var _i = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i > (0 : stdgo.GoInt) : Bool), _i--, {
                var _j = (_m._rand((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                {
                    final __tmp__0 = _b[(_dst + _j : stdgo.GoInt)];
                    final __tmp__1 = _b[(_dst + _i : stdgo.GoInt)];
                    final __tmp__2 = _b;
                    final __tmp__3 = (_dst + _i : stdgo.GoInt);
                    final __tmp__4 = _b;
                    final __tmp__5 = (_dst + _j : stdgo.GoInt);
                    __tmp__2[__tmp__3] = __tmp__0;
                    __tmp__4[__tmp__5] = __tmp__1;
                };
            });
        };
        return _b;
    }