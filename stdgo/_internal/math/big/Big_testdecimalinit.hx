package stdgo._internal.math.big;
function testDecimalInit(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_t__struct_8.T__struct_8>(11, 11, ...[
({ _x : (0u32 : stdgo._internal.math.big.Big_word.Word), _shift : (0 : stdgo.GoInt), _want : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_8.T__struct_8),
({ _x : (0u32 : stdgo._internal.math.big.Big_word.Word), _shift : (-100 : stdgo.GoInt), _want : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_8.T__struct_8),
({ _x : (0u32 : stdgo._internal.math.big.Big_word.Word), _shift : (100 : stdgo.GoInt), _want : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_8.T__struct_8),
({ _x : (1u32 : stdgo._internal.math.big.Big_word.Word), _shift : (0 : stdgo.GoInt), _want : ("1" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_8.T__struct_8),
({ _x : (1u32 : stdgo._internal.math.big.Big_word.Word), _shift : (10 : stdgo.GoInt), _want : ("1024" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_8.T__struct_8),
({ _x : (1u32 : stdgo._internal.math.big.Big_word.Word), _shift : (100 : stdgo.GoInt), _want : ("1267650600228229401496703205376" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_8.T__struct_8),
({ _x : (1u32 : stdgo._internal.math.big.Big_word.Word), _shift : (-100 : stdgo.GoInt), _want : ("0.0000000000000000000000000000007888609052210118054117285652827862296732064351090230047702789306640625" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_8.T__struct_8),
({ _x : (12345678u32 : stdgo._internal.math.big.Big_word.Word), _shift : (8 : stdgo.GoInt), _want : ("3160493568" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_8.T__struct_8),
({ _x : (12345678u32 : stdgo._internal.math.big.Big_word.Word), _shift : (-8 : stdgo.GoInt), _want : ("48225.3046875" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_8.T__struct_8),
({ _x : (195312u32 : stdgo._internal.math.big.Big_word.Word), _shift : (9 : stdgo.GoInt), _want : ("99999744" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_8.T__struct_8),
({ _x : (1953125u32 : stdgo._internal.math.big.Big_word.Word), _shift : (9 : stdgo.GoInt), _want : ("1000000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_8.T__struct_8)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({ _x : ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word), _shift : (0 : stdgo.GoInt), _want : ("" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_8.T__struct_8)])) : stdgo.Slice<stdgo._internal.math.big.Big_t__struct_8.T__struct_8>)) {
            var _d:stdgo._internal.math.big.Big_t_decimal.T_decimal = ({} : stdgo._internal.math.big.Big_t_decimal.T_decimal);
            @:check2 _d._init((new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(1, 1, ...[_test._x]).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat)._norm(), _test._shift);
            {
                var _got = ((@:check2 _d.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_got != (_test._want)) {
                    @:check2r _t.errorf(("%d << %d == %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(_test._shift), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
