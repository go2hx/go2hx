package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
function _byteSliceArithmeticUint8(_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _pos = (_m._rand((_b.length)) : stdgo.GoInt);
        var _v = ((_m._rand((35 : stdgo.GoInt)) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
        if (_m._r._bool()) {
            _b[(_pos : stdgo.GoInt)] = (_b[(_pos : stdgo.GoInt)] + (_v) : stdgo.GoUInt8);
        } else {
            _b[(_pos : stdgo.GoInt)] = (_b[(_pos : stdgo.GoInt)] - (_v) : stdgo.GoUInt8);
        };
        return _b;
    }
