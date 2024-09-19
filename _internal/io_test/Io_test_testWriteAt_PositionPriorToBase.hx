package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testWriteAt_PositionPriorToBase(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _tmpdir = (_t.tempDir()?.__copy__() : stdgo.GoString);
            var _tmpfilename = ("TestOffsetWriter_WriteAt" : stdgo.GoString);
            var __tmp__ = stdgo._internal.os.Os_createTemp.createTemp(_tmpdir?.__copy__(), _tmpfilename?.__copy__()), _tmpfile:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("CreateTemp(%s) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_tmpfilename), stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _tmpfile.close());
            var _offset = ((10i64 : stdgo.GoInt64) : stdgo.GoInt64);
            var _at = ((-1i64 : stdgo.GoInt64) : stdgo.GoInt64);
            var _w = stdgo._internal.io.Io_newOffsetWriter.newOffsetWriter(stdgo.Go.asInterface(_tmpfile), _offset);
            var __tmp__ = _w.writeAt((("hello" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _at), __8:stdgo.GoInt = __tmp__._0, _e:stdgo.Error = __tmp__._1;
            if (_e == null) {
                _t.errorf(("error expected to be not nil" : stdgo.GoString));
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
