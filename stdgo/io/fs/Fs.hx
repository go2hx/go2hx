package stdgo.io.fs;

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
	// Package fs defines basic interfaces to a file system.
	// A file system can be provided by the host operating system
	// but also by other packages.
**/
private var __go2hxdoc__package:Bool;

/**
	// "invalid argument"// Generic file system errors.
	// Errors returned by file systems can be tested against these errors
	// using errors.Is.
**/
var errInvalid:stdgo.Error = _errInvalid();

/**
	// "permission denied"// Generic file system errors.
	// Errors returned by file systems can be tested against these errors
	// using errors.Is.
**/
var errPermission:stdgo.Error = _errPermission();

/**
	// "file already exists"// Generic file system errors.
	// Errors returned by file systems can be tested against these errors
	// using errors.Is.
**/
var errExist:stdgo.Error = _errExist();

/**
	// "file does not exist"// Generic file system errors.
	// Errors returned by file systems can be tested against these errors
	// using errors.Is.
**/
var errNotExist:stdgo.Error = _errNotExist();

/**
	// "file already closed"// Generic file system errors.
	// Errors returned by file systems can be tested against these errors
	// using errors.Is.
**/
var errClosed:stdgo.Error = _errClosed();

/**
	// SkipDir is used as a return value from WalkDirFuncs to indicate that
	// the directory named in the call is to be skipped. It is not returned
	// as an error by any function.
**/
var skipDir:stdgo.Error = stdgo.errors.Errors.new_((Go.str("skip this directory") : GoString));

/**
	// d: is a directory// The single letters are the abbreviations
	// used by the String method's formatting.
**/
final modeDir:FileMode = (524288 : FileMode);

/**
	// a: append-only// The defined file mode bits are the most significant bits of the FileMode.
	// The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
	// The values of these bits should be considered part of the public API and
	// may be used in wire protocols or disk representations: they must not be
	// changed, although new bits might be added.
**/
final modeAppend:FileMode = (524288 : FileMode);

/**
	// l: exclusive use// The defined file mode bits are the most significant bits of the FileMode.
	// The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
	// The values of these bits should be considered part of the public API and
	// may be used in wire protocols or disk representations: they must not be
	// changed, although new bits might be added.
**/
final modeExclusive:FileMode = (524288 : FileMode);

/**
	// T: temporary file; Plan 9 only// The defined file mode bits are the most significant bits of the FileMode.
	// The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
	// The values of these bits should be considered part of the public API and
	// may be used in wire protocols or disk representations: they must not be
	// changed, although new bits might be added.
**/
final modeTemporary:FileMode = (524288 : FileMode);

/**
	// L: symbolic link// The defined file mode bits are the most significant bits of the FileMode.
	// The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
	// The values of these bits should be considered part of the public API and
	// may be used in wire protocols or disk representations: they must not be
	// changed, although new bits might be added.
**/
final modeSymlink:FileMode = (524288 : FileMode);

/**
	// D: device file// The defined file mode bits are the most significant bits of the FileMode.
	// The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
	// The values of these bits should be considered part of the public API and
	// may be used in wire protocols or disk representations: they must not be
	// changed, although new bits might be added.
**/
final modeDevice:FileMode = (524288 : FileMode);

/**
	// p: named pipe (FIFO)// The defined file mode bits are the most significant bits of the FileMode.
	// The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
	// The values of these bits should be considered part of the public API and
	// may be used in wire protocols or disk representations: they must not be
	// changed, although new bits might be added.
**/
final modeNamedPipe:FileMode = (524288 : FileMode);

/**
	// S: Unix domain socket// The defined file mode bits are the most significant bits of the FileMode.
	// The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
	// The values of these bits should be considered part of the public API and
	// may be used in wire protocols or disk representations: they must not be
	// changed, although new bits might be added.
**/
final modeSocket:FileMode = (524288 : FileMode);

/**
	// u: setuid// The defined file mode bits are the most significant bits of the FileMode.
	// The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
	// The values of these bits should be considered part of the public API and
	// may be used in wire protocols or disk representations: they must not be
	// changed, although new bits might be added.
**/
final modeSetuid:FileMode = (524288 : FileMode);

/**
	// g: setgid// The defined file mode bits are the most significant bits of the FileMode.
	// The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
	// The values of these bits should be considered part of the public API and
	// may be used in wire protocols or disk representations: they must not be
	// changed, although new bits might be added.
**/
final modeSetgid:FileMode = (524288 : FileMode);

/**
	// c: Unix character device, when ModeDevice is set// The defined file mode bits are the most significant bits of the FileMode.
	// The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
	// The values of these bits should be considered part of the public API and
	// may be used in wire protocols or disk representations: they must not be
	// changed, although new bits might be added.
**/
final modeCharDevice:FileMode = (524288 : FileMode);

/**
	// t: sticky// The defined file mode bits are the most significant bits of the FileMode.
	// The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
	// The values of these bits should be considered part of the public API and
	// may be used in wire protocols or disk representations: they must not be
	// changed, although new bits might be added.
**/
final modeSticky:FileMode = (524288 : FileMode);

/**
	// ?: non-regular file; nothing else is known about this file// The defined file mode bits are the most significant bits of the FileMode.
	// The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
	// The values of these bits should be considered part of the public API and
	// may be used in wire protocols or disk representations: they must not be
	// changed, although new bits might be added.
**/
final modeIrregular:FileMode = (524288 : FileMode);

/**
	// Mask for the type bits. For regular files, none will be set.
**/
final modeType:FileMode = ("2401763328" : FileMode);

/**
	// Unix permission bits// The defined file mode bits are the most significant bits of the FileMode.
	// The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
	// The values of these bits should be considered part of the public API and
	// may be used in wire protocols or disk representations: they must not be
	// changed, although new bits might be added.
**/
final modePerm:FileMode = (511 : FileMode);

