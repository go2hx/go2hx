package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testReadOnlyWriteFile(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (stdgo._internal.os.Os_getuid.getuid() == ((0 : stdgo.GoInt))) {
                _t.skipf(("Root can write to read-only files anyway, so skip the read-only test." : stdgo.GoString));
            };
            if (false) {
                _t.skip(stdgo.Go.toInterface(("no support for file permissions on js" : stdgo.GoString)));
            };
            _t.parallel();
            var __tmp__ = stdgo._internal.os.Os_mkdirTemp.mkdirTemp(stdgo.Go.str()?.__copy__(), _t.name()?.__copy__()), _tempDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _tempDir;
                __deferstack__.unshift(() -> stdgo._internal.os.Os_removeAll.removeAll(_a0?.__copy__()));
            };
            var _filename = (stdgo._internal.path.filepath.Filepath_join.join(_tempDir?.__copy__(), ("blurp.txt" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            var _shmorp = (("shmorp" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
            var _florp = (("florp" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
            _err = stdgo._internal.os.Os_writeFile.writeFile(_filename?.__copy__(), _shmorp, (292u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode));
            if (_err != null) {
                _t.fatalf(("WriteFile %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_err));
            };
            _err = stdgo._internal.os.Os_writeFile.writeFile(_filename?.__copy__(), _florp, (292u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode));
            if (_err == null) {
                _t.fatalf(("Expected an error when writing to read-only file %s" : stdgo.GoString), stdgo.Go.toInterface(_filename));
            };
            var __tmp__ = stdgo._internal.os.Os_readFile.readFile(_filename?.__copy__()), _got:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("ReadFile %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_err));
            };
            if (!stdgo._internal.bytes.Bytes_equal.equal(_got, _shmorp)) {
                _t.fatalf(("want %s, got %s" : stdgo.GoString), stdgo.Go.toInterface(_shmorp), stdgo.Go.toInterface(_got));
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
