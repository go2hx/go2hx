package stdgo._internal.math.big;
function testFloatSetUint64(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _want in (new stdgo.Slice<stdgo.GoUInt64>(8, 8, ...[(0i64 : stdgo.GoUInt64), (1i64 : stdgo.GoUInt64), (2i64 : stdgo.GoUInt64), (10i64 : stdgo.GoUInt64), (100i64 : stdgo.GoUInt64), (4294967295i64 : stdgo.GoUInt64), (4294967296i64 : stdgo.GoUInt64), (-1i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>)) {
            var _f:stdgo._internal.math.big.Big_Float_.Float_ = ({} : stdgo._internal.math.big.Big_Float_.Float_);
            _f.setUint64(_want);
            {
                var _got = (_f._uint64() : stdgo.GoUInt64);
                if (_got != (_want)) {
                    _t.errorf(("got %#x (%s); want %#x" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_f.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))), stdgo.Go.toInterface(_want));
                };
            };
        };
        {};
        {
            var _prec = ((1u32 : stdgo.GoUInt) : stdgo.GoUInt);
            while ((_prec <= (64u32 : stdgo.GoUInt) : Bool)) {
                var _f = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec(_prec).setMode((2 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode)).setUint64((-8690466094656961759i64 : stdgo.GoUInt64));
var _got = (_f._uint64() : stdgo.GoUInt64);
var _want = ((-8690466094656961759i64 : stdgo.GoUInt64) & ((((((1i64 : stdgo.GoUInt64) << (((64u32 : stdgo.GoUInt) - _prec : stdgo.GoUInt)) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) ^ (-1i32 : stdgo.GoInt) : stdgo.GoUInt64)) : stdgo.GoUInt64);
if (_got != (_want)) {
                    _t.errorf(("got %#x (%s); want %#x" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_f.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))), stdgo.Go.toInterface(_want));
                };
                _prec++;
            };
        };
    }
