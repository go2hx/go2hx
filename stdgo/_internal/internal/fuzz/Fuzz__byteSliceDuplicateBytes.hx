package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
function _byteSliceDuplicateBytes(_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        if (((_b.length) <= (1 : stdgo.GoInt) : Bool)) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _src = (_m._rand((_b.length)) : stdgo.GoInt);
        var _dst = (_m._rand((_b.length)) : stdgo.GoInt);
        while (_dst == (_src)) {
            _dst = _m._rand((_b.length));
        };
        var _n = (_m._chooseLen(((_b.length) - _src : stdgo.GoInt)) : stdgo.GoInt);
        if ((((_b.length) + ((_n * (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) >= _b.capacity : Bool)) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _end = (_b.length : stdgo.GoInt);
        _b = (_b.__slice__(0, (_end + ((_n * (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        stdgo.Go.copySlice((_b.__slice__((_end + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_b.__slice__(_src, (_src + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        stdgo.Go.copySlice((_b.__slice__((_dst + _n : stdgo.GoInt), (_end + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_b.__slice__(_dst, _end) : stdgo.Slice<stdgo.GoUInt8>));
        stdgo.Go.copySlice((_b.__slice__(_dst) : stdgo.Slice<stdgo.GoUInt8>), (_b.__slice__((_end + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        _b = (_b.__slice__(0, (_end + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        return _b;
    }