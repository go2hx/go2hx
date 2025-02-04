package stdgo._internal.testing.fstest;
@:structInit @:using(stdgo._internal.testing.fstest.Fstest_mapfile_static_extension.MapFile_static_extension) class MapFile {
    public var data : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var mode : stdgo._internal.io.fs.Fs_filemode.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs_filemode.FileMode);
    public var modTime : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var sys : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?data:stdgo.Slice<stdgo.GoUInt8>, ?mode:stdgo._internal.io.fs.Fs_filemode.FileMode, ?modTime:stdgo._internal.time.Time_time.Time, ?sys:stdgo.AnyInterface) {
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
