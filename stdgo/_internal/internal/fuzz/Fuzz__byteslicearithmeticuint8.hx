package stdgo._internal.internal.fuzz;
function _byteSliceArithmeticUint8(_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _pos = (@:check2r _m._rand((_b.length)) : stdgo.GoInt);
        var _v = ((@:check2r _m._rand((35 : stdgo.GoInt)) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
        if ((@:checkr _m ?? throw "null pointer dereference")._r._bool()) {
            _b[(_pos : stdgo.GoInt)] = (_b[(_pos : stdgo.GoInt)] + (_v) : stdgo.GoUInt8);
        } else {
            _b[(_pos : stdgo.GoInt)] = (_b[(_pos : stdgo.GoInt)] - (_v) : stdgo.GoUInt8);
        };
        return _b;
    }
