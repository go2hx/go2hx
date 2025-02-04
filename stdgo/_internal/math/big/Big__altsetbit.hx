package stdgo._internal.math.big;
function _altSetBit(_z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _i:stdgo.GoInt, _b:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        var _one = stdgo._internal.math.big.Big_newint.newInt((1i64 : stdgo.GoInt64));
        var _m = @:check2r _one.lsh(_one, (_i : stdgo.GoUInt));
        {
            final __value__ = _b;
            if (__value__ == ((1u32 : stdgo.GoUInt))) {
                return @:check2r _z.or(_x, _m);
            } else if (__value__ == ((0u32 : stdgo.GoUInt))) {
                return @:check2r _z.andNot(_x, _m);
            };
        };
        throw stdgo.Go.toInterface(("set bit is not 0 or 1" : stdgo.GoString));
    }
