package _internal.flag_test;
import stdgo._internal.flag.Flag;
function testExitCode(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveExec.mustHaveExec(stdgo.Go.asInterface(_t));
        var _magic = (123 : stdgo.GoInt);
        if (stdgo._internal.os.Os_getenv.getenv(("GO_CHILD_FLAG" : stdgo.GoString)) != (stdgo.Go.str())) {
            var _fs = stdgo._internal.flag.Flag_newFlagSet.newFlagSet(("test" : stdgo.GoString), (1 : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling));
            if (stdgo._internal.os.Os_getenv.getenv(("GO_CHILD_FLAG_HANDLE" : stdgo.GoString)) != (stdgo.Go.str())) {
                var _b:Bool = false;
                _fs.boolVar(stdgo.Go.pointer(_b), stdgo._internal.os.Os_getenv.getenv(("GO_CHILD_FLAG_HANDLE" : stdgo.GoString))?.__copy__(), false, stdgo.Go.str()?.__copy__());
            };
            _fs.parse((new stdgo.Slice<stdgo.GoString>(1, 1, ...[stdgo._internal.os.Os_getenv.getenv(("GO_CHILD_FLAG" : stdgo.GoString))?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>));
            Sys.exit(_magic);
        };
        var _tests = (new stdgo.Slice<_internal.flag_test.Flag_test_T__struct_0.T__struct_0>(5, 5, ...[({ _flag : ("-h" : stdgo.GoString), _expectExit : (0 : stdgo.GoInt), _flagHandle : ("" : stdgo.GoString) } : _internal.flag_test.Flag_test_T__struct_0.T__struct_0), ({ _flag : ("-help" : stdgo.GoString), _expectExit : (0 : stdgo.GoInt), _flagHandle : ("" : stdgo.GoString) } : _internal.flag_test.Flag_test_T__struct_0.T__struct_0), ({ _flag : ("-undefined" : stdgo.GoString), _expectExit : (2 : stdgo.GoInt), _flagHandle : ("" : stdgo.GoString) } : _internal.flag_test.Flag_test_T__struct_0.T__struct_0), ({ _flag : ("-h" : stdgo.GoString), _flagHandle : ("h" : stdgo.GoString), _expectExit : _magic } : _internal.flag_test.Flag_test_T__struct_0.T__struct_0), ({ _flag : ("-help" : stdgo.GoString), _flagHandle : ("help" : stdgo.GoString), _expectExit : _magic } : _internal.flag_test.Flag_test_T__struct_0.T__struct_0)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _flag : ("" : stdgo.GoString), _flagHandle : ("" : stdgo.GoString), _expectExit : (0 : stdgo.GoInt) } : _internal.flag_test.Flag_test_T__struct_0.T__struct_0)])) : stdgo.Slice<_internal.flag_test.Flag_test_T__struct_0.T__struct_0>);
        for (__0 => _test in _tests) {
            var _cmd = stdgo._internal.os.exec.Exec_command.command(stdgo._internal.os.Os_args.args[(0 : stdgo.GoInt)]?.__copy__(), ("-test.run=TestExitCode" : stdgo.GoString));
            _cmd.env = (stdgo._internal.os.Os_environ_.environ_().__append__((("GO_CHILD_FLAG=" : stdgo.GoString) + _test._flag?.__copy__() : stdgo.GoString)?.__copy__(), (("GO_CHILD_FLAG_HANDLE=" : stdgo.GoString) + _test._flagHandle?.__copy__() : stdgo.GoString)?.__copy__()));
            _cmd.run();
            var _got = (_cmd.processState.exitCode() : stdgo.GoInt);
            if ((false && (_test._expectExit != (0 : stdgo.GoInt)) : Bool)) {
                _test._expectExit = (1 : stdgo.GoInt);
            };
            if (_got != (_test._expectExit)) {
                _t.errorf(("unexpected exit code for test case %+v \n: got %d, expect %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._expectExit));
            };
        };
    }
