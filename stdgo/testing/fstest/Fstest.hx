package stdgo.testing.fstest;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

/**
	// Package fstest implements support for testing implementations and users of file systems.
**/
private var __go2hxdoc__package:Bool;

private var _2:stdgo.io.fs.Fs.FS = (null : stdgo.io.fs.Fs.FS);
private var _3:stdgo.io.fs.Fs.File = (null : stdgo.io.fs.Fs.File);

/**
	// A MapFile describes a single file in a MapFS.
**/
@:structInit class MapFile {
	/**
		// file content
	**/
	public var data:Slice<GoUInt8> = (null : Slice<GoUInt8>);

	/**
		// FileInfo.Mode
	**/
	public var mode:stdgo.io.fs.Fs.FileMode = ((0 : GoUInt32) : stdgo.io.fs.Fs.FileMode);

	/**
		// FileInfo.ModTime
	**/
	public var modTime:stdgo.time.Time.Time = ({} : stdgo.time.Time.Time);

	/**
		// FileInfo.Sys
	**/
	public var sys:AnyInterface = (null : AnyInterface);

	public function new(?data:Slice<GoUInt8>, ?mode:stdgo.io.fs.Fs.FileMode, ?modTime:stdgo.time.Time.Time, ?sys:AnyInterface) {
		if (data != null)
			this.data = data;
		if (mode != null)
			this.mode = mode;
		if (modTime != null)
			this.modTime = modTime;
		if (sys != null)
			this.sys = sys;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

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
@:structInit @:using(stdgo.testing.fstest.Fstest.T_fsOnly_static_extension) private class T_fsOnly {
	@:embedded
	public var fs:stdgo.io.fs.Fs.FS = (null : stdgo.io.fs.Fs.FS);

	public function new(?fs:stdgo.io.fs.Fs.FS) {
		if (fs != null)
			this.fs = fs;
	}

	@:embedded
	public function open(_pattern:GoString):{var _0:stdgo.io.fs.Fs.File; var _1:Error;}
		return null;

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_fsOnly(fs);
	}
}

@:structInit @:using(stdgo.testing.fstest.Fstest.T_noSub_static_extension) private class T_noSub {
	@:embedded
	public var mapFS:MapFS = (null : MapFS);

	public function new(?mapFS:MapFS) {
		if (mapFS != null)
			this.mapFS = mapFS;
	}

	@:embedded
	public function glob(_pattern:GoString):{var _0:Slice<GoString>; var _1:Error;}
		return null;

	@:embedded
	public function open(_pattern:GoString):{var _0:stdgo.io.fs.Fs.File; var _1:Error;}
		return null;

	@:embedded
	public function readDir(_pattern:GoString):{var _0:Slice<stdgo.io.fs.Fs.DirEntry>; var _1:Error;}
		return null;

	@:embedded
	public function readFile(_pattern:GoString):{var _0:Slice<GoUInt8>; var _1:Error;}
		return null;

	@:embedded
	public function stat(_pattern:GoString):{var _0:stdgo.io.fs.Fs.FileInfo; var _1:Error;}
		return null;

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_noSub(mapFS);
	}
}

/**
	// A mapFileInfo implements fs.FileInfo and fs.DirEntry for a given map file.
**/
@:structInit @:using(stdgo.testing.fstest.Fstest.T_mapFileInfo_static_extension) private class T_mapFileInfo {
	public var _name:GoString = "";
	public var _f:Ref<MapFile> = (null : MapFile);

	public function new(?_name:GoString, ?_f:Ref<MapFile>) {
		if (_name != null)
			this._name = _name;
		if (_f != null)
			this._f = _f;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_mapFileInfo(_name, _f);
	}
}

