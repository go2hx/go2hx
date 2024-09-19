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
function testPanicWhilePanicking(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tests = (new stdgo.Slice<_internal.runtime_test.Runtime_test_T__struct_6.T__struct_6>(7, 7, ...[({ want : ("panic while printing panic value: important error message" : stdgo.GoString), func : ("ErrorPanic" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_6.T__struct_6), ({ want : ("panic while printing panic value: important stringer message" : stdgo.GoString), func : ("StringerPanic" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_6.T__struct_6), ({ want : ("panic while printing panic value: type" : stdgo.GoString), func : ("DoubleErrorPanic" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_6.T__struct_6), ({ want : ("panic while printing panic value: type" : stdgo.GoString), func : ("DoubleStringerPanic" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_6.T__struct_6), ({ want : ("panic while printing panic value: type" : stdgo.GoString), func : ("CircularPanic" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_6.T__struct_6), ({ want : ("important string message" : stdgo.GoString), func : ("StringPanic" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_6.T__struct_6), ({ want : ("nil" : stdgo.GoString), func : ("NilPanic" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_6.T__struct_6)].concat([for (i in 7 ... (7 > 7 ? 7 : 7 : stdgo.GoInt).toBasic()) ({ want : ("" : stdgo.GoString), func : ("" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_6.T__struct_6)])) : stdgo.Slice<_internal.runtime_test.Runtime_test_T__struct_6.T__struct_6>);
        for (__6 => _x in _tests) {
            var _output = (_internal.runtime_test.Runtime_test__runTestProg._runTestProg(_t, ("testprog" : stdgo.GoString), _x.func?.__copy__())?.__copy__() : stdgo.GoString);
            if (!stdgo._internal.strings.Strings_contains.contains(_output?.__copy__(), _x.want?.__copy__())) {
                _t.errorf(("output does not contain %q:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_x.want), stdgo.Go.toInterface(_output));
            };
        };
    }
