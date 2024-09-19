package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testRenameCaseDifference(_pt:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __0 = ("renameFROM" : stdgo.GoString), __1 = ("RENAMEfrom" : stdgo.GoString);
var _to = __1, _from = __0;
            var _tests = (new stdgo.Slice<_internal.os_test.Os_test_T__struct_2.T__struct_2>(2, 2, ...[({ _name : ("dir" : stdgo.GoString), _create : function():stdgo.Error {
                return stdgo._internal.os.Os_mkdir.mkdir(_from?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode));
            } } : _internal.os_test.Os_test_T__struct_2.T__struct_2), ({ _name : ("file" : stdgo.GoString), _create : function():stdgo.Error {
                var __tmp__ = stdgo._internal.os.Os_create.create(_from?.__copy__()), _fd:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                return _fd.close();
            } } : _internal.os_test.Os_test_T__struct_2.T__struct_2)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _create : null } : _internal.os_test.Os_test_T__struct_2.T__struct_2)])) : stdgo.Slice<_internal.os_test.Os_test_T__struct_2.T__struct_2>);
            for (__0 => _test in _tests) {
                _pt.run(_test._name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> _internal.os_test.Os_test__chtmpdir._chtmpdir(_t)());
                        {
                            var _err = (_test._create() : stdgo.Error);
                            if (_err != null) {
                                _t.fatalf(("failed to create test file: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                            };
                        };
                        {
                            var __tmp__ = stdgo._internal.os.Os_stat.stat(_to?.__copy__()), __9:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                if (stdgo._internal.os.Os_isNotExist.isNotExist(_err)) {
                                    _t.skipf(("case sensitive filesystem" : stdgo.GoString));
                                };
                                _t.fatalf(("stat %q, got: %q" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_err));
                            };
                        };
                        {
                            var _err = (stdgo._internal.os.Os_rename.rename(_from?.__copy__(), _to?.__copy__()) : stdgo.Error);
                            if (_err != null) {
                                _t.fatalf(("unexpected error when renaming from %q to %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_err));
                            };
                        };
                        var __tmp__ = stdgo._internal.os.Os_open.open(("." : stdgo.GoString)), _fd:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _t.fatalf(("Open .: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        };
                        var __tmp__ = _fd.readdirnames((-1 : stdgo.GoInt)), _dirNames:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _t.fatalf(("readdirnames: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        };
                        {
                            var _dirNamesLen = (_dirNames.length : stdgo.GoInt);
                            if (_dirNamesLen != ((1 : stdgo.GoInt))) {
                                _t.fatalf(("unexpected dirNames len, got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_dirNamesLen), stdgo.Go.toInterface((1 : stdgo.GoInt)));
                            };
                        };
                        if (_dirNames[(0 : stdgo.GoInt)] != (_to)) {
                            _t.errorf(("unexpected name, got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_dirNames[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_to));
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
