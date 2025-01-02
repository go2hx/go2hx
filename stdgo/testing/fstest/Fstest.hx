package stdgo.testing.fstest;
@:structInit abstract MapFile(stdgo._internal.testing.fstest.Fstest_MapFile.MapFile) from stdgo._internal.testing.fstest.Fstest_MapFile.MapFile to stdgo._internal.testing.fstest.Fstest_MapFile.MapFile {
    public var data(get, set) : Array<std.UInt>;
    function get_data():Array<std.UInt> return [for (i in this.data) i];
    function set_data(v:Array<std.UInt>):Array<std.UInt> {
        this.data = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
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
        this.sys = v;
        return v;
    }
    public function new(?data:Array<std.UInt>, ?mode:stdgo._internal.io.fs.Fs_FileMode.FileMode, ?modTime:stdgo._internal.time.Time_Time.Time, ?sys:stdgo.AnyInterface) this = new stdgo._internal.testing.fstest.Fstest_MapFile.MapFile(([for (i in data) i] : stdgo.Slice<stdgo.GoUInt8>), mode, modTime, sys);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.fstest.Fstest.T_fsOnly_static_extension) abstract T_fsOnly(stdgo._internal.testing.fstest.Fstest_T_fsOnly.T_fsOnly) from stdgo._internal.testing.fstest.Fstest_T_fsOnly.T_fsOnly to stdgo._internal.testing.fstest.Fstest_T_fsOnly.T_fsOnly {
    public var fS(get, set) : stdgo._internal.io.fs.Fs_FS.FS;
    function get_fS():stdgo._internal.io.fs.Fs_FS.FS return this.fS;
    function set_fS(v:stdgo._internal.io.fs.Fs_FS.FS):stdgo._internal.io.fs.Fs_FS.FS {
        this.fS = v;
        return v;
    }
    public function new(?fS:stdgo._internal.io.fs.Fs_FS.FS) this = new stdgo._internal.testing.fstest.Fstest_T_fsOnly.T_fsOnly(fS);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.fstest.Fstest.T_noSub_static_extension) abstract T_noSub(stdgo._internal.testing.fstest.Fstest_T_noSub.T_noSub) from stdgo._internal.testing.fstest.Fstest_T_noSub.T_noSub to stdgo._internal.testing.fstest.Fstest_T_noSub.T_noSub {
    public var mapFS(get, set) : MapFS;
    function get_mapFS():MapFS return this.mapFS;
    function set_mapFS(v:MapFS):MapFS {
        this.mapFS = v;
        return v;
    }
    public function new(?mapFS:MapFS) this = new stdgo._internal.testing.fstest.Fstest_T_noSub.T_noSub(mapFS);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.fstest.Fstest.T_mapFileInfo_static_extension) abstract T_mapFileInfo(stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo) from stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo to stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public var _f(get, set) : MapFile;
    function get__f():MapFile return this._f;
    function set__f(v:MapFile):MapFile {
        this._f = v;
        return v;
    }
    public function new(?_name:String, ?_f:MapFile) this = new stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo(_name, _f);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.fstest.Fstest.T_openMapFile_static_extension) abstract T_openMapFile(stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile) from stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile to stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile {
    public var _path(get, set) : String;
    function get__path():String return this._path;
    function set__path(v:String):String {
        this._path = v;
        return v;
    }
    public var _mapFileInfo(get, set) : T_mapFileInfo;
    function get__mapFileInfo():T_mapFileInfo return this._mapFileInfo;
    function set__mapFileInfo(v:T_mapFileInfo):T_mapFileInfo {
        this._mapFileInfo = v;
        return v;
    }
    public var _offset(get, set) : haxe.Int64;
    function get__offset():haxe.Int64 return this._offset;
    function set__offset(v:haxe.Int64):haxe.Int64 {
        this._offset = v;
        return v;
    }
    public function new(?_path:String, ?_mapFileInfo:T_mapFileInfo, ?_offset:haxe.Int64) this = new stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile(_path, _mapFileInfo, _offset);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.fstest.Fstest.T_mapDir_static_extension) abstract T_mapDir(stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir) from stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir to stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir {
    public var _path(get, set) : String;
    function get__path():String return this._path;
    function set__path(v:String):String {
        this._path = v;
        return v;
    }
    public var _mapFileInfo(get, set) : T_mapFileInfo;
    function get__mapFileInfo():T_mapFileInfo return this._mapFileInfo;
    function set__mapFileInfo(v:T_mapFileInfo):T_mapFileInfo {
        this._mapFileInfo = v;
        return v;
    }
    public var _entry(get, set) : Array<T_mapFileInfo>;
    function get__entry():Array<T_mapFileInfo> return [for (i in this._entry) i];
    function set__entry(v:Array<T_mapFileInfo>):Array<T_mapFileInfo> {
        this._entry = ([for (i in v) i] : stdgo.Slice<stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo>);
        return v;
    }
    public var _offset(get, set) : StdTypes.Int;
    function get__offset():StdTypes.Int return this._offset;
    function set__offset(v:StdTypes.Int):StdTypes.Int {
        this._offset = v;
        return v;
    }
    public function new(?_path:String, ?_mapFileInfo:T_mapFileInfo, ?_entry:Array<T_mapFileInfo>, ?_offset:StdTypes.Int) this = new stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir(_path, _mapFileInfo, ([for (i in _entry) i] : stdgo.Slice<stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo>), _offset);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.fstest.Fstest.T_fsTester_static_extension) abstract T_fsTester(stdgo._internal.testing.fstest.Fstest_T_fsTester.T_fsTester) from stdgo._internal.testing.fstest.Fstest_T_fsTester.T_fsTester to stdgo._internal.testing.fstest.Fstest_T_fsTester.T_fsTester {
    public var _fsys(get, set) : stdgo._internal.io.fs.Fs_FS.FS;
    function get__fsys():stdgo._internal.io.fs.Fs_FS.FS return this._fsys;
    function set__fsys(v:stdgo._internal.io.fs.Fs_FS.FS):stdgo._internal.io.fs.Fs_FS.FS {
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
    public function new(?_fsys:stdgo._internal.io.fs.Fs_FS.FS, ?_errText:Array<std.UInt>, ?_dirs:Array<String>, ?_files:Array<String>) this = new stdgo._internal.testing.fstest.Fstest_T_fsTester.T_fsTester(_fsys, ([for (i in _errText) i] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _dirs) i] : stdgo.Slice<stdgo.GoString>), ([for (i in _files) i] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.fstest.Fstest.T_shuffledFile_static_extension) abstract T_shuffledFile(stdgo._internal.testing.fstest.Fstest_T_shuffledFile.T_shuffledFile) from stdgo._internal.testing.fstest.Fstest_T_shuffledFile.T_shuffledFile to stdgo._internal.testing.fstest.Fstest_T_shuffledFile.T_shuffledFile {
    public var file(get, set) : stdgo._internal.io.fs.Fs_File.File;
    function get_file():stdgo._internal.io.fs.Fs_File.File return this.file;
    function set_file(v:stdgo._internal.io.fs.Fs_File.File):stdgo._internal.io.fs.Fs_File.File {
        this.file = v;
        return v;
    }
    public function new(?file:stdgo._internal.io.fs.Fs_File.File) this = new stdgo._internal.testing.fstest.Fstest_T_shuffledFile.T_shuffledFile(file);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef MapFS = stdgo._internal.testing.fstest.Fstest_MapFS.MapFS;
typedef T_shuffledFS = stdgo._internal.testing.fstest.Fstest_T_shuffledFS.T_shuffledFS;
typedef T_fsOnlyPointer = stdgo._internal.testing.fstest.Fstest_T_fsOnlyPointer.T_fsOnlyPointer;
class T_fsOnly_static_extension {
    public static function open(__self__:stdgo._internal.testing.fstest.Fstest_T_fsOnly.T_fsOnly, _0:String):stdgo.Tuple<stdgo._internal.io.fs.Fs_File.File, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_fsOnly_static_extension.T_fsOnly_static_extension.open(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_noSubPointer = stdgo._internal.testing.fstest.Fstest_T_noSubPointer.T_noSubPointer;
class T_noSub_static_extension {
    static public function sub(_:T_noSub):Void {
        stdgo._internal.testing.fstest.Fstest_T_noSub_static_extension.T_noSub_static_extension.sub(_);
    }
    public static function stat(__self__:stdgo._internal.testing.fstest.Fstest_T_noSub.T_noSub, _0:String):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_noSub_static_extension.T_noSub_static_extension.stat(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function readFile(__self__:stdgo._internal.testing.fstest.Fstest_T_noSub.T_noSub, _0:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_noSub_static_extension.T_noSub_static_extension.readFile(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readDir(__self__:stdgo._internal.testing.fstest.Fstest_T_noSub.T_noSub, _0:String):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_noSub_static_extension.T_noSub_static_extension.readDir(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function open(__self__:stdgo._internal.testing.fstest.Fstest_T_noSub.T_noSub, _0:String):stdgo.Tuple<stdgo._internal.io.fs.Fs_File.File, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_noSub_static_extension.T_noSub_static_extension.open(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function glob(__self__:stdgo._internal.testing.fstest.Fstest_T_noSub.T_noSub, _0:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_noSub_static_extension.T_noSub_static_extension.glob(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef T_mapFileInfoPointer = stdgo._internal.testing.fstest.Fstest_T_mapFileInfoPointer.T_mapFileInfoPointer;
class T_mapFileInfo_static_extension {
    static public function string(_i:T_mapFileInfo):String {
        return stdgo._internal.testing.fstest.Fstest_T_mapFileInfo_static_extension.T_mapFileInfo_static_extension.string(_i);
    }
    static public function info(_i:T_mapFileInfo):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_mapFileInfo_static_extension.T_mapFileInfo_static_extension.info(_i);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function sys(_i:T_mapFileInfo):stdgo.AnyInterface {
        return stdgo._internal.testing.fstest.Fstest_T_mapFileInfo_static_extension.T_mapFileInfo_static_extension.sys(_i);
    }
    static public function isDir(_i:T_mapFileInfo):Bool {
        return stdgo._internal.testing.fstest.Fstest_T_mapFileInfo_static_extension.T_mapFileInfo_static_extension.isDir(_i);
    }
    static public function modTime(_i:T_mapFileInfo):stdgo._internal.time.Time_Time.Time {
        return stdgo._internal.testing.fstest.Fstest_T_mapFileInfo_static_extension.T_mapFileInfo_static_extension.modTime(_i);
    }
    static public function type(_i:T_mapFileInfo):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        return stdgo._internal.testing.fstest.Fstest_T_mapFileInfo_static_extension.T_mapFileInfo_static_extension.type(_i);
    }
    static public function mode(_i:T_mapFileInfo):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        return stdgo._internal.testing.fstest.Fstest_T_mapFileInfo_static_extension.T_mapFileInfo_static_extension.mode(_i);
    }
    static public function size(_i:T_mapFileInfo):haxe.Int64 {
        return stdgo._internal.testing.fstest.Fstest_T_mapFileInfo_static_extension.T_mapFileInfo_static_extension.size(_i);
    }
    static public function name(_i:T_mapFileInfo):String {
        return stdgo._internal.testing.fstest.Fstest_T_mapFileInfo_static_extension.T_mapFileInfo_static_extension.name(_i);
    }
}
typedef T_openMapFilePointer = stdgo._internal.testing.fstest.Fstest_T_openMapFilePointer.T_openMapFilePointer;
class T_openMapFile_static_extension {
    static public function readAt(_f:T_openMapFile, _b:Array<std.UInt>, _offset:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_openMapFile_static_extension.T_openMapFile_static_extension.readAt(_f, _b, _offset);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function seek(_f:T_openMapFile, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_openMapFile_static_extension.T_openMapFile_static_extension.seek(_f, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_f:T_openMapFile, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_openMapFile_static_extension.T_openMapFile_static_extension.read(_f, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_f:T_openMapFile):stdgo.Error {
        return stdgo._internal.testing.fstest.Fstest_T_openMapFile_static_extension.T_openMapFile_static_extension.close(_f);
    }
    static public function stat(_f:T_openMapFile):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_openMapFile_static_extension.T_openMapFile_static_extension.stat(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function type(__self__:stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        return stdgo._internal.testing.fstest.Fstest_T_openMapFile_static_extension.T_openMapFile_static_extension.type(__self__);
    }
    public static function sys(__self__:stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile):stdgo.AnyInterface {
        return stdgo._internal.testing.fstest.Fstest_T_openMapFile_static_extension.T_openMapFile_static_extension.sys(__self__);
    }
    public static function string(__self__:stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile):String {
        return stdgo._internal.testing.fstest.Fstest_T_openMapFile_static_extension.T_openMapFile_static_extension.string(__self__);
    }
    public static function size(__self__:stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile):haxe.Int64 {
        return stdgo._internal.testing.fstest.Fstest_T_openMapFile_static_extension.T_openMapFile_static_extension.size(__self__);
    }
    public static function name(__self__:stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile):String {
        return stdgo._internal.testing.fstest.Fstest_T_openMapFile_static_extension.T_openMapFile_static_extension.name(__self__);
    }
    public static function mode(__self__:stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        return stdgo._internal.testing.fstest.Fstest_T_openMapFile_static_extension.T_openMapFile_static_extension.mode(__self__);
    }
    public static function modTime(__self__:stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile):stdgo._internal.time.Time_Time.Time {
        return stdgo._internal.testing.fstest.Fstest_T_openMapFile_static_extension.T_openMapFile_static_extension.modTime(__self__);
    }
    public static function isDir(__self__:stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile):Bool {
        return stdgo._internal.testing.fstest.Fstest_T_openMapFile_static_extension.T_openMapFile_static_extension.isDir(__self__);
    }
    public static function info(__self__:stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_openMapFile_static_extension.T_openMapFile_static_extension.info(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_mapDirPointer = stdgo._internal.testing.fstest.Fstest_T_mapDirPointer.T_mapDirPointer;
class T_mapDir_static_extension {
    static public function readDir(_d:T_mapDir, _count:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_mapDir_static_extension.T_mapDir_static_extension.readDir(_d, _count);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function read(_d:T_mapDir, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_mapDir_static_extension.T_mapDir_static_extension.read(_d, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_d:T_mapDir):stdgo.Error {
        return stdgo._internal.testing.fstest.Fstest_T_mapDir_static_extension.T_mapDir_static_extension.close(_d);
    }
    static public function stat(_d:T_mapDir):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_mapDir_static_extension.T_mapDir_static_extension.stat(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function type(__self__:stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        return stdgo._internal.testing.fstest.Fstest_T_mapDir_static_extension.T_mapDir_static_extension.type(__self__);
    }
    public static function sys(__self__:stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir):stdgo.AnyInterface {
        return stdgo._internal.testing.fstest.Fstest_T_mapDir_static_extension.T_mapDir_static_extension.sys(__self__);
    }
    public static function string(__self__:stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir):String {
        return stdgo._internal.testing.fstest.Fstest_T_mapDir_static_extension.T_mapDir_static_extension.string(__self__);
    }
    public static function size(__self__:stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir):haxe.Int64 {
        return stdgo._internal.testing.fstest.Fstest_T_mapDir_static_extension.T_mapDir_static_extension.size(__self__);
    }
    public static function name(__self__:stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir):String {
        return stdgo._internal.testing.fstest.Fstest_T_mapDir_static_extension.T_mapDir_static_extension.name(__self__);
    }
    public static function mode(__self__:stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        return stdgo._internal.testing.fstest.Fstest_T_mapDir_static_extension.T_mapDir_static_extension.mode(__self__);
    }
    public static function modTime(__self__:stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir):stdgo._internal.time.Time_Time.Time {
        return stdgo._internal.testing.fstest.Fstest_T_mapDir_static_extension.T_mapDir_static_extension.modTime(__self__);
    }
    public static function isDir(__self__:stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir):Bool {
        return stdgo._internal.testing.fstest.Fstest_T_mapDir_static_extension.T_mapDir_static_extension.isDir(__self__);
    }
    public static function info(__self__:stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_mapDir_static_extension.T_mapDir_static_extension.info(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_fsTesterPointer = stdgo._internal.testing.fstest.Fstest_T_fsTesterPointer.T_fsTesterPointer;
class T_fsTester_static_extension {
    static public function _checkBadPath(_t:T_fsTester, _file:String, _desc:String, _open:stdgo.GoString -> stdgo.Error):Void {
        final _open = _open;
        stdgo._internal.testing.fstest.Fstest_T_fsTester_static_extension.T_fsTester_static_extension._checkBadPath(_t, _file, _desc, _open);
    }
    static public function _checkOpen(_t:T_fsTester, _file:String):Void {
        stdgo._internal.testing.fstest.Fstest_T_fsTester_static_extension.T_fsTester_static_extension._checkOpen(_t, _file);
    }
    static public function _checkFileRead(_t:T_fsTester, _file:String, _desc:String, _data1:Array<std.UInt>, _data2:Array<std.UInt>):Void {
        final _data1 = ([for (i in _data1) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _data2 = ([for (i in _data2) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.testing.fstest.Fstest_T_fsTester_static_extension.T_fsTester_static_extension._checkFileRead(_t, _file, _desc, _data1, _data2);
    }
    static public function _checkFile(_t:T_fsTester, _file:String):Void {
        stdgo._internal.testing.fstest.Fstest_T_fsTester_static_extension.T_fsTester_static_extension._checkFile(_t, _file);
    }
    static public function _checkDirList(_t:T_fsTester, _dir:String, _desc:String, _list1:Array<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>, _list2:Array<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>):Void {
        final _list1 = ([for (i in _list1) i] : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>);
        final _list2 = ([for (i in _list2) i] : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>);
        stdgo._internal.testing.fstest.Fstest_T_fsTester_static_extension.T_fsTester_static_extension._checkDirList(_t, _dir, _desc, _list1, _list2);
    }
    static public function _checkStat(_t:T_fsTester, _path:String, _entry:stdgo._internal.io.fs.Fs_DirEntry.DirEntry):Void {
        stdgo._internal.testing.fstest.Fstest_T_fsTester_static_extension.T_fsTester_static_extension._checkStat(_t, _path, _entry);
    }
    static public function _checkGlob(_t:T_fsTester, _dir:String, _list:Array<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>):Void {
        final _list = ([for (i in _list) i] : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>);
        stdgo._internal.testing.fstest.Fstest_T_fsTester_static_extension.T_fsTester_static_extension._checkGlob(_t, _dir, _list);
    }
    static public function _checkDir(_t:T_fsTester, _dir:String):Void {
        stdgo._internal.testing.fstest.Fstest_T_fsTester_static_extension.T_fsTester_static_extension._checkDir(_t, _dir);
    }
    static public function _openDir(_t:T_fsTester, _dir:String):stdgo._internal.io.fs.Fs_ReadDirFile.ReadDirFile {
        return stdgo._internal.testing.fstest.Fstest_T_fsTester_static_extension.T_fsTester_static_extension._openDir(_t, _dir);
    }
    static public function _errorf(_t:T_fsTester, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.fstest.Fstest_T_fsTester_static_extension.T_fsTester_static_extension._errorf(_t, _format, ...[for (i in _args) i]);
    }
}
typedef T_shuffledFilePointer = stdgo._internal.testing.fstest.Fstest_T_shuffledFilePointer.T_shuffledFilePointer;
class T_shuffledFile_static_extension {
    static public function readDir(_f:T_shuffledFile, _n:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_shuffledFile_static_extension.T_shuffledFile_static_extension.readDir(_f, _n);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function stat(__self__:stdgo._internal.testing.fstest.Fstest_T_shuffledFile.T_shuffledFile):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_shuffledFile_static_extension.T_shuffledFile_static_extension.stat(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function read(__self__:stdgo._internal.testing.fstest.Fstest_T_shuffledFile.T_shuffledFile, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_shuffledFile_static_extension.T_shuffledFile_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function close(__self__:stdgo._internal.testing.fstest.Fstest_T_shuffledFile.T_shuffledFile):stdgo.Error {
        return stdgo._internal.testing.fstest.Fstest_T_shuffledFile_static_extension.T_shuffledFile_static_extension.close(__self__);
    }
}
typedef MapFSPointer = stdgo._internal.testing.fstest.Fstest_MapFSPointer.MapFSPointer;
class MapFS_static_extension {
    static public function sub(_fsys:MapFS, _dir:String):stdgo.Tuple<stdgo._internal.io.fs.Fs_FS.FS, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_MapFS_static_extension.MapFS_static_extension.sub(_fsys, _dir);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function glob(_fsys:MapFS, _pattern:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_MapFS_static_extension.MapFS_static_extension.glob(_fsys, _pattern);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readDir(_fsys:MapFS, _name:String):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_MapFS_static_extension.MapFS_static_extension.readDir(_fsys, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function stat(_fsys:MapFS, _name:String):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_MapFS_static_extension.MapFS_static_extension.stat(_fsys, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readFile(_fsys:MapFS, _name:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_MapFS_static_extension.MapFS_static_extension.readFile(_fsys, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function open(_fsys:MapFS, _name:String):stdgo.Tuple<stdgo._internal.io.fs.Fs_File.File, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_MapFS_static_extension.MapFS_static_extension.open(_fsys, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_shuffledFSPointer = stdgo._internal.testing.fstest.Fstest_T_shuffledFSPointer.T_shuffledFSPointer;
class T_shuffledFS_static_extension {
    static public function open(_fsys:T_shuffledFS, _name:String):stdgo.Tuple<stdgo._internal.io.fs.Fs_File.File, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_shuffledFS_static_extension.T_shuffledFS_static_extension.open(_fsys, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    Package fstest implements support for testing implementations and users of file systems.
**/
class Fstest {
    static public function testMapFS(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.testing.fstest.Fstest_testMapFS.testMapFS(_t);
    }
    static public function testMapFSChmodDot(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.testing.fstest.Fstest_testMapFSChmodDot.testMapFSChmodDot(_t);
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
    static public function testFS(_fsys:stdgo._internal.io.fs.Fs_FS.FS, _expected:haxe.Rest<String>):stdgo.Error {
        return stdgo._internal.testing.fstest.Fstest_testFS.testFS(_fsys, ...[for (i in _expected) i]);
    }
    static public function testSymlink(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.testing.fstest.Fstest_testSymlink.testSymlink(_t);
    }
    static public function testDash(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.testing.fstest.Fstest_testDash.testDash(_t);
    }
    static public function testShuffledFS(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.testing.fstest.Fstest_testShuffledFS.testShuffledFS(_t);
    }
}
