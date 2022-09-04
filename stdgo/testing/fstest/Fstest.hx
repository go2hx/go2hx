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

var _2:stdgo.io.fs.Fs.FS = (null : stdgo.io.fs.Fs.FS);
var _3:stdgo.io.fs.Fs.File = (null : stdgo.io.fs.Fs.File);

/**
	// Package fstest implements support for testing implementations and users of file systems.
**/
private var __go2hxdoc__package:Bool;

@:structInit class MapFile {
	public var data:Slice<GoUInt8> = (null : Slice<GoUInt8>);
	public var mode:stdgo.io.fs.Fs.FileMode = ((0 : GoUInt32) : stdgo.io.fs.Fs.FileMode);
	public var modTime:stdgo.time.Time.Time = ({} : stdgo.time.Time.Time);
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

@:structInit @:using(stdgo.testing.fstest.Fstest.T_fsOnly_static_extension) private class T_fsOnly {
	@:embedded
	public var fs:stdgo.io.fs.Fs.FS = (null : stdgo.io.fs.Fs.FS);

	public function new(?fs:stdgo.io.fs.Fs.FS) {
		if (fs != null)
			this.fs = fs;
	}

	@:embedded
	public function open(_pattern:GoString):{var _0:stdgo.io.fs.Fs.File; var _1:stdgo.Error;}
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
	public function glob(_pattern:GoString):{var _0:Slice<GoString>; var _1:stdgo.Error;}
		return null;

	@:embedded
	public function open(_pattern:GoString):{var _0:stdgo.io.fs.Fs.File; var _1:stdgo.Error;}
		return null;

	@:embedded
	public function readDir(_pattern:GoString):{var _0:Slice<stdgo.io.fs.Fs.DirEntry>; var _1:stdgo.Error;}
		return null;

	@:embedded
	public function readFile(_pattern:GoString):{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
		return null;

	@:embedded
	public function stat(_pattern:GoString):{var _0:stdgo.io.fs.Fs.FileInfo; var _1:stdgo.Error;}
		return null;

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_noSub(mapFS);
	}
}

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
	public function info():{var _0:stdgo.io.fs.Fs.FileInfo; var _1:stdgo.Error;}
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
	public function info():{var _0:stdgo.io.fs.Fs.FileInfo; var _1:stdgo.Error;}
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

@:named @:using(stdgo.testing.fstest.Fstest.MapFS_static_extension) typedef MapFS = GoMap<GoString, Ref<MapFile>>;

function testMapFS(_t:stdgo.testing.Testing.T):Void
	throw "testing.fstest.testMapFS is not yet implemented";

function testMapFSChmodDot(_t:stdgo.testing.Testing.T):Void
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

function testSymlink(_t:stdgo.testing.Testing.T):Void
	throw "testing.fstest.testSymlink is not yet implemented";

function testDash(_t:stdgo.testing.Testing.T):Void
	throw "testing.fstest.testDash is not yet implemented";

@:keep private class T_fsOnly_static_extension {
	@:embedded
	public static function open(__self__:T_fsOnly, _pattern:GoString):{var _0:stdgo.io.fs.Fs.File; var _1:stdgo.Error;}
		return __self__.open(_pattern);
}

class T_fsOnly_asInterface {
	@:embedded
	public var open:GoString -> {
		var _0:stdgo.io.fs.Fs.File;
		var _1:stdgo.Error;
	} = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_fsOnly;
}

@:keep private class T_noSub_static_extension {
	@:keep
	static public function sub(_:T_noSub):Void
		throw "testing.fstest.sub is not yet implemented";

	@:embedded
	public static function stat(__self__:T_noSub, _pattern:GoString):{var _0:stdgo.io.fs.Fs.FileInfo; var _1:stdgo.Error;}
		return __self__.stat(_pattern);

	@:embedded
	public static function readFile(__self__:T_noSub, _pattern:GoString):{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
		return __self__.readFile(_pattern);

	@:embedded
	public static function readDir(__self__:T_noSub, _pattern:GoString):{var _0:Slice<stdgo.io.fs.Fs.DirEntry>; var _1:stdgo.Error;}
		return __self__.readDir(_pattern);

	@:embedded
	public static function open(__self__:T_noSub, _pattern:GoString):{var _0:stdgo.io.fs.Fs.File; var _1:stdgo.Error;}
		return __self__.open(_pattern);

	@:embedded
	public static function glob(__self__:T_noSub, _pattern:GoString):{var _0:Slice<GoString>; var _1:stdgo.Error;}
		return __self__.glob(_pattern);
}

class T_noSub_asInterface {
	@:keep
	public var sub:() -> Void = null;
	@:embedded
	public var stat:GoString -> {
		var _0:stdgo.io.fs.Fs.FileInfo;
		var _1:stdgo.Error;
	} = null;
	@:embedded
	public var readFile:GoString -> {
		var _0:Slice<GoUInt8>;
		var _1:stdgo.Error;
	} = null;
	@:embedded
	public var readDir:GoString -> {
		var _0:Slice<stdgo.io.fs.Fs.DirEntry>;
		var _1:stdgo.Error;
	} = null;
	@:embedded
	public var open:GoString -> {
		var _0:stdgo.io.fs.Fs.File;
		var _1:stdgo.Error;
	} = null;
	@:embedded
	public var glob:GoString -> {
		var _0:Slice<GoString>;
		var _1:stdgo.Error;
	} = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_noSub;
}

@:keep private class T_mapFileInfo_static_extension {
	@:keep
	static public function info(_i:T_mapFileInfo):{var _0:stdgo.io.fs.Fs.FileInfo; var _1:Error;}
		throw "testing.fstest.info is not yet implemented";

	@:keep
	static public function sys(_i:T_mapFileInfo):AnyInterface
		throw "testing.fstest.sys is not yet implemented";

	@:keep
	static public function isDir(_i:T_mapFileInfo):Bool
		throw "testing.fstest.isDir is not yet implemented";

	@:keep
	static public function modTime(_i:T_mapFileInfo):stdgo.time.Time.Time
		throw "testing.fstest.modTime is not yet implemented";

	@:keep
	static public function type(_i:T_mapFileInfo):stdgo.io.fs.Fs.FileMode
		throw "testing.fstest.type is not yet implemented";

	@:keep
	static public function mode(_i:T_mapFileInfo):stdgo.io.fs.Fs.FileMode
		throw "testing.fstest.mode is not yet implemented";

	@:keep
	static public function size(_i:T_mapFileInfo):GoInt64
		throw "testing.fstest.size is not yet implemented";

	@:keep
	static public function name(_i:T_mapFileInfo):GoString
		throw "testing.fstest.name is not yet implemented";
}

class T_mapFileInfo_asInterface {
	@:keep
	public var info:() -> {
		var _0:stdgo.io.fs.Fs.FileInfo;
		var _1:Error;
	} = null;
	@:keep
	public var sys:() -> AnyInterface = null;
	@:keep
	public var isDir:() -> Bool = null;
	@:keep
	public var modTime:() -> stdgo.time.Time.Time = null;
	@:keep
	public var type:() -> stdgo.io.fs.Fs.FileMode = null;
	@:keep
	public var mode:() -> stdgo.io.fs.Fs.FileMode = null;
	@:keep
	public var size:() -> GoInt64 = null;
	@:keep
	public var name:() -> GoString = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_mapFileInfo;
}

@:keep private class T_openMapFile_static_extension {
	@:keep
	static public function readAt(_f:T_openMapFile, _b:Slice<GoByte>, _offset:GoInt64):{var _0:GoInt; var _1:Error;}
		throw "testing.fstest.readAt is not yet implemented";

	@:keep
	static public function seek(_f:T_openMapFile, _offset:GoInt64, _whence:GoInt):{var _0:GoInt64; var _1:Error;}
		throw "testing.fstest.seek is not yet implemented";

	@:keep
	static public function read(_f:T_openMapFile, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		throw "testing.fstest.read is not yet implemented";

	@:keep
	static public function close(_f:T_openMapFile):Error
		throw "testing.fstest.close is not yet implemented";

	@:keep
	static public function stat(_f:T_openMapFile):{var _0:stdgo.io.fs.Fs.FileInfo; var _1:Error;}
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
	public static function info(__self__:T_openMapFile):{var _0:stdgo.io.fs.Fs.FileInfo; var _1:stdgo.Error;}
		return __self__.info();
}

class T_openMapFile_asInterface {
	@:keep
	public var readAt:(Slice<GoByte>, GoInt64) -> {
		var _0:GoInt;
		var _1:Error;
	} = null;
	@:keep
	public var seek:(GoInt64, GoInt) -> {
		var _0:GoInt64;
		var _1:Error;
	} = null;
	@:keep
	public var read:Slice<GoByte> -> {
		var _0:GoInt;
		var _1:Error;
	} = null;
	@:keep
	public var close:() -> Error = null;
	@:keep
	public var stat:() -> {
		var _0:stdgo.io.fs.Fs.FileInfo;
		var _1:Error;
	} = null;
	@:embedded
	public var type:() -> stdgo.io.fs.Fs.FileMode = null;
	@:embedded
	public var sys:() -> AnyInterface = null;
	@:embedded
	public var size:() -> GoInt64 = null;
	@:embedded
	public var name:() -> GoString = null;
	@:embedded
	public var mode:() -> stdgo.io.fs.Fs.FileMode = null;
	@:embedded
	public var modTime:() -> stdgo.time.Time.Time = null;
	@:embedded
	public var isDir:() -> Bool = null;
	@:embedded
	public var info:() -> {
		var _0:stdgo.io.fs.Fs.FileInfo;
		var _1:stdgo.Error;
	} = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_openMapFile;
}

@:keep private class T_mapDir_static_extension {
	@:keep
	static public function readDir(_d:T_mapDir, _count:GoInt):{var _0:Slice<stdgo.io.fs.Fs.DirEntry>; var _1:Error;}
		throw "testing.fstest.readDir is not yet implemented";

	@:keep
	static public function read(_d:T_mapDir, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		throw "testing.fstest.read is not yet implemented";

	@:keep
	static public function close(_d:T_mapDir):Error
		throw "testing.fstest.close is not yet implemented";

	@:keep
	static public function stat(_d:T_mapDir):{var _0:stdgo.io.fs.Fs.FileInfo; var _1:Error;}
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
	public static function info(__self__:T_mapDir):{var _0:stdgo.io.fs.Fs.FileInfo; var _1:stdgo.Error;}
		return __self__.info();
}

class T_mapDir_asInterface {
	@:keep
	public var readDir:GoInt -> {
		var _0:Slice<stdgo.io.fs.Fs.DirEntry>;
		var _1:Error;
	} = null;
	@:keep
	public var read:Slice<GoByte> -> {
		var _0:GoInt;
		var _1:Error;
	} = null;
	@:keep
	public var close:() -> Error = null;
	@:keep
	public var stat:() -> {
		var _0:stdgo.io.fs.Fs.FileInfo;
		var _1:Error;
	} = null;
	@:embedded
	public var type:() -> stdgo.io.fs.Fs.FileMode = null;
	@:embedded
	public var sys:() -> AnyInterface = null;
	@:embedded
	public var size:() -> GoInt64 = null;
	@:embedded
	public var name:() -> GoString = null;
	@:embedded
	public var mode:() -> stdgo.io.fs.Fs.FileMode = null;
	@:embedded
	public var modTime:() -> stdgo.time.Time.Time = null;
	@:embedded
	public var isDir:() -> Bool = null;
	@:embedded
	public var info:() -> {
		var _0:stdgo.io.fs.Fs.FileInfo;
		var _1:stdgo.Error;
	} = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_mapDir;
}

@:keep private class T_fsTester_static_extension {
	/**
		// checkBadPath checks that various invalid forms of file's name cannot be opened using open.
	**/
	@:keep
	static public function _checkBadPath(_t:T_fsTester, _file:GoString, _desc:GoString, _open:GoString->Error):Void
		throw "testing.fstest._checkBadPath is not yet implemented";

	/**
		// checkBadPath checks that various invalid forms of file's name cannot be opened using t.fsys.Open.
	**/
	@:keep
	static public function _checkOpen(_t:T_fsTester, _file:GoString):Void
		throw "testing.fstest._checkOpen is not yet implemented";

	@:keep
	static public function _checkFileRead(_t:T_fsTester, _file:GoString, _desc:GoString, _data1:Slice<GoByte>, _data2:Slice<GoByte>):Void
		throw "testing.fstest._checkFileRead is not yet implemented";

	/**
		// checkFile checks that basic file reading works correctly.
	**/
	@:keep
	static public function _checkFile(_t:T_fsTester, _file:GoString):Void
		throw "testing.fstest._checkFile is not yet implemented";

	/**
		// checkDirList checks that two directory lists contain the same files and file info.
		// The order of the lists need not match.
	**/
	@:keep
	static public function _checkDirList(_t:T_fsTester, _dir:GoString, _desc:GoString, _list1:Slice<stdgo.io.fs.Fs.DirEntry>,
			_list2:Slice<stdgo.io.fs.Fs.DirEntry>):Void
		throw "testing.fstest._checkDirList is not yet implemented";

	/**
		// checkStat checks that a direct stat of path matches entry,
		// which was found in the parent's directory listing.
	**/
	@:keep
	static public function _checkStat(_t:T_fsTester, _path:GoString, _entry:stdgo.io.fs.Fs.DirEntry):Void
		throw "testing.fstest._checkStat is not yet implemented";

	/**
		// checkGlob checks that various glob patterns work if the file system implements GlobFS.
	**/
	@:keep
	static public function _checkGlob(_t:T_fsTester, _dir:GoString, _list:Slice<stdgo.io.fs.Fs.DirEntry>):Void
		throw "testing.fstest._checkGlob is not yet implemented";

	/**
		// checkDir checks the directory dir, which is expected to exist
		// (it is either the root or was found in a directory listing with IsDir true).
	**/
	@:keep
	static public function _checkDir(_t:T_fsTester, _dir:GoString):Void
		throw "testing.fstest._checkDir is not yet implemented";

	@:keep
	static public function _openDir(_t:T_fsTester, _dir:GoString):stdgo.io.fs.Fs.ReadDirFile
		throw "testing.fstest._openDir is not yet implemented";

	/**
		// errorf adds an error line to errText.
	**/
	@:keep
	static public function _errorf(_t:T_fsTester, _format:GoString, _args:haxe.Rest<AnyInterface>):Void
		throw "testing.fstest._errorf is not yet implemented";
}

class T_fsTester_asInterface {
	/**
		// checkBadPath checks that various invalid forms of file's name cannot be opened using open.
	**/
	@:keep
	public var _checkBadPath:(GoString, GoString, GoString->Error) -> Void = null;

	/**
		// checkBadPath checks that various invalid forms of file's name cannot be opened using t.fsys.Open.
	**/
	@:keep
	public var _checkOpen:GoString->Void = null;

	@:keep
	public var _checkFileRead:(GoString, GoString, Slice<GoByte>, Slice<GoByte>) -> Void = null;

	/**
		// checkFile checks that basic file reading works correctly.
	**/
	@:keep
	public var _checkFile:GoString->Void = null;

	/**
		// checkDirList checks that two directory lists contain the same files and file info.
		// The order of the lists need not match.
	**/
	@:keep
	public var _checkDirList:(GoString, GoString, Slice<stdgo.io.fs.Fs.DirEntry>, Slice<stdgo.io.fs.Fs.DirEntry>) -> Void = null;

	/**
		// checkStat checks that a direct stat of path matches entry,
		// which was found in the parent's directory listing.
	**/
	@:keep
	public var _checkStat:(GoString, stdgo.io.fs.Fs.DirEntry) -> Void = null;

	/**
		// checkGlob checks that various glob patterns work if the file system implements GlobFS.
	**/
	@:keep
	public var _checkGlob:(GoString, Slice<stdgo.io.fs.Fs.DirEntry>) -> Void = null;

	/**
		// checkDir checks the directory dir, which is expected to exist
		// (it is either the root or was found in a directory listing with IsDir true).
	**/
	@:keep
	public var _checkDir:GoString->Void = null;

	@:keep
	public var _openDir:GoString->stdgo.io.fs.Fs.ReadDirFile = null;

	/**
		// errorf adds an error line to errText.
	**/
	@:keep
	public var _errorf:(GoString, haxe.Rest<AnyInterface>) -> Void = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_fsTester;
}

@:keep private class MapFS_static_extension {
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

class MapFS_asInterface {
	@:keep
	public var sub:GoString -> {
		var _0:stdgo.io.fs.Fs.FS;
		var _1:Error;
	} = null;
	@:keep
	public var glob:GoString -> {
		var _0:Slice<GoString>;
		var _1:Error;
	} = null;
	@:keep
	public var readDir:GoString -> {
		var _0:Slice<stdgo.io.fs.Fs.DirEntry>;
		var _1:Error;
	} = null;
	@:keep
	public var stat:GoString -> {
		var _0:stdgo.io.fs.Fs.FileInfo;
		var _1:Error;
	} = null;
	@:keep
	public var readFile:GoString -> {
		var _0:Slice<GoByte>;
		var _1:Error;
	} = null;

	/**
		// Open opens the named file.
	**/
	@:keep
	public var open:GoString -> {
		var _0:stdgo.io.fs.Fs.File;
		var _1:Error;
	} = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:MapFS;
}
