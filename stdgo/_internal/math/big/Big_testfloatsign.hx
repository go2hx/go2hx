package stdgo._internal.math.big;
function testFloatSign(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_t__struct_13.T__struct_13>(6, 6, ...[({ _x : ("-Inf" : stdgo.GoString), _s : (-1 : stdgo.GoInt) } : stdgo._internal.math.big.Big_t__struct_13.T__struct_13), ({ _x : ("-1" : stdgo.GoString), _s : (-1 : stdgo.GoInt) } : stdgo._internal.math.big.Big_t__struct_13.T__struct_13), ({ _x : ("-0" : stdgo.GoString), _s : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_t__struct_13.T__struct_13), ({ _x : ("+0" : stdgo.GoString), _s : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_t__struct_13.T__struct_13), ({ _x : ("+1" : stdgo.GoString), _s : (1 : stdgo.GoInt) } : stdgo._internal.math.big.Big_t__struct_13.T__struct_13), ({ _x : ("+Inf" : stdgo.GoString), _s : (1 : stdgo.GoInt) } : stdgo._internal.math.big.Big_t__struct_13.T__struct_13)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _x : ("" : stdgo.GoString), _s : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_t__struct_13.T__struct_13)])) : stdgo.Slice<stdgo._internal.math.big.Big_t__struct_13.T__struct_13>)) {
            var _x = stdgo._internal.math.big.Big__makefloat._makeFloat(_test._x?.__copy__());
            var _s = (@:check2r _x.sign() : stdgo.GoInt);
            if (_s != (_test._s)) {
                @:check2r _t.errorf(("%s.Sign() = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._s));
            };
        };
    }
