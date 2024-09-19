package stdgo._internal.math.big;
function testFloat64SpecialCases(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__14 => _input in stdgo._internal.math.big.Big__float64inputs._float64inputs) {
            if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_input?.__copy__(), ("long:" : stdgo.GoString))) {
                if (!stdgo._internal.math.big.Big__long._long.value) {
                    continue;
                };
                _input = (_input.__slice__((("long:" : stdgo.GoString).length)) : stdgo.GoString)?.__copy__();
            };
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).setString(_input?.__copy__()), _r:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                _t.errorf(("Rat.SetString(%q) failed" : stdgo.GoString), stdgo.Go.toInterface(_input));
                continue;
            };
            var __tmp__ = _r.float64(), _f:stdgo.GoFloat64 = __tmp__._0, _exact:Bool = __tmp__._1;
            if (!stdgo._internal.strings.Strings_contains.contains(_input?.__copy__(), ("/" : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(_input?.__copy__(), (64 : stdgo.GoInt)), _e:stdgo.GoFloat64 = __tmp__._0, __15:stdgo.Error = __tmp__._1;
                if (stdgo._internal.math.Math_float64bits.float64bits(_e) == (stdgo._internal.math.Math_float64bits.float64bits(_f))) {} else if (((_f == (0 : stdgo.GoFloat64)) && (_r.num().bitLen() == (0 : stdgo.GoInt)) : Bool)) {} else {
                    _t.errorf(("strconv.ParseFloat(%q) = %g (%b), want %g (%b); delta = %g" : stdgo.GoString), stdgo.Go.toInterface(_input), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f), stdgo.Go.toInterface((_f - _e : stdgo.GoFloat64)));
                };
            };
            if (!stdgo._internal.math.big.Big__isFinite._isFinite(_f)) {
                continue;
            };
            if (!stdgo._internal.math.big.Big__checkIsBestApprox64._checkIsBestApprox64(_t, _f, _r)) {
                _t.errorf(("(input was %q)" : stdgo.GoString), stdgo.Go.toInterface(_input));
            };
            stdgo._internal.math.big.Big__checkNonLossyRoundtrip64._checkNonLossyRoundtrip64(_t, _f);
            {
                var _wasExact = ((stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).setFloat64(_f).cmp(_r) == ((0 : stdgo.GoInt)) : Bool);
                if (_wasExact != (_exact)) {
                    _t.errorf(("Rat.SetString(%q).Float64().exact = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_input), stdgo.Go.toInterface(_exact), stdgo.Go.toInterface(_wasExact));
                };
            };
        };
    }
