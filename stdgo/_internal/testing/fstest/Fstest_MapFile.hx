package stdgo._internal.testing.fstest;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.Io;
import stdgo._internal.path.Path;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.testing.iotest.Iotest;
@:structInit @:using(stdgo._internal.testing.fstest.Fstest_MapFile_static_extension.MapFile_static_extension) class MapFile {
    public var data : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var mode : stdgo._internal.io.fs.Fs_FileMode.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs_FileMode.FileMode);
    public var modTime : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public var sys : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?data:stdgo.Slice<stdgo.GoUInt8>, ?mode:stdgo._internal.io.fs.Fs_FileMode.FileMode, ?modTime:stdgo._internal.time.Time_Time.Time, ?sys:stdgo.AnyInterface) {
        if (data != null) this.data = data;
        if (mode != null) this.mode = mode;
        if (modTime != null) this.modTime = modTime;
        if (sys != null) this.sys = sys;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MapFile(data, mode, modTime, sys);
    }
}
