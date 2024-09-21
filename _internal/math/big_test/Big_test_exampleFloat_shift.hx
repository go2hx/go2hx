package _internal.math.big_test;
function exampleFloat_shift():Void {
        {
            var _s = (-5 : stdgo.GoInt);
            stdgo.Go.cfor((_s <= (5 : stdgo.GoInt) : Bool), _s++, {
                var _x = stdgo._internal.math.big.Big_newFloat.newFloat((0.5 : stdgo.GoFloat64));
                _x.setMantExp(_x, (_x.mantExp(null) + _s : stdgo.GoInt));
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
            });
        };
    }
