package stdgo._internal.math.big;
function testFloatSetInt64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L570"
        for (__8 => _want in (new stdgo.Slice<stdgo.GoInt64>(8, 8, ...[(0i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64), (2i64 : stdgo.GoInt64), (10i64 : stdgo.GoInt64), (100i64 : stdgo.GoInt64), (4294967295i64 : stdgo.GoInt64), (4294967296i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L580"
            for (_i => _ in (new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>).__copy__()) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L581"
                if ((_i & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    _want = -_want;
                };
                var _f:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_);
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L585"
                _f.setInt64(_want);
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L586"
                {
                    var _got = (_f._int64() : stdgo.GoInt64);
                    if (_got != (_want)) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L587"
                        _t.errorf(("got %#x (%s); want %#x" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_f.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))), stdgo.Go.toInterface(_want));
                    };
                };
            };
        };
        {};
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L594"
        {
            var _prec = ((1u32 : stdgo.GoUInt) : stdgo.GoUInt);
            while ((_prec <= (63u32 : stdgo.GoUInt) : Bool)) {
                var _f = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_prec).setMode((2 : stdgo._internal.math.big.Big_roundingmode.RoundingMode)).setInt64((8526495040805286416i64 : stdgo.GoInt64));
var _got = (_f._int64() : stdgo.GoInt64);
var _want = ((8526495040805286416i64 : stdgo.GoInt64) & ((((((1i64 : stdgo.GoInt64) << (((63u32 : stdgo.GoUInt) - _prec : stdgo.GoUInt)) : stdgo.GoInt64) - (1i64 : stdgo.GoInt64) : stdgo.GoInt64)) ^ (-1i64 : stdgo.GoInt32) : stdgo.GoInt64)) : stdgo.GoInt64);
//"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L598"
                if (_got != (_want)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L599"
                    _t.errorf(("got %#x (%s); want %#x" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_f.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))), stdgo.Go.toInterface(_want));
                };
                _prec++;
            };
        };
    }
