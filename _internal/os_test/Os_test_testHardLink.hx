package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testHardLink(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.internal.testenv.Testenv_mustHaveLink.mustHaveLink(stdgo.Go.asInterface(_t));
            __deferstack__.unshift(() -> _internal.os_test.Os_test__chtmpdir._chtmpdir(_t)());
            var __0 = ("hardlinktestfrom" : stdgo.GoString), __1 = ("hardlinktestto" : stdgo.GoString);
var _to = __1, _from = __0;
            var __tmp__ = stdgo._internal.os.Os_create.create(_to?.__copy__()), _file:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("open %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_err));
            };
            {
                _err = _file.close();
                if (_err != null) {
                    _t.errorf(("close %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_err));
                };
            };
            _err = stdgo._internal.os.Os_link.link(_to?.__copy__(), _from?.__copy__());
            if (_err != null) {
                _t.fatalf(("link %q, %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err));
            };
            var _none = ("hardlinktestnone" : stdgo.GoString);
            _err = stdgo._internal.os.Os_link.link(_none?.__copy__(), _none?.__copy__());
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.os.Os_LinkError.LinkError>)) : stdgo.Ref<stdgo._internal.os.Os_LinkError.LinkError>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.os.Os_LinkError.LinkError>), _1 : false };
                }, _lerr = __tmp__._0, _ok = __tmp__._1;
                if ((!_ok || (_lerr.error() == stdgo.Go.str()) : Bool)) {
                    _t.errorf(("link %q, %q failed to return a valid error" : stdgo.GoString), stdgo.Go.toInterface(_none), stdgo.Go.toInterface(_none));
                };
            };
            var __tmp__ = stdgo._internal.os.Os_stat.stat(_to?.__copy__()), _tostat:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("stat %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = stdgo._internal.os.Os_stat.stat(_from?.__copy__()), _fromstat:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("stat %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err));
            };
            if (!stdgo._internal.os.Os_sameFile.sameFile(_tostat, _fromstat)) {
                _t.errorf(("link %q, %q did not create hard link" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_from));
            };
            _err = stdgo._internal.os.Os_link.link(_to?.__copy__(), _from?.__copy__());
            {
                final __type__ = _err;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.os.Os_LinkError.LinkError>))) {
                    var _err:stdgo.Ref<stdgo._internal.os.Os_LinkError.LinkError> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.os.Os_LinkError.LinkError>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.os.Os_LinkError.LinkError>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.os.Os_LinkError.LinkError>) : __type__.__underlying__().value;
                    if (_err.op != (("link" : stdgo.GoString))) {
                        _t.errorf(("Link(%q, %q) err.Op = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err.op), stdgo.Go.toInterface(("link" : stdgo.GoString)));
                    };
                    if (_err.old != (_to)) {
                        _t.errorf(("Link(%q, %q) err.Old = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err.old), stdgo.Go.toInterface(_to));
                    };
                    if (_err.new_ != (_from)) {
                        _t.errorf(("Link(%q, %q) err.New = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err.new_), stdgo.Go.toInterface(_from));
                    };
                    if (!stdgo._internal.os.Os_isExist.isExist(_err.err)) {
                        _t.errorf(("Link(%q, %q) err.Err = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err.err), stdgo.Go.toInterface(("file exists error" : stdgo.GoString)));
                    };
                } else if (__type__ == null) {
                    var _err:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : cast __type__;
                    _t.errorf(("link %q, %q: expected error, got nil" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_to));
                } else {
                    var _err:stdgo.Error = __type__ == null ? (null : stdgo.Error) : cast __type__;
                    _t.errorf(("link %q, %q: expected %T, got %T %v" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.os.Os_LinkError.LinkError)) : stdgo.Ref<stdgo._internal.os.Os_LinkError.LinkError>))), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_err));
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