/**
	// An FS provides access to a hierarchical file system.
	//
	// The FS interface is the minimum implementation required of the file system.
	// A file system may implement additional interfaces,
	// such as ReadFileFS, to provide additional or optimized functionality.
**/
typedef FS = StructType & {
	/**
		// Open opens the named file.
		//
		// When Open returns an error, it should be of type *PathError
		// with the Op field set to "open", the Path field set to name,
		// and the Err field describing the problem.
		//
		// Open should reject attempts to open names that do not satisfy
		// ValidPath(name), returning a *PathError with Err set to
		// ErrInvalid or ErrNotExist.
	**/
	public function open(_name:GoString):{var _0:File; var _1:Error;};
};

/**
	// A File provides access to a single file.
	// The File interface is the minimum implementation required of the file.
	// Directory files should also implement ReadDirFile.
	// A file may implement io.ReaderAt or io.Seeker as optimizations.
**/
typedef File = StructType & {
	public function stat():{var _0:FileInfo; var _1:Error;};
	public function read(_0:Slice<GoByte>):{var _0:GoInt; var _1:Error;};
	public function close():Error;
};

/**
	// A DirEntry is an entry read from a directory
	// (using the ReadDir function or a ReadDirFile's ReadDir method).
**/
typedef DirEntry = StructType & {
	/**
		// Name returns the name of the file (or subdirectory) described by the entry.
		// This name is only the final element of the path (the base name), not the entire path.
		// For example, Name would return "hello.go" not "home/gopher/hello.go".
	**/
	public function name():GoString;

	/**
		// IsDir reports whether the entry describes a directory.
	**/
	public function isDir():Bool;

	/**
		// Type returns the type bits for the entry.
		// The type bits are a subset of the usual FileMode bits, those returned by the FileMode.Type method.
	**/
	public function type():FileMode;

	/**
		// Info returns the FileInfo for the file or subdirectory described by the entry.
		// The returned FileInfo may be from the time of the original directory read
		// or from the time of the call to Info. If the file has been removed or renamed
		// since the directory read, Info may return an error satisfying errors.Is(err, ErrNotExist).
		// If the entry denotes a symbolic link, Info reports the information about the link itself,
		// not the link's target.
	**/
	public function info():{var _0:FileInfo; var _1:Error;};
};

/**
	// A ReadDirFile is a directory file whose entries can be read with the ReadDir method.
	// Every directory file should implement this interface.
	// (It is permissible for any file to implement this interface,
	// but if so ReadDir should return an error for non-directories.)
**/
typedef ReadDirFile = StructType & {
	> File,

	/**
		// ReadDir reads the contents of the directory and returns
		// a slice of up to n DirEntry values in directory order.
		// Subsequent calls on the same file will yield further DirEntry values.
		//
		// If n > 0, ReadDir returns at most n DirEntry structures.
		// In this case, if ReadDir returns an empty slice, it will return
		// a non-nil error explaining why.
		// At the end of a directory, the error is io.EOF.
		// (ReadDir must return io.EOF itself, not an error wrapping io.EOF.)
		//
		// If n <= 0, ReadDir returns all the DirEntry values from the directory
		// in a single slice. In this case, if ReadDir succeeds (reads all the way
		// to the end of the directory), it returns the slice and a nil error.
		// If it encounters an error before the end of the directory,
		// ReadDir returns the DirEntry list read until that point and a non-nil error.
	**/
	public function readDir(_n:GoInt):{var _0:Slice<DirEntry>; var _1:Error;};
};

/**
	// A FileInfo describes a file and is returned by Stat.
**/
typedef FileInfo = StructType & {
	/**
		// base name of the file
	**/
	public function name():GoString;

	/**
		// length in bytes for regular files; system-dependent for others
	**/
	public function size():GoInt64;

	/**
		// file mode bits
	**/
	public function mode():FileMode;

	/**
		// modification time
	**/
	public function modTime():stdgo.time.Time.Time;

	/**
		// abbreviation for Mode().IsDir()
	**/
	public function isDir():Bool;

	/**
		// underlying data source (can return nil)
	**/
	public function sys():AnyInterface;
};

/**
	// A GlobFS is a file system with a Glob method.
**/
typedef GlobFS = StructType & {
	> FS,

	/**
		// Glob returns the names of all files matching pattern,
		// providing an implementation of the top-level
		// Glob function.
	**/
	public function glob(_pattern:GoString):{var _0:Slice<GoString>; var _1:Error;};
};

/**
	// ReadDirFS is the interface implemented by a file system
	// that provides an optimized implementation of ReadDir.
**/
typedef ReadDirFS = StructType & {
	> FS,

	/**
		// ReadDir reads the named directory
		// and returns a list of directory entries sorted by filename.
	**/
	public function readDir(_name:GoString):{var _0:Slice<DirEntry>; var _1:Error;};
};

/**
	// ReadFileFS is the interface implemented by a file system
	// that provides an optimized implementation of ReadFile.
**/
typedef ReadFileFS = StructType & {
	> FS,

	/**
		// ReadFile reads the named file and returns its contents.
		// A successful call returns a nil error, not io.EOF.
		// (Because ReadFile reads the whole file, the expected EOF
		// from the final Read is not treated as an error to be reported.)
		//
		// The caller is permitted to modify the returned byte slice.
		// This method should return a copy of the underlying data.
	**/
	public function readFile(_name:GoString):{var _0:Slice<GoByte>; var _1:Error;};
};

/**
	// A StatFS is a file system with a Stat method.
**/
typedef StatFS = StructType & {
	> FS,

	/**
		// Stat returns a FileInfo describing the file.
		// If there is an error, it should be of type *PathError.
	**/
	public function stat(_name:GoString):{var _0:FileInfo; var _1:Error;};
};

/**
	// A SubFS is a file system with a Sub method.
**/
typedef SubFS = StructType & {
	> FS,

	/**
		// Sub returns an FS corresponding to the subtree rooted at dir.
	**/
	public function sub(_dir:GoString):{var _0:FS; var _1:Error;};
};

