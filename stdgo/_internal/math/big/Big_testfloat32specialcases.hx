package stdgo._internal.math.big;
function testFloat32SpecialCases(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L478"
        for (__8 => _input in stdgo._internal.math.big.Big__float64inputs._float64inputs) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L479"
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_input?.__copy__(), ("long:" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L480"
                if (!stdgo._internal.math.big.Big__long._long.value) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L481"
                    continue;
                };
                _input = (_input.__slice__(((("long:" : stdgo.GoString) : stdgo.GoString).length)) : stdgo.GoString)?.__copy__();
            };
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setString(_input?.__copy__()), _r:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L487"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L488"
                _t.errorf(("Rat.SetString(%q) failed" : stdgo.GoString), stdgo.Go.toInterface(_input));
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L489"
                continue;
            };
            var __tmp__ = _r.float32(), _f:stdgo.GoFloat32 = __tmp__._0, _exact:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L496"
            if (!stdgo._internal.strings.Strings_contains.contains(_input?.__copy__(), ("/" : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parsefloat.parseFloat(_input?.__copy__(), (32 : stdgo.GoInt)), _e64:stdgo.GoFloat64 = __tmp__._0, __9:stdgo.Error = __tmp__._1;
                var _e = (_e64 : stdgo.GoFloat32);
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L503"
                if (stdgo._internal.math.Math_float32bits.float32bits(_e) == (stdgo._internal.math.Math_float32bits.float32bits(_f))) {} else if (((_f == (0 : stdgo.GoFloat64)) && (_r.num().bitLen() == (0 : stdgo.GoInt)) : Bool)) {} else {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L509"
                    _t.errorf(("strconv.ParseFloat(%q) = %g (%b), want %g (%b); delta = %g" : stdgo.GoString), stdgo.Go.toInterface(_input), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f), stdgo.Go.toInterface((_f - _e : stdgo.GoFloat32)));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L513"
            if (!stdgo._internal.math.big.Big__isfinite._isFinite((_f : stdgo.GoFloat64))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L514"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L518"
            if (!stdgo._internal.math.big.Big__checkisbestapprox32._checkIsBestApprox32(_t, _f, _r)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L520"
                _t.errorf(("(input was %q)" : stdgo.GoString), stdgo.Go.toInterface(_input));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L524"
            stdgo._internal.math.big.Big__checknonlossyroundtrip32._checkNonLossyRoundtrip32(_t, _f);
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L527"
            {
                var _wasExact = ((stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setFloat64((_f : stdgo.GoFloat64)).cmp(_r) == ((0 : stdgo.GoInt)) : Bool);
                if (_wasExact != (_exact)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L528"
                    _t.errorf(("Rat.SetString(%q).Float32().exact = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_input), stdgo.Go.toInterface(_exact), stdgo.Go.toInterface(_wasExact));
                };
            };
        };
    }
