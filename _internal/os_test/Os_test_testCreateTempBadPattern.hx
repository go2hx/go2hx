package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testCreateTempBadPattern(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var __tmp__ = stdgo._internal.os.Os_mkdirTemp.mkdirTemp(stdgo.Go.str()?.__copy__(), _t.name()?.__copy__()), _tmpDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _tmpDir;
                __deferstack__.unshift(() -> stdgo._internal.os.Os_removeAll.removeAll(_a0?.__copy__()));
            };
            {};
            var _tests = (new stdgo.Slice<_internal.os_test.Os_test_T__struct_8.T__struct_8>(7, 7, ...[({ _pattern : ("ioutil*test" : stdgo.GoString), _wantErr : false } : _internal.os_test.Os_test_T__struct_8.T__struct_8), ({ _pattern : ("tempfile_test*foo" : stdgo.GoString), _wantErr : false } : _internal.os_test.Os_test_T__struct_8.T__struct_8), ({ _pattern : ("tempfile_test/foo" : stdgo.GoString), _wantErr : true } : _internal.os_test.Os_test_T__struct_8.T__struct_8), ({ _pattern : ("tempfile_test*/foo" : stdgo.GoString), _wantErr : true } : _internal.os_test.Os_test_T__struct_8.T__struct_8), ({ _pattern : ("tempfile_test/*foo" : stdgo.GoString), _wantErr : true } : _internal.os_test.Os_test_T__struct_8.T__struct_8), ({ _pattern : ("/tempfile_test/*foo" : stdgo.GoString), _wantErr : true } : _internal.os_test.Os_test_T__struct_8.T__struct_8), ({ _pattern : ("tempfile_test*foo/" : stdgo.GoString), _wantErr : true } : _internal.os_test.Os_test_T__struct_8.T__struct_8)].concat([for (i in 7 ... (7 > 7 ? 7 : 7 : stdgo.GoInt).toBasic()) ({ _pattern : ("" : stdgo.GoString), _wantErr : false } : _internal.os_test.Os_test_T__struct_8.T__struct_8)])) : stdgo.Slice<_internal.os_test.Os_test_T__struct_8.T__struct_8>);
            for (__16 => _tt in _tests) {
                _t.run(_tt._pattern?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        var __tmp__ = stdgo._internal.os.Os_createTemp.createTemp(_tmpDir?.__copy__(), _tt._pattern?.__copy__()), _tmpfile:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_tmpfile != null && ((_tmpfile : Dynamic).__nil__ == null || !(_tmpfile : Dynamic).__nil__)) {
                            __deferstack__.unshift(() -> _tmpfile.close());
                        };
                        if (_tt._wantErr) {
                            if (_err == null) {
                                _t.errorf(("CreateTemp(..., %#q) succeeded, expected error" : stdgo.GoString), stdgo.Go.toInterface(_tt._pattern));
                            };
                            if (!stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.os.Os_errPatternHasSeparator.errPatternHasSeparator)) {
                                _t.errorf(("CreateTemp(..., %#q): %v, expected ErrPatternHasSeparator" : stdgo.GoString), stdgo.Go.toInterface(_tt._pattern), stdgo.Go.toInterface(_err));
                            };
                        } else if (_err != null) {
                            _t.errorf(("CreateTemp(..., %#q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._pattern), stdgo.Go.toInterface(_err));
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
    }
