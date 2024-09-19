package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
function _byteSliceOverwriteInterestingUint32(_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        if (((_b.length) < (4 : stdgo.GoInt) : Bool)) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _pos = (_m._rand(((_b.length) - (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        var _v = (stdgo._internal.internal.fuzz.Fuzz__interesting32._interesting32[(_m._rand((stdgo._internal.internal.fuzz.Fuzz__interesting32._interesting32.length)) : stdgo.GoInt)] : stdgo.GoUInt32);
        _m._randByteOrder().putUint32((_b.__slice__(_pos) : stdgo.Slice<stdgo.GoUInt8>), _v);
        return _b;
    }
