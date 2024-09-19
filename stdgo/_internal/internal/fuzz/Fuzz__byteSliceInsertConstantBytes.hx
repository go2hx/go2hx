package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
function _byteSliceInsertConstantBytes(_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        if (((_b.length) <= (1 : stdgo.GoInt) : Bool)) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _dst = (_m._rand((_b.length)) : stdgo.GoInt);
        var _n = (_m._chooseLen((4096 : stdgo.GoInt)) : stdgo.GoInt);
        if ((((_b.length) + _n : stdgo.GoInt) >= _b.capacity : Bool)) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        _b = (_b.__slice__(0, ((_b.length) + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        stdgo.Go.copySlice((_b.__slice__((_dst + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_b.__slice__(_dst) : stdgo.Slice<stdgo.GoUInt8>));
        var _rb = (_m._rand((256 : stdgo.GoInt)) : stdgo.GoUInt8);
        {
            var _i = (_dst : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_dst + _n : stdgo.GoInt) : Bool), _i++, {
                _b[(_i : stdgo.GoInt)] = _rb;
            });
        };
        return _b;
    }