@:local private typedef T__interface_0 = StructType & {
	public function timeout():Bool;
};

/**
	// PathError records an error and the operation and file path that caused it.
**/
@:structInit @:using(stdgo.io.fs.Fs.PathError_static_extension) class PathError {
	public var op:GoString = "";
	public var path:GoString = "";
	public var err:stdgo.Error = (null : stdgo.Error);

	public function new(?op:GoString, ?path:GoString, ?err:stdgo.Error) {
		if (op != null)
			this.op = op;
		if (path != null)
			this.path = path;
		if (err != null)
			this.err = err;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new PathError(op, path, err);
	}
}

/**
	// dirInfo is a DirEntry based on a FileInfo.
**/
@:structInit @:using(stdgo.io.fs.Fs.T_dirInfo_static_extension) private class T_dirInfo {
	public var _fileInfo:FileInfo = (null : FileInfo);

	public function new(?_fileInfo:FileInfo) {
		if (_fileInfo != null)
			this._fileInfo = _fileInfo;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_dirInfo(_fileInfo);
	}
}

@:structInit @:using(stdgo.io.fs.Fs.T_subFS_static_extension) private class T_subFS {
	public var _fsys:FS = (null : FS);
	public var _dir:GoString = "";

	public function new(?_fsys:FS, ?_dir:GoString) {
		if (_fsys != null)
			this._fsys = _fsys;
		if (_dir != null)
			this._dir = _dir;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_subFS(_fsys, _dir);
	}
}

@:structInit @:using(stdgo.io.fs.Fs.T_statDirEntry_static_extension) private class T_statDirEntry {
	public var _info:FileInfo = (null : FileInfo);

	public function new(?_info:FileInfo) {
		if (_info != null)
			this._info = _info;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_statDirEntry(_info);
	}
}

/**
	// A FileMode represents a file's mode and permission bits.
	// The bits have the same definition on all systems, so that
	// information about files can be moved from one system
	// to another portably. Not all bits apply to all systems.
	// The only required bit is ModeDir for directories.
**/
@:named @:using(stdgo.io.fs.Fs.FileMode_static_extension) typedef FileMode = GoUInt32;

/**
	// WalkDirFunc is the type of the function called by WalkDir to visit
	// each file or directory.
	//
	// The path argument contains the argument to WalkDir as a prefix.
	// That is, if WalkDir is called with root argument "dir" and finds a file
	// named "a" in that directory, the walk function will be called with
	// argument "dir/a".
	//
	// The d argument is the fs.DirEntry for the named path.
	//
	// The error result returned by the function controls how WalkDir
	// continues. If the function returns the special value SkipDir, WalkDir
	// skips the current directory (path if d.IsDir() is true, otherwise
	// path's parent directory). Otherwise, if the function returns a non-nil
	// error, WalkDir stops entirely and returns that error.
	//
	// The err argument reports an error related to path, signaling that
	// WalkDir will not walk into that directory. The function can decide how
	// to handle that error; as described earlier, returning the error will
	// cause WalkDir to stop walking the entire tree.
	//
	// WalkDir calls the function with a non-nil err argument in two cases.
	//
	// First, if the initial fs.Stat on the root directory fails, WalkDir
	// calls the function with path set to root, d set to nil, and err set to
	// the error from fs.Stat.
	//
	// Second, if a directory's ReadDir method fails, WalkDir calls the
	// function with path set to the directory's path, d set to an
	// fs.DirEntry describing the directory, and err set to the error from
	// ReadDir. In this second case, the function is called twice with the
	// path of the directory: the first call is before the directory read is
	// attempted and has err set to nil, giving the function a chance to
	// return SkipDir and avoid the ReadDir entirely. The second call is
	// after a failed ReadDir and reports the error from ReadDir.
	// (If ReadDir succeeds, there is no second call.)
	//
	// The differences between WalkDirFunc compared to filepath.WalkFunc are:
	//
	//   - The second argument has type fs.DirEntry instead of fs.FileInfo.
	//   - The function is called before reading a directory, to allow SkipDir
	//     to bypass the directory read entirely.
	//   - If a directory read fails, the function is called a second time
	//     for that directory to report the error.
**/
@:named typedef WalkDirFunc = (GoString, DirEntry, stdgo.Error) -> stdgo.Error;

/**
	// ValidPath reports whether the given path name
	// is valid for use in a call to Open.
	//
	// Path names passed to open are UTF-8-encoded,
	// unrooted, slash-separated sequences of path elements, like “x/y/z”.
	// Path names must not contain an element that is “.” or “..” or the empty string,
	// except for the special case that the root directory is named “.”.
	// Paths must not start or end with a slash: “/x” and “x/” are invalid.
	//
	// Note that paths are slash-separated on all systems, even Windows.
	// Paths containing other characters such as backslash and colon
	// are accepted as valid, but those characters must never be
	// interpreted by an FS implementation as path element separators.
**/
function validPath(_name:GoString):Bool {
	if (!stdgo.unicode.utf8.Utf8.validString(_name)) {
		return false;
	};
	if (_name == (Go.str(".") : GoString)) {
		return true;
	};
	while (true) {
		var _i:GoInt = (0 : GoInt);
		while ((_i < _name.length) && (_name[_i] != ("/".code : GoUInt8))) {
			_i++;
		};
		var _elem:GoString = (_name.__slice__(0, _i) : GoString);
		if (((_elem == (Go.str() : GoString)) || (_elem == (Go.str(".") : GoString))) || (_elem == (Go.str("..") : GoString))) {
			return false;
		};
		if (_i == (_name.length)) {
			return true;
		};
		_name = (_name.__slice__(_i + (1 : GoInt)) : GoString);
	};
}

function _errInvalid():Error {
	return stdgo.internal.oserror.Oserror.errInvalid;
}

