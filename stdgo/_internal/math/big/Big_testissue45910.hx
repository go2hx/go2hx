package stdgo._internal.math.big;
function testIssue45910(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _x:stdgo._internal.math.big.Big_rat.Rat = ({} : stdgo._internal.math.big.Big_rat.Rat);
        //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L605"
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_t__struct_66.T__struct_66>(10, 10, ...[({ _input : ("1e-1000001" : stdgo.GoString), _want : false } : stdgo._internal.math.big.Big_t__struct_66.T__struct_66), ({ _input : ("1e-1000000" : stdgo.GoString), _want : true } : stdgo._internal.math.big.Big_t__struct_66.T__struct_66), ({ _input : ("1e+1000000" : stdgo.GoString), _want : true } : stdgo._internal.math.big.Big_t__struct_66.T__struct_66), ({ _input : ("1e+1000001" : stdgo.GoString), _want : false } : stdgo._internal.math.big.Big_t__struct_66.T__struct_66), ({ _input : ("0p1000000000000" : stdgo.GoString), _want : true } : stdgo._internal.math.big.Big_t__struct_66.T__struct_66), ({ _input : ("1p-10000001" : stdgo.GoString), _want : false } : stdgo._internal.math.big.Big_t__struct_66.T__struct_66), ({ _input : ("1p-10000000" : stdgo.GoString), _want : true } : stdgo._internal.math.big.Big_t__struct_66.T__struct_66), ({ _input : ("1p+10000000" : stdgo.GoString), _want : true } : stdgo._internal.math.big.Big_t__struct_66.T__struct_66), ({ _input : ("1p+10000001" : stdgo.GoString), _want : false } : stdgo._internal.math.big.Big_t__struct_66.T__struct_66), ({ _input : ("1.770p02041010010011001001" : stdgo.GoString), _want : false } : stdgo._internal.math.big.Big_t__struct_66.T__struct_66)].concat([for (i in 10 ... (10 > 10 ? 10 : 10 : stdgo.GoInt).toBasic()) ({ _input : ("" : stdgo.GoString), _want : false } : stdgo._internal.math.big.Big_t__struct_66.T__struct_66)])) : stdgo.Slice<stdgo._internal.math.big.Big_t__struct_66.T__struct_66>)) {
            var __tmp__ = _x.setString(_test._input?.__copy__()), __9:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = __tmp__._0, _got:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L622"
            if (_got != (_test._want)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L623"
                _t.errorf(("SetString(%s) got ok = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._input), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
            };
        };
    }
