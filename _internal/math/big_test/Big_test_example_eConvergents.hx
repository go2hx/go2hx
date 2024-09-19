package _internal.math.big_test;
function example_eConvergents():Void {
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (15 : stdgo.GoInt) : Bool), _i++, {
                var _r = _internal.math.big_test.Big_test__recur._recur((0i64 : stdgo.GoInt64), (_i : stdgo.GoInt64));
                stdgo._internal.fmt.Fmt_printf.printf(("%-13s = %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(_r.floatString((8 : stdgo.GoInt))));
            });
        };
    }