function _errPermission():Error {
	return stdgo.internal.oserror.Oserror.errPermission;
}

function _errExist():Error {
	return stdgo.internal.oserror.Oserror.errExist;
}

function _errNotExist():Error {
	return stdgo.internal.oserror.Oserror.errNotExist;
}

function _errClosed():Error {
	return stdgo.internal.oserror.Oserror.errClosed;
}

/**
	// Glob returns the names of all files matching pattern or nil
	// if there is no matching file. The syntax of patterns is the same
	// as in path.Match. The pattern may describe hierarchical names such as
	// usr/|*|/bin/ed.
	//
	// Glob ignores file system errors such as I/O errors reading directories.
	// The only possible returned error is path.ErrBadPattern, reporting that
	// the pattern is malformed.
	//
	// If fs implements GlobFS, Glob calls fs.Glob.
	// Otherwise, Glob uses ReadDir to traverse the directory tree
	// and look for matches for the pattern.
**/
function glob(_fsys:FS, _pattern:GoString):{var _0:Slice<GoString>; var _1:Error;} {
	var _matches:Slice<GoString> = (null : Slice<GoString>),
		_err:Error = (null : stdgo.Error);
	return _globWithLimit(_fsys, _pattern, (0 : GoInt));
}

function _globWithLimit(_fsys:FS, _pattern:GoString, _depth:GoInt):{var _0:Slice<GoString>; var _1:Error;} {
	var _matches:Slice<GoString> = (null : Slice<GoString>),
		_err:Error = (null : stdgo.Error);
	var _pathSeparatorsLimit:GoUnTypedInt = (10000 : GoUnTypedInt);
	if (_depth > (10000 : GoInt)) {
		return {_0: (null : Slice<GoString>), _1: stdgo.path.Path.errBadPattern};
	};
	{
		var __tmp__ = try {
			{value: ((_fsys.__underlying__().value : Dynamic) : GlobFS), ok: true};
		} catch (_) {
			{value: (null : GlobFS), ok: false};
		}, _fsys = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			return _fsys.glob(_pattern);
		};
	};
	{
		var __tmp__ = stdgo.path.Path.match(_pattern, (Go.str() : GoString)),
			_0:Bool = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: (null : Slice<GoString>), _1: _err};
		};
	};
	if (!_hasMeta(_pattern)) {
		{
			{
				var __tmp__ = stat(_fsys, _pattern);
				_err = __tmp__._1;
			};
			if (_err != null) {
				return {_0: (null : Slice<GoString>), _1: (null : stdgo.Error)};
			};
		};
		return {_0: (new Slice<GoString>(0, 0, _pattern) : Slice<GoString>), _1: (null : stdgo.Error)};
	};
	var __tmp__ = stdgo.path.Path.split(_pattern),
		_dir:GoString = __tmp__._0,
		_file:GoString = __tmp__._1;
	_dir = _cleanGlobPath(_dir);
	if (!_hasMeta(_dir)) {
		return _glob(_fsys, _dir, _file, (null : Slice<GoString>));
	};
	if (_dir == _pattern) {
		return {_0: (null : Slice<GoString>), _1: stdgo.path.Path.errBadPattern};
	};
	var _m:Slice<GoString> = (null : Slice<GoString>);
	{
		var __tmp__ = _globWithLimit(_fsys, _dir, _depth + (1 : GoInt));
		_m = __tmp__._0;
		_err = __tmp__._1;
	};
	if (_err != null) {
		return {_0: (null : Slice<GoString>), _1: _err};
	};
	for (_1 => _d in _m) {
		{
			var __tmp__ = _glob(_fsys, _d, _file, _matches);
			_matches = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			return {_0: _matches, _1: _err};
		};
	};
	return {_0: _matches, _1: _err};
}

/**
	// cleanGlobPath prepares path for glob matching.
**/
function _cleanGlobPath(_path:GoString):GoString {
	if (_path == ((Go.str() : GoString))) {
		return (Go.str(".") : GoString);
	} else {
		return (_path.__slice__((0 : GoInt), (_path.length) - (1 : GoInt)) : GoString);
	};
}

/**
	// glob searches for files matching pattern in the directory dir
	// and appends them to matches, returning the updated slice.
	// If the directory cannot be opened, glob returns the existing matches.
	// New matches are added in lexicographical order.
**/
function _glob(_fs:FS, _dir:GoString, _pattern:GoString, _matches:Slice<GoString>):{var _0:Slice<GoString>; var _1:Error;} {
	var _m:Slice<GoString> = (null : Slice<GoString>),
		_e:Error = (null : stdgo.Error);
	_m = _matches;
	var __tmp__ = readDir(_fs, _dir),
		_infos:Slice<DirEntry> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: _m, _1: _e};
	};
	for (_0 => _info in _infos) {
		var _n:GoString = _info.name();
		var __tmp__ = stdgo.path.Path.match(_pattern, _n),
			_matched:Bool = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: _m, _1: _err};
		};
		if (_matched) {
			_m = (_m.__append__(stdgo.path.Path.join(_dir, _n)));
		};
	};
	return {_0: _m, _1: _e};
}

/**
	// hasMeta reports whether path contains any of the magic characters
	// recognized by path.Match.
**/
function _hasMeta(_path:GoString):Bool {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_path.length), _i++, {
			if (_path[_i] == (("*".code : GoUInt8)) || _path[_i] == (("?".code : GoUInt8)) || _path[_i] == (("[".code : GoUInt8))
				|| _path[_i] == (("\\".code : GoUInt8))) {
				return true;
			};
		});
	};
	return false;
}

