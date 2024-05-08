package stdgo.testing;
/**
    Package fstest implements support for testing implementations and users of file systems.
**/
private var __go2hxdoc__package : Bool;
abstract MapFile(stdgo._internal.testing.fstest.Fstest.MapFile) from stdgo._internal.testing.fstest.Fstest.MapFile to stdgo._internal.testing.fstest.Fstest.MapFile {
    public var data(get, set) : Array<std.UInt>;
    function get_data():Array<std.UInt> return [for (i in this.data) i];
    function set_data(v:Array<std.UInt>):Array<std.UInt> {
        this.data = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var mode(get, set) : stdgo._internal.io.fs.Fs.FileMode;
    function get_mode():stdgo._internal.io.fs.Fs.FileMode return this.mode;
    function set_mode(v:stdgo._internal.io.fs.Fs.FileMode):stdgo._internal.io.fs.Fs.FileMode {
        this.mode = v;
        return v;
    }
    public var modTime(get, set) : stdgo._internal.time.Time.Time;
    function get_modTime():stdgo._internal.time.Time.Time return this.modTime;
    function set_modTime(v:stdgo._internal.time.Time.Time):stdgo._internal.time.Time.Time {
        this.modTime = v;
        return v;
    }
    public var sys(get, set) : stdgo.AnyInterface;
    function get_sys():stdgo.AnyInterface return this.sys;
    function set_sys(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.sys = v;
        return v;
    }
    public function new(?data:Array<std.UInt>, ?mode:stdgo._internal.io.fs.Fs.FileMode, ?modTime:stdgo._internal.time.Time.Time, ?sys:stdgo.AnyInterface) this = new stdgo._internal.testing.fstest.Fstest.MapFile(([for (i in data) i] : stdgo.Slice<stdgo.GoUInt8>), mode, modTime, sys);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_fsOnly(stdgo._internal.testing.fstest.Fstest.T_fsOnly) from stdgo._internal.testing.fstest.Fstest.T_fsOnly to stdgo._internal.testing.fstest.Fstest.T_fsOnly {
    public var fs(get, set) : stdgo._internal.io.fs.Fs.FS;
    function get_fs():stdgo._internal.io.fs.Fs.FS return this.fs;
    function set_fs(v:stdgo._internal.io.fs.Fs.FS):stdgo._internal.io.fs.Fs.FS {
        this.fs = v;
        return v;
    }
    public function new(?fs:stdgo._internal.io.fs.Fs.FS) this = new stdgo._internal.testing.fstest.Fstest.T_fsOnly(fs);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_noSub(stdgo._internal.testing.fstest.Fstest.T_noSub) from stdgo._internal.testing.fstest.Fstest.T_noSub to stdgo._internal.testing.fstest.Fstest.T_noSub {
    public var mapFS(get, set) : stdgo._internal.testing.fstest.Fstest.MapFS;
    function get_mapFS():stdgo._internal.testing.fstest.Fstest.MapFS return this.mapFS;
    function set_mapFS(v:stdgo._internal.testing.fstest.Fstest.MapFS):stdgo._internal.testing.fstest.Fstest.MapFS {
        this.mapFS = v;
        return v;
    }
    public function new(?mapFS:stdgo._internal.testing.fstest.Fstest.MapFS) this = new stdgo._internal.testing.fstest.Fstest.T_noSub(mapFS);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_mapFileInfo(stdgo._internal.testing.fstest.Fstest.T_mapFileInfo) from stdgo._internal.testing.fstest.Fstest.T_mapFileInfo to stdgo._internal.testing.fstest.Fstest.T_mapFileInfo {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public var _f(get, set) : stdgo._internal.testing.fstest.Fstest.MapFile;
    function get__f():stdgo._internal.testing.fstest.Fstest.MapFile return this._f;
    function set__f(v:stdgo._internal.testing.fstest.Fstest.MapFile):stdgo._internal.testing.fstest.Fstest.MapFile {
        this._f = v;
        return v;
    }
    public function new(?_name:String, ?_f:stdgo._internal.testing.fstest.Fstest.MapFile) this = new stdgo._internal.testing.fstest.Fstest.T_mapFileInfo(_name, _f);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_openMapFile(stdgo._internal.testing.fstest.Fstest.T_openMapFile) from stdgo._internal.testing.fstest.Fstest.T_openMapFile to stdgo._internal.testing.fstest.Fstest.T_openMapFile {
    public var _path(get, set) : String;
    function get__path():String return this._path;
    function set__path(v:String):String {
        this._path = v;
        return v;
    }
    public var _mapFileInfo(get, set) : stdgo._internal.testing.fstest.Fstest.T_mapFileInfo;
    function get__mapFileInfo():stdgo._internal.testing.fstest.Fstest.T_mapFileInfo return this._mapFileInfo;
    function set__mapFileInfo(v:stdgo._internal.testing.fstest.Fstest.T_mapFileInfo):stdgo._internal.testing.fstest.Fstest.T_mapFileInfo {
        this._mapFileInfo = v;
        return v;
    }
    public var _offset(get, set) : haxe.Int64;
    function get__offset():haxe.Int64 return this._offset;
    function set__offset(v:haxe.Int64):haxe.Int64 {
        this._offset = v;
        return v;
    }
    public function new(?_path:String, ?_mapFileInfo:stdgo._internal.testing.fstest.Fstest.T_mapFileInfo, ?_offset:haxe.Int64) this = new stdgo._internal.testing.fstest.Fstest.T_openMapFile(_path, _mapFileInfo, _offset);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_mapDir(stdgo._internal.testing.fstest.Fstest.T_mapDir) from stdgo._internal.testing.fstest.Fstest.T_mapDir to stdgo._internal.testing.fstest.Fstest.T_mapDir {
    public var _path(get, set) : String;
    function get__path():String return this._path;
    function set__path(v:String):String {
        this._path = v;
        return v;
    }
    public var _mapFileInfo(get, set) : stdgo._internal.testing.fstest.Fstest.T_mapFileInfo;
    function get__mapFileInfo():stdgo._internal.testing.fstest.Fstest.T_mapFileInfo return this._mapFileInfo;
    function set__mapFileInfo(v:stdgo._internal.testing.fstest.Fstest.T_mapFileInfo):stdgo._internal.testing.fstest.Fstest.T_mapFileInfo {
        this._mapFileInfo = v;
        return v;
    }
    public var _entry(get, set) : Array<stdgo._internal.testing.fstest.Fstest.T_mapFileInfo>;
    function get__entry():Array<stdgo._internal.testing.fstest.Fstest.T_mapFileInfo> return [for (i in this._entry) i];
    function set__entry(v:Array<stdgo._internal.testing.fstest.Fstest.T_mapFileInfo>):Array<stdgo._internal.testing.fstest.Fstest.T_mapFileInfo> {
        this._entry = ([for (i in v) i] : stdgo.Slice<stdgo._internal.testing.fstest.Fstest.T_mapFileInfo>);
        return v;
    }
    public var _offset(get, set) : StdTypes.Int;
    function get__offset():StdTypes.Int return this._offset;
    function set__offset(v:StdTypes.Int):StdTypes.Int {
        this._offset = v;
        return v;
    }
    public function new(?_path:String, ?_mapFileInfo:stdgo._internal.testing.fstest.Fstest.T_mapFileInfo, ?_entry:Array<stdgo._internal.testing.fstest.Fstest.T_mapFileInfo>, ?_offset:StdTypes.Int) this = new stdgo._internal.testing.fstest.Fstest.T_mapDir(_path, _mapFileInfo, ([for (i in _entry) i] : stdgo.Slice<stdgo._internal.testing.fstest.Fstest.T_mapFileInfo>), _offset);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_fsTester(stdgo._internal.testing.fstest.Fstest.T_fsTester) from stdgo._internal.testing.fstest.Fstest.T_fsTester to stdgo._internal.testing.fstest.Fstest.T_fsTester {
    public var _fsys(get, set) : stdgo._internal.io.fs.Fs.FS;
    function get__fsys():stdgo._internal.io.fs.Fs.FS return this._fsys;
    function set__fsys(v:stdgo._internal.io.fs.Fs.FS):stdgo._internal.io.fs.Fs.FS {
        this._fsys = v;
        return v;
    }
    public var _errText(get, set) : Array<std.UInt>;
    function get__errText():Array<std.UInt> return [for (i in this._errText) i];
    function set__errText(v:Array<std.UInt>):Array<std.UInt> {
        this._errText = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _dirs(get, set) : Array<String>;
    function get__dirs():Array<String> return [for (i in this._dirs) i];
    function set__dirs(v:Array<String>):Array<String> {
        this._dirs = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _files(get, set) : Array<String>;
    function get__files():Array<String> return [for (i in this._files) i];
    function set__files(v:Array<String>):Array<String> {
        this._files = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?_fsys:stdgo._internal.io.fs.Fs.FS, ?_errText:Array<std.UInt>, ?_dirs:Array<String>, ?_files:Array<String>) this = new stdgo._internal.testing.fstest.Fstest.T_fsTester(_fsys, ([for (i in _errText) i] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _dirs) i] : stdgo.Slice<stdgo.GoString>), ([for (i in _files) i] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_shuffledFile(stdgo._internal.testing.fstest.Fstest.T_shuffledFile) from stdgo._internal.testing.fstest.Fstest.T_shuffledFile to stdgo._internal.testing.fstest.Fstest.T_shuffledFile {
    public var file(get, set) : stdgo._internal.io.fs.Fs.File;
    function get_file():stdgo._internal.io.fs.Fs.File return this.file;
    function set_file(v:stdgo._internal.io.fs.Fs.File):stdgo._internal.io.fs.Fs.File {
        this.file = v;
        return v;
    }
    public function new(?file:stdgo._internal.io.fs.Fs.File) this = new stdgo._internal.testing.fstest.Fstest.T_shuffledFile(file);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef MapFS = stdgo._internal.testing.fstest.Fstest.MapFS;
typedef T_shuffledFS = stdgo._internal.testing.fstest.Fstest.T_shuffledFS;
class Fstest {
    static public function testMapFS(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.fstest.Fstest.testMapFS(t);
    }
    static public function testMapFSChmodDot(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.fstest.Fstest.testMapFSChmodDot(t);
    }
    /**
        TestFS tests a file system implementation.
        It walks the entire tree of files in fsys,
        opening and checking that each file behaves correctly.
        It also checks that the file system contains at least the expected files.
        As a special case, if no expected files are listed, fsys must be empty.
        Otherwise, fsys must contain at least the listed files; it can also contain others.
        The contents of fsys must not change concurrently with TestFS.
        
        If TestFS finds any misbehaviors, it returns an error reporting all of them.
        The error text spans multiple lines, one per detected misbehavior.
        
        Typical usage inside a test is:
        
        	if err := fstest.TestFS(myFS, "file/that/should/be/present"); err != nil {
        		t.Fatal(err)
        	}
    **/
    static public function testFS(fsys:stdgo._internal.io.fs.Fs.FS, expected:haxe.Rest<String>):stdgo.Error {
        return stdgo._internal.testing.fstest.Fstest.testFS(fsys, ...expected);
    }
    static public function testSymlink(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.fstest.Fstest.testSymlink(t);
    }
    static public function testDash(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.fstest.Fstest.testDash(t);
    }
    static public function testShuffledFS(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.fstest.Fstest.testShuffledFS(t);
    }
}
