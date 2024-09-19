package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
function _byteSliceXORByte(_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _pos = (_m._rand((_b.length)) : stdgo.GoInt);
        _b[(_pos : stdgo.GoInt)] = (_b[(_pos : stdgo.GoInt)] ^ ((((1 : stdgo.GoInt) + _m._rand((255 : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo.GoUInt8);
        return _b;
    }