/**
	// ReadDir reads the named directory
	// and returns a list of directory entries sorted by filename.
	//
	// If fs implements ReadDirFS, ReadDir calls fs.ReadDir.
	// Otherwise ReadDir calls fs.Open and uses ReadDir and Close
	// on the returned file.
**/
function readDir(_fsys:FS, _name:GoString):{var _0:Slice<DirEntry>; var _1:Error;} {
	var __deferstack__:Array<Void->Void> = [];
	{
		var __tmp__ = try {
			{value: ((_fsys.__underlying__().value : Dynamic) : ReadDirFS), ok: true};
		} catch (_) {
			{value: (null : ReadDirFS), ok: false};
		}, _fsys = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			return _fsys.readDir(_name);
		};
	};
	var __tmp__ = _fsys.open(_name),
		_file:File = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: (null : Slice<DirEntry>), _1: _err};
	};
	try {
		__deferstack__.unshift(() -> _file.close());
		var __tmp__ = try {
			{value: ((_file.__underlying__().value : Dynamic) : ReadDirFile), ok: true};
		} catch (_) {
			{value: (null : ReadDirFile), ok: false};
		}, _dir = __tmp__.value, _ok = __tmp__.ok;
		if (!_ok) {
			{
				for (defer in __deferstack__) {
					defer();
				};
				return {_0: (null : Slice<DirEntry>), _1: Go.asInterface(({op: (Go.str("readdir") : GoString), path: _name,
					err: stdgo.errors.Errors.new_((Go.str("not implemented") : GoString))} : PathError))};
			};
		};
		var __tmp__ = _dir.readDir((-1 : GoInt)),
			_list:Slice<DirEntry> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		stdgo.sort.Sort.slice(Go.toInterface(_list), function(_i:GoInt, _j:GoInt):Bool {
			return _list[_i].name() < _list[_j].name();
		});
		{
			for (defer in __deferstack__) {
				defer();
			};
			return {_0: _list, _1: _err};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return {_0: (null : Slice<DirEntry>), _1: (null : stdgo.Error)};
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return {_0: (null : Slice<DirEntry>), _1: (null : stdgo.Error)};
	};
}

/**
	// FileInfoToDirEntry returns a DirEntry that returns information from info.
	// If info is nil, FileInfoToDirEntry returns nil.
**/
function fileInfoToDirEntry(_info:FileInfo):DirEntry {
	if (_info == null) {
		return (null : DirEntry);
	};
	return Go.asInterface(({_fileInfo: _info} : T_dirInfo));
}

/**
	// ReadFile reads the named file from the file system fs and returns its contents.
	// A successful call returns a nil error, not io.EOF.
	// (Because ReadFile reads the whole file, the expected EOF
	// from the final Read is not treated as an error to be reported.)
	//
	// If fs implements ReadFileFS, ReadFile calls fs.ReadFile.
	// Otherwise ReadFile calls fs.Open and uses Read and Close
	// on the returned file.
**/
function readFile(_fsys:FS, _name:GoString):{var _0:Slice<GoByte>; var _1:Error;} {
	var __deferstack__:Array<Void->Void> = [];
	{
		var __tmp__ = try {
			{value: ((_fsys.__underlying__().value : Dynamic) : ReadFileFS), ok: true};
		} catch (_) {
			{value: (null : ReadFileFS), ok: false};
		}, _fsys = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			return _fsys.readFile(_name);
		};
	};
	var __tmp__ = _fsys.open(_name),
		_file:File = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: (null : Slice<GoUInt8>), _1: _err};
	};
	try {
		__deferstack__.unshift(() -> _file.close());
		var _size:GoInt = (0 : GoInt);
		{
			var __tmp__ = _file.stat(),
				_info:FileInfo = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err == null) {
				var _size64:GoInt64 = _info.size();
				if (((_size64 : GoInt) : GoInt64) == _size64) {
					_size = (_size64 : GoInt);
				};
			};
		};
		var _data = new Slice<GoUInt8>((0 : GoInt).toBasic(), _size + (1 : GoInt), ...[for (i in 0...(0 : GoInt).toBasic()) (0 : GoUInt8)]);
		while (true) {
			if ((_data.length) >= _data.capacity) {
				var _d = ((_data.__slice__(0, _data.capacity) : Slice<GoUInt8>).__append__((0 : GoUInt8)));
				_data = (_d.__slice__(0, (_data.length)) : Slice<GoUInt8>);
			};
			var __tmp__ = _file.read((_data.__slice__((_data.length), _data.capacity) : Slice<GoUInt8>)),
				_n:GoInt = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			_data = (_data.__slice__(0, (_data.length) + _n) : Slice<GoUInt8>);
			if (_err != null) {
				if (_err == stdgo.io.Io.eof) {
					_err = (null : stdgo.Error);
				};
				{
					for (defer in __deferstack__) {
						defer();
					};
					return {_0: _data, _1: _err};
				};
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return {_0: (null : Slice<GoUInt8>), _1: (null : stdgo.Error)};
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return {_0: (null : Slice<GoUInt8>), _1: (null : stdgo.Error)};
	};
}

/**
	// Stat returns a FileInfo describing the named file from the file system.
	//
	// If fs implements StatFS, Stat calls fs.Stat.
	// Otherwise, Stat opens the file to stat it.
**/
function stat(_fsys:FS, _name:GoString):{var _0:FileInfo; var _1:Error;} {
	var __deferstack__:Array<Void->Void> = [];
	{
		var __tmp__ = try {
			{value: ((_fsys.__underlying__().value : Dynamic) : StatFS), ok: true};
		} catch (_) {
			{value: (null : StatFS), ok: false};
		}, _fsys = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			return _fsys.stat(_name);
		};
	};
	var __tmp__ = _fsys.open(_name),
		_file:File = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: (null : FileInfo), _1: _err};
	};
	try {
		__deferstack__.unshift(() -> _file.close());
		{
			for (defer in __deferstack__) {
				defer();
			};
			return _file.stat();
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return {_0: (null : FileInfo), _1: (null : stdgo.Error)};
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return {_0: (null : FileInfo), _1: (null : stdgo.Error)};
	};
}

