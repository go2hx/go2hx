package stdgo._internal.math.big;
function testJacobi(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _testCases = (new stdgo.Slice<stdgo._internal.math.big.Big_t__struct_47.T__struct_47>(17, 17, ...[
({ _x : (0i64 : stdgo.GoInt64), _y : (1i64 : stdgo.GoInt64), _result : (1 : stdgo.GoInt) } : stdgo._internal.math.big.Big_t__struct_47.T__struct_47),
({ _x : (0i64 : stdgo.GoInt64), _y : (-1i64 : stdgo.GoInt64), _result : (1 : stdgo.GoInt) } : stdgo._internal.math.big.Big_t__struct_47.T__struct_47),
({ _x : (1i64 : stdgo.GoInt64), _y : (1i64 : stdgo.GoInt64), _result : (1 : stdgo.GoInt) } : stdgo._internal.math.big.Big_t__struct_47.T__struct_47),
({ _x : (1i64 : stdgo.GoInt64), _y : (-1i64 : stdgo.GoInt64), _result : (1 : stdgo.GoInt) } : stdgo._internal.math.big.Big_t__struct_47.T__struct_47),
({ _x : (0i64 : stdgo.GoInt64), _y : (5i64 : stdgo.GoInt64), _result : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_t__struct_47.T__struct_47),
({ _x : (1i64 : stdgo.GoInt64), _y : (5i64 : stdgo.GoInt64), _result : (1 : stdgo.GoInt) } : stdgo._internal.math.big.Big_t__struct_47.T__struct_47),
({ _x : (2i64 : stdgo.GoInt64), _y : (5i64 : stdgo.GoInt64), _result : (-1 : stdgo.GoInt) } : stdgo._internal.math.big.Big_t__struct_47.T__struct_47),
({ _x : (-2i64 : stdgo.GoInt64), _y : (5i64 : stdgo.GoInt64), _result : (-1 : stdgo.GoInt) } : stdgo._internal.math.big.Big_t__struct_47.T__struct_47),
({ _x : (2i64 : stdgo.GoInt64), _y : (-5i64 : stdgo.GoInt64), _result : (-1 : stdgo.GoInt) } : stdgo._internal.math.big.Big_t__struct_47.T__struct_47),
({ _x : (-2i64 : stdgo.GoInt64), _y : (-5i64 : stdgo.GoInt64), _result : (1 : stdgo.GoInt) } : stdgo._internal.math.big.Big_t__struct_47.T__struct_47),
({ _x : (3i64 : stdgo.GoInt64), _y : (5i64 : stdgo.GoInt64), _result : (-1 : stdgo.GoInt) } : stdgo._internal.math.big.Big_t__struct_47.T__struct_47),
({ _x : (5i64 : stdgo.GoInt64), _y : (5i64 : stdgo.GoInt64), _result : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_t__struct_47.T__struct_47),
({ _x : (-5i64 : stdgo.GoInt64), _y : (5i64 : stdgo.GoInt64), _result : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_t__struct_47.T__struct_47),
({ _x : (6i64 : stdgo.GoInt64), _y : (5i64 : stdgo.GoInt64), _result : (1 : stdgo.GoInt) } : stdgo._internal.math.big.Big_t__struct_47.T__struct_47),
({ _x : (6i64 : stdgo.GoInt64), _y : (-5i64 : stdgo.GoInt64), _result : (1 : stdgo.GoInt) } : stdgo._internal.math.big.Big_t__struct_47.T__struct_47),
({ _x : (-6i64 : stdgo.GoInt64), _y : (5i64 : stdgo.GoInt64), _result : (1 : stdgo.GoInt) } : stdgo._internal.math.big.Big_t__struct_47.T__struct_47),
({ _x : (-6i64 : stdgo.GoInt64), _y : (-5i64 : stdgo.GoInt64), _result : (-1 : stdgo.GoInt) } : stdgo._internal.math.big.Big_t__struct_47.T__struct_47)].concat([for (i in 17 ... (17 > 17 ? 17 : 17 : stdgo.GoInt).toBasic()) ({ _x : (0 : stdgo.GoInt64), _y : (0 : stdgo.GoInt64), _result : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_t__struct_47.T__struct_47)])) : stdgo.Slice<stdgo._internal.math.big.Big_t__struct_47.T__struct_47>);
        var __0:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), __1:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
var _y = __1, _x = __0;
        for (_i => _test in _testCases) {
            @:check2 _x.setInt64(_test._x);
            @:check2 _y.setInt64(_test._y);
            var _expected = (_test._result : stdgo.GoInt);
            var _actual = (stdgo._internal.math.big.Big_jacobi.jacobi((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)) : stdgo.GoInt);
            if (_actual != (_expected)) {
                @:check2r _t.errorf(("#%d: Jacobi(%d, %d) = %d, but expected %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(_test._y), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_expected));
            };
        };
    }
