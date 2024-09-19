package stdgo._internal.math.big;
function testFromBits(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__14 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_T__struct_6.T__struct_6>(11, 11, ...[
({ _bits : null, _want : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_6.T__struct_6),
({ _bits : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(0 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_Bits.Bits), _want : ("0x.8p+1" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_6.T__struct_6),
({ _bits : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(1 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_Bits.Bits), _want : ("0x.8p+2" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_6.T__struct_6),
({ _bits : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(-1 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_Bits.Bits), _want : ("0x.8p+0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_6.T__struct_6),
({ _bits : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(63 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_Bits.Bits), _want : ("0x.8p+64" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_6.T__struct_6),
({ _bits : (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(33 : stdgo.GoInt), (-30 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_Bits.Bits), _want : ("0x.8000000000000001p+34" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_6.T__struct_6),
({ _bits : (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(255 : stdgo.GoInt), (0 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_Bits.Bits), _want : ("0x.8000000000000000000000000000000000000000000000000000000000000001p+256" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_6.T__struct_6),
({ _bits : (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(0 : stdgo.GoInt), (0 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_Bits.Bits), _want : ("0x.8p+2" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_6.T__struct_6),
({ _bits : (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_Bits.Bits), _want : ("0x.8p+3" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_6.T__struct_6),
({ _bits : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt), (0 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_Bits.Bits), _want : ("0x.8p+3" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_6.T__struct_6),
({ _bits : ((new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(2 : stdgo.GoInt), (1 : stdgo.GoInt), (0 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_Bits.Bits).__append__(...((new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(3 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_Bits.Bits) : Array<stdgo.GoInt>))), _want : ("0x.88p+5" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_6.T__struct_6)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({ _bits : new stdgo._internal.math.big.Big_Bits.Bits(0, 0), _want : ("" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_6.T__struct_6)])) : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_6.T__struct_6>)) {
            var _f = _test._bits.float_();
            {
                var _got = (_f.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
                if (_got != (_test._want)) {
                    _t.errorf(("setBits(%v) = %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test._bits)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }