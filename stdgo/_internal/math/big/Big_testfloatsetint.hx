package stdgo._internal.math.big;
function testFloatSetInt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L659"
        for (__8 => _want in (new stdgo.Slice<stdgo.GoString>(6, 6, ...[("0" : stdgo.GoString), ("1" : stdgo.GoString), ("-1" : stdgo.GoString), ("1234567890" : stdgo.GoString), ("123456789012345678901234567890" : stdgo.GoString), ("123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var _x:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
            var __tmp__ = _x.setString(_want?.__copy__(), (0 : stdgo.GoInt)), __9:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L669"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L670"
                _t.errorf(("invalid integer %s" : stdgo.GoString), stdgo.Go.toInterface(_want));
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L671"
                continue;
            };
            var _n = (_x.bitLen() : stdgo.GoInt);
            var _f:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L676"
            _f.setInt((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L679"
            if ((_n < (64 : stdgo.GoInt) : Bool)) {
                _n = (64 : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L682"
            {
                var _prec = (_f.prec() : stdgo.GoUInt);
                if (_prec != ((_n : stdgo.GoUInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L683"
                    _t.errorf(("got prec = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(_n));
                };
            };
            var _got = (_f.text((103 : stdgo.GoUInt8), (100 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L688"
            if (_got != (_want)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L689"
                _t.errorf(("got %s (%s); want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_f.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))), stdgo.Go.toInterface(_want));
            };
        };
    }
