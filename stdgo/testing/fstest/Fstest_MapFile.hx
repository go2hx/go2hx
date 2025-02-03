package stdgo.testing.fstest;
@:structInit @:using(stdgo.testing.fstest.Fstest.MapFile_static_extension) abstract MapFile(stdgo._internal.testing.fstest.Fstest_MapFile.MapFile) from stdgo._internal.testing.fstest.Fstest_MapFile.MapFile to stdgo._internal.testing.fstest.Fstest_MapFile.MapFile {
    public var data(get, set) : Array<std.UInt>;
    function get_data():Array<std.UInt> return [for (i in this.data) i];
    function set_data(v:Array<std.UInt>):Array<std.UInt> {
        this.data = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var mode(get, set) : stdgo._internal.io.fs.Fs_FileMode.FileMode;
    function get_mode():stdgo._internal.io.fs.Fs_FileMode.FileMode return this.mode;
    function set_mode(v:stdgo._internal.io.fs.Fs_FileMode.FileMode):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        this.mode = v;
        return v;
    }
    public var modTime(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_modTime():stdgo._internal.time.Time_Time.Time return this.modTime;
    function set_modTime(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.modTime = v;
        return v;
    }
    public var sys(get, set) : stdgo.AnyInterface;
    function get_sys():stdgo.AnyInterface return this.sys;
    function set_sys(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.sys = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?data:Array<std.UInt>, ?mode:stdgo._internal.io.fs.Fs_FileMode.FileMode, ?modTime:stdgo._internal.time.Time_Time.Time, ?sys:stdgo.AnyInterface) this = new stdgo._internal.testing.fstest.Fstest_MapFile.MapFile(([for (i in data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), mode, modTime, (sys : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
