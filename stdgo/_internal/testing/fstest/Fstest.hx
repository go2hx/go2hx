package stdgo._internal.testing.fstest;
private var __go2hxdoc__package : Bool;
var __2 : stdgo._internal.io.fs.Fs.FS = (null : stdgo._internal.io.fs.Fs.FS);
var __3 : stdgo._internal.io.fs.Fs.File = (null : stdgo._internal.io.fs.Fs.File);
@:structInit class MapFile {
    public var data : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var mode : stdgo._internal.io.fs.Fs.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs.FileMode);
    public var modTime : stdgo._internal.time.Time.Time = ({} : stdgo._internal.time.Time.Time);
    public var sys : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?data:stdgo.Slice<stdgo.GoUInt8>, ?mode:stdgo._internal.io.fs.Fs.FileMode, ?modTime:stdgo._internal.time.Time.Time, ?sys:stdgo.AnyInterface) {
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
@:structInit @:private @:using(stdgo._internal.testing.fstest.Fstest.T_fsOnly_static_extension) class T_fsOnly {
    @:embedded
    public var fs : stdgo._internal.io.fs.Fs.FS = (null : stdgo._internal.io.fs.Fs.FS);
    public function new(?fs:stdgo._internal.io.fs.Fs.FS) {
        if (fs != null) this.fs = fs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function open(_pattern:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs.File; var _1 : stdgo.Error; } return @:typeType null;
    public function __copy__() {
        return new T_fsOnly(fs);
    }
}
@:structInit @:private @:using(stdgo._internal.testing.fstest.Fstest.T_noSub_static_extension) class T_noSub {
    @:embedded
    public var mapFS : stdgo._internal.testing.fstest.Fstest.MapFS = (null : stdgo._internal.testing.fstest.Fstest.MapFS);
    public function new(?mapFS:stdgo._internal.testing.fstest.Fstest.MapFS) {
        if (mapFS != null) this.mapFS = mapFS;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function glob(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function open(_pattern:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs.File; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function readDir(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function readFile(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function stat(_pattern:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return @:typeType null;
    public function __copy__() {
        return new T_noSub(mapFS);
    }
}
@:structInit @:private @:using(stdgo._internal.testing.fstest.Fstest.T_mapFileInfo_static_extension) class T_mapFileInfo {
    public var _name : stdgo.GoString = "";
    public var _f : stdgo.Ref<stdgo._internal.testing.fstest.Fstest.MapFile> = (null : stdgo.Ref<stdgo._internal.testing.fstest.Fstest.MapFile>);
    public function new(?_name:stdgo.GoString, ?_f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest.MapFile>) {
        if (_name != null) this._name = _name;
        if (_f != null) this._f = _f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_mapFileInfo(_name, _f);
    }
}
@:structInit @:private @:using(stdgo._internal.testing.fstest.Fstest.T_openMapFile_static_extension) class T_openMapFile {
    public var _path : stdgo.GoString = "";
    @:embedded
    public var _mapFileInfo : stdgo._internal.testing.fstest.Fstest.T_mapFileInfo = ({} : stdgo._internal.testing.fstest.Fstest.T_mapFileInfo);
    public var _offset : stdgo.GoInt64 = 0;
    public function new(?_path:stdgo.GoString, ?_mapFileInfo:stdgo._internal.testing.fstest.Fstest.T_mapFileInfo, ?_offset:stdgo.GoInt64) {
        if (_path != null) this._path = _path;
        if (_mapFileInfo != null) this._mapFileInfo = _mapFileInfo;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function info():{ var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function isDir():Bool return false;
    @:embedded
    public function modTime():stdgo._internal.time.Time.Time return ({} : stdgo._internal.time.Time.Time);
    @:embedded
    public function mode():stdgo._internal.io.fs.Fs.FileMode return ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs.FileMode);
    @:embedded
    public function name():stdgo.GoString return ("" : stdgo.GoString);
    @:embedded
    public function size():stdgo.GoInt64 return (0 : stdgo.GoInt64);
    @:embedded
    public function string():stdgo.GoString return ("" : stdgo.GoString);
    @:embedded
    public function sys():stdgo.AnyInterface return (null : stdgo.AnyInterface);
    @:embedded
    public function type():stdgo._internal.io.fs.Fs.FileMode return ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs.FileMode);
    public function __copy__() {
        return new T_openMapFile(_path, _mapFileInfo, _offset);
    }
}
@:structInit @:private @:using(stdgo._internal.testing.fstest.Fstest.T_mapDir_static_extension) class T_mapDir {
    public var _path : stdgo.GoString = "";
    @:embedded
    public var _mapFileInfo : stdgo._internal.testing.fstest.Fstest.T_mapFileInfo = ({} : stdgo._internal.testing.fstest.Fstest.T_mapFileInfo);
    public var _entry : stdgo.Slice<stdgo._internal.testing.fstest.Fstest.T_mapFileInfo> = (null : stdgo.Slice<stdgo._internal.testing.fstest.Fstest.T_mapFileInfo>);
    public var _offset : stdgo.GoInt = 0;
    public function new(?_path:stdgo.GoString, ?_mapFileInfo:stdgo._internal.testing.fstest.Fstest.T_mapFileInfo, ?_entry:stdgo.Slice<stdgo._internal.testing.fstest.Fstest.T_mapFileInfo>, ?_offset:stdgo.GoInt) {
        if (_path != null) this._path = _path;
        if (_mapFileInfo != null) this._mapFileInfo = _mapFileInfo;
        if (_entry != null) this._entry = _entry;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function info():{ var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function isDir():Bool return false;
    @:embedded
    public function modTime():stdgo._internal.time.Time.Time return ({} : stdgo._internal.time.Time.Time);
    @:embedded
    public function mode():stdgo._internal.io.fs.Fs.FileMode return ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs.FileMode);
    @:embedded
    public function name():stdgo.GoString return ("" : stdgo.GoString);
    @:embedded
    public function size():stdgo.GoInt64 return (0 : stdgo.GoInt64);
    @:embedded
    public function string():stdgo.GoString return ("" : stdgo.GoString);
    @:embedded
    public function sys():stdgo.AnyInterface return (null : stdgo.AnyInterface);
    @:embedded
    public function type():stdgo._internal.io.fs.Fs.FileMode return ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs.FileMode);
    public function __copy__() {
        return new T_mapDir(_path, _mapFileInfo, _entry, _offset);
    }
}
@:structInit @:private @:using(stdgo._internal.testing.fstest.Fstest.T_fsTester_static_extension) class T_fsTester {
    public var _fsys : stdgo._internal.io.fs.Fs.FS = (null : stdgo._internal.io.fs.Fs.FS);
    public var _errText : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _dirs : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _files : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_fsys:stdgo._internal.io.fs.Fs.FS, ?_errText:stdgo.Slice<stdgo.GoUInt8>, ?_dirs:stdgo.Slice<stdgo.GoString>, ?_files:stdgo.Slice<stdgo.GoString>) {
        if (_fsys != null) this._fsys = _fsys;
        if (_errText != null) this._errText = _errText;
        if (_dirs != null) this._dirs = _dirs;
        if (_files != null) this._files = _files;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fsTester(_fsys, _errText, _dirs, _files);
    }
}
@:structInit @:private @:using(stdgo._internal.testing.fstest.Fstest.T_shuffledFile_static_extension) class T_shuffledFile {
    @:embedded
    public var file : stdgo._internal.io.fs.Fs.File = (null : stdgo._internal.io.fs.Fs.File);
    public function new(?file:stdgo._internal.io.fs.Fs.File) {
        if (file != null) this.file = file;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function close():stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function read(__0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function stat():{ var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return @:typeType null;
    public function __copy__() {
        return new T_shuffledFile(file);
    }
}
@:named @:using(stdgo._internal.testing.fstest.Fstest.MapFS_static_extension) typedef MapFS = stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.testing.fstest.Fstest.MapFile>>;
@:named @:using(stdgo._internal.testing.fstest.Fstest.T_shuffledFS_static_extension) typedef T_shuffledFS = stdgo._internal.testing.fstest.Fstest.MapFS;
function testMapFS(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testMapFSChmodDot(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void throw ":testing.fstest.testMapFSChmodDot is not yet implemented";
function testFS(_fsys:stdgo._internal.io.fs.Fs.FS, _expected:haxe.Rest<stdgo.GoString>):stdgo.Error throw ":testing.fstest.testFS is not yet implemented";
function _testFS(_fsys:stdgo._internal.io.fs.Fs.FS, _expected:haxe.Rest<stdgo.GoString>):stdgo.Error throw ":testing.fstest._testFS is not yet implemented";
function _formatEntry(_entry:stdgo._internal.io.fs.Fs.DirEntry):stdgo.GoString throw ":testing.fstest._formatEntry is not yet implemented";
function _formatInfoEntry(_info:stdgo._internal.io.fs.Fs.FileInfo):stdgo.GoString throw ":testing.fstest._formatInfoEntry is not yet implemented";
function _formatInfo(_info:stdgo._internal.io.fs.Fs.FileInfo):stdgo.GoString throw ":testing.fstest._formatInfo is not yet implemented";
function testSymlink(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void throw ":testing.fstest.testSymlink is not yet implemented";
function testDash(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void throw ":testing.fstest.testDash is not yet implemented";
function testShuffledFS(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void throw ":testing.fstest.testShuffledFS is not yet implemented";
class T_fsOnly_asInterface {
    @:embedded
    public dynamic function open(_pattern:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs.File; var _1 : stdgo.Error; } return __self__.value.open(_pattern);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_fsOnly>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.testing.fstest.Fstest.T_fsOnly_asInterface) class T_fsOnly_static_extension {
    @:embedded
    public static function open( __self__:T_fsOnly, _pattern:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs.File; var _1 : stdgo.Error; } return __self__.open(_pattern);
}
class T_noSub_asInterface {
    @:keep
    public dynamic function sub():Void __self__.value.sub();
    @:embedded
    public dynamic function stat(_pattern:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.value.stat(_pattern);
    @:embedded
    public dynamic function readFile(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.readFile(_pattern);
    @:embedded
    public dynamic function readDir(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return __self__.value.readDir(_pattern);
    @:embedded
    public dynamic function open(_pattern:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs.File; var _1 : stdgo.Error; } return __self__.value.open(_pattern);
    @:embedded
    public dynamic function glob(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.value.glob(_pattern);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_noSub>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.testing.fstest.Fstest.T_noSub_asInterface) class T_noSub_static_extension {
    @:keep
    static public function sub( _:T_noSub):Void throw "T_noSub:testing.fstest.sub is not yet implemented";
    @:embedded
    public static function stat( __self__:T_noSub, _pattern:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.stat(_pattern);
    @:embedded
    public static function readFile( __self__:T_noSub, _pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.readFile(_pattern);
    @:embedded
    public static function readDir( __self__:T_noSub, _pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return __self__.readDir(_pattern);
    @:embedded
    public static function open( __self__:T_noSub, _pattern:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs.File; var _1 : stdgo.Error; } return __self__.open(_pattern);
    @:embedded
    public static function glob( __self__:T_noSub, _pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.glob(_pattern);
}
class T_mapFileInfo_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function info():{ var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.value.info();
    @:keep
    public dynamic function sys():stdgo.AnyInterface return __self__.value.sys();
    @:keep
    public dynamic function isDir():Bool return __self__.value.isDir();
    @:keep
    public dynamic function modTime():stdgo._internal.time.Time.Time return __self__.value.modTime();
    @:keep
    public dynamic function type():stdgo._internal.io.fs.Fs.FileMode return __self__.value.type();
    @:keep
    public dynamic function mode():stdgo._internal.io.fs.Fs.FileMode return __self__.value.mode();
    @:keep
    public dynamic function size():stdgo.GoInt64 return __self__.value.size();
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_mapFileInfo>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.testing.fstest.Fstest.T_mapFileInfo_asInterface) class T_mapFileInfo_static_extension {
    @:keep
    static public function string( _i:stdgo.Ref<T_mapFileInfo>):stdgo.GoString throw "T_mapFileInfo:testing.fstest.string is not yet implemented";
    @:keep
    static public function info( _i:stdgo.Ref<T_mapFileInfo>):{ var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } throw "T_mapFileInfo:testing.fstest.info is not yet implemented";
    @:keep
    static public function sys( _i:stdgo.Ref<T_mapFileInfo>):stdgo.AnyInterface throw "T_mapFileInfo:testing.fstest.sys is not yet implemented";
    @:keep
    static public function isDir( _i:stdgo.Ref<T_mapFileInfo>):Bool throw "T_mapFileInfo:testing.fstest.isDir is not yet implemented";
    @:keep
    static public function modTime( _i:stdgo.Ref<T_mapFileInfo>):stdgo._internal.time.Time.Time throw "T_mapFileInfo:testing.fstest.modTime is not yet implemented";
    @:keep
    static public function type( _i:stdgo.Ref<T_mapFileInfo>):stdgo._internal.io.fs.Fs.FileMode throw "T_mapFileInfo:testing.fstest.type is not yet implemented";
    @:keep
    static public function mode( _i:stdgo.Ref<T_mapFileInfo>):stdgo._internal.io.fs.Fs.FileMode throw "T_mapFileInfo:testing.fstest.mode is not yet implemented";
    @:keep
    static public function size( _i:stdgo.Ref<T_mapFileInfo>):stdgo.GoInt64 throw "T_mapFileInfo:testing.fstest.size is not yet implemented";
    @:keep
    static public function name( _i:stdgo.Ref<T_mapFileInfo>):stdgo.GoString throw "T_mapFileInfo:testing.fstest.name is not yet implemented";
}
class T_openMapFile_asInterface {
    @:keep
    public dynamic function readAt(_b:stdgo.Slice<stdgo.GoByte>, _offset:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.readAt(_b, _offset);
    @:keep
    public dynamic function seek(_offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.seek(_offset, _whence);
    @:keep
    public dynamic function read(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function stat():{ var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.value.stat();
    @:embedded
    public dynamic function type():stdgo._internal.io.fs.Fs.FileMode return __self__.value.type();
    @:embedded
    public dynamic function sys():stdgo.AnyInterface return __self__.value.sys();
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function size():stdgo.GoInt64 return __self__.value.size();
    @:embedded
    public dynamic function name():stdgo.GoString return __self__.value.name();
    @:embedded
    public dynamic function mode():stdgo._internal.io.fs.Fs.FileMode return __self__.value.mode();
    @:embedded
    public dynamic function modTime():stdgo._internal.time.Time.Time return __self__.value.modTime();
    @:embedded
    public dynamic function isDir():Bool return __self__.value.isDir();
    @:embedded
    public dynamic function info():{ var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.value.info();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_openMapFile>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.testing.fstest.Fstest.T_openMapFile_asInterface) class T_openMapFile_static_extension {
    @:keep
    static public function readAt( _f:stdgo.Ref<T_openMapFile>, _b:stdgo.Slice<stdgo.GoByte>, _offset:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_openMapFile:testing.fstest.readAt is not yet implemented";
    @:keep
    static public function seek( _f:stdgo.Ref<T_openMapFile>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } throw "T_openMapFile:testing.fstest.seek is not yet implemented";
    @:keep
    static public function read( _f:stdgo.Ref<T_openMapFile>, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_openMapFile:testing.fstest.read is not yet implemented";
    @:keep
    static public function close( _f:stdgo.Ref<T_openMapFile>):stdgo.Error throw "T_openMapFile:testing.fstest.close is not yet implemented";
    @:keep
    static public function stat( _f:stdgo.Ref<T_openMapFile>):{ var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } throw "T_openMapFile:testing.fstest.stat is not yet implemented";
    @:embedded
    public static function type( __self__:T_openMapFile):stdgo._internal.io.fs.Fs.FileMode return __self__.type();
    @:embedded
    public static function sys( __self__:T_openMapFile):stdgo.AnyInterface return __self__.sys();
    @:embedded
    public static function string( __self__:T_openMapFile):stdgo.GoString return __self__.string();
    @:embedded
    public static function size( __self__:T_openMapFile):stdgo.GoInt64 return __self__.size();
    @:embedded
    public static function name( __self__:T_openMapFile):stdgo.GoString return __self__.name();
    @:embedded
    public static function mode( __self__:T_openMapFile):stdgo._internal.io.fs.Fs.FileMode return __self__.mode();
    @:embedded
    public static function modTime( __self__:T_openMapFile):stdgo._internal.time.Time.Time return __self__.modTime();
    @:embedded
    public static function isDir( __self__:T_openMapFile):Bool return __self__.isDir();
    @:embedded
    public static function info( __self__:T_openMapFile):{ var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.info();
}
class T_mapDir_asInterface {
    @:keep
    public dynamic function readDir(_count:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return __self__.value.readDir(_count);
    @:keep
    public dynamic function read(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function stat():{ var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.value.stat();
    @:embedded
    public dynamic function type():stdgo._internal.io.fs.Fs.FileMode return __self__.value.type();
    @:embedded
    public dynamic function sys():stdgo.AnyInterface return __self__.value.sys();
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function size():stdgo.GoInt64 return __self__.value.size();
    @:embedded
    public dynamic function name():stdgo.GoString return __self__.value.name();
    @:embedded
    public dynamic function mode():stdgo._internal.io.fs.Fs.FileMode return __self__.value.mode();
    @:embedded
    public dynamic function modTime():stdgo._internal.time.Time.Time return __self__.value.modTime();
    @:embedded
    public dynamic function isDir():Bool return __self__.value.isDir();
    @:embedded
    public dynamic function info():{ var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.value.info();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_mapDir>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.testing.fstest.Fstest.T_mapDir_asInterface) class T_mapDir_static_extension {
    @:keep
    static public function readDir( _d:stdgo.Ref<T_mapDir>, _count:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } throw "T_mapDir:testing.fstest.readDir is not yet implemented";
    @:keep
    static public function read( _d:stdgo.Ref<T_mapDir>, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_mapDir:testing.fstest.read is not yet implemented";
    @:keep
    static public function close( _d:stdgo.Ref<T_mapDir>):stdgo.Error throw "T_mapDir:testing.fstest.close is not yet implemented";
    @:keep
    static public function stat( _d:stdgo.Ref<T_mapDir>):{ var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } throw "T_mapDir:testing.fstest.stat is not yet implemented";
    @:embedded
    public static function type( __self__:T_mapDir):stdgo._internal.io.fs.Fs.FileMode return __self__.type();
    @:embedded
    public static function sys( __self__:T_mapDir):stdgo.AnyInterface return __self__.sys();
    @:embedded
    public static function string( __self__:T_mapDir):stdgo.GoString return __self__.string();
    @:embedded
    public static function size( __self__:T_mapDir):stdgo.GoInt64 return __self__.size();
    @:embedded
    public static function name( __self__:T_mapDir):stdgo.GoString return __self__.name();
    @:embedded
    public static function mode( __self__:T_mapDir):stdgo._internal.io.fs.Fs.FileMode return __self__.mode();
    @:embedded
    public static function modTime( __self__:T_mapDir):stdgo._internal.time.Time.Time return __self__.modTime();
    @:embedded
    public static function isDir( __self__:T_mapDir):Bool return __self__.isDir();
    @:embedded
    public static function info( __self__:T_mapDir):{ var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.info();
}
class T_fsTester_asInterface {
    @:keep
    public dynamic function _checkBadPath(_file:stdgo.GoString, _desc:stdgo.GoString, _open:stdgo.GoString -> stdgo.Error):Void __self__.value._checkBadPath(_file, _desc, _open);
    @:keep
    public dynamic function _checkOpen(_file:stdgo.GoString):Void __self__.value._checkOpen(_file);
    @:keep
    public dynamic function _checkFileRead(_file:stdgo.GoString, _desc:stdgo.GoString, _data1:stdgo.Slice<stdgo.GoByte>, _data2:stdgo.Slice<stdgo.GoByte>):Void __self__.value._checkFileRead(_file, _desc, _data1, _data2);
    @:keep
    public dynamic function _checkFile(_file:stdgo.GoString):Void __self__.value._checkFile(_file);
    @:keep
    public dynamic function _checkDirList(_dir:stdgo.GoString, _desc:stdgo.GoString, _list1:stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>, _list2:stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>):Void __self__.value._checkDirList(_dir, _desc, _list1, _list2);
    @:keep
    public dynamic function _checkStat(_path:stdgo.GoString, _entry:stdgo._internal.io.fs.Fs.DirEntry):Void __self__.value._checkStat(_path, _entry);
    @:keep
    public dynamic function _checkGlob(_dir:stdgo.GoString, _list:stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>):Void __self__.value._checkGlob(_dir, _list);
    @:keep
    public dynamic function _checkDir(_dir:stdgo.GoString):Void __self__.value._checkDir(_dir);
    @:keep
    public dynamic function _openDir(_dir:stdgo.GoString):stdgo._internal.io.fs.Fs.ReadDirFile return __self__.value._openDir(_dir);
    @:keep
    public dynamic function _errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value._errorf(_format, ..._args);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_fsTester>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.testing.fstest.Fstest.T_fsTester_asInterface) class T_fsTester_static_extension {
    @:keep
    static public function _checkBadPath( _t:stdgo.Ref<T_fsTester>, _file:stdgo.GoString, _desc:stdgo.GoString, _open:stdgo.GoString -> stdgo.Error):Void throw "T_fsTester:testing.fstest._checkBadPath is not yet implemented";
    @:keep
    static public function _checkOpen( _t:stdgo.Ref<T_fsTester>, _file:stdgo.GoString):Void throw "T_fsTester:testing.fstest._checkOpen is not yet implemented";
    @:keep
    static public function _checkFileRead( _t:stdgo.Ref<T_fsTester>, _file:stdgo.GoString, _desc:stdgo.GoString, _data1:stdgo.Slice<stdgo.GoByte>, _data2:stdgo.Slice<stdgo.GoByte>):Void throw "T_fsTester:testing.fstest._checkFileRead is not yet implemented";
    @:keep
    static public function _checkFile( _t:stdgo.Ref<T_fsTester>, _file:stdgo.GoString):Void throw "T_fsTester:testing.fstest._checkFile is not yet implemented";
    @:keep
    static public function _checkDirList( _t:stdgo.Ref<T_fsTester>, _dir:stdgo.GoString, _desc:stdgo.GoString, _list1:stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>, _list2:stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>):Void throw "T_fsTester:testing.fstest._checkDirList is not yet implemented";
    @:keep
    static public function _checkStat( _t:stdgo.Ref<T_fsTester>, _path:stdgo.GoString, _entry:stdgo._internal.io.fs.Fs.DirEntry):Void throw "T_fsTester:testing.fstest._checkStat is not yet implemented";
    @:keep
    static public function _checkGlob( _t:stdgo.Ref<T_fsTester>, _dir:stdgo.GoString, _list:stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>):Void throw "T_fsTester:testing.fstest._checkGlob is not yet implemented";
    @:keep
    static public function _checkDir( _t:stdgo.Ref<T_fsTester>, _dir:stdgo.GoString):Void throw "T_fsTester:testing.fstest._checkDir is not yet implemented";
    @:keep
    static public function _openDir( _t:stdgo.Ref<T_fsTester>, _dir:stdgo.GoString):stdgo._internal.io.fs.Fs.ReadDirFile throw "T_fsTester:testing.fstest._openDir is not yet implemented";
    @:keep
    static public function _errorf( _t:stdgo.Ref<T_fsTester>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void throw "T_fsTester:testing.fstest._errorf is not yet implemented";
}
class T_shuffledFile_asInterface {
    @:keep
    public dynamic function readDir(_n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return __self__.value.readDir(_n);
    @:embedded
    public dynamic function stat():{ var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.value.stat();
    @:embedded
    public dynamic function read(__0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(__0);
    @:embedded
    public dynamic function close():stdgo.Error return __self__.value.close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_shuffledFile>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.testing.fstest.Fstest.T_shuffledFile_asInterface) class T_shuffledFile_static_extension {
    @:keep
    static public function readDir( _f:stdgo.Ref<T_shuffledFile>, _n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } throw "T_shuffledFile:testing.fstest.readDir is not yet implemented";
    @:embedded
    public static function stat( __self__:T_shuffledFile):{ var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.stat();
    @:embedded
    public static function read( __self__:T_shuffledFile, __0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.read(__0);
    @:embedded
    public static function close( __self__:T_shuffledFile):stdgo.Error return __self__.close();
}
class MapFS_asInterface {
    @:keep
    public dynamic function sub(_dir:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs.FS; var _1 : stdgo.Error; } return __self__.value.sub(_dir);
    @:keep
    public dynamic function glob(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.value.glob(_pattern);
    @:keep
    public dynamic function readDir(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return __self__.value.readDir(_name);
    @:keep
    public dynamic function stat(_name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.value.stat(_name);
    @:keep
    public dynamic function readFile(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return __self__.value.readFile(_name);
    @:keep
    public dynamic function open(_name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs.File; var _1 : stdgo.Error; } return __self__.value.open(_name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<MapFS>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.testing.fstest.Fstest.MapFS_asInterface) class MapFS_static_extension {
    @:keep
    static public function sub( _fsys:MapFS, _dir:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs.FS; var _1 : stdgo.Error; } throw "MapFS:testing.fstest.sub is not yet implemented";
    @:keep
    static public function glob( _fsys:MapFS, _pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } throw "MapFS:testing.fstest.glob is not yet implemented";
    @:keep
    static public function readDir( _fsys:MapFS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } throw "MapFS:testing.fstest.readDir is not yet implemented";
    @:keep
    static public function stat( _fsys:MapFS, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } throw "MapFS:testing.fstest.stat is not yet implemented";
    @:keep
    static public function readFile( _fsys:MapFS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } throw "MapFS:testing.fstest.readFile is not yet implemented";
    @:keep
    static public function open( _fsys:MapFS, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs.File; var _1 : stdgo.Error; } throw "MapFS:testing.fstest.open is not yet implemented";
}
class T_shuffledFS_asInterface {
    @:keep
    public dynamic function open(_name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs.File; var _1 : stdgo.Error; } return __self__.value.open(_name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_shuffledFS>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.testing.fstest.Fstest.T_shuffledFS_asInterface) class T_shuffledFS_static_extension {
    @:keep
    static public function open( _fsys:T_shuffledFS, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs.File; var _1 : stdgo.Error; } throw "T_shuffledFS:testing.fstest.open is not yet implemented";
}
