package stdgo._internal.math.big;
function testFloatSetInf(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _f:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_);
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_t__struct_18.T__struct_18>(4, 4, ...[({ _signbit : false, _prec : (0u32 : stdgo.GoUInt), _want : ("+Inf" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_18.T__struct_18), ({ _signbit : true, _prec : (0u32 : stdgo.GoUInt), _want : ("-Inf" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_18.T__struct_18), ({ _signbit : false, _prec : (10u32 : stdgo.GoUInt), _want : ("+Inf" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_18.T__struct_18), ({ _signbit : true, _prec : (30u32 : stdgo.GoUInt), _want : ("-Inf" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_18.T__struct_18)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _signbit : false, _prec : (0 : stdgo.GoUInt), _want : ("" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_18.T__struct_18)])) : stdgo.Slice<stdgo._internal.math.big.Big_t__struct_18.T__struct_18>)) {
            var _x = @:check2r @:check2 _f.setPrec(_test._prec).setInf(_test._signbit);
            {
                var _got = ((@:check2r _x.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (((_got != _test._want) || (@:check2r _x.prec() != _test._prec) : Bool)) {
                    @:check2r _t.errorf(("SetInf(%v) = %s (prec = %d); want %s (prec = %d)" : stdgo.GoString), stdgo.Go.toInterface(_test._signbit), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(@:check2r _x.prec()), stdgo.Go.toInterface(_test._want), stdgo.Go.toInterface(_test._prec));
                };
            };
        };
    }
