package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
function _byteSliceOverwriteBytes(_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        if (((_b.length) <= (1 : stdgo.GoInt) : Bool)) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _src = (_m._rand((_b.length)) : stdgo.GoInt);
        var _dst = (_m._rand((_b.length)) : stdgo.GoInt);
        while (_dst == (_src)) {
            _dst = _m._rand((_b.length));
        };
        var _n = (_m._chooseLen((((_b.length) - _src : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        stdgo.Go.copySlice((_b.__slice__(_dst) : stdgo.Slice<stdgo.GoUInt8>), (_b.__slice__(_src, (_src + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        return _b;
    }