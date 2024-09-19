package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testAppend(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> _internal.os_test.Os_test__chtmpdir._chtmpdir(_t)());
            {};
            var _s = (_internal.os_test.Os_test__writeFile._writeFile(_t, ("append.txt" : stdgo.GoString), (578 : stdgo.GoInt), ("new" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_s != (("new" : stdgo.GoString))) {
                _t.fatalf(("writeFile: have %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("new" : stdgo.GoString)));
            };
            _s = _internal.os_test.Os_test__writeFile._writeFile(_t, ("append.txt" : stdgo.GoString), (1026 : stdgo.GoInt), ("|append" : stdgo.GoString))?.__copy__();
            if (_s != (("new|append" : stdgo.GoString))) {
                _t.fatalf(("writeFile: have %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("new|append" : stdgo.GoString)));
            };
            _s = _internal.os_test.Os_test__writeFile._writeFile(_t, ("append.txt" : stdgo.GoString), (1090 : stdgo.GoInt), ("|append" : stdgo.GoString))?.__copy__();
            if (_s != (("new|append|append" : stdgo.GoString))) {
                _t.fatalf(("writeFile: have %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("new|append|append" : stdgo.GoString)));
            };
            var _err = (stdgo._internal.os.Os_remove.remove(("append.txt" : stdgo.GoString)) : stdgo.Error);
            if (_err != null) {
                _t.fatalf(("Remove: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _s = _internal.os_test.Os_test__writeFile._writeFile(_t, ("append.txt" : stdgo.GoString), (1090 : stdgo.GoInt), ("new&append" : stdgo.GoString))?.__copy__();
            if (_s != (("new&append" : stdgo.GoString))) {
                _t.fatalf(("writeFile: after append have %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("new&append" : stdgo.GoString)));
            };
            _s = _internal.os_test.Os_test__writeFile._writeFile(_t, ("append.txt" : stdgo.GoString), (66 : stdgo.GoInt), ("old" : stdgo.GoString))?.__copy__();
            if (_s != (("old&append" : stdgo.GoString))) {
                _t.fatalf(("writeFile: after create have %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("old&append" : stdgo.GoString)));
            };
            _s = _internal.os_test.Os_test__writeFile._writeFile(_t, ("append.txt" : stdgo.GoString), (578 : stdgo.GoInt), ("new" : stdgo.GoString))?.__copy__();
            if (_s != (("new" : stdgo.GoString))) {
                _t.fatalf(("writeFile: after truncate have %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("new" : stdgo.GoString)));
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
