package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function _testReaddirnames(_dir:stdgo.GoString, _contents:stdgo.Slice<stdgo.GoString>):stdgo.Ref<stdgo._internal.testing.Testing_T_.T_> -> Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                final __ret__:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_> -> Void = function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        _t.parallel();
                        var __tmp__ = stdgo._internal.os.Os_open.open(_dir?.__copy__()), _file:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _t.fatalf(("open %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err));
                        };
                        __deferstack__.unshift(() -> _file.close());
                        var __tmp__ = _file.readdirnames((-1 : stdgo.GoInt)), _s:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
                        if (_err2 != null) {
                            _t.fatalf(("Readdirnames %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err2));
                        };
                        for (__8 => _m in _contents) {
                            var _found = (false : Bool);
                            for (__9 => _n in _s) {
                                if (((_n == ("." : stdgo.GoString)) || (_n == (".." : stdgo.GoString)) : Bool)) {
                                    _t.errorf(("got %q in directory" : stdgo.GoString), stdgo.Go.toInterface(_n));
                                };
                                if (!_internal.os_test.Os_test__equal._equal(_m?.__copy__(), _n?.__copy__())) {
                                    continue;
                                };
                                if (_found) {
                                    _t.error(stdgo.Go.toInterface(("present twice:" : stdgo.GoString)), stdgo.Go.toInterface(_m));
                                };
                                _found = true;
                            };
                            if (!_found) {
                                _t.error(stdgo.Go.toInterface(("could not find" : stdgo.GoString)), stdgo.Go.toInterface(_m));
                            };
                        };
                        if (_s == null) {
                            _t.error(stdgo.Go.toInterface(("Readdirnames returned nil instead of empty slice" : stdgo.GoString)));
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
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return null;
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
            return null;
        };
    }
