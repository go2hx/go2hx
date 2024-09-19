package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testReadFileProc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var _name = ("/proc/sys/fs/pipe-max-size" : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.os.Os_stat.stat(_name?.__copy__()), __8:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.skip(stdgo.Go.toInterface(_err));
            };
        };
        var __tmp__ = stdgo._internal.os.Os_readFile.readFile(_name?.__copy__()), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if (((_data.length == (0 : stdgo.GoInt)) || (_data[((_data.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != (10 : stdgo.GoUInt8)) : Bool)) {
            _t.fatalf(("read %s: not newline-terminated: %q" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_data));
        };
    }
