package stdgo._internal.math.big;
function testDenomRace(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x = stdgo._internal.math.big.Big_newRat.newRat((1i64 : stdgo.GoInt64), (2i64 : stdgo.GoInt64));
        {};
        var _c = (new stdgo.Chan<Bool>((3 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (3 : stdgo.GoInt) : Bool), _i++, {
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        _x.denom();
                        (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setRat(_x);
                        _c.__send__(true);
                    };
                    a();
                });
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (3 : stdgo.GoInt) : Bool), _i++, {
                _c.__get__();
            });
        };
    }