/**
	// An openMapFile is a regular (non-directory) fs.File open for reading.
**/
@:structInit @:using(stdgo.testing.fstest.Fstest.T_openMapFile_static_extension) private class T_openMapFile {
	public var _path:GoString = "";
	@:embedded
	public var _mapFileInfo:T_mapFileInfo = ({} : T_mapFileInfo);
	public var _offset:GoInt64 = 0;

	public function new(?_path:GoString, ?_mapFileInfo:T_mapFileInfo, ?_offset:GoInt64) {
		if (_path != null)
			this._path = _path;
		if (_mapFileInfo != null)
			this._mapFileInfo = _mapFileInfo;
		if (_offset != null)
			this._offset = _offset;
	}

	@:embedded
	public function info():{var _0:stdgo.io.fs.Fs.FileInfo; var _1:Error;}
		return null;

	@:embedded
	public function isDir():Bool
		return false;

	@:embedded
	public function modTime():stdgo.time.Time.Time
		return ({} : stdgo.time.Time.Time);

	@:embedded
	public function mode():stdgo.io.fs.Fs.FileMode
		return ((0 : GoUInt32) : stdgo.io.fs.Fs.FileMode);

	@:embedded
	public function name():GoString
		return ("" : GoString);

	@:embedded
	public function size():GoInt64
		return (0 : GoInt64);

	@:embedded
	public function sys():AnyInterface
		return (null : AnyInterface);

	@:embedded
	public function type():stdgo.io.fs.Fs.FileMode
		return ((0 : GoUInt32) : stdgo.io.fs.Fs.FileMode);

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_openMapFile(_path, _mapFileInfo, _offset);
	}
}

/**
	// A mapDir is a directory fs.File (so also an fs.ReadDirFile) open for reading.
**/
@:structInit @:using(stdgo.testing.fstest.Fstest.T_mapDir_static_extension) private class T_mapDir {
	public var _path:GoString = "";
	@:embedded
	public var _mapFileInfo:T_mapFileInfo = ({} : T_mapFileInfo);
	public var _entry:Slice<T_mapFileInfo> = (null : Slice<T_mapFileInfo>);
	public var _offset:GoInt = 0;

	public function new(?_path:GoString, ?_mapFileInfo:T_mapFileInfo, ?_entry:Slice<T_mapFileInfo>, ?_offset:GoInt) {
		if (_path != null)
			this._path = _path;
		if (_mapFileInfo != null)
			this._mapFileInfo = _mapFileInfo;
		if (_entry != null)
			this._entry = _entry;
		if (_offset != null)
			this._offset = _offset;
	}

	@:embedded
	public function info():{var _0:stdgo.io.fs.Fs.FileInfo; var _1:Error;}
		return null;

	@:embedded
	public function isDir():Bool
		return false;

	@:embedded
	public function modTime():stdgo.time.Time.Time
		return ({} : stdgo.time.Time.Time);

	@:embedded
	public function mode():stdgo.io.fs.Fs.FileMode
		return ((0 : GoUInt32) : stdgo.io.fs.Fs.FileMode);

	@:embedded
	public function name():GoString
		return ("" : GoString);

	@:embedded
	public function size():GoInt64
		return (0 : GoInt64);

	@:embedded
	public function sys():AnyInterface
		return (null : AnyInterface);

	@:embedded
	public function type():stdgo.io.fs.Fs.FileMode
		return ((0 : GoUInt32) : stdgo.io.fs.Fs.FileMode);

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_mapDir(_path, _mapFileInfo, _entry, _offset);
	}
}

