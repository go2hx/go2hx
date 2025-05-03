package stdgo._internal.math.big;
function testDenomRace(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _x = stdgo._internal.math.big.Big_newrat.newRat((1i64 : stdgo.GoInt64), (2i64 : stdgo.GoInt64));
        {};
        var _c = (new stdgo.Chan<Bool>((3 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L734"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (3 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L735"
                stdgo.Go.routine(() -> ({
                    var a = function():Void {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L738"
                        _x.denom();
                        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L739"
                        (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setRat(_x);
                        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L740"
                        _c.__send__(true);
                    };
                    a();
                }));
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L743"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (3 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L744"
                _c.__get__();
                _i++;
            };
        };
    }
