package stdgo.testing.fstest;
@:structInit abstract MapFile(stdgo._internal.testing.fstest.Fstest.MapFile) from stdgo._internal.testing.fstest.Fstest.MapFile to stdgo._internal.testing.fstest.Fstest.MapFile {
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
@:structInit @:private @:using(stdgo.testing.fstest.Fstest.T_fsOnly_static_extension) abstract T_fsOnly(stdgo._internal.testing.fstest.Fstest.T_fsOnly) from stdgo._internal.testing.fstest.Fstest.T_fsOnly to stdgo._internal.testing.fstest.Fstest.T_fsOnly {
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
@:structInit @:private @:using(stdgo.testing.fstest.Fstest.T_noSub_static_extension) abstract T_noSub(stdgo._internal.testing.fstest.Fstest.T_noSub) from stdgo._internal.testing.fstest.Fstest.T_noSub to stdgo._internal.testing.fstest.Fstest.T_noSub {
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
@:structInit @:private @:using(stdgo.testing.fstest.Fstest.T_mapFileInfo_static_extension) abstract T_mapFileInfo(stdgo._internal.testing.fstest.Fstest.T_mapFileInfo) from stdgo._internal.testing.fstest.Fstest.T_mapFileInfo to stdgo._internal.testing.fstest.Fstest.T_mapFileInfo {
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
@:structInit @:private @:using(stdgo.testing.fstest.Fstest.T_openMapFile_static_extension) abstract T_openMapFile(stdgo._internal.testing.fstest.Fstest.T_openMapFile) from stdgo._internal.testing.fstest.Fstest.T_openMapFile to stdgo._internal.testing.fstest.Fstest.T_openMapFile {
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
@:structInit @:private @:using(stdgo.testing.fstest.Fstest.T_mapDir_static_extension) abstract T_mapDir(stdgo._internal.testing.fstest.Fstest.T_mapDir) from stdgo._internal.testing.fstest.Fstest.T_mapDir to stdgo._internal.testing.fstest.Fstest.T_mapDir {
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
@:structInit @:private @:using(stdgo.testing.fstest.Fstest.T_fsTester_static_extension) abstract T_fsTester(stdgo._internal.testing.fstest.Fstest.T_fsTester) from stdgo._internal.testing.fstest.Fstest.T_fsTester to stdgo._internal.testing.fstest.Fstest.T_fsTester {
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
@:structInit @:private @:using(stdgo.testing.fstest.Fstest.T_shuffledFile_static_extension) abstract T_shuffledFile(stdgo._internal.testing.fstest.Fstest.T_shuffledFile) from stdgo._internal.testing.fstest.Fstest.T_shuffledFile to stdgo._internal.testing.fstest.Fstest.T_shuffledFile {
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
class T_fsOnly_static_extension {
    public static function open(_self__:T_fsOnly, pattern:String):stdgo.Tuple<stdgo._internal.io.fs.Fs.File, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest.T_fsOnly_static_extension.open(_self__, pattern);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_noSub_static_extension {
    static public function sub(:T_noSub):Void {
        stdgo._internal.testing.fstest.Fstest.T_noSub_static_extension.sub();
    }
    public static function stat(_self__:T_noSub, pattern:String):stdgo.Tuple<stdgo._internal.io.fs.Fs.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest.T_noSub_static_extension.stat(_self__, pattern);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function readFile(_self__:T_noSub, pattern:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest.T_noSub_static_extension.readFile(_self__, pattern);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readDir(_self__:T_noSub, pattern:String):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs.DirEntry>, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest.T_noSub_static_extension.readDir(_self__, pattern);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function open(_self__:T_noSub, pattern:String):stdgo.Tuple<stdgo._internal.io.fs.Fs.File, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest.T_noSub_static_extension.open(_self__, pattern);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function glob(_self__:T_noSub, pattern:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest.T_noSub_static_extension.glob(_self__, pattern);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class T_mapFileInfo_static_extension {
    static public function string(i:T_mapFileInfo):String {
        return stdgo._internal.testing.fstest.Fstest.T_mapFileInfo_static_extension.string(i);
    }
    static public function info(i:T_mapFileInfo):stdgo.Tuple<stdgo._internal.io.fs.Fs.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest.T_mapFileInfo_static_extension.info(i);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function sys(i:T_mapFileInfo):stdgo.AnyInterface {
        return stdgo._internal.testing.fstest.Fstest.T_mapFileInfo_static_extension.sys(i);
    }
    static public function isDir(i:T_mapFileInfo):Bool {
        return stdgo._internal.testing.fstest.Fstest.T_mapFileInfo_static_extension.isDir(i);
    }
    static public function modTime(i:T_mapFileInfo):stdgo._internal.time.Time.Time {
        return stdgo._internal.testing.fstest.Fstest.T_mapFileInfo_static_extension.modTime(i);
    }
    static public function type(i:T_mapFileInfo):stdgo._internal.io.fs.Fs.FileMode {
        return stdgo._internal.testing.fstest.Fstest.T_mapFileInfo_static_extension.type(i);
    }
    static public function mode(i:T_mapFileInfo):stdgo._internal.io.fs.Fs.FileMode {
        return stdgo._internal.testing.fstest.Fstest.T_mapFileInfo_static_extension.mode(i);
    }
    static public function size(i:T_mapFileInfo):haxe.Int64 {
        return stdgo._internal.testing.fstest.Fstest.T_mapFileInfo_static_extension.size(i);
    }
    static public function name(i:T_mapFileInfo):String {
        return stdgo._internal.testing.fstest.Fstest.T_mapFileInfo_static_extension.name(i);
    }
}
class T_openMapFile_static_extension {
    static public function readAt(f:T_openMapFile, b:Array<StdTypes.Int>, offset:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.testing.fstest.Fstest.T_openMapFile_static_extension.readAt(f, b, offset);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function seek(f:T_openMapFile, offset:haxe.Int64, whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest.T_openMapFile_static_extension.seek(f, offset, whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(f:T_openMapFile, b:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.testing.fstest.Fstest.T_openMapFile_static_extension.read(f, b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(f:T_openMapFile):stdgo.Error {
        return stdgo._internal.testing.fstest.Fstest.T_openMapFile_static_extension.close(f);
    }
    static public function stat(f:T_openMapFile):stdgo.Tuple<stdgo._internal.io.fs.Fs.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest.T_openMapFile_static_extension.stat(f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function type(_self__:T_openMapFile):stdgo._internal.io.fs.Fs.FileMode {
        return stdgo._internal.testing.fstest.Fstest.T_openMapFile_static_extension.type(_self__);
    }
    public static function sys(_self__:T_openMapFile):stdgo.AnyInterface {
        return stdgo._internal.testing.fstest.Fstest.T_openMapFile_static_extension.sys(_self__);
    }
    public static function string(_self__:T_openMapFile):String {
        return stdgo._internal.testing.fstest.Fstest.T_openMapFile_static_extension.string(_self__);
    }
    public static function size(_self__:T_openMapFile):haxe.Int64 {
        return stdgo._internal.testing.fstest.Fstest.T_openMapFile_static_extension.size(_self__);
    }
    public static function name(_self__:T_openMapFile):String {
        return stdgo._internal.testing.fstest.Fstest.T_openMapFile_static_extension.name(_self__);
    }
    public static function mode(_self__:T_openMapFile):stdgo._internal.io.fs.Fs.FileMode {
        return stdgo._internal.testing.fstest.Fstest.T_openMapFile_static_extension.mode(_self__);
    }
    public static function modTime(_self__:T_openMapFile):stdgo._internal.time.Time.Time {
        return stdgo._internal.testing.fstest.Fstest.T_openMapFile_static_extension.modTime(_self__);
    }
    public static function isDir(_self__:T_openMapFile):Bool {
        return stdgo._internal.testing.fstest.Fstest.T_openMapFile_static_extension.isDir(_self__);
    }
    public static function info(_self__:T_openMapFile):stdgo.Tuple<stdgo._internal.io.fs.Fs.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest.T_openMapFile_static_extension.info(_self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_mapDir_static_extension {
    static public function readDir(d:T_mapDir, count:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs.DirEntry>, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest.T_mapDir_static_extension.readDir(d, count);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function read(d:T_mapDir, b:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.testing.fstest.Fstest.T_mapDir_static_extension.read(d, b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(d:T_mapDir):stdgo.Error {
        return stdgo._internal.testing.fstest.Fstest.T_mapDir_static_extension.close(d);
    }
    static public function stat(d:T_mapDir):stdgo.Tuple<stdgo._internal.io.fs.Fs.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest.T_mapDir_static_extension.stat(d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function type(_self__:T_mapDir):stdgo._internal.io.fs.Fs.FileMode {
        return stdgo._internal.testing.fstest.Fstest.T_mapDir_static_extension.type(_self__);
    }
    public static function sys(_self__:T_mapDir):stdgo.AnyInterface {
        return stdgo._internal.testing.fstest.Fstest.T_mapDir_static_extension.sys(_self__);
    }
    public static function string(_self__:T_mapDir):String {
        return stdgo._internal.testing.fstest.Fstest.T_mapDir_static_extension.string(_self__);
    }
    public static function size(_self__:T_mapDir):haxe.Int64 {
        return stdgo._internal.testing.fstest.Fstest.T_mapDir_static_extension.size(_self__);
    }
    public static function name(_self__:T_mapDir):String {
        return stdgo._internal.testing.fstest.Fstest.T_mapDir_static_extension.name(_self__);
    }
    public static function mode(_self__:T_mapDir):stdgo._internal.io.fs.Fs.FileMode {
        return stdgo._internal.testing.fstest.Fstest.T_mapDir_static_extension.mode(_self__);
    }
    public static function modTime(_self__:T_mapDir):stdgo._internal.time.Time.Time {
        return stdgo._internal.testing.fstest.Fstest.T_mapDir_static_extension.modTime(_self__);
    }
    public static function isDir(_self__:T_mapDir):Bool {
        return stdgo._internal.testing.fstest.Fstest.T_mapDir_static_extension.isDir(_self__);
    }
    public static function info(_self__:T_mapDir):stdgo.Tuple<stdgo._internal.io.fs.Fs.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest.T_mapDir_static_extension.info(_self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_fsTester_static_extension {
    static public function _checkBadPath(t:T_fsTester, file:String, desc:String, open:stdgo.GoString -> stdgo.Error):Void {
        final open = open;
        stdgo._internal.testing.fstest.Fstest.T_fsTester_static_extension._checkBadPath(t, file, desc, open);
    }
    static public function _checkOpen(t:T_fsTester, file:String):Void {
        stdgo._internal.testing.fstest.Fstest.T_fsTester_static_extension._checkOpen(t, file);
    }
    static public function _checkFileRead(t:T_fsTester, file:String, desc:String, data1:Array<StdTypes.Int>, data2:Array<StdTypes.Int>):Void {
        final data1 = ([for (i in data1) i] : stdgo.Slice<stdgo.GoByte>);
        final data2 = ([for (i in data2) i] : stdgo.Slice<stdgo.GoByte>);
        stdgo._internal.testing.fstest.Fstest.T_fsTester_static_extension._checkFileRead(t, file, desc, data1, data2);
    }
    static public function _checkFile(t:T_fsTester, file:String):Void {
        stdgo._internal.testing.fstest.Fstest.T_fsTester_static_extension._checkFile(t, file);
    }
    static public function _checkDirList(t:T_fsTester, dir:String, desc:String, list1:Array<stdgo._internal.io.fs.Fs.DirEntry>, list2:Array<stdgo._internal.io.fs.Fs.DirEntry>):Void {
        final list1 = ([for (i in list1) i] : stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>);
        final list2 = ([for (i in list2) i] : stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>);
        stdgo._internal.testing.fstest.Fstest.T_fsTester_static_extension._checkDirList(t, dir, desc, list1, list2);
    }
    static public function _checkStat(t:T_fsTester, path:String, entry:stdgo._internal.io.fs.Fs.DirEntry):Void {
        stdgo._internal.testing.fstest.Fstest.T_fsTester_static_extension._checkStat(t, path, entry);
    }
    static public function _checkGlob(t:T_fsTester, dir:String, list:Array<stdgo._internal.io.fs.Fs.DirEntry>):Void {
        final list = ([for (i in list) i] : stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>);
        stdgo._internal.testing.fstest.Fstest.T_fsTester_static_extension._checkGlob(t, dir, list);
    }
    static public function _checkDir(t:T_fsTester, dir:String):Void {
        stdgo._internal.testing.fstest.Fstest.T_fsTester_static_extension._checkDir(t, dir);
    }
    static public function _openDir(t:T_fsTester, dir:String):stdgo._internal.io.fs.Fs.ReadDirFile {
        return stdgo._internal.testing.fstest.Fstest.T_fsTester_static_extension._openDir(t, dir);
    }
    static public function _errorf(t:T_fsTester, format:String, args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.fstest.Fstest.T_fsTester_static_extension._errorf(t, format, ...[for (i in args) i]);
    }
}
class T_shuffledFile_static_extension {
    static public function readDir(f:T_shuffledFile, n:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs.DirEntry>, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest.T_shuffledFile_static_extension.readDir(f, n);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function stat(_self__:T_shuffledFile):stdgo.Tuple<stdgo._internal.io.fs.Fs.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest.T_shuffledFile_static_extension.stat(_self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function read(_self__:T_shuffledFile, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.testing.fstest.Fstest.T_shuffledFile_static_extension.read(_self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function close(_self__:T_shuffledFile):stdgo.Error {
        return stdgo._internal.testing.fstest.Fstest.T_shuffledFile_static_extension.close(_self__);
    }
}
class MapFS_static_extension {
    static public function sub(fsys:MapFS, dir:String):stdgo.Tuple<stdgo._internal.io.fs.Fs.FS, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest.MapFS_static_extension.sub(fsys, dir);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function glob(fsys:MapFS, pattern:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest.MapFS_static_extension.glob(fsys, pattern);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readDir(fsys:MapFS, name:String):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs.DirEntry>, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest.MapFS_static_extension.readDir(fsys, name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function stat(fsys:MapFS, name:String):stdgo.Tuple<stdgo._internal.io.fs.Fs.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest.MapFS_static_extension.stat(fsys, name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readFile(fsys:MapFS, name:String):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest.MapFS_static_extension.readFile(fsys, name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function open(fsys:MapFS, name:String):stdgo.Tuple<stdgo._internal.io.fs.Fs.File, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest.MapFS_static_extension.open(fsys, name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_shuffledFS_static_extension {
    static public function open(fsys:T_shuffledFS, name:String):stdgo.Tuple<stdgo._internal.io.fs.Fs.File, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest.T_shuffledFS_static_extension.open(fsys, name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    Package fstest implements support for testing implementations and users of file systems.
**/
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
        return stdgo._internal.testing.fstest.Fstest.testFS(fsys, ...[for (i in expected) i]);
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
