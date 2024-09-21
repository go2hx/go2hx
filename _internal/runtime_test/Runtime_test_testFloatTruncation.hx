package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function testFloatTruncation(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _testdata = (new stdgo.Slice<_internal.runtime_test.Runtime_test_T__struct_4.T__struct_4>(18, 18, ...[
({ _input : (9.223372036854776e+18 : stdgo.GoFloat64), _convInt64 : (-9223372036854775808i64 : stdgo.GoInt64), _convUInt64 : (-9223372036854775808i64 : stdgo.GoUInt64), _overflow : false } : _internal.runtime_test.Runtime_test_T__struct_4.T__struct_4),
({ _input : (9.223372036854776e+18 : stdgo.GoFloat64), _convInt64 : (-9223372036854775808i64 : stdgo.GoInt64), _convUInt64 : (-9223372036854775808i64 : stdgo.GoUInt64), _overflow : false } : _internal.runtime_test.Runtime_test_T__struct_4.T__struct_4),
({ _input : (9.223372036854776e+18 : stdgo.GoFloat64), _convInt64 : (-9223372036854775808i64 : stdgo.GoInt64), _convUInt64 : (-9223372036854775808i64 : stdgo.GoUInt64), _overflow : false } : _internal.runtime_test.Runtime_test_T__struct_4.T__struct_4),
({ _input : (-9.223372036854776e+18 : stdgo.GoFloat64), _convInt64 : (-9223372036854775808i64 : stdgo.GoInt64), _convUInt64 : (-9223372036854775808i64 : stdgo.GoUInt64), _overflow : false } : _internal.runtime_test.Runtime_test_T__struct_4.T__struct_4),
({ _input : (-9.223372036854776e+18 : stdgo.GoFloat64), _convInt64 : (-9223372036854775808i64 : stdgo.GoInt64), _convUInt64 : (-9223372036854775808i64 : stdgo.GoUInt64), _overflow : false } : _internal.runtime_test.Runtime_test_T__struct_4.T__struct_4),
({ _input : (-9.223372036854776e+18 : stdgo.GoFloat64), _convInt64 : (-9223372036854775808i64 : stdgo.GoInt64), _convUInt64 : (-9223372036854775808i64 : stdgo.GoUInt64), _overflow : false } : _internal.runtime_test.Runtime_test_T__struct_4.T__struct_4),
({ _input : (9.223372036854775e+18 : stdgo.GoFloat64), _convInt64 : (9223372036854774784i64 : stdgo.GoInt64), _convUInt64 : (9223372036854774784i64 : stdgo.GoUInt64), _overflow : false } : _internal.runtime_test.Runtime_test_T__struct_4.T__struct_4),
({ _input : (9.223372036854776e+18 : stdgo.GoFloat64), _convInt64 : (-9223372036854775808i64 : stdgo.GoInt64), _convUInt64 : (-9223372036854775808i64 : stdgo.GoUInt64), _overflow : false } : _internal.runtime_test.Runtime_test_T__struct_4.T__struct_4),
({ _input : (9.223372036854775e+18 : stdgo.GoFloat64), _convInt64 : (9223372036854774784i64 : stdgo.GoInt64), _convUInt64 : (9223372036854774784i64 : stdgo.GoUInt64), _overflow : false } : _internal.runtime_test.Runtime_test_T__struct_4.T__struct_4),
({ _input : (-9.223372036854775e+18 : stdgo.GoFloat64), _convInt64 : (-9223372036854774784i64 : stdgo.GoInt64), _convUInt64 : (-9223372036854775808i64 : stdgo.GoUInt64), _overflow : false } : _internal.runtime_test.Runtime_test_T__struct_4.T__struct_4),
({ _input : (-9.223372036854776e+18 : stdgo.GoFloat64), _convInt64 : (-9223372036854775808i64 : stdgo.GoInt64), _convUInt64 : (-9223372036854775808i64 : stdgo.GoUInt64), _overflow : false } : _internal.runtime_test.Runtime_test_T__struct_4.T__struct_4),
({ _input : (-9.223372036854775e+18 : stdgo.GoFloat64), _convInt64 : (-9223372036854774784i64 : stdgo.GoInt64), _convUInt64 : (-9223372036854775808i64 : stdgo.GoUInt64), _overflow : false } : _internal.runtime_test.Runtime_test_T__struct_4.T__struct_4),
({ _input : (1.8446744073709552e+19 : stdgo.GoFloat64), _convInt64 : (-9223372036854775808i64 : stdgo.GoInt64), _convUInt64 : (-9223372036854775808i64 : stdgo.GoUInt64), _overflow : false } : _internal.runtime_test.Runtime_test_T__struct_4.T__struct_4),
({ _input : (1.8446744073709552e+19 : stdgo.GoFloat64), _convInt64 : (-9223372036854775808i64 : stdgo.GoInt64), _convUInt64 : (-9223372036854775808i64 : stdgo.GoUInt64), _overflow : false } : _internal.runtime_test.Runtime_test_T__struct_4.T__struct_4),
({ _input : (1.8446744073709552e+19 : stdgo.GoFloat64), _convInt64 : (-9223372036854775808i64 : stdgo.GoInt64), _convUInt64 : (-9223372036854775808i64 : stdgo.GoUInt64), _overflow : false } : _internal.runtime_test.Runtime_test_T__struct_4.T__struct_4),
({ _input : (1.844674407370955e+19 : stdgo.GoFloat64), _convInt64 : (-9223372036854775808i64 : stdgo.GoInt64), _convUInt64 : (-2048i64 : stdgo.GoUInt64), _overflow : false } : _internal.runtime_test.Runtime_test_T__struct_4.T__struct_4),
({ _input : (1.8446744073709552e+19 : stdgo.GoFloat64), _convInt64 : (-9223372036854775808i64 : stdgo.GoInt64), _convUInt64 : (-9223372036854775808i64 : stdgo.GoUInt64), _overflow : false } : _internal.runtime_test.Runtime_test_T__struct_4.T__struct_4),
({ _input : (1.844674407370955e+19 : stdgo.GoFloat64), _convInt64 : (-9223372036854775808i64 : stdgo.GoInt64), _convUInt64 : (-2048i64 : stdgo.GoUInt64), _overflow : false } : _internal.runtime_test.Runtime_test_T__struct_4.T__struct_4)].concat([for (i in 18 ... (18 > 18 ? 18 : 18 : stdgo.GoInt).toBasic()) ({ _input : (0 : stdgo.GoFloat64), _convInt64 : (0 : stdgo.GoInt64), _convUInt64 : (0 : stdgo.GoUInt64), _overflow : false } : _internal.runtime_test.Runtime_test_T__struct_4.T__struct_4)])) : stdgo.Slice<_internal.runtime_test.Runtime_test_T__struct_4.T__struct_4>);
        for (__6 => _item in _testdata) {
            {
                var __0 = (_item._input : stdgo.GoInt64), __1 = (_item._convInt64 : stdgo.GoInt64);
var _want = __1, _got = __0;
                if (_got != (_want)) {
                    _t.errorf(("int64(%f): got %x, want %x" : stdgo.GoString), stdgo.Go.toInterface(_item._input), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
            {
                var __0 = (_item._input : stdgo.GoUInt64), __1 = (_item._convUInt64 : stdgo.GoUInt64);
var _want = __1, _got = __0;
                if (_got != (_want)) {
                    _t.errorf(("uint64(%f): got %x, want %x" : stdgo.GoString), stdgo.Go.toInterface(_item._input), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        };
    }