/**
	// An fsTester holds state for running the test.
**/
@:structInit @:using(stdgo.testing.fstest.Fstest.T_fsTester_static_extension) private class T_fsTester {
	public var _fsys:stdgo.io.fs.Fs.FS = (null : stdgo.io.fs.Fs.FS);
	public var _errText:Slice<GoUInt8> = (null : Slice<GoUInt8>);
	public var _dirs:Slice<GoString> = (null : Slice<GoString>);
	public var _files:Slice<GoString> = (null : Slice<GoString>);

	public function new(?_fsys:stdgo.io.fs.Fs.FS, ?_errText:Slice<GoUInt8>, ?_dirs:Slice<GoString>, ?_files:Slice<GoString>) {
		if (_fsys != null)
			this._fsys = _fsys;
		if (_errText != null)
			this._errText = _errText;
		if (_dirs != null)
			this._dirs = _dirs;
		if (_files != null)
			this._files = _files;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_fsTester(_fsys, _errText, _dirs, _files);
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
@:named @:using(stdgo.testing.fstest.Fstest.MapFS_static_extension) typedef MapFS = GoMap<GoString, Ref<MapFile>>;

function testMapFS(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "testing.fstest.testMapFS is not yet implemented";

function testMapFSChmodDot(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "testing.fstest.testMapFSChmodDot is not yet implemented";

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
function testFS(_fsys:stdgo.io.fs.Fs.FS, _expected:haxe.Rest<GoString>):Error
	throw "testing.fstest.testFS is not yet implemented";

function _testFS(_fsys:stdgo.io.fs.Fs.FS, _expected:haxe.Rest<GoString>):Error
	throw "testing.fstest._testFS is not yet implemented";

/**
	// formatEntry formats an fs.DirEntry into a string for error messages and comparison.
**/
function _formatEntry(_entry:stdgo.io.fs.Fs.DirEntry):GoString
	throw "testing.fstest._formatEntry is not yet implemented";

/**
	// formatInfoEntry formats an fs.FileInfo into a string like the result of formatEntry, for error messages and comparison.
**/
function _formatInfoEntry(_info:stdgo.io.fs.Fs.FileInfo):GoString
	throw "testing.fstest._formatInfoEntry is not yet implemented";

/**
	// formatInfo formats an fs.FileInfo into a string for error messages and comparison.
**/
function _formatInfo(_info:stdgo.io.fs.Fs.FileInfo):GoString
	throw "testing.fstest._formatInfo is not yet implemented";

function testSymlink(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "testing.fstest.testSymlink is not yet implemented";

function testDash(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "testing.fstest.testDash is not yet implemented";

private class T_fsOnly_asInterface {
	@:embedded
	public function open(_pattern:GoString):{var _0:stdgo.io.fs.Fs.File; var _1:Error;}
		return __self__.value.open(_pattern);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& stdgo.reflect.Reflect.isReflectTypeRef(__type__)) ? __self__.value : __self__, __type__);

	var __self__:Pointer<T_fsOnly>;
	var __type__:stdgo.reflect.Reflect.Type;
}

@:keep @:allow(stdgo.testing.fstest.Fstest.T_fsOnly_asInterface) class T_fsOnly_static_extension {
	@:embedded
	public static function open(__self__:T_fsOnly, _pattern:GoString):{var _0:stdgo.io.fs.Fs.File; var _1:Error;}
		return __self__.open(_pattern);
}

private class T_noSub_asInterface {
	@:keep
	public function sub():Void
		__self__.value.sub();

	@:embedded
	public function stat(_pattern:GoString):{var _0:stdgo.io.fs.Fs.FileInfo; var _1:Error;}
		return __self__.value.stat(_pattern);

	@:embedded
	public function readFile(_pattern:GoString):{var _0:Slice<GoUInt8>; var _1:Error;}
		return __self__.value.readFile(_pattern);

	@:embedded
	public function readDir(_pattern:GoString):{var _0:Slice<stdgo.io.fs.Fs.DirEntry>; var _1:Error;}
		return __self__.value.readDir(_pattern);

	@:embedded
	public function open(_pattern:GoString):{var _0:stdgo.io.fs.Fs.File; var _1:Error;}
		return __self__.value.open(_pattern);

	@:embedded
	public function glob(_pattern:GoString):{var _0:Slice<GoString>; var _1:Error;}
		return __self__.value.glob(_pattern);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& stdgo.reflect.Reflect.isReflectTypeRef(__type__)) ? __self__.value : __self__, __type__);

	var __self__:Pointer<T_noSub>;
	var __type__:stdgo.reflect.Reflect.Type;
}

@:keep @:allow(stdgo.testing.fstest.Fstest.T_noSub_asInterface) class T_noSub_static_extension {
	@:keep
	static public function sub(_:T_noSub):Void
		throw "testing.fstest.sub is not yet implemented";

	@:embedded
	public static function stat(__self__:T_noSub, _pattern:GoString):{var _0:stdgo.io.fs.Fs.FileInfo; var _1:Error;}
		return __self__.stat(_pattern);

	@:embedded
	public static function readFile(__self__:T_noSub, _pattern:GoString):{var _0:Slice<GoUInt8>; var _1:Error;}
		return __self__.readFile(_pattern);

	@:embedded
	public static function readDir(__self__:T_noSub, _pattern:GoString):{var _0:Slice<stdgo.io.fs.Fs.DirEntry>; var _1:Error;}
		return __self__.readDir(_pattern);

	@:embedded
	public static function open(__self__:T_noSub, _pattern:GoString):{var _0:stdgo.io.fs.Fs.File; var _1:Error;}
		return __self__.open(_pattern);

	@:embedded
	public static function glob(__self__:T_noSub, _pattern:GoString):{var _0:Slice<GoString>; var _1:Error;}
		return __self__.glob(_pattern);
}

private class T_mapFileInfo_asInterface {
	@:keep
	public function info():{var _0:stdgo.io.fs.Fs.FileInfo; var _1:Error;}
		return __self__.value.info();

	@:keep
	public function sys():AnyInterface
		return __self__.value.sys();

	@:keep
	public function isDir():Bool
		return __self__.value.isDir();

	@:keep
	public function modTime():stdgo.time.Time.Time
		return __self__.value.modTime();

	@:keep
	public function type():stdgo.io.fs.Fs.FileMode
		return __self__.value.type();

	@:keep
	public function mode():stdgo.io.fs.Fs.FileMode
		return __self__.value.mode();

	@:keep
	public function size():GoInt64
		return __self__.value.size();

	@:keep
	public function name():GoString
		return __self__.value.name();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& stdgo.reflect.Reflect.isReflectTypeRef(__type__)) ? __self__.value : __self__, __type__);

	var __self__:Pointer<T_mapFileInfo>;
	var __type__:stdgo.reflect.Reflect.Type;
}

