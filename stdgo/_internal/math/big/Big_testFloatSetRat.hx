package stdgo._internal.math.big;
function testFloatSetRat(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _want in (new stdgo.Slice<stdgo.GoString>(8, 8, ...[("0" : stdgo.GoString), ("1" : stdgo.GoString), ("-1" : stdgo.GoString), ("1234567890" : stdgo.GoString), ("123456789012345678901234567890" : stdgo.GoString), ("123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890" : stdgo.GoString), ("1.2" : stdgo.GoString), ("3.14159265" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var _x:stdgo._internal.math.big.Big_Rat.Rat = ({} : stdgo._internal.math.big.Big_Rat.Rat);
            var __tmp__ = _x.setString(_want?.__copy__()), __9:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                _t.errorf(("invalid fraction %s" : stdgo.GoString), stdgo.Go.toInterface(_want));
                continue;
            };
            var _n = (stdgo._internal.math.big.Big__max._max(_x.num().bitLen(), _x.denom().bitLen()) : stdgo.GoInt);
            var __0:stdgo._internal.math.big.Big_Float_.Float_ = ({} : stdgo._internal.math.big.Big_Float_.Float_), __1:stdgo._internal.math.big.Big_Float_.Float_ = ({} : stdgo._internal.math.big.Big_Float_.Float_);
var _f2 = __1, _f1 = __0;
            _f2.setPrec((1000u32 : stdgo.GoUInt));
            _f1.setRat((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>));
            _f2.setRat((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>));
            if ((_n < (64 : stdgo.GoInt) : Bool)) {
                _n = (64 : stdgo.GoInt);
            };
            {
                var _prec = (_f1.prec() : stdgo.GoUInt);
                if (_prec != ((_n : stdgo.GoUInt))) {
                    _t.errorf(("got prec = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(_n));
                };
            };
            var _got = (_f2.text((103 : stdgo.GoUInt8), (100 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
            if (_got != (_want)) {
                _t.errorf(("got %s (%s); want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_f2.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))), stdgo.Go.toInterface(_want));
            };
        };
    }
