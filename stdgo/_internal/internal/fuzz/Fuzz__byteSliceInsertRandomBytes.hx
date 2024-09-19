package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
function _byteSliceInsertRandomBytes(_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var _pos = (_m._rand(((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        var _n = (_m._chooseLen((1024 : stdgo.GoInt)) : stdgo.GoInt);
        if ((((_b.length) + _n : stdgo.GoInt) >= _b.capacity : Bool)) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        _b = (_b.__slice__(0, ((_b.length) + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        stdgo.Go.copySlice((_b.__slice__((_pos + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_b.__slice__(_pos) : stdgo.Slice<stdgo.GoUInt8>));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                _b[(_pos + _i : stdgo.GoInt)] = (_m._rand((256 : stdgo.GoInt)) : stdgo.GoUInt8);
            });
        };
        return _b;
    }
