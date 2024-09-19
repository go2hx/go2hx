package stdgo._internal.math.big;
function testFloatSetInt64(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__14 => _want in (new stdgo.Slice<stdgo.GoInt64>(8, 8, ...[(0i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64), (2i64 : stdgo.GoInt64), (10i64 : stdgo.GoInt64), (100i64 : stdgo.GoInt64), (4294967295i64 : stdgo.GoInt64), (4294967296i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>)) {
            for (_i => _ in (new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)) {
                if ((_i & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    _want = -_want;
                };
                var _f:stdgo._internal.math.big.Big_Float_.Float_ = ({} : stdgo._internal.math.big.Big_Float_.Float_);
                _f.setInt64(_want);
                {
                    var _got = (_f._int64() : stdgo.GoInt64);
                    if (_got != (_want)) {
                        _t.errorf(("got %#x (%s); want %#x" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_f.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))), stdgo.Go.toInterface(_want));
                    };
                };
            };
        };
        {};
        {
            var _prec = ((1u32 : stdgo.GoUInt) : stdgo.GoUInt);
            stdgo.Go.cfor((_prec <= (63u32 : stdgo.GoUInt) : Bool), _prec++, {
                var _f = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec(_prec).setMode((2 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode)).setInt64((8526495040805286416i64 : stdgo.GoInt64));
                var _got = (_f._int64() : stdgo.GoInt64);
                var _want = ((8526495040805286416i64 : stdgo.GoInt64) & ((((((1i64 : stdgo.GoInt64) << (((63u32 : stdgo.GoUInt) - _prec : stdgo.GoUInt)) : stdgo.GoInt64) - (1i64 : stdgo.GoInt64) : stdgo.GoInt64)) ^ (-1i32 : stdgo.GoInt) : stdgo.GoInt64)) : stdgo.GoInt64);
                if (_got != (_want)) {
                    _t.errorf(("got %#x (%s); want %#x" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_f.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))), stdgo.Go.toInterface(_want));
                };
            });
        };
    }