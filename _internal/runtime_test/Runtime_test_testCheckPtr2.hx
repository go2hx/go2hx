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
function testCheckPtr2(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (stdgo._internal.testing.Testing_short.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping test in -short mode" : stdgo.GoString)));
        };
        _t.parallel();
        stdgo._internal.internal.testenv.Testenv_mustHaveGoRun.mustHaveGoRun(stdgo.Go.asInterface(_t));
        var __tmp__ = _internal.runtime_test.Runtime_test__buildTestProg._buildTestProg(_t, ("testprog" : stdgo.GoString), ("-gcflags=all=-d=checkptr=2" : stdgo.GoString)), _exe:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _testCases = (new stdgo.Slice<_internal.runtime_test.Runtime_test_T__struct_3.T__struct_3>(1, 1, ...[({ _cmd : ("CheckPtrAlignmentNested" : stdgo.GoString), _want : ("fatal error: checkptr: converted pointer straddles multiple allocations\n" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_3.T__struct_3)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({ _cmd : ("" : stdgo.GoString), _want : ("" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_3.T__struct_3)])) : stdgo.Slice<_internal.runtime_test.Runtime_test_T__struct_3.T__struct_3>);
        for (__14 => _tc in _testCases) {
            var _tc = ({
                final x = _tc;
                ({ _cmd : x._cmd?.__copy__(), _want : x._want?.__copy__() } : _internal.runtime_test.Runtime_test_T__struct_3.T__struct_3);
            } : _internal.runtime_test.Runtime_test_T__struct_3.T__struct_3);
            _t.run(_tc._cmd?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                _t.parallel();
                var __tmp__ = stdgo._internal.internal.testenv.Testenv_cleanCmdEnv.cleanCmdEnv(stdgo._internal.os.exec.Exec_command.command(_exe?.__copy__(), _tc._cmd?.__copy__())).combinedOutput(), _got:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.log(stdgo.Go.toInterface(_err));
                };
                if (_tc._want == (stdgo.Go.str())) {
                    if (((_got.length) > (0 : stdgo.GoInt) : Bool)) {
                        _t.errorf(("output:\n%s\nwant no output" : stdgo.GoString), stdgo.Go.toInterface(_got));
                    };
                    return;
                };
                if (!stdgo._internal.strings.Strings_hasPrefix.hasPrefix((_got : stdgo.GoString)?.__copy__(), _tc._want?.__copy__())) {
                    _t.errorf(("output:\n%s\n\nwant output starting with: %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tc._want));
                };
            });
        };
    }