@:keep @:allow(stdgo.testing.fstest.Fstest.T_mapFileInfo_asInterface) class T_mapFileInfo_static_extension {
	@:keep
	static public function info(_i:Ref<T_mapFileInfo>):{var _0:stdgo.io.fs.Fs.FileInfo; var _1:Error;}
		throw "testing.fstest.info is not yet implemented";

	@:keep
	static public function sys(_i:Ref<T_mapFileInfo>):AnyInterface
		throw "testing.fstest.sys is not yet implemented";

	@:keep
	static public function isDir(_i:Ref<T_mapFileInfo>):Bool
		throw "testing.fstest.isDir is not yet implemented";

	@:keep
	static public function modTime(_i:Ref<T_mapFileInfo>):stdgo.time.Time.Time
		throw "testing.fstest.modTime is not yet implemented";

	@:keep
	static public function type(_i:Ref<T_mapFileInfo>):stdgo.io.fs.Fs.FileMode
		throw "testing.fstest.type is not yet implemented";

	@:keep
	static public function mode(_i:Ref<T_mapFileInfo>):stdgo.io.fs.Fs.FileMode
		throw "testing.fstest.mode is not yet implemented";

	@:keep
	static public function size(_i:Ref<T_mapFileInfo>):GoInt64
		throw "testing.fstest.size is not yet implemented";

	@:keep
	static public function name(_i:Ref<T_mapFileInfo>):GoString
		throw "testing.fstest.name is not yet implemented";
}

