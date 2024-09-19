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
function testStartLine(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_skipIfOptimizationOff.skipIfOptimizationOff(stdgo.Go.asInterface(_t));
        var _testCases = (new stdgo.Slice<_internal.runtime_test.Runtime_test_T__struct_31.T__struct_31>(6, 6, ...[({ _name : ("normal" : stdgo.GoString), _fn : _internal.runtime_test.Runtime_test__normalFunc._normalFunc, _want : (21 : stdgo.GoInt) } : _internal.runtime_test.Runtime_test_T__struct_31.T__struct_31), ({ _name : ("multiline-declaration" : stdgo.GoString), _fn : _internal.runtime_test.Runtime_test__multilineDeclarationFunc._multilineDeclarationFunc, _want : (30 : stdgo.GoInt) } : _internal.runtime_test.Runtime_test_T__struct_31.T__struct_31), ({ _name : ("blank-lines" : stdgo.GoString), _fn : _internal.runtime_test.Runtime_test__blankLinesFunc._blankLinesFunc, _want : (35 : stdgo.GoInt) } : _internal.runtime_test.Runtime_test_T__struct_31.T__struct_31), ({ _name : ("inline" : stdgo.GoString), _fn : _internal.runtime_test.Runtime_test__inlineFunc._inlineFunc, _want : (49 : stdgo.GoInt) } : _internal.runtime_test.Runtime_test_T__struct_31.T__struct_31), ({ _name : ("normal-closure" : stdgo.GoString), _fn : _internal.runtime_test.Runtime_test__normalClosure._normalClosure, _want : (57 : stdgo.GoInt) } : _internal.runtime_test.Runtime_test_T__struct_31.T__struct_31), ({ _name : ("inline-closure" : stdgo.GoString), _fn : _internal.runtime_test.Runtime_test__inlineClosure._inlineClosure, _want : (64 : stdgo.GoInt) } : _internal.runtime_test.Runtime_test_T__struct_31.T__struct_31)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _fn : null, _want : (0 : stdgo.GoInt) } : _internal.runtime_test.Runtime_test_T__struct_31.T__struct_31)])) : stdgo.Slice<_internal.runtime_test.Runtime_test_T__struct_31.T__struct_31>);
        for (__6 => _tc in _testCases) {
            _t.run(_tc._name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var _got = (_tc._fn() : stdgo.GoInt);
                if (_got != (_tc._want)) {
                    _t.errorf(("start line got %d want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tc._want));
                };
            });
        };
    }