/**
	// Sub returns an FS corresponding to the subtree rooted at fsys's dir.
	//
	// If dir is ".", Sub returns fsys unchanged.
	// Otherwise, if fs implements SubFS, Sub returns fsys.Sub(dir).
	// Otherwise, Sub returns a new FS implementation sub that,
	// in effect, implements sub.Open(name) as fsys.Open(path.Join(dir, name)).
	// The implementation also translates calls to ReadDir, ReadFile, and Glob appropriately.
	//
	// Note that Sub(os.DirFS("/"), "prefix") is equivalent to os.DirFS("/prefix")
	// and that neither of them guarantees to avoid operating system
	// accesses outside "/prefix", because the implementation of os.DirFS
	// does not check for symbolic links inside "/prefix" that point to
	// other directories. That is, os.DirFS is not a general substitute for a
	// chroot-style security mechanism, and Sub does not change that fact.
**/
function sub(_fsys:FS, _dir:GoString):{var _0:FS; var _1:Error;} {
	if (!validPath(_dir)) {
		return {_0: (null : FS), _1: Go.asInterface(({op: (Go.str("sub") : GoString), path: _dir,
			err: stdgo.errors.Errors.new_((Go.str("invalid name") : GoString))} : PathError))};
	};
	if (_dir == (Go.str(".") : GoString)) {
		return {_0: _fsys, _1: (null : stdgo.Error)};
	};
	{
		var __tmp__ = try {
			{value: ((_fsys.__underlying__().value : Dynamic) : SubFS), ok: true};
		} catch (_) {
			{value: (null : SubFS), ok: false};
		}, _fsys = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			return _fsys.sub(_dir);
		};
	};
	return {_0: Go.asInterface((new T_subFS(_fsys, _dir) : T_subFS)), _1: (null : stdgo.Error)};
}

/**
	// walkDir recursively descends path, calling walkDirFn.
**/
function _walkDir(_fsys:FS, _name:GoString, _d:DirEntry, _walkDirFn:WalkDirFunc):Error {
	{
		var _err:stdgo.Error = _walkDirFn(_name, _d, (null : stdgo.Error));
		if ((_err != null) || !_d.isDir()) {
			if ((_err == skipDir) && _d.isDir()) {
				_err = (null : stdgo.Error);
			};
			return _err;
		};
	};
	var __tmp__ = readDir(_fsys, _name),
		_dirs:Slice<DirEntry> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		_err = _walkDirFn(_name, _d, _err);
		if (_err != null) {
			if ((_err == skipDir) && _d.isDir()) {
				_err = (null : stdgo.Error);
			};
			return _err;
		};
	};
	for (_0 => _d1 in _dirs) {
		var _name1:GoString = stdgo.path.Path.join(_name, _d1.name());
		{
			var _err:stdgo.Error = _walkDir(_fsys, _name1, _d1, _walkDirFn);
			if (_err != null) {
				if (_err == skipDir) {
					break;
				};
				return _err;
			};
		};
	};
	return (null : stdgo.Error);
}

/**
	// WalkDir walks the file tree rooted at root, calling fn for each file or
	// directory in the tree, including root.
	//
	// All errors that arise visiting files and directories are filtered by fn:
	// see the fs.WalkDirFunc documentation for details.
	//
	// The files are walked in lexical order, which makes the output deterministic
	// but requires WalkDir to read an entire directory into memory before proceeding
	// to walk that directory.
	//
	// WalkDir does not follow symbolic links found in directories,
	// but if root itself is a symbolic link, its target will be walked.
**/
function walkDir(_fsys:FS, _root:GoString, _fn:WalkDirFunc):Error {
	var __tmp__ = stat(_fsys, _root),
		_info:FileInfo = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		_err = _fn(_root, (null : DirEntry), _err);
	} else {
		_err = _walkDir(_fsys, _root, Go.asInterface((new T_statDirEntry(_info) : T_statDirEntry)), _fn);
	};
	if (_err == skipDir) {
		return (null : stdgo.Error);
	};
	return _err;
}

class PathError_asInterface {
	/**
		// Timeout reports whether this error represents a timeout.
	**/
	@:keep
	public function timeout():Bool
		return __self__.timeout();

	@:keep
	public function unwrap():Error
		return __self__.unwrap();

	@:keep
	public function error():GoString
		return __self__.error();

	public function new(?__self__) {
		if (__self__ != null)
			this.__self__ = __self__;
	}

	public function __underlying__()
		return Go.toInterface(__self__);

	var __self__:PathError;
}

@:keep private class PathError_static_extension {
	/**
		// Timeout reports whether this error represents a timeout.
	**/
	@:keep
	static public function timeout(_e:PathError):Bool {
		var __tmp__ = try {
			{value: ((_e.err.__underlying__().value : Dynamic) : T__interface_0), ok: true};
		} catch (_) {
			{value: (null : T__interface_0), ok: false};
		}, _t = __tmp__.value, _ok = __tmp__.ok;
		return _ok && _t.timeout();
	}

	@:keep
	static public function unwrap(_e:PathError):Error {
		return _e.err;
	}

	@:keep
	static public function error(_e:PathError):GoString {
		return (((_e.op + (Go.str(" ") : GoString)) + _e.path) + (Go.str(": ") : GoString)) + _e.err.error();
	}
}

private class T_dirInfo_asInterface {
	@:keep
	public function name():GoString
		return __self__.name();

	@:keep
	public function info():{var _0:FileInfo; var _1:Error;}
		return __self__.info();

	@:keep
	public function type():FileMode
		return __self__.type();

	@:keep
	public function isDir():Bool
		return __self__.isDir();

	public function new(?__self__) {
		if (__self__ != null)
			this.__self__ = __self__;
	}

	public function __underlying__()
		return Go.toInterface(__self__);

	var __self__:T_dirInfo;
}

