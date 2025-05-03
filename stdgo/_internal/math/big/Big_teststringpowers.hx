package stdgo._internal.math.big;
function testStringPowers(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _p:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
        //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L447"
        {
            var _b = (2 : stdgo.GoInt);
            while ((_b <= (16 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L448"
                {
                    _p = (0u32 : stdgo._internal.math.big.Big_word.Word);
                    while ((_p <= (512u32 : stdgo._internal.math.big.Big_word.Word) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L449"
                        if ((stdgo._internal.testing.Testing_short.short() && (_p > (10u32 : stdgo._internal.math.big.Big_word.Word) : Bool) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L450"
                            break;
                        };
var _x = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._expWW((_b : stdgo._internal.math.big.Big_word.Word), _p) : stdgo._internal.math.big.Big_t_nat.T_nat);
var _xs = _x._utoa(_b);
var _xs2 = stdgo._internal.math.big.Big__itoa._itoa(_x, _b);
//"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L455"
                        if (!stdgo._internal.bytes.Bytes_equal.equal(_xs, _xs2)) {
                            //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L456"
                            _t.errorf(("failed at %d ** %d in base %d: %s != %s" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_xs), stdgo.Go.toInterface(_xs2));
                        };
                        _p++;
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L459"
                if (((_b >= (3 : stdgo.GoInt) : Bool) && stdgo._internal.testing.Testing_short.short() : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L460"
                    break;
                };
                _b++;
            };
        };
    }
