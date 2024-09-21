package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testWriteAtInAppendMode(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> _internal.os_test.Os_test__chtmpdir._chtmpdir(_t)());
            var __tmp__ = stdgo._internal.os.Os_openFile.openFile(("write_at_in_append_mode.txt" : stdgo.GoString), (1088 : stdgo.GoInt), (438u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("OpenFile: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _f.close());
            {
                var __tmp__ = _f.writeAt((stdgo.Go.str() : stdgo.Slice<stdgo.GoUInt8>), (1i64 : stdgo.GoInt64));
                _err = __tmp__._1;
            };
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.os.Os_errWriteAtInAppendMode.errWriteAtInAppendMode))) {
                _t.fatalf(("f.WriteAt returned %v, expected %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo._internal.os.Os_errWriteAtInAppendMode.errWriteAtInAppendMode));
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