private class T_openMapFile_asInterface {
	@:keep
	public function readAt(_b:Slice<GoByte>, _offset:GoInt64):{var _0:GoInt; var _1:Error;}
		return __self__.value.readAt(_b, _offset);

	@:keep
	public function seek(_offset:GoInt64, _whence:GoInt):{var _0:GoInt64; var _1:Error;}
		return __self__.value.seek(_offset, _whence);

	@:keep
	public function read(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(_b);

	@:keep
	public function close():Error
		return __self__.value.close();

	@:keep
	public function stat():{var _0:stdgo.io.fs.Fs.FileInfo; var _1:Error;}
		return __self__.value.stat();

	@:embedded
	public function type():stdgo.io.fs.Fs.FileMode
		return __self__.value.type();

	@:embedded
	public function sys():AnyInterface
		return __self__.value.sys();

	@:embedded
	public function size():GoInt64
		return __self__.value.size();

	@:embedded
	public function name():GoString
		return __self__.value.name();

	@:embedded
	public function mode():stdgo.io.fs.Fs.FileMode
		return __self__.value.mode();

	@:embedded
	public function modTime():stdgo.time.Time.Time
		return __self__.value.modTime();

	@:embedded
	public function isDir():Bool
		return __self__.value.isDir();

	@:embedded
	public function info():{var _0:stdgo.io.fs.Fs.FileInfo; var _1:Error;}
		return __self__.value.info();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& stdgo.reflect.Reflect.isReflectTypeRef(__type__)) ? __self__.value : __self__, __type__);

	var __self__:Pointer<T_openMapFile>;
	var __type__:stdgo.reflect.Reflect.Type;
}

@:keep @:allow(stdgo.testing.fstest.Fstest.T_openMapFile_asInterface) class T_openMapFile_static_extension {
	@:keep
	static public function readAt(_f:Ref<T_openMapFile>, _b:Slice<GoByte>, _offset:GoInt64):{var _0:GoInt; var _1:Error;}
		throw "testing.fstest.readAt is not yet implemented";

	@:keep
	static public function seek(_f:Ref<T_openMapFile>, _offset:GoInt64, _whence:GoInt):{var _0:GoInt64; var _1:Error;}
		throw "testing.fstest.seek is not yet implemented";

	@:keep
	static public function read(_f:Ref<T_openMapFile>, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		throw "testing.fstest.read is not yet implemented";

	@:keep
	static public function close(_f:Ref<T_openMapFile>):Error
		throw "testing.fstest.close is not yet implemented";

	@:keep
	static public function stat(_f:Ref<T_openMapFile>):{var _0:stdgo.io.fs.Fs.FileInfo; var _1:Error;}
		throw "testing.fstest.stat is not yet implemented";

	@:embedded
	public static function type(__self__:T_openMapFile):stdgo.io.fs.Fs.FileMode
		return __self__.type();

	@:embedded
	public static function sys(__self__:T_openMapFile):AnyInterface
		return __self__.sys();

	@:embedded
	public static function size(__self__:T_openMapFile):GoInt64
		return __self__.size();

	@:embedded
	public static function name(__self__:T_openMapFile):GoString
		return __self__.name();

	@:embedded
	public static function mode(__self__:T_openMapFile):stdgo.io.fs.Fs.FileMode
		return __self__.mode();

	@:embedded
	public static function modTime(__self__:T_openMapFile):stdgo.time.Time.Time
		return __self__.modTime();

	@:embedded
	public static function isDir(__self__:T_openMapFile):Bool
		return __self__.isDir();

	@:embedded
	public static function info(__self__:T_openMapFile):{var _0:stdgo.io.fs.Fs.FileInfo; var _1:Error;}
		return __self__.info();
}

private class T_mapDir_asInterface {
	@:keep
	public function readDir(_count:GoInt):{var _0:Slice<stdgo.io.fs.Fs.DirEntry>; var _1:Error;}
		return __self__.value.readDir(_count);

	@:keep
	public function read(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(_b);

	@:keep
	public function close():Error
		return __self__.value.close();

	@:keep
	public function stat():{var _0:stdgo.io.fs.Fs.FileInfo; var _1:Error;}
		return __self__.value.stat();

	@:embedded
	public function type():stdgo.io.fs.Fs.FileMode
		return __self__.value.type();

	@:embedded
	public function sys():AnyInterface
		return __self__.value.sys();

	@:embedded
	public function size():GoInt64
		return __self__.value.size();

	@:embedded
	public function name():GoString
		return __self__.value.name();

	@:embedded
	public function mode():stdgo.io.fs.Fs.FileMode
		return __self__.value.mode();

	@:embedded
	public function modTime():stdgo.time.Time.Time
		return __self__.value.modTime();

	@:embedded
	public function isDir():Bool
		return __self__.value.isDir();

	@:embedded
	public function info():{var _0:stdgo.io.fs.Fs.FileInfo; var _1:Error;}
		return __self__.value.info();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& stdgo.reflect.Reflect.isReflectTypeRef(__type__)) ? __self__.value : __self__, __type__);

	var __self__:Pointer<T_mapDir>;
	var __type__:stdgo.reflect.Reflect.Type;
}

