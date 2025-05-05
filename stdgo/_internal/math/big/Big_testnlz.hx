package stdgo._internal.math.big;
function testNLZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _x:stdgo._internal.math.big.Big_word.Word = (-2147483648u32 : stdgo._internal.math.big.Big_word.Word);
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L246"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i <= (32 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L247"
                if ((stdgo._internal.math.big.Big__nlz._nlz(_x) : stdgo.GoInt) != (_i)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L248"
                    _t.errorf(("failed at %x: got %d want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(stdgo._internal.math.big.Big__nlz._nlz(_x)), stdgo.Go.toInterface(_i));
                };
_x = (_x >> ((1i64 : stdgo.GoUInt64)) : stdgo._internal.math.big.Big_word.Word);
                _i++;
            };
        };
    }
