package _internal.io.fs_test;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
function testWalkDir(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _tmpDir = (_t.tempDir()?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.os.Os_getwd.getwd(), _origDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("finding working dir:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            {
                _err = stdgo._internal.os.Os_chdir.chdir(_tmpDir?.__copy__());
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(("entering temp dir:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                };
            };
            {
                var _a0 = _origDir;
                __deferstack__.unshift(() -> stdgo._internal.os.Os_chdir.chdir(_a0?.__copy__()));
            };
            var _fsys = (_internal.io.fs_test.Fs_test__makeTree._makeTree() : stdgo._internal.io.fs.Fs_FS.FS);
            var _errors = (new stdgo.Slice<stdgo.Error>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Error>);
            var _clear = (true : Bool);
            var _markFn = (function(_path:stdgo.GoString, _entry:stdgo._internal.io.fs.Fs_DirEntry.DirEntry, _err:stdgo.Error):stdgo.Error {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    {
                        final __ret__:stdgo.Error = _internal.io.fs_test.Fs_test__mark._mark(_entry, _err, (stdgo.Go.setRef(_errors) : stdgo.Ref<stdgo.Slice<stdgo.Error>>), _clear);
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                    {
                        final __ret__:stdgo.Error = (null : stdgo.Error);
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
                    final __ret__:stdgo.Error = (null : stdgo.Error);
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return __ret__;
                };
            } : (stdgo.GoString, stdgo._internal.io.fs.Fs_DirEntry.DirEntry, stdgo.Error) -> stdgo.Error);
            _err = stdgo._internal.io.fs.Fs_walkDir.walkDir(_fsys, ("." : stdgo.GoString), _markFn);
            if (_err != null) {
                _t.fatalf(("no error expected, found: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            if ((_errors.length) != ((0 : stdgo.GoInt))) {
                _t.fatalf(("unexpected errors: %s" : stdgo.GoString), stdgo.Go.toInterface(_errors));
            };
            _internal.io.fs_test.Fs_test__walkTree._walkTree(_internal.io.fs_test.Fs_test__tree._tree, _internal.io.fs_test.Fs_test__tree._tree._name?.__copy__(), function(_path:stdgo.GoString, _n:stdgo.Ref<_internal.io.fs_test.Fs_test_Node.Node>):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    if (_n._mark != ((1 : stdgo.GoInt))) {
                        _t.errorf(("node %s mark = %d; expected 1" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_n._mark));
                    };
                    _n._mark = (0 : stdgo.GoInt);
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