@:keep @:allow(stdgo.testing.fstest.Fstest.T_mapDir_asInterface) class T_mapDir_static_extension {
	@:keep
	static public function readDir(_d:Ref<T_mapDir>, _count:GoInt):{var _0:Slice<stdgo.io.fs.Fs.DirEntry>; var _1:Error;}
		throw "testing.fstest.readDir is not yet implemented";

	@:keep
	static public function read(_d:Ref<T_mapDir>, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		throw "testing.fstest.read is not yet implemented";

	@:keep
	static public function close(_d:Ref<T_mapDir>):Error
		throw "testing.fstest.close is not yet implemented";

	@:keep
	static public function stat(_d:Ref<T_mapDir>):{var _0:stdgo.io.fs.Fs.FileInfo; var _1:Error;}
		throw "testing.fstest.stat is not yet implemented";

	@:embedded
	public static function type(__self__:T_mapDir):stdgo.io.fs.Fs.FileMode
		return __self__.type();

	@:embedded
	public static function sys(__self__:T_mapDir):AnyInterface
		return __self__.sys();

	@:embedded
	public static function size(__self__:T_mapDir):GoInt64
		return __self__.size();

	@:embedded
	public static function name(__self__:T_mapDir):GoString
		return __self__.name();

	@:embedded
	public static function mode(__self__:T_mapDir):stdgo.io.fs.Fs.FileMode
		return __self__.mode();

	@:embedded
	public static function modTime(__self__:T_mapDir):stdgo.time.Time.Time
		return __self__.modTime();

	@:embedded
	public static function isDir(__self__:T_mapDir):Bool
		return __self__.isDir();

	@:embedded
	public static function info(__self__:T_mapDir):{var _0:stdgo.io.fs.Fs.FileInfo; var _1:Error;}
		return __self__.info();
}

private class T_fsTester_asInterface {
	/**
		// checkBadPath checks that various invalid forms of file's name cannot be opened using open.
	**/
	@:keep
	public function _checkBadPath(_file:GoString, _desc:GoString, _open:GoString->Error):Void
		__self__.value._checkBadPath(_file, _desc, _open);

	/**
		// checkBadPath checks that various invalid forms of file's name cannot be opened using t.fsys.Open.
	**/
	@:keep
	public function _checkOpen(_file:GoString):Void
		__self__.value._checkOpen(_file);

	@:keep
	public function _checkFileRead(_file:GoString, _desc:GoString, _data1:Slice<GoByte>, _data2:Slice<GoByte>):Void
		__self__.value._checkFileRead(_file, _desc, _data1, _data2);

	/**
		// checkFile checks that basic file reading works correctly.
	**/
	@:keep
	public function _checkFile(_file:GoString):Void
		__self__.value._checkFile(_file);

	/**
		// checkDirList checks that two directory lists contain the same files and file info.
		// The order of the lists need not match.
	**/
	@:keep
	public function _checkDirList(_dir:GoString, _desc:GoString, _list1:Slice<stdgo.io.fs.Fs.DirEntry>, _list2:Slice<stdgo.io.fs.Fs.DirEntry>):Void
		__self__.value._checkDirList(_dir, _desc, _list1, _list2);

	/**
		// checkStat checks that a direct stat of path matches entry,
		// which was found in the parent's directory listing.
	**/
	@:keep
	public function _checkStat(_path:GoString, _entry:stdgo.io.fs.Fs.DirEntry):Void
		__self__.value._checkStat(_path, _entry);

	/**
		// checkGlob checks that various glob patterns work if the file system implements GlobFS.
	**/
	@:keep
	public function _checkGlob(_dir:GoString, _list:Slice<stdgo.io.fs.Fs.DirEntry>):Void
		__self__.value._checkGlob(_dir, _list);

	/**
		// checkDir checks the directory dir, which is expected to exist
		// (it is either the root or was found in a directory listing with IsDir true).
	**/
	@:keep
	public function _checkDir(_dir:GoString):Void
		__self__.value._checkDir(_dir);

	@:keep
	public function _openDir(_dir:GoString):stdgo.io.fs.Fs.ReadDirFile
		return __self__.value._openDir(_dir);

	/**
		// errorf adds an error line to errText.
	**/
	@:keep
	public function _errorf(_format:GoString, _args:haxe.Rest<AnyInterface>):Void
		__self__.value._errorf(_format, ..._args);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& stdgo.reflect.Reflect.isReflectTypeRef(__type__)) ? __self__.value : __self__, __type__);

	var __self__:Pointer<T_fsTester>;
	var __type__:stdgo.reflect.Reflect.Type;
}

