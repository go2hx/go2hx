package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function testString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var __tmp__ = stdgo._internal.os.exec.Exec_lookPath.lookPath(("echo" : stdgo.GoString)), _echoPath:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.skip(stdgo.Go.toInterface(_err));
        };
        var _tests = (new stdgo.GoArray<_internal.os.exec_test.Exec_test_T__struct_2.T__struct_2>(3, 3, ...[({ _path : ("echo" : stdgo.GoString), _args : (null : stdgo.Slice<stdgo.GoString>), _want : _echoPath?.__copy__() } : _internal.os.exec_test.Exec_test_T__struct_2.T__struct_2), ({ _path : ("echo" : stdgo.GoString), _args : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("a" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _want : (_echoPath + (" a" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() } : _internal.os.exec_test.Exec_test_T__struct_2.T__struct_2), ({ _path : ("echo" : stdgo.GoString), _args : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _want : (_echoPath + (" a b" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() } : _internal.os.exec_test.Exec_test_T__struct_2.T__struct_2)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _path : ("" : stdgo.GoString), _args : (null : stdgo.Slice<stdgo.GoString>), _want : ("" : stdgo.GoString) } : _internal.os.exec_test.Exec_test_T__struct_2.T__struct_2)])) : stdgo.GoArray<_internal.os.exec_test.Exec_test_T__struct_2.T__struct_2>);
        for (__8 => _test in _tests) {
            var _cmd = stdgo._internal.os.exec.Exec_command.command(_test._path?.__copy__(), ...(_test._args : Array<stdgo.GoString>));
            {
                var _got = ((_cmd.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_got != (_test._want)) {
                    _t.errorf(("String(%q, %q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_test._args), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
