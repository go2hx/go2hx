package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testChtimesToUnixZero(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _file = _internal.os_test.Os_test__newFile._newFile(("chtimes-to-unix-zero" : stdgo.GoString), _t);
            var _fn = (_file.name()?.__copy__() : stdgo.GoString);
            {
                var _a0 = _fn;
                __deferstack__.unshift(() -> stdgo._internal.os.Os_remove.remove(_a0?.__copy__()));
            };
            {
                var __tmp__ = _file.write((("hi" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                var _err = (_file.close() : stdgo.Error);
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            var _unixZero = (stdgo._internal.time.Time_unix.unix((0i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__() : stdgo._internal.time.Time_Time.Time);
            {
                var _err = (stdgo._internal.os.Os_chtimes.chtimes(_fn?.__copy__(), _unixZero?.__copy__(), _unixZero?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    _t.fatalf(("Chtimes failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
            var __tmp__ = stdgo._internal.os.Os_stat.stat(_fn?.__copy__()), _st:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _mt = (_st.modTime()?.__copy__() : stdgo._internal.time.Time_Time.Time);
                if (stdgo.Go.toInterface(_mt) != stdgo.Go.toInterface(_unixZero)) {
                    _t.errorf(("mtime is %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_mt)), stdgo.Go.toInterface(stdgo.Go.asInterface(_unixZero)));
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
