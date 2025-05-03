package stdgo._internal.math.big;
function testFloatSetRat(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L697"
        for (__8 => _want in (new stdgo.Slice<stdgo.GoString>(8, 8, ...[("0" : stdgo.GoString), ("1" : stdgo.GoString), ("-1" : stdgo.GoString), ("1234567890" : stdgo.GoString), ("123456789012345678901234567890" : stdgo.GoString), ("123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890" : stdgo.GoString), ("1.2" : stdgo.GoString), ("3.14159265" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var _x:stdgo._internal.math.big.Big_rat.Rat = ({} : stdgo._internal.math.big.Big_rat.Rat);
            var __tmp__ = _x.setString(_want?.__copy__()), __9:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L710"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L711"
                _t.errorf(("invalid fraction %s" : stdgo.GoString), stdgo.Go.toInterface(_want));
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L712"
                continue;
            };
            var _n = (stdgo._internal.math.big.Big__max._max(_x.num().bitLen(), _x.denom().bitLen()) : stdgo.GoInt);
            var _f1:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_), _f2:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L717"
            _f2.setPrec((1000u32 : stdgo.GoUInt));
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L718"
            _f1.setRat((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>));
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L719"
            _f2.setRat((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>));
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L722"
            if ((_n < (64 : stdgo.GoInt) : Bool)) {
                _n = (64 : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L725"
            {
                var _prec = (_f1.prec() : stdgo.GoUInt);
                if (_prec != ((_n : stdgo.GoUInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L726"
                    _t.errorf(("got prec = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(_n));
                };
            };
            var _got = (_f2.text((103 : stdgo.GoUInt8), (100 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L730"
            if (_got != (_want)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L731"
                _t.errorf(("got %s (%s); want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_f2.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))), stdgo.Go.toInterface(_want));
            };
        };
    }
