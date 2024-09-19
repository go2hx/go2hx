package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testLongSymlink(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.internal.testenv.Testenv_mustHaveSymlink.mustHaveSymlink(stdgo.Go.asInterface(_t));
            __deferstack__.unshift(() -> _internal.os_test.Os_test__chtmpdir._chtmpdir(_t)());
            var _s = ("0123456789abcdef" : stdgo.GoString);
            _s = ((((((((((((((_s + _s?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__();
            var _from = ("longsymlinktestfrom" : stdgo.GoString);
            var _err = (stdgo._internal.os.Os_symlink.symlink(_s?.__copy__(), _from?.__copy__()) : stdgo.Error);
            if (_err != null) {
                _t.fatalf(("symlink %q, %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = stdgo._internal.os.Os_readlink.readlink(_from?.__copy__()), _r:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("readlink %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err));
            };
            if (_r != (_s)) {
                _t.fatalf(("after symlink %q != %q" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_s));
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
