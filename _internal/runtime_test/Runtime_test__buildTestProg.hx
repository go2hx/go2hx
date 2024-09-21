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
function _buildTestProg(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _binary:stdgo.GoString, _flags:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _flags = new stdgo.Slice<stdgo.GoString>(_flags.length, 0, ..._flags);
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_internal.runtime_test.Runtime_test__flagQuick._flagQuick.value) {
                _t.skip(stdgo.Go.toInterface(("-quick" : stdgo.GoString)));
            };
            stdgo._internal.internal.testenv.Testenv_mustHaveGoBuild.mustHaveGoBuild(stdgo.Go.asInterface(_t));
            _internal.runtime_test.Runtime_test__testprog._testprog.lock();
            if (_internal.runtime_test.Runtime_test__testprog._testprog._dir == (stdgo.Go.str())) {
                var __tmp__ = stdgo._internal.os.Os_mkdirTemp.mkdirTemp(stdgo.Go.str()?.__copy__(), ("go-build" : stdgo.GoString)), _dir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("failed to create temp directory: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                _internal.runtime_test.Runtime_test__testprog._testprog._dir = _dir?.__copy__();
                _internal.runtime_test.Runtime_test__toRemove._toRemove = (_internal.runtime_test.Runtime_test__toRemove._toRemove.__append__(_dir?.__copy__()));
            };
            if (_internal.runtime_test.Runtime_test__testprog._testprog._target == null) {
                _internal.runtime_test.Runtime_test__testprog._testprog._target = ({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<_internal.runtime_test.Runtime_test_T_buildexe.T_buildexe>>();
                    x.__defaultValue__ = () -> (null : stdgo.Ref<_internal.runtime_test.Runtime_test_T_buildexe.T_buildexe>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<_internal.runtime_test.Runtime_test_T_buildexe.T_buildexe>>);
            };
            var _name = (_binary?.__copy__() : stdgo.GoString);
            if (((_flags.length) > (0 : stdgo.GoInt) : Bool)) {
                _name = (_name + ((("_" : stdgo.GoString) + stdgo._internal.strings.Strings_join.join(_flags, ("_" : stdgo.GoString))?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            var __tmp__ = (_internal.runtime_test.Runtime_test__testprog._testprog._target != null && _internal.runtime_test.Runtime_test__testprog._testprog._target.exists(_name?.__copy__()) ? { _0 : _internal.runtime_test.Runtime_test__testprog._testprog._target[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<_internal.runtime_test.Runtime_test_T_buildexe.T_buildexe>), _1 : false }), _target:stdgo.Ref<_internal.runtime_test.Runtime_test_T_buildexe.T_buildexe> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                _target = (stdgo.Go.setRef((new _internal.runtime_test.Runtime_test_T_buildexe.T_buildexe() : _internal.runtime_test.Runtime_test_T_buildexe.T_buildexe)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_buildexe.T_buildexe>);
                _internal.runtime_test.Runtime_test__testprog._testprog._target[_name] = _target;
            };
            var _dir = (_internal.runtime_test.Runtime_test__testprog._testprog._dir?.__copy__() : stdgo.GoString);
            _internal.runtime_test.Runtime_test__testprog._testprog.unlock();
            _target._once.do_(function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    _internal.runtime_test.Runtime_test__serializeBuild._serializeBuild.__send__(true);
                    __deferstack__.unshift(() -> {
                        var a = function():Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                _internal.runtime_test.Runtime_test__serializeBuild._serializeBuild.__get__();
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                    return;
                                };
                            } catch(__exception__) {
                                var exe:Dynamic = __exception__.native;
                                if ((exe is haxe.ValueException)) exe = exe.value;
                                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                    if (__exception__.message == "__return__") throw "__return__";
                                    exe = stdgo.Go.toInterface(__exception__.message);
                                };
                                stdgo.Go.recover_exception = exe;
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                return;
                            };
                        };
                        a();
                    });
                    _target._err = stdgo._internal.errors.Errors_new_.new_(("building test called t.Skip" : stdgo.GoString));
                    var _exe = (stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), (_name + (".exe" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
                    var _start = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
                    var _cmd = stdgo._internal.os.exec.Exec_command.command(stdgo._internal.internal.testenv.Testenv_goToolPath.goToolPath(stdgo.Go.asInterface(_t))?.__copy__(), ...((new stdgo.Slice<stdgo.GoString>(3, 3, ...[("build" : stdgo.GoString), ("-o" : stdgo.GoString), _exe?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...(_flags : Array<stdgo.GoString>)) : Array<stdgo.GoString>));
                    _t.logf(("running %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)));
                    _cmd.dir = (("testdata/" : stdgo.GoString) + _binary?.__copy__() : stdgo.GoString)?.__copy__();
                    var __tmp__ = stdgo._internal.internal.testenv.Testenv_cleanCmdEnv.cleanCmdEnv(_cmd).combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _target._err = stdgo._internal.fmt.Fmt_errorf.errorf(("building %s %v: %v\n%s" : stdgo.GoString), stdgo.Go.toInterface(_binary), stdgo.Go.toInterface(_flags), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_out));
                    } else {
                        _t.logf(("built %v in %v" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.time.Time_since.since(_start?.__copy__()))));
                        _target._exe = _exe?.__copy__();
                        _target._err = (null : stdgo.Error);
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                        if (__exception__.message == "__return__") throw "__return__";
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            });
            {
                final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : _target._exe?.__copy__(), _1 : _target._err };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : ("" : stdgo.GoString), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : ("" : stdgo.GoString), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
