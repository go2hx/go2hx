package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testReaddirOfFile(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var __tmp__ = stdgo._internal.os.Os_createTemp.createTemp(_t.tempDir()?.__copy__(), ("_Go_ReaddirOfFile" : stdgo.GoString)), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            _f.write((("foo" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
            _f.close();
            var __tmp__ = stdgo._internal.os.Os_open.open(_f.name()?.__copy__()), _reg:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _reg.close());
            var __tmp__ = _reg.readdirnames((-1 : stdgo.GoInt)), _names:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("Readdirnames succeeded; want non-nil error" : stdgo.GoString)));
            };
            var _pe:stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError> = (null : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>);
            if ((!stdgo._internal.errors.Errors_as.as(_err, stdgo.Go.toInterface((stdgo.Go.setRef(_pe) : stdgo.Ref<stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>>))) || (_pe.path != _f.name()) : Bool)) {
                _t.errorf(("Readdirnames returned %q; want a PathError with path %q" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_f.name()));
            };
            if (((_names.length) > (0 : stdgo.GoInt) : Bool)) {
                _t.errorf(("unexpected dir names in regular file: %q" : stdgo.GoString), stdgo.Go.toInterface(_names));
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
