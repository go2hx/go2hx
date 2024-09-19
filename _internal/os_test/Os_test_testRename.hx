package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testRename(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> _internal.os_test.Os_test__chtmpdir._chtmpdir(_t)());
            var __0 = ("renamefrom" : stdgo.GoString), __1 = ("renameto" : stdgo.GoString);
var _to = __1, _from = __0;
            var __tmp__ = stdgo._internal.os.Os_create.create(_from?.__copy__()), _file:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("open %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err));
            };
            {
                _err = _file.close();
                if (_err != null) {
                    _t.errorf(("close %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err));
                };
            };
            _err = stdgo._internal.os.Os_rename.rename(_from?.__copy__(), _to?.__copy__());
            if (_err != null) {
                _t.fatalf(("rename %q, %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err));
            };
            {
                var __tmp__ = stdgo._internal.os.Os_stat.stat(_to?.__copy__());
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.errorf(("stat %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_err));
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
