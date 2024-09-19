package _internal.math.big_test;
function example_fibonacci():Void {
        var _a = stdgo._internal.math.big.Big_newInt.newInt((0i64 : stdgo.GoInt64));
        var _b = stdgo._internal.math.big.Big_newInt.newInt((1i64 : stdgo.GoInt64));
        var _limit:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
        _limit.exp(stdgo._internal.math.big.Big_newInt.newInt((10i64 : stdgo.GoInt64)), stdgo._internal.math.big.Big_newInt.newInt((99i64 : stdgo.GoInt64)), null);
        while ((_a.cmp((stdgo.Go.setRef(_limit) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>)) < (0 : stdgo.GoInt) : Bool)) {
            _a.add(_a, _b);
            {
                final __tmp__0 = _b;
                final __tmp__1 = _a;
                _a = __tmp__0;
                _b = __tmp__1;
            };
        };
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_a)));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_a.probablyPrime((20 : stdgo.GoInt))));
    }
