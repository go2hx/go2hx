package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testMkdirTemp(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var __tmp__ = stdgo._internal.os.Os_mkdirTemp.mkdirTemp(("/_not_exists_" : stdgo.GoString), ("foo" : stdgo.GoString)), _name:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_name != stdgo.Go.str()) || (_err == null) : Bool)) {
                _t.errorf(("MkdirTemp(`/_not_exists_`, `foo`) = %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err));
            };
            var _tests = (new stdgo.Slice<_internal.os_test.Os_test_T__struct_9.T__struct_9>(3, 3, ...[({ _pattern : ("tempfile_test" : stdgo.GoString), _wantPrefix : ("tempfile_test" : stdgo.GoString), _wantSuffix : stdgo.Go.str()?.__copy__() } : _internal.os_test.Os_test_T__struct_9.T__struct_9), ({ _pattern : ("tempfile_test*" : stdgo.GoString), _wantPrefix : ("tempfile_test" : stdgo.GoString), _wantSuffix : stdgo.Go.str()?.__copy__() } : _internal.os_test.Os_test_T__struct_9.T__struct_9), ({ _pattern : ("tempfile_test*xyz" : stdgo.GoString), _wantPrefix : ("tempfile_test" : stdgo.GoString), _wantSuffix : ("xyz" : stdgo.GoString) } : _internal.os_test.Os_test_T__struct_9.T__struct_9)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _pattern : ("" : stdgo.GoString), _wantPrefix : ("" : stdgo.GoString), _wantSuffix : ("" : stdgo.GoString) } : _internal.os_test.Os_test_T__struct_9.T__struct_9)])) : stdgo.Slice<_internal.os_test.Os_test_T__struct_9.T__struct_9>);
            var _dir = (stdgo._internal.path.filepath.Filepath_clean.clean(stdgo._internal.os.Os_tempDir.tempDir()?.__copy__())?.__copy__() : stdgo.GoString);
            var _runTestMkdirTemp = function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _pattern:stdgo.GoString, _wantRePat:stdgo.GoString):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var __tmp__ = stdgo._internal.os.Os_mkdirTemp.mkdirTemp(_dir?.__copy__(), _pattern?.__copy__()), _name:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_name == stdgo.Go.str()) || (_err != null) : Bool)) {
                        _t.fatalf(("MkdirTemp(dir, `tempfile_test`) = %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err));
                    };
                    {
                        var _a0 = _name;
                        __deferstack__.unshift(() -> stdgo._internal.os.Os_remove.remove(_a0?.__copy__()));
                    };
                    var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(_wantRePat?.__copy__());
                    if (!_re.matchString(_name?.__copy__())) {
                        _t.errorf(("MkdirTemp(%q, %q) created bad name\n\t%q\ndid not match pattern\n\t%q" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_wantRePat));
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
            };
            for (__8 => _tt in _tests) {
                _t.run(_tt._pattern?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        var _wantRePat = (((((("^" : stdgo.GoString) + stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), _tt._wantPrefix?.__copy__())?.__copy__())?.__copy__() : stdgo.GoString) + ("[0-9]+" : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(_tt._wantSuffix?.__copy__())?.__copy__() : stdgo.GoString) + ("$" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                        _runTestMkdirTemp(_t, _tt._pattern?.__copy__(), _wantRePat?.__copy__());
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
            };
            _t.run(("*xyz" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var _wantRePat = ((((("^" : stdgo.GoString) + stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__())?.__copy__())?.__copy__() : stdgo.GoString) + stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(((47 : stdgo.GoInt32) : stdgo.GoString))?.__copy__() : stdgo.GoString) + ("[0-9]+xyz$" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    _runTestMkdirTemp(_t, ("*xyz" : stdgo.GoString), _wantRePat?.__copy__());
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
    }
