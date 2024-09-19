package stdgo._internal.math.big;
function testFloatPredicates(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__14 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_T__struct_16.T__struct_16>(6, 6, ...[({ _x : ("-Inf" : stdgo.GoString), _sign : (-1 : stdgo.GoInt), _signbit : true, _inf : true } : stdgo._internal.math.big.Big_T__struct_16.T__struct_16), ({ _x : ("-1" : stdgo.GoString), _sign : (-1 : stdgo.GoInt), _signbit : true, _inf : false } : stdgo._internal.math.big.Big_T__struct_16.T__struct_16), ({ _x : ("-0" : stdgo.GoString), _signbit : true, _sign : (0 : stdgo.GoInt), _inf : false } : stdgo._internal.math.big.Big_T__struct_16.T__struct_16), ({ _x : ("0" : stdgo.GoString), _sign : (0 : stdgo.GoInt), _signbit : false, _inf : false } : stdgo._internal.math.big.Big_T__struct_16.T__struct_16), ({ _x : ("1" : stdgo.GoString), _sign : (1 : stdgo.GoInt), _signbit : false, _inf : false } : stdgo._internal.math.big.Big_T__struct_16.T__struct_16), ({ _x : ("+Inf" : stdgo.GoString), _sign : (1 : stdgo.GoInt), _inf : true, _signbit : false } : stdgo._internal.math.big.Big_T__struct_16.T__struct_16)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _x : ("" : stdgo.GoString), _sign : (0 : stdgo.GoInt), _signbit : false, _inf : false } : stdgo._internal.math.big.Big_T__struct_16.T__struct_16)])) : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_16.T__struct_16>)) {
            var _x = stdgo._internal.math.big.Big__makeFloat._makeFloat(_test._x?.__copy__());
            {
                var _got = (_x.signbit() : Bool);
                if (_got != (_test._signbit)) {
                    _t.errorf(("(%s).Signbit() = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._signbit));
                };
            };
            {
                var _got = (_x.sign() : stdgo.GoInt);
                if (_got != (_test._sign)) {
                    _t.errorf(("(%s).Sign() = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._sign));
                };
            };
            {
                var _got = (_x.isInf() : Bool);
                if (_got != (_test._inf)) {
                    _t.errorf(("(%s).IsInf() = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._inf));
                };
            };
        };
    }