@:keep private class T_dirInfo_static_extension {
	@:keep
	static public function name(_di:T_dirInfo):GoString {
		return _di._fileInfo.name();
	}

	@:keep
	static public function info(_di:T_dirInfo):{var _0:FileInfo; var _1:Error;} {
		return {_0: _di._fileInfo, _1: (null : stdgo.Error)};
	}

	@:keep
	static public function type(_di:T_dirInfo):FileMode {
		return _di._fileInfo.mode().type();
	}

	@:keep
	static public function isDir(_di:T_dirInfo):Bool {
		return _di._fileInfo.isDir();
	}
}

private class T_subFS_asInterface {
	@:keep
	public function sub(_dir:GoString):{var _0:FS; var _1:Error;}
		return __self__.sub(_dir);

	@:keep
	public function glob(_pattern:GoString):{var _0:Slice<GoString>; var _1:Error;}
		return __self__.glob(_pattern);

	@:keep
	public function readFile(_name:GoString):{var _0:Slice<GoByte>; var _1:Error;}
		return __self__.readFile(_name);

	@:keep
	public function readDir(_name:GoString):{var _0:Slice<DirEntry>; var _1:Error;}
		return __self__.readDir(_name);

	@:keep
	public function open(_name:GoString):{var _0:File; var _1:Error;}
		return __self__.open(_name);

	/**
		// fixErr shortens any reported names in PathErrors by stripping f.dir.
	**/
	@:keep
	public function _fixErr(_err:Error):Error
		return __self__._fixErr(_err);

	/**
		// shorten maps name, which should start with f.dir, back to the suffix after f.dir.
	**/
	@:keep
	public function _shorten(_name:GoString):{var _0:GoString; var _1:Bool;}
		return __self__._shorten(_name);

	/**
		// fullName maps name to the fully-qualified name dir/name.
	**/
	@:keep
	public function _fullName(_op:GoString, _name:GoString):{var _0:GoString; var _1:Error;}
		return __self__._fullName(_op, _name);

	public function new(?__self__) {
		if (__self__ != null)
			this.__self__ = __self__;
	}

	public function __underlying__()
		return Go.toInterface(__self__);

	var __self__:T_subFS;
}

@:keep private class T_subFS_static_extension {
	@:keep
	static public function sub(_f:T_subFS, _dir:GoString):{var _0:FS; var _1:Error;} {
		if (_dir == (Go.str(".") : GoString)) {
			return {_0: Go.asInterface(_f), _1: (null : stdgo.Error)};
		};
		var __tmp__ = _f._fullName((Go.str("sub") : GoString), _dir),
			_full:GoString = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: (null : FS), _1: _err};
		};
		return {_0: Go.asInterface((new T_subFS(_f._fsys, _full) : T_subFS)), _1: (null : stdgo.Error)};
	}

	@:keep
	static public function glob(_f:T_subFS, _pattern:GoString):{var _0:Slice<GoString>; var _1:Error;} {
		{
			var __tmp__ = stdgo.path.Path.match(_pattern, (Go.str() : GoString)),
				_0:Bool = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return {_0: (null : Slice<GoString>), _1: _err};
			};
		};
		if (_pattern == (Go.str(".") : GoString)) {
			return {_0: (new Slice<GoString>(0, 0, (Go.str(".") : GoString)) : Slice<GoString>), _1: (null : stdgo.Error)};
		};
		var _full:GoString = (_f._dir + (Go.str("/") : GoString)) + _pattern;
		var __tmp__ = stdgo.io.fs.Fs.glob(_f._fsys, _full),
			_list:Slice<GoString> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		for (_i => _name in _list) {
			var __tmp__ = _f._shorten(_name),
				_name:GoString = __tmp__._0,
				_ok:Bool = __tmp__._1;
			if (!_ok) {
				return {_0: (null : Slice<GoString>), _1: stdgo.errors.Errors.new_((((Go.str("invalid result from inner fsys Glob: ") : GoString) + _name)
					+ (Go.str(" not in ") : GoString))
					+ _f._dir)};
			};
			_list[_i] = _name;
		};
		return {_0: _list, _1: _f._fixErr(_err)};
	}

	@:keep
	static public function readFile(_f:T_subFS, _name:GoString):{var _0:Slice<GoByte>; var _1:Error;} {
		var __tmp__ = _f._fullName((Go.str("read") : GoString), _name),
			_full:GoString = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: (null : Slice<GoUInt8>), _1: _err};
		};
		var __tmp__ = stdgo.io.fs.Fs.readFile(_f._fsys, _full),
			_data:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		return {_0: _data, _1: _f._fixErr(_err)};
	}

	@:keep
	static public function readDir(_f:T_subFS, _name:GoString):{var _0:Slice<DirEntry>; var _1:Error;} {
		var __tmp__ = _f._fullName((Go.str("read") : GoString), _name),
			_full:GoString = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: (null : Slice<DirEntry>), _1: _err};
		};
		var __tmp__ = stdgo.io.fs.Fs.readDir(_f._fsys, _full),
			_dir:Slice<DirEntry> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		return {_0: _dir, _1: _f._fixErr(_err)};
	}

	@:keep
	static public function open(_f:T_subFS, _name:GoString):{var _0:File; var _1:Error;} {
		var __tmp__ = _f._fullName((Go.str("open") : GoString), _name),
			_full:GoString = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: (null : File), _1: _err};
		};
		var __tmp__ = _f._fsys.open(_full),
			_file:File = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		return {_0: _file, _1: _f._fixErr(_err)};
	}

	/**
		// fixErr shortens any reported names in PathErrors by stripping f.dir.
	**/
	@:keep
	static public function _fixErr(_f:T_subFS, _err:Error):Error {
		{
			var __tmp__ = try {
				{value: ((_err.__underlying__().value : Dynamic) : PathError), ok: true};
			} catch (_) {
				{value: (null : PathError), ok: false};
			}, _e = __tmp__.value, _ok = __tmp__.ok;
			if (_ok) {
				{
					var __tmp__ = _f._shorten(_e.path),
						_short:GoString = __tmp__._0,
						_ok:Bool = __tmp__._1;
					if (_ok) {
						_e.path = _short;
					};
				};
			};
		};
		return _err;
	}

	/**
		// shorten maps name, which should start with f.dir, back to the suffix after f.dir.
	**/
	@:keep
	static public function _shorten(_f:T_subFS, _name:GoString):{var _0:GoString; var _1:Bool;} {
		var _rel:GoString = ("" : GoString), _ok:Bool = false;
		if (_name == _f._dir) {
			return {_0: (Go.str(".") : GoString), _1: true};
		};
		if (((_name.length >= (_f._dir.length + (2 : GoInt))) && (_name[(_f._dir.length)] == ("/".code : GoUInt8)))
			&& ((_name.__slice__(0, (_f._dir.length)) : GoString) == _f._dir)) {
			return {_0: (_name.__slice__((_f._dir.length) + (1 : GoInt)) : GoString), _1: true};
		};
		return {_0: (Go.str() : GoString), _1: false};
	}

	/**
		// fullName maps name to the fully-qualified name dir/name.
	**/
	@:keep
	static public function _fullName(_f:T_subFS, _op:GoString, _name:GoString):{var _0:GoString; var _1:Error;} {
		if (!validPath(_name)) {
			return {_0: (Go.str() : GoString), _1: Go.asInterface(({op: _op, path: _name,
				err: stdgo.errors.Errors.new_((Go.str("invalid name") : GoString))} : PathError))};
		};
		return {_0: stdgo.path.Path.join(_f._dir, _name), _1: (null : stdgo.Error)};
	}
}

