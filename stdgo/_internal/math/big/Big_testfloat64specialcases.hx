package stdgo._internal.math.big;
function testFloat64SpecialCases(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L534"
        for (__8 => _input in stdgo._internal.math.big.Big__float64inputs._float64inputs) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L535"
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_input?.__copy__(), ("long:" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L536"
                if (!stdgo._internal.math.big.Big__long._long.value) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L537"
                    continue;
                };
                _input = (_input.__slice__(((("long:" : stdgo.GoString) : stdgo.GoString).length)) : stdgo.GoString)?.__copy__();
            };
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setString(_input?.__copy__()), _r:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L543"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L544"
                _t.errorf(("Rat.SetString(%q) failed" : stdgo.GoString), stdgo.Go.toInterface(_input));
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L545"
                continue;
            };
            var __tmp__ = _r.float64(), _f:stdgo.GoFloat64 = __tmp__._0, _exact:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L552"
            if (!stdgo._internal.strings.Strings_contains.contains(_input?.__copy__(), ("/" : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parsefloat.parseFloat(_input?.__copy__(), (64 : stdgo.GoInt)), _e:stdgo.GoFloat64 = __tmp__._0, __9:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L558"
                if (stdgo._internal.math.Math_float64bits.float64bits(_e) == (stdgo._internal.math.Math_float64bits.float64bits(_f))) {} else if (((_f == (0 : stdgo.GoFloat64)) && (_r.num().bitLen() == (0 : stdgo.GoInt)) : Bool)) {} else {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L564"
                    _t.errorf(("strconv.ParseFloat(%q) = %g (%b), want %g (%b); delta = %g" : stdgo.GoString), stdgo.Go.toInterface(_input), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f), stdgo.Go.toInterface((_f - _e : stdgo.GoFloat64)));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L568"
            if (!stdgo._internal.math.big.Big__isfinite._isFinite(_f)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L569"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L573"
            if (!stdgo._internal.math.big.Big__checkisbestapprox64._checkIsBestApprox64(_t, _f, _r)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L575"
                _t.errorf(("(input was %q)" : stdgo.GoString), stdgo.Go.toInterface(_input));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L579"
            stdgo._internal.math.big.Big__checknonlossyroundtrip64._checkNonLossyRoundtrip64(_t, _f);
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L582"
            {
                var _wasExact = ((stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setFloat64(_f).cmp(_r) == ((0 : stdgo.GoInt)) : Bool);
                if (_wasExact != (_exact)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L583"
                    _t.errorf(("Rat.SetString(%q).Float64().exact = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_input), stdgo.Go.toInterface(_exact), stdgo.Go.toInterface(_wasExact));
                };
            };
        };
    }