@:keep @:allow(stdgo.testing.fstest.Fstest.T_fsTester_asInterface) class T_fsTester_static_extension {
	/**
		// checkBadPath checks that various invalid forms of file's name cannot be opened using open.
	**/
	@:keep
	static public function _checkBadPath(_t:Ref<T_fsTester>, _file:GoString, _desc:GoString, _open:GoString->Error):Void
		throw "testing.fstest._checkBadPath is not yet implemented";

	/**
		// checkBadPath checks that various invalid forms of file's name cannot be opened using t.fsys.Open.
	**/
	@:keep
	static public function _checkOpen(_t:Ref<T_fsTester>, _file:GoString):Void
		throw "testing.fstest._checkOpen is not yet implemented";

	@:keep
	static public function _checkFileRead(_t:Ref<T_fsTester>, _file:GoString, _desc:GoString, _data1:Slice<GoByte>, _data2:Slice<GoByte>):Void
		throw "testing.fstest._checkFileRead is not yet implemented";

	/**
		// checkFile checks that basic file reading works correctly.
	**/
	@:keep
	static public function _checkFile(_t:Ref<T_fsTester>, _file:GoString):Void
		throw "testing.fstest._checkFile is not yet implemented";

	/**
		// checkDirList checks that two directory lists contain the same files and file info.
		// The order of the lists need not match.
	**/
	@:keep
	static public function _checkDirList(_t:Ref<T_fsTester>, _dir:GoString, _desc:GoString, _list1:Slice<stdgo.io.fs.Fs.DirEntry>,
			_list2:Slice<stdgo.io.fs.Fs.DirEntry>):Void
		throw "testing.fstest._checkDirList is not yet implemented";

	/**
		// checkStat checks that a direct stat of path matches entry,
		// which was found in the parent's directory listing.
	**/
	@:keep
	static public function _checkStat(_t:Ref<T_fsTester>, _path:GoString, _entry:stdgo.io.fs.Fs.DirEntry):Void
		throw "testing.fstest._checkStat is not yet implemented";

	/**
		// checkGlob checks that various glob patterns work if the file system implements GlobFS.
	**/
	@:keep
	static public function _checkGlob(_t:Ref<T_fsTester>, _dir:GoString, _list:Slice<stdgo.io.fs.Fs.DirEntry>):Void
		throw "testing.fstest._checkGlob is not yet implemented";

	/**
		// checkDir checks the directory dir, which is expected to exist
		// (it is either the root or was found in a directory listing with IsDir true).
	**/
	@:keep
	static public function _checkDir(_t:Ref<T_fsTester>, _dir:GoString):Void
		throw "testing.fstest._checkDir is not yet implemented";

	@:keep
	static public function _openDir(_t:Ref<T_fsTester>, _dir:GoString):stdgo.io.fs.Fs.ReadDirFile
		throw "testing.fstest._openDir is not yet implemented";

	/**
		// errorf adds an error line to errText.
	**/
	@:keep
	static public function _errorf(_t:Ref<T_fsTester>, _format:GoString, _args:haxe.Rest<AnyInterface>):Void
		throw "testing.fstest._errorf is not yet implemented";
}

