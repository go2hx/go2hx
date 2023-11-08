package stdgo.testing.fstest;
/**
    // Package fstest implements support for testing implementations and users of file systems.
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
var __2 : stdgo.io.fs.Fs.FS = (null : stdgo.io.fs.Fs.FS);
/**
    
    
    
**/
var __3 : stdgo.io.fs.Fs.File = (null : stdgo.io.fs.Fs.File);
/**
    // A MapFile describes a single file in a MapFS.
    
    
**/
@:structInit class MapFile {
    public var data : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public var mode : stdgo.io.fs.Fs.FileMode = ((0 : stdgo.StdGoTypes.GoUInt32) : stdgo.io.fs.Fs.FileMode);
    public var modTime : stdgo.time.Time.Time = ({} : stdgo.time.Time.Time);
    public var sys : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public function new(?data:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, ?mode:stdgo.io.fs.Fs.FileMode, ?modTime:stdgo.time.Time.Time, ?sys:stdgo.StdGoTypes.AnyInterface) {
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
/**
    // fsOnly is a wrapper that hides all but the fs.FS methods,
    // to avoid an infinite recursion when implementing special
    // methods in terms of helpers that would use them.
    // (In general, implementing these methods using the package fs helpers
    // is redundant and unnecessary, but having the methods may make
    // MapFS exercise more code paths when used in tests.)
    
    
**/
@:structInit @:private @:using(stdgo.testing.fstest.Fstest.T_fsOnly_static_extension) class T_fsOnly {
    @:embedded
    public var fs : stdgo.io.fs.Fs.FS = (null : stdgo.io.fs.Fs.FS);
    public function new(?fs:stdgo.io.fs.Fs.FS) {
        if (fs != null) this.fs = fs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function open(_pattern:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } return @:typeType null;
    public function __copy__() {
        return new T_fsOnly(fs);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.testing.fstest.Fstest.T_noSub_static_extension) class T_noSub {
    @:embedded
    public var mapFS : stdgo.testing.fstest.Fstest.MapFS = (null : stdgo.testing.fstest.Fstest.MapFS);
    public function new(?mapFS:stdgo.testing.fstest.Fstest.MapFS) {
        if (mapFS != null) this.mapFS = mapFS;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function glob(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function open(_pattern:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function readDir(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function readFile(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function stat(_pattern:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return @:typeType null;
    public function __copy__() {
        return new T_noSub(mapFS);
    }
}
/**
    // A mapFileInfo implements fs.FileInfo and fs.DirEntry for a given map file.
    
    
**/
@:structInit @:private @:using(stdgo.testing.fstest.Fstest.T_mapFileInfo_static_extension) class T_mapFileInfo {
    public var _name : stdgo.GoString = "";
    public var _f : stdgo.StdGoTypes.Ref<stdgo.testing.fstest.Fstest.MapFile> = (null : stdgo.StdGoTypes.Ref<stdgo.testing.fstest.Fstest.MapFile>);
    public function new(?_name:stdgo.GoString, ?_f:stdgo.StdGoTypes.Ref<stdgo.testing.fstest.Fstest.MapFile>) {
        if (_name != null) this._name = _name;
        if (_f != null) this._f = _f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_mapFileInfo(_name, _f);
    }
}
/**
    // An openMapFile is a regular (non-directory) fs.File open for reading.
    
    
**/
@:structInit @:private @:using(stdgo.testing.fstest.Fstest.T_openMapFile_static_extension) class T_openMapFile {
    public var _path : stdgo.GoString = "";
    @:embedded
    public var _mapFileInfo : stdgo.testing.fstest.Fstest.T_mapFileInfo = ({} : stdgo.testing.fstest.Fstest.T_mapFileInfo);
    public var _offset : stdgo.StdGoTypes.GoInt64 = 0;
    public function new(?_path:stdgo.GoString, ?_mapFileInfo:stdgo.testing.fstest.Fstest.T_mapFileInfo, ?_offset:stdgo.StdGoTypes.GoInt64) {
        if (_path != null) this._path = _path;
        if (_mapFileInfo != null) this._mapFileInfo = _mapFileInfo;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function info():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function isDir():Bool return false;
    @:embedded
    public function modTime():stdgo.time.Time.Time return ({} : stdgo.time.Time.Time);
    @:embedded
    public function mode():stdgo.io.fs.Fs.FileMode return ((0 : stdgo.StdGoTypes.GoUInt32) : stdgo.io.fs.Fs.FileMode);
    @:embedded
    public function name():stdgo.GoString return ("" : stdgo.GoString);
    @:embedded
    public function size():stdgo.StdGoTypes.GoInt64 return (0 : stdgo.StdGoTypes.GoInt64);
    @:embedded
    public function string():stdgo.GoString return ("" : stdgo.GoString);
    @:embedded
    public function sys():stdgo.StdGoTypes.AnyInterface return (null : stdgo.StdGoTypes.AnyInterface);
    @:embedded
    public function type():stdgo.io.fs.Fs.FileMode return ((0 : stdgo.StdGoTypes.GoUInt32) : stdgo.io.fs.Fs.FileMode);
    public function __copy__() {
        return new T_openMapFile(_path, _mapFileInfo, _offset);
    }
}
/**
    // A mapDir is a directory fs.File (so also an fs.ReadDirFile) open for reading.
    
    
**/
@:structInit @:private @:using(stdgo.testing.fstest.Fstest.T_mapDir_static_extension) class T_mapDir {
    public var _path : stdgo.GoString = "";
    @:embedded
    public var _mapFileInfo : stdgo.testing.fstest.Fstest.T_mapFileInfo = ({} : stdgo.testing.fstest.Fstest.T_mapFileInfo);
    public var _entry : stdgo.Slice<stdgo.testing.fstest.Fstest.T_mapFileInfo> = (null : stdgo.Slice<stdgo.testing.fstest.Fstest.T_mapFileInfo>);
    public var _offset : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_path:stdgo.GoString, ?_mapFileInfo:stdgo.testing.fstest.Fstest.T_mapFileInfo, ?_entry:stdgo.Slice<stdgo.testing.fstest.Fstest.T_mapFileInfo>, ?_offset:stdgo.StdGoTypes.GoInt) {
        if (_path != null) this._path = _path;
        if (_mapFileInfo != null) this._mapFileInfo = _mapFileInfo;
        if (_entry != null) this._entry = _entry;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function info():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function isDir():Bool return false;
    @:embedded
    public function modTime():stdgo.time.Time.Time return ({} : stdgo.time.Time.Time);
    @:embedded
    public function mode():stdgo.io.fs.Fs.FileMode return ((0 : stdgo.StdGoTypes.GoUInt32) : stdgo.io.fs.Fs.FileMode);
    @:embedded
    public function name():stdgo.GoString return ("" : stdgo.GoString);
    @:embedded
    public function size():stdgo.StdGoTypes.GoInt64 return (0 : stdgo.StdGoTypes.GoInt64);
    @:embedded
    public function string():stdgo.GoString return ("" : stdgo.GoString);
    @:embedded
    public function sys():stdgo.StdGoTypes.AnyInterface return (null : stdgo.StdGoTypes.AnyInterface);
    @:embedded
    public function type():stdgo.io.fs.Fs.FileMode return ((0 : stdgo.StdGoTypes.GoUInt32) : stdgo.io.fs.Fs.FileMode);
    public function __copy__() {
        return new T_mapDir(_path, _mapFileInfo, _entry, _offset);
    }
}
/**
    // An fsTester holds state for running the test.
    
    
**/
@:structInit @:private @:using(stdgo.testing.fstest.Fstest.T_fsTester_static_extension) class T_fsTester {
    public var _fsys : stdgo.io.fs.Fs.FS = (null : stdgo.io.fs.Fs.FS);
    public var _errText : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public var _dirs : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _files : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_fsys:stdgo.io.fs.Fs.FS, ?_errText:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, ?_dirs:stdgo.Slice<stdgo.GoString>, ?_files:stdgo.Slice<stdgo.GoString>) {
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
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.testing.fstest.Fstest.T_shuffledFile_static_extension) class T_shuffledFile {
    @:embedded
    public var file : stdgo.io.fs.Fs.File = (null : stdgo.io.fs.Fs.File);
    public function new(?file:stdgo.io.fs.Fs.File) {
        if (file != null) this.file = file;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function close():stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function read(__0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function stat():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return @:typeType null;
    public function __copy__() {
        return new T_shuffledFile(file);
    }
}
/**
    // A MapFS is a simple in-memory file system for use in tests,
    // represented as a map from path names (arguments to Open)
    // to information about the files or directories they represent.
    //
    // The map need not include parent directories for files contained
    // in the map; those will be synthesized if needed.
    // But a directory can still be included by setting the MapFile.Mode's ModeDir bit;
    // this may be necessary for detailed control over the directory's FileInfo
    // or to create an empty directory.
    //
    // File system operations read directly from the map,
    // so that the file system can be changed by editing the map as needed.
    // An implication is that file system operations must not run concurrently
    // with changes to the map, which would be a race.
    // Another implication is that opening or reading a directory requires
    // iterating over the entire map, so a MapFS should typically be used with not more
    // than a few hundred entries or directory reads.
**/
@:named @:using(stdgo.testing.fstest.Fstest.MapFS_static_extension) typedef MapFS = stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.testing.fstest.Fstest.MapFile>>;
@:named @:using(stdgo.testing.fstest.Fstest.T_shuffledFS_static_extension) typedef T_shuffledFS = stdgo.testing.fstest.Fstest.MapFS;
function testMapFS(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {}
function testMapFSChmodDot(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void throw ":testing.fstest.testMapFSChmodDot is not yet implemented";
/**
    // TestFS tests a file system implementation.
    // It walks the entire tree of files in fsys,
    // opening and checking that each file behaves correctly.
    // It also checks that the file system contains at least the expected files.
    // As a special case, if no expected files are listed, fsys must be empty.
    // Otherwise, fsys must contain at least the listed files; it can also contain others.
    // The contents of fsys must not change concurrently with TestFS.
    //
    // If TestFS finds any misbehaviors, it returns an error reporting all of them.
    // The error text spans multiple lines, one per detected misbehavior.
    //
    // Typical usage inside a test is:
    //
    //	if err := fstest.TestFS(myFS, "file/that/should/be/present"); err != nil {
    //		t.Fatal(err)
    //	}
**/
function testFS(_fsys:stdgo.io.fs.Fs.FS, _expected:haxe.Rest<stdgo.GoString>):stdgo.Error throw ":testing.fstest.testFS is not yet implemented";
function _testFS(_fsys:stdgo.io.fs.Fs.FS, _expected:haxe.Rest<stdgo.GoString>):stdgo.Error throw ":testing.fstest._testFS is not yet implemented";
/**
    // formatEntry formats an fs.DirEntry into a string for error messages and comparison.
**/
function _formatEntry(_entry:stdgo.io.fs.Fs.DirEntry):stdgo.GoString throw ":testing.fstest._formatEntry is not yet implemented";
/**
    // formatInfoEntry formats an fs.FileInfo into a string like the result of formatEntry, for error messages and comparison.
**/
function _formatInfoEntry(_info:stdgo.io.fs.Fs.FileInfo):stdgo.GoString throw ":testing.fstest._formatInfoEntry is not yet implemented";
/**
    // formatInfo formats an fs.FileInfo into a string for error messages and comparison.
**/
function _formatInfo(_info:stdgo.io.fs.Fs.FileInfo):stdgo.GoString throw ":testing.fstest._formatInfo is not yet implemented";
function testSymlink(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void throw ":testing.fstest.testSymlink is not yet implemented";
function testDash(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void throw ":testing.fstest.testDash is not yet implemented";
function testShuffledFS(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void throw ":testing.fstest.testShuffledFS is not yet implemented";
class T_fsOnly_asInterface {
    @:embedded
    public dynamic function open(_pattern:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } return __self__.value.open(_pattern);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_fsOnly>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.testing.fstest.Fstest.T_fsOnly_asInterface) class T_fsOnly_static_extension {
    @:embedded
    public static function open( __self__:T_fsOnly, _pattern:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } return __self__.open(_pattern);
}
class T_noSub_asInterface {
    @:keep
    public dynamic function sub():Void __self__.value.sub();
    @:embedded
    public dynamic function stat(_pattern:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.value.stat(_pattern);
    @:embedded
    public dynamic function readFile(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.readFile(_pattern);
    @:embedded
    public dynamic function readDir(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return __self__.value.readDir(_pattern);
    @:embedded
    public dynamic function open(_pattern:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } return __self__.value.open(_pattern);
    @:embedded
    public dynamic function glob(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.value.glob(_pattern);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_noSub>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.testing.fstest.Fstest.T_noSub_asInterface) class T_noSub_static_extension {
    @:keep
    static public function sub( _:T_noSub):Void throw "T_noSub:testing.fstest.sub is not yet implemented";
    @:embedded
    public static function stat( __self__:T_noSub, _pattern:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.stat(_pattern);
    @:embedded
    public static function readFile( __self__:T_noSub, _pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var _1 : stdgo.Error; } return __self__.readFile(_pattern);
    @:embedded
    public static function readDir( __self__:T_noSub, _pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return __self__.readDir(_pattern);
    @:embedded
    public static function open( __self__:T_noSub, _pattern:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } return __self__.open(_pattern);
    @:embedded
    public static function glob( __self__:T_noSub, _pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.glob(_pattern);
}
class T_mapFileInfo_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function info():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.value.info();
    @:keep
    public dynamic function sys():stdgo.StdGoTypes.AnyInterface return __self__.value.sys();
    @:keep
    public dynamic function isDir():Bool return __self__.value.isDir();
    @:keep
    public dynamic function modTime():stdgo.time.Time.Time return __self__.value.modTime();
    @:keep
    public dynamic function type():stdgo.io.fs.Fs.FileMode return __self__.value.type();
    @:keep
    public dynamic function mode():stdgo.io.fs.Fs.FileMode return __self__.value.mode();
    @:keep
    public dynamic function size():stdgo.StdGoTypes.GoInt64 return __self__.value.size();
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_mapFileInfo>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.testing.fstest.Fstest.T_mapFileInfo_asInterface) class T_mapFileInfo_static_extension {
    @:keep
    static public function string( _i:stdgo.StdGoTypes.Ref<T_mapFileInfo>):stdgo.GoString throw "T_mapFileInfo:testing.fstest.string is not yet implemented";
    @:keep
    static public function info( _i:stdgo.StdGoTypes.Ref<T_mapFileInfo>):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } throw "T_mapFileInfo:testing.fstest.info is not yet implemented";
    @:keep
    static public function sys( _i:stdgo.StdGoTypes.Ref<T_mapFileInfo>):stdgo.StdGoTypes.AnyInterface throw "T_mapFileInfo:testing.fstest.sys is not yet implemented";
    @:keep
    static public function isDir( _i:stdgo.StdGoTypes.Ref<T_mapFileInfo>):Bool throw "T_mapFileInfo:testing.fstest.isDir is not yet implemented";
    @:keep
    static public function modTime( _i:stdgo.StdGoTypes.Ref<T_mapFileInfo>):stdgo.time.Time.Time throw "T_mapFileInfo:testing.fstest.modTime is not yet implemented";
    @:keep
    static public function type( _i:stdgo.StdGoTypes.Ref<T_mapFileInfo>):stdgo.io.fs.Fs.FileMode throw "T_mapFileInfo:testing.fstest.type is not yet implemented";
    @:keep
    static public function mode( _i:stdgo.StdGoTypes.Ref<T_mapFileInfo>):stdgo.io.fs.Fs.FileMode throw "T_mapFileInfo:testing.fstest.mode is not yet implemented";
    @:keep
    static public function size( _i:stdgo.StdGoTypes.Ref<T_mapFileInfo>):stdgo.StdGoTypes.GoInt64 throw "T_mapFileInfo:testing.fstest.size is not yet implemented";
    @:keep
    static public function name( _i:stdgo.StdGoTypes.Ref<T_mapFileInfo>):stdgo.GoString throw "T_mapFileInfo:testing.fstest.name is not yet implemented";
}
class T_openMapFile_asInterface {
    @:keep
    public dynamic function readAt(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _offset:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.readAt(_b, _offset);
    @:keep
    public dynamic function seek(_offset:stdgo.StdGoTypes.GoInt64, _whence:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return __self__.value.seek(_offset, _whence);
    @:keep
    public dynamic function read(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function stat():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.value.stat();
    @:embedded
    public dynamic function type():stdgo.io.fs.Fs.FileMode return __self__.value.type();
    @:embedded
    public dynamic function sys():stdgo.StdGoTypes.AnyInterface return __self__.value.sys();
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function size():stdgo.StdGoTypes.GoInt64 return __self__.value.size();
    @:embedded
    public dynamic function name():stdgo.GoString return __self__.value.name();
    @:embedded
    public dynamic function mode():stdgo.io.fs.Fs.FileMode return __self__.value.mode();
    @:embedded
    public dynamic function modTime():stdgo.time.Time.Time return __self__.value.modTime();
    @:embedded
    public dynamic function isDir():Bool return __self__.value.isDir();
    @:embedded
    public dynamic function info():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.value.info();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_openMapFile>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.testing.fstest.Fstest.T_openMapFile_asInterface) class T_openMapFile_static_extension {
    @:keep
    static public function readAt( _f:stdgo.StdGoTypes.Ref<T_openMapFile>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _offset:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "T_openMapFile:testing.fstest.readAt is not yet implemented";
    @:keep
    static public function seek( _f:stdgo.StdGoTypes.Ref<T_openMapFile>, _offset:stdgo.StdGoTypes.GoInt64, _whence:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } throw "T_openMapFile:testing.fstest.seek is not yet implemented";
    @:keep
    static public function read( _f:stdgo.StdGoTypes.Ref<T_openMapFile>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "T_openMapFile:testing.fstest.read is not yet implemented";
    @:keep
    static public function close( _f:stdgo.StdGoTypes.Ref<T_openMapFile>):stdgo.Error throw "T_openMapFile:testing.fstest.close is not yet implemented";
    @:keep
    static public function stat( _f:stdgo.StdGoTypes.Ref<T_openMapFile>):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } throw "T_openMapFile:testing.fstest.stat is not yet implemented";
    @:embedded
    public static function type( __self__:T_openMapFile):stdgo.io.fs.Fs.FileMode return __self__.type();
    @:embedded
    public static function sys( __self__:T_openMapFile):stdgo.StdGoTypes.AnyInterface return __self__.sys();
    @:embedded
    public static function string( __self__:T_openMapFile):stdgo.GoString return __self__.string();
    @:embedded
    public static function size( __self__:T_openMapFile):stdgo.StdGoTypes.GoInt64 return __self__.size();
    @:embedded
    public static function name( __self__:T_openMapFile):stdgo.GoString return __self__.name();
    @:embedded
    public static function mode( __self__:T_openMapFile):stdgo.io.fs.Fs.FileMode return __self__.mode();
    @:embedded
    public static function modTime( __self__:T_openMapFile):stdgo.time.Time.Time return __self__.modTime();
    @:embedded
    public static function isDir( __self__:T_openMapFile):Bool return __self__.isDir();
    @:embedded
    public static function info( __self__:T_openMapFile):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.info();
}
class T_mapDir_asInterface {
    @:keep
    public dynamic function readDir(_count:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return __self__.value.readDir(_count);
    @:keep
    public dynamic function read(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function stat():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.value.stat();
    @:embedded
    public dynamic function type():stdgo.io.fs.Fs.FileMode return __self__.value.type();
    @:embedded
    public dynamic function sys():stdgo.StdGoTypes.AnyInterface return __self__.value.sys();
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function size():stdgo.StdGoTypes.GoInt64 return __self__.value.size();
    @:embedded
    public dynamic function name():stdgo.GoString return __self__.value.name();
    @:embedded
    public dynamic function mode():stdgo.io.fs.Fs.FileMode return __self__.value.mode();
    @:embedded
    public dynamic function modTime():stdgo.time.Time.Time return __self__.value.modTime();
    @:embedded
    public dynamic function isDir():Bool return __self__.value.isDir();
    @:embedded
    public dynamic function info():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.value.info();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_mapDir>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.testing.fstest.Fstest.T_mapDir_asInterface) class T_mapDir_static_extension {
    @:keep
    static public function readDir( _d:stdgo.StdGoTypes.Ref<T_mapDir>, _count:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } throw "T_mapDir:testing.fstest.readDir is not yet implemented";
    @:keep
    static public function read( _d:stdgo.StdGoTypes.Ref<T_mapDir>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "T_mapDir:testing.fstest.read is not yet implemented";
    @:keep
    static public function close( _d:stdgo.StdGoTypes.Ref<T_mapDir>):stdgo.Error throw "T_mapDir:testing.fstest.close is not yet implemented";
    @:keep
    static public function stat( _d:stdgo.StdGoTypes.Ref<T_mapDir>):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } throw "T_mapDir:testing.fstest.stat is not yet implemented";
    @:embedded
    public static function type( __self__:T_mapDir):stdgo.io.fs.Fs.FileMode return __self__.type();
    @:embedded
    public static function sys( __self__:T_mapDir):stdgo.StdGoTypes.AnyInterface return __self__.sys();
    @:embedded
    public static function string( __self__:T_mapDir):stdgo.GoString return __self__.string();
    @:embedded
    public static function size( __self__:T_mapDir):stdgo.StdGoTypes.GoInt64 return __self__.size();
    @:embedded
    public static function name( __self__:T_mapDir):stdgo.GoString return __self__.name();
    @:embedded
    public static function mode( __self__:T_mapDir):stdgo.io.fs.Fs.FileMode return __self__.mode();
    @:embedded
    public static function modTime( __self__:T_mapDir):stdgo.time.Time.Time return __self__.modTime();
    @:embedded
    public static function isDir( __self__:T_mapDir):Bool return __self__.isDir();
    @:embedded
    public static function info( __self__:T_mapDir):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.info();
}
class T_fsTester_asInterface {
    /**
        // checkBadPath checks that various invalid forms of file's name cannot be opened using open.
    **/
    @:keep
    public dynamic function _checkBadPath(_file:stdgo.GoString, _desc:stdgo.GoString, _open:stdgo.GoString -> stdgo.Error):Void __self__.value._checkBadPath(_file, _desc, _open);
    /**
        // checkBadPath checks that various invalid forms of file's name cannot be opened using t.fsys.Open.
    **/
    @:keep
    public dynamic function _checkOpen(_file:stdgo.GoString):Void __self__.value._checkOpen(_file);
    @:keep
    public dynamic function _checkFileRead(_file:stdgo.GoString, _desc:stdgo.GoString, _data1:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _data2:stdgo.Slice<stdgo.StdGoTypes.GoByte>):Void __self__.value._checkFileRead(_file, _desc, _data1, _data2);
    /**
        // checkFile checks that basic file reading works correctly.
    **/
    @:keep
    public dynamic function _checkFile(_file:stdgo.GoString):Void __self__.value._checkFile(_file);
    /**
        // checkDirList checks that two directory lists contain the same files and file info.
        // The order of the lists need not match.
    **/
    @:keep
    public dynamic function _checkDirList(_dir:stdgo.GoString, _desc:stdgo.GoString, _list1:stdgo.Slice<stdgo.io.fs.Fs.DirEntry>, _list2:stdgo.Slice<stdgo.io.fs.Fs.DirEntry>):Void __self__.value._checkDirList(_dir, _desc, _list1, _list2);
    /**
        // checkStat checks that a direct stat of path matches entry,
        // which was found in the parent's directory listing.
    **/
    @:keep
    public dynamic function _checkStat(_path:stdgo.GoString, _entry:stdgo.io.fs.Fs.DirEntry):Void __self__.value._checkStat(_path, _entry);
    /**
        // checkGlob checks that various glob patterns work if the file system implements GlobFS.
    **/
    @:keep
    public dynamic function _checkGlob(_dir:stdgo.GoString, _list:stdgo.Slice<stdgo.io.fs.Fs.DirEntry>):Void __self__.value._checkGlob(_dir, _list);
    /**
        // checkDir checks the directory dir, which is expected to exist
        // (it is either the root or was found in a directory listing with IsDir true).
    **/
    @:keep
    public dynamic function _checkDir(_dir:stdgo.GoString):Void __self__.value._checkDir(_dir);
    @:keep
    public dynamic function _openDir(_dir:stdgo.GoString):stdgo.io.fs.Fs.ReadDirFile return __self__.value._openDir(_dir);
    /**
        // errorf adds an error line to errText.
    **/
    @:keep
    public dynamic function _errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):Void __self__.value._errorf(_format, ..._args);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_fsTester>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.testing.fstest.Fstest.T_fsTester_asInterface) class T_fsTester_static_extension {
    /**
        // checkBadPath checks that various invalid forms of file's name cannot be opened using open.
    **/
    @:keep
    static public function _checkBadPath( _t:stdgo.StdGoTypes.Ref<T_fsTester>, _file:stdgo.GoString, _desc:stdgo.GoString, _open:stdgo.GoString -> stdgo.Error):Void throw "T_fsTester:testing.fstest._checkBadPath is not yet implemented";
    /**
        // checkBadPath checks that various invalid forms of file's name cannot be opened using t.fsys.Open.
    **/
    @:keep
    static public function _checkOpen( _t:stdgo.StdGoTypes.Ref<T_fsTester>, _file:stdgo.GoString):Void throw "T_fsTester:testing.fstest._checkOpen is not yet implemented";
    @:keep
    static public function _checkFileRead( _t:stdgo.StdGoTypes.Ref<T_fsTester>, _file:stdgo.GoString, _desc:stdgo.GoString, _data1:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _data2:stdgo.Slice<stdgo.StdGoTypes.GoByte>):Void throw "T_fsTester:testing.fstest._checkFileRead is not yet implemented";
    /**
        // checkFile checks that basic file reading works correctly.
    **/
    @:keep
    static public function _checkFile( _t:stdgo.StdGoTypes.Ref<T_fsTester>, _file:stdgo.GoString):Void throw "T_fsTester:testing.fstest._checkFile is not yet implemented";
    /**
        // checkDirList checks that two directory lists contain the same files and file info.
        // The order of the lists need not match.
    **/
    @:keep
    static public function _checkDirList( _t:stdgo.StdGoTypes.Ref<T_fsTester>, _dir:stdgo.GoString, _desc:stdgo.GoString, _list1:stdgo.Slice<stdgo.io.fs.Fs.DirEntry>, _list2:stdgo.Slice<stdgo.io.fs.Fs.DirEntry>):Void throw "T_fsTester:testing.fstest._checkDirList is not yet implemented";
    /**
        // checkStat checks that a direct stat of path matches entry,
        // which was found in the parent's directory listing.
    **/
    @:keep
    static public function _checkStat( _t:stdgo.StdGoTypes.Ref<T_fsTester>, _path:stdgo.GoString, _entry:stdgo.io.fs.Fs.DirEntry):Void throw "T_fsTester:testing.fstest._checkStat is not yet implemented";
    /**
        // checkGlob checks that various glob patterns work if the file system implements GlobFS.
    **/
    @:keep
    static public function _checkGlob( _t:stdgo.StdGoTypes.Ref<T_fsTester>, _dir:stdgo.GoString, _list:stdgo.Slice<stdgo.io.fs.Fs.DirEntry>):Void throw "T_fsTester:testing.fstest._checkGlob is not yet implemented";
    /**
        // checkDir checks the directory dir, which is expected to exist
        // (it is either the root or was found in a directory listing with IsDir true).
    **/
    @:keep
    static public function _checkDir( _t:stdgo.StdGoTypes.Ref<T_fsTester>, _dir:stdgo.GoString):Void throw "T_fsTester:testing.fstest._checkDir is not yet implemented";
    @:keep
    static public function _openDir( _t:stdgo.StdGoTypes.Ref<T_fsTester>, _dir:stdgo.GoString):stdgo.io.fs.Fs.ReadDirFile throw "T_fsTester:testing.fstest._openDir is not yet implemented";
    /**
        // errorf adds an error line to errText.
    **/
    @:keep
    static public function _errorf( _t:stdgo.StdGoTypes.Ref<T_fsTester>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):Void throw "T_fsTester:testing.fstest._errorf is not yet implemented";
}
class T_shuffledFile_asInterface {
    @:keep
    public dynamic function readDir(_n:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return __self__.value.readDir(_n);
    @:embedded
    public dynamic function stat():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.value.stat();
    @:embedded
    public dynamic function read(__0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(__0);
    @:embedded
    public dynamic function close():stdgo.Error return __self__.value.close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_shuffledFile>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.testing.fstest.Fstest.T_shuffledFile_asInterface) class T_shuffledFile_static_extension {
    @:keep
    static public function readDir( _f:stdgo.StdGoTypes.Ref<T_shuffledFile>, _n:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } throw "T_shuffledFile:testing.fstest.readDir is not yet implemented";
    @:embedded
    public static function stat( __self__:T_shuffledFile):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.stat();
    @:embedded
    public static function read( __self__:T_shuffledFile, __0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.read(__0);
    @:embedded
    public static function close( __self__:T_shuffledFile):stdgo.Error return __self__.close();
}
class MapFS_asInterface {
    @:keep
    public dynamic function sub(_dir:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.FS; var _1 : stdgo.Error; } return __self__.value.sub(_dir);
    @:keep
    public dynamic function glob(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.value.glob(_pattern);
    @:keep
    public dynamic function readDir(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return __self__.value.readDir(_name);
    @:keep
    public dynamic function stat(_name:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.value.stat(_name);
    @:keep
    public dynamic function readFile(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.readFile(_name);
    /**
        // Open opens the named file.
    **/
    @:keep
    public dynamic function open(_name:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } return __self__.value.open(_name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<MapFS>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.testing.fstest.Fstest.MapFS_asInterface) class MapFS_static_extension {
    @:keep
    static public function sub( _fsys:MapFS, _dir:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.FS; var _1 : stdgo.Error; } throw "MapFS:testing.fstest.sub is not yet implemented";
    @:keep
    static public function glob( _fsys:MapFS, _pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } throw "MapFS:testing.fstest.glob is not yet implemented";
    @:keep
    static public function readDir( _fsys:MapFS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } throw "MapFS:testing.fstest.readDir is not yet implemented";
    @:keep
    static public function stat( _fsys:MapFS, _name:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } throw "MapFS:testing.fstest.stat is not yet implemented";
    @:keep
    static public function readFile( _fsys:MapFS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } throw "MapFS:testing.fstest.readFile is not yet implemented";
    /**
        // Open opens the named file.
    **/
    @:keep
    static public function open( _fsys:MapFS, _name:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } throw "MapFS:testing.fstest.open is not yet implemented";
}
class T_shuffledFS_asInterface {
    @:keep
    public dynamic function open(_name:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } return __self__.value.open(_name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_shuffledFS>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.testing.fstest.Fstest.T_shuffledFS_asInterface) class T_shuffledFS_static_extension {
    @:keep
    static public function open( _fsys:T_shuffledFS, _name:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } throw "T_shuffledFS:testing.fstest.open is not yet implemented";
}
