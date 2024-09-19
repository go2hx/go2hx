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
function testExitHooks(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _bmodes = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        if (stdgo._internal.testing.Testing_short.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping due to -short" : stdgo.GoString)));
        };
        var _haverace = (stdgo._internal.internal.platform.Platform_raceDetectorSupported.raceDetectorSupported(("js" : stdgo.GoString), ("wasm" : stdgo.GoString)) : Bool);
        if ((_haverace && stdgo._internal.internal.testenv.Testenv_hasCGO.hasCGO() : Bool)) {
            _bmodes = (_bmodes.__append__(("-race" : stdgo.GoString)));
        };
        for (__6 => _bmode in _bmodes) {
            var _scenarios = (new stdgo.Slice<_internal.runtime_test.Runtime_test_T__struct_8.T__struct_8>(5, 5, ...[({ _mode : ("simple" : stdgo.GoString), _expected : ("bar foo" : stdgo.GoString), _musthave : stdgo.Go.str()?.__copy__() } : _internal.runtime_test.Runtime_test_T__struct_8.T__struct_8), ({ _mode : ("goodexit" : stdgo.GoString), _expected : ("orange apple" : stdgo.GoString), _musthave : stdgo.Go.str()?.__copy__() } : _internal.runtime_test.Runtime_test_T__struct_8.T__struct_8), ({ _mode : ("badexit" : stdgo.GoString), _expected : ("blub blix" : stdgo.GoString), _musthave : stdgo.Go.str()?.__copy__() } : _internal.runtime_test.Runtime_test_T__struct_8.T__struct_8), ({ _mode : ("panics" : stdgo.GoString), _expected : stdgo.Go.str()?.__copy__(), _musthave : ("fatal error: internal error: exit hook invoked panic" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_8.T__struct_8), ({ _mode : ("callsexit" : stdgo.GoString), _expected : stdgo.Go.str()?.__copy__(), _musthave : ("fatal error: internal error: exit hook invoked exit" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_8.T__struct_8)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _mode : ("" : stdgo.GoString), _expected : ("" : stdgo.GoString), _musthave : ("" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_8.T__struct_8)])) : stdgo.Slice<_internal.runtime_test.Runtime_test_T__struct_8.T__struct_8>);
            var __tmp__ = _internal.runtime_test.Runtime_test__buildTestProg._buildTestProg(_t, ("testexithooks" : stdgo.GoString), _bmode?.__copy__()), _exe:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var _bt = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
            if (_bmode != (stdgo.Go.str())) {
                _bt = ((" bmode: " : stdgo.GoString) + _bmode?.__copy__() : stdgo.GoString)?.__copy__();
            };
            for (__7 => _s in _scenarios) {
                var _cmd = stdgo._internal.os.exec.Exec_command.command(_exe?.__copy__(), ...((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("-mode" : stdgo.GoString), _s._mode?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>) : Array<stdgo.GoString>));
                var __tmp__ = _cmd.combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __14:stdgo.Error = __tmp__._1;
                var _outs = (stdgo._internal.strings.Strings_replaceAll.replaceAll((_out : stdgo.GoString)?.__copy__(), ("\n" : stdgo.GoString), (" " : stdgo.GoString))?.__copy__() : stdgo.GoString);
                _outs = stdgo._internal.strings.Strings_trimSpace.trimSpace(_outs?.__copy__())?.__copy__();
                if (_s._expected != (stdgo.Go.str())) {
                    if (_s._expected != (_outs)) {
                        _t.logf(("raw output: %q" : stdgo.GoString), stdgo.Go.toInterface(_outs));
                        _t.errorf(("failed%s mode %s: wanted %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_bt), stdgo.Go.toInterface(_s._mode), stdgo.Go.toInterface(_s._expected), stdgo.Go.toInterface(_outs));
                    };
                } else if (_s._musthave != (stdgo.Go.str())) {
                    if (!stdgo._internal.strings.Strings_contains.contains(_outs?.__copy__(), _s._musthave?.__copy__())) {
                        _t.logf(("raw output: %q" : stdgo.GoString), stdgo.Go.toInterface(_outs));
                        _t.errorf(("failed mode %s: output does not contain %q" : stdgo.GoString), stdgo.Go.toInterface(_s._mode), stdgo.Go.toInterface(_s._musthave));
                    };
                } else {
                    throw stdgo.Go.toInterface(("badly written scenario" : stdgo.GoString));
                };
            };
        };
    }
