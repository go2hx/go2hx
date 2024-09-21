package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testRenameFailed(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> _internal.os_test.Os_test__chtmpdir._chtmpdir(_t)());
            var __0 = ("renamefrom" : stdgo.GoString), __1 = ("renameto" : stdgo.GoString);
var _to = __1, _from = __0;
            var _err = (stdgo._internal.os.Os_rename.rename(_from?.__copy__(), _to?.__copy__()) : stdgo.Error);
            {
                final __type__ = _err;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.os.Os_LinkError.LinkError>))) {
                    var _err:stdgo.Ref<stdgo._internal.os.Os_LinkError.LinkError> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.os.Os_LinkError.LinkError>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.os.Os_LinkError.LinkError>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.os.Os_LinkError.LinkError>) : __type__.__underlying__().value;
                    if (_err.op != (("rename" : stdgo.GoString))) {
                        _t.errorf(("rename %q, %q: err.Op: want %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(("rename" : stdgo.GoString)), stdgo.Go.toInterface(_err.op));
                    };
                    if (_err.old != (_from)) {
                        _t.errorf(("rename %q, %q: err.Old: want %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err.old));
                    };
                    if (_err.new_ != (_to)) {
                        _t.errorf(("rename %q, %q: err.New: want %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_err.new_));
                    };
                } else if (__type__ == null) {
                    var _err:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : cast __type__;
                    _t.errorf(("rename %q, %q: expected error, got nil" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_to));
                } else {
                    var _err:stdgo.Error = __type__ == null ? (null : stdgo.Error) : cast __type__;
                    _t.errorf(("rename %q, %q: expected %T, got %T %v" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.os.Os_LinkError.LinkError)) : stdgo.Ref<stdgo._internal.os.Os_LinkError.LinkError>))), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_err));
                };
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
