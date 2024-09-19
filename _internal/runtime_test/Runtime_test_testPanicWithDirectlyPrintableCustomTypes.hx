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
function testPanicWithDirectlyPrintableCustomTypes(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tests = (new stdgo.Slice<_internal.runtime_test.Runtime_test_T__struct_28.T__struct_28>(17, 17, ...[
({ _name : ("panicCustomBool" : stdgo.GoString), _wantPanicPrefix : ("panic: main.MyBool(true)" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_28.T__struct_28),
({ _name : ("panicCustomComplex128" : stdgo.GoString), _wantPanicPrefix : ("panic: main.MyComplex128(+3.210000e+001+1.000000e+001i)" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_28.T__struct_28),
({ _name : ("panicCustomComplex64" : stdgo.GoString), _wantPanicPrefix : ("panic: main.MyComplex64(+1.100000e-001+3.000000e+000i)" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_28.T__struct_28),
({ _name : ("panicCustomFloat32" : stdgo.GoString), _wantPanicPrefix : ("panic: main.MyFloat32(-9.370000e+001)" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_28.T__struct_28),
({ _name : ("panicCustomFloat64" : stdgo.GoString), _wantPanicPrefix : ("panic: main.MyFloat64(-9.370000e+001)" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_28.T__struct_28),
({ _name : ("panicCustomInt" : stdgo.GoString), _wantPanicPrefix : ("panic: main.MyInt(93)" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_28.T__struct_28),
({ _name : ("panicCustomInt8" : stdgo.GoString), _wantPanicPrefix : ("panic: main.MyInt8(93)" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_28.T__struct_28),
({ _name : ("panicCustomInt16" : stdgo.GoString), _wantPanicPrefix : ("panic: main.MyInt16(93)" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_28.T__struct_28),
({ _name : ("panicCustomInt32" : stdgo.GoString), _wantPanicPrefix : ("panic: main.MyInt32(93)" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_28.T__struct_28),
({ _name : ("panicCustomInt64" : stdgo.GoString), _wantPanicPrefix : ("panic: main.MyInt64(93)" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_28.T__struct_28),
({ _name : ("panicCustomString" : stdgo.GoString), _wantPanicPrefix : ("panic: main.MyString(\"Panic\")" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_28.T__struct_28),
({ _name : ("panicCustomUint" : stdgo.GoString), _wantPanicPrefix : ("panic: main.MyUint(93)" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_28.T__struct_28),
({ _name : ("panicCustomUint8" : stdgo.GoString), _wantPanicPrefix : ("panic: main.MyUint8(93)" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_28.T__struct_28),
({ _name : ("panicCustomUint16" : stdgo.GoString), _wantPanicPrefix : ("panic: main.MyUint16(93)" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_28.T__struct_28),
({ _name : ("panicCustomUint32" : stdgo.GoString), _wantPanicPrefix : ("panic: main.MyUint32(93)" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_28.T__struct_28),
({ _name : ("panicCustomUint64" : stdgo.GoString), _wantPanicPrefix : ("panic: main.MyUint64(93)" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_28.T__struct_28),
({ _name : ("panicCustomUintptr" : stdgo.GoString), _wantPanicPrefix : ("panic: main.MyUintptr(93)" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_28.T__struct_28)].concat([for (i in 17 ... (17 > 17 ? 17 : 17 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _wantPanicPrefix : ("" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_28.T__struct_28)])) : stdgo.Slice<_internal.runtime_test.Runtime_test_T__struct_28.T__struct_28>);
        for (__6 => _tt in _tests) {
            var _t = _t;
            _t.run(_tt._name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var _output = (_internal.runtime_test.Runtime_test__runTestProg._runTestProg(_t, ("testprog" : stdgo.GoString), _tt._name?.__copy__())?.__copy__() : stdgo.GoString);
                if (!stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_output?.__copy__(), _tt._wantPanicPrefix?.__copy__())) {
                    _t.fatalf(("%q\nis not present in\n%s" : stdgo.GoString), stdgo.Go.toInterface(_tt._wantPanicPrefix), stdgo.Go.toInterface(_output));
                };
            });
        };
    }
