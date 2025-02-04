package stdgo._internal.math.big;
function testNLZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _x:stdgo._internal.math.big.Big_word.Word = (-2147483648u32 : stdgo._internal.math.big.Big_word.Word);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i <= (32 : stdgo.GoInt) : Bool)) {
                if ((stdgo._internal.math.big.Big__nlz._nlz(_x) : stdgo.GoInt) != (_i)) {
                    @:check2r _t.errorf(("failed at %x: got %d want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(stdgo._internal.math.big.Big__nlz._nlz(_x)), stdgo.Go.toInterface(_i));
                };
_x = (_x >> ((1i64 : stdgo.GoUInt64)) : stdgo._internal.math.big.Big_word.Word);
                _i++;
            };
        };
    }