private class T_statDirEntry_asInterface {
	@:keep
	public function info():{var _0:FileInfo; var _1:Error;}
		return __self__.info();

	@:keep
	public function type():FileMode
		return __self__.type();

	@:keep
	public function isDir():Bool
		return __self__.isDir();

	@:keep
	public function name():GoString
		return __self__.name();

	public function new(?__self__) {
		if (__self__ != null)
			this.__self__ = __self__;
	}

	public function __underlying__()
		return Go.toInterface(__self__);

	var __self__:T_statDirEntry;
}

@:keep private class T_statDirEntry_static_extension {
	@:keep
	static public function info(_d:T_statDirEntry):{var _0:FileInfo; var _1:Error;} {
		return {_0: _d._info, _1: (null : stdgo.Error)};
	}

	@:keep
	static public function type(_d:T_statDirEntry):FileMode {
		return _d._info.mode().type();
	}

	@:keep
	static public function isDir(_d:T_statDirEntry):Bool {
		return _d._info.isDir();
	}

	@:keep
	static public function name(_d:T_statDirEntry):GoString {
		return _d._info.name();
	}
}

class FileMode_asInterface {
	/**
		// Type returns type bits in m (m & ModeType).
	**/
	@:keep
	public function type():FileMode
		return __self__.type();

	/**
		// Perm returns the Unix permission bits in m (m & ModePerm).
	**/
	@:keep
	public function perm():FileMode
		return __self__.perm();

	/**
		// IsRegular reports whether m describes a regular file.
		// That is, it tests that no mode type bits are set.
	**/
	@:keep
	public function isRegular():Bool
		return __self__.isRegular();

	/**
		// IsDir reports whether m describes a directory.
		// That is, it tests for the ModeDir bit being set in m.
	**/
	@:keep
	public function isDir():Bool
		return __self__.isDir();

	@:keep
	public function string():GoString
		return __self__.string();

	public function new(?__self__) {
		if (__self__ != null)
			this.__self__ = __self__;
	}

	public function __underlying__()
		return Go.toInterface(__self__);

	var __self__:FileMode;
}

@:keep private class FileMode_static_extension {
	/**
		// Type returns type bits in m (m & ModeType).
	**/
	@:keep
	static public function type(_m:FileMode):FileMode {
		return _m & ("2401763328" : FileMode);
	}

	/**
		// Perm returns the Unix permission bits in m (m & ModePerm).
	**/
	@:keep
	static public function perm(_m:FileMode):FileMode {
		return _m & (511 : FileMode);
	}

	/**
		// IsRegular reports whether m describes a regular file.
		// That is, it tests that no mode type bits are set.
	**/
	@:keep
	static public function isRegular(_m:FileMode):Bool {
		return (_m & ("2401763328" : FileMode)) == (0 : FileMode);
	}

	/**
		// IsDir reports whether m describes a directory.
		// That is, it tests for the ModeDir bit being set in m.
	**/
	@:keep
	static public function isDir(_m:FileMode):Bool {
		return (_m & ("2147483648" : FileMode)) != (0 : FileMode);
	}

	@:keep
	static public function string(_m:FileMode):GoString {
		var _str:GoString = (Go.str("dalTLDpSugct?") : GoString);
		var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...32) (0 : GoUInt8)]);
		var _w:GoInt = (0 : GoInt);
		for (_i => _c in (Go.str("dalTLDpSugct?") : GoString)) {
			if ((_m & ((1 : FileMode) << ((31 : GoInt) - _i : GoUInt))) != (0 : FileMode)) {
				_buf[_w] = (_c : GoByte);
				_w++;
			};
		};
		if (_w == (0 : GoInt)) {
			_buf[_w] = ("-".code : GoUInt8);
			_w++;
		};
		var _rwx:GoString = (Go.str("rwxrwxrwx") : GoString);
		for (_i => _c in (Go.str("rwxrwxrwx") : GoString)) {
			if ((_m & ((1 : FileMode) << ((8 : GoInt) - _i : GoUInt))) != (0 : FileMode)) {
				_buf[_w] = (_c : GoByte);
			} else {
				_buf[_w] = ("-".code : GoUInt8);
			};
			_w++;
		};
		return ((_buf.__slice__(0, _w) : Slice<GoUInt8>) : GoString);
	}
}
