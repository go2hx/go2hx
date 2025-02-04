package stdgo._internal.math.big;
function testStringPowers(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _p:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
        {
            var _b = (2 : stdgo.GoInt);
            while ((_b <= (16 : stdgo.GoInt) : Bool)) {
                {
                    _p = (0u32 : stdgo._internal.math.big.Big_word.Word);
                    while ((_p <= (512u32 : stdgo._internal.math.big.Big_word.Word) : Bool)) {
                        if ((stdgo._internal.testing.Testing_short.short() && (_p > (10u32 : stdgo._internal.math.big.Big_word.Word) : Bool) : Bool)) {
                            break;
                        };
var _x = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._expWW((_b : stdgo._internal.math.big.Big_word.Word), _p) : stdgo._internal.math.big.Big_t_nat.T_nat);
var _xs = _x._utoa(_b);
var _xs2 = stdgo._internal.math.big.Big__itoa._itoa(_x, _b);
if (!stdgo._internal.bytes.Bytes_equal.equal(_xs, _xs2)) {
                            @:check2r _t.errorf(("failed at %d ** %d in base %d: %s != %s" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_xs), stdgo.Go.toInterface(_xs2));
                        };
                        _p++;
                    };
                };
if (((_b >= (3 : stdgo.GoInt) : Bool) && stdgo._internal.testing.Testing_short.short() : Bool)) {
                    break;
                };
                _b++;
            };
        };
    }
