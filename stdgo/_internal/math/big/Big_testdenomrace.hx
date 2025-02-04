package stdgo._internal.math.big;
function testDenomRace(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _x = stdgo._internal.math.big.Big_newrat.newRat((1i64 : stdgo.GoInt64), (2i64 : stdgo.GoInt64));
        {};
        var _c = (new stdgo.Chan<Bool>((3 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (3 : stdgo.GoInt) : Bool)) {
                stdgo.Go.routine(() -> ({
                    var a = function():Void {
                        @:check2r _x.denom();
                        @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setRat(_x);
                        _c.__send__(true);
                    };
                    a();
                }));
                _i++;
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (3 : stdgo.GoInt) : Bool)) {
                _c.__get__();
                _i++;
            };
        };
    }
