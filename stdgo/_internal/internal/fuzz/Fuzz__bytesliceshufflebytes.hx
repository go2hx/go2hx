package stdgo._internal.internal.fuzz;
function _byteSliceShuffleBytes(_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L259"
        if (((_b.length) <= (1 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L260"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _dst = (_m._rand((_b.length)) : stdgo.GoInt);
        var _n = (_m._chooseLen(((_b.length) - _dst : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L264"
        if ((_n <= (2 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L265"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L270"
        {
            var _i = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                var _j = (_m._rand((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
{
                    final __tmp__0 = _b[(_dst + _j : stdgo.GoInt)];
                    final __tmp__1 = _b[(_dst + _i : stdgo.GoInt)];
                    final __tmp__2 = _b;
                    final __tmp__3 = (_dst + _i : stdgo.GoInt);
                    final __tmp__4 = _b;
                    final __tmp__5 = (_dst + _j : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
                _i--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L274"
        return _b;
    }