class MapFS_asInterface {
	@:keep
	public function sub(_dir:GoString):{var _0:stdgo.io.fs.Fs.FS; var _1:Error;}
		return __self__.value.sub(_dir);

	@:keep
	public function glob(_pattern:GoString):{var _0:Slice<GoString>; var _1:Error;}
		return __self__.value.glob(_pattern);

	@:keep
	public function readDir(_name:GoString):{var _0:Slice<stdgo.io.fs.Fs.DirEntry>; var _1:Error;}
		return __self__.value.readDir(_name);

	@:keep
	public function stat(_name:GoString):{var _0:stdgo.io.fs.Fs.FileInfo; var _1:Error;}
		return __self__.value.stat(_name);

	@:keep
	public function readFile(_name:GoString):{var _0:Slice<GoByte>; var _1:Error;}
		return __self__.value.readFile(_name);

	/**
		// Open opens the named file.
	**/
	@:keep
	public function open(_name:GoString):{var _0:stdgo.io.fs.Fs.File; var _1:Error;}
		return __self__.value.open(_name);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& stdgo.reflect.Reflect.isReflectTypeRef(__type__)) ? __self__.value : __self__, __type__);

	var __self__:Pointer<MapFS>;
	var __type__:stdgo.reflect.Reflect.Type;
}

@:keep @:allow(stdgo.testing.fstest.Fstest.MapFS_asInterface) class MapFS_static_extension {
	@:keep
	static public function sub(_fsys:MapFS, _dir:GoString):{var _0:stdgo.io.fs.Fs.FS; var _1:Error;}
		throw "testing.fstest.sub is not yet implemented";

	@:keep
	static public function glob(_fsys:MapFS, _pattern:GoString):{var _0:Slice<GoString>; var _1:Error;}
		throw "testing.fstest.glob is not yet implemented";

	@:keep
	static public function readDir(_fsys:MapFS, _name:GoString):{var _0:Slice<stdgo.io.fs.Fs.DirEntry>; var _1:Error;}
		throw "testing.fstest.readDir is not yet implemented";

	@:keep
	static public function stat(_fsys:MapFS, _name:GoString):{var _0:stdgo.io.fs.Fs.FileInfo; var _1:Error;}
		throw "testing.fstest.stat is not yet implemented";

	@:keep
	static public function readFile(_fsys:MapFS, _name:GoString):{var _0:Slice<GoByte>; var _1:Error;}
		throw "testing.fstest.readFile is not yet implemented";

	/**
		// Open opens the named file.
	**/
	@:keep
	static public function open(_fsys:MapFS, _name:GoString):{var _0:stdgo.io.fs.Fs.File; var _1:Error;}
		throw "testing.fstest.open is not yet implemented";
}
