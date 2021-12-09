package stdgo.io.fs;

import stdgo.Chan;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.StdGoTypes;

typedef FS = StructType & {
	public function open(_name:GoString):{var _0:File; var _1:Error;};
};

typedef File = StructType & {
	public function stat():{var _0:FileInfo; var _1:Error;};
	public function read(arg0:Slice<GoByte>):{var _0:GoInt; var _1:Error;};
	public function close():Error;
};

typedef DirEntry = StructType & {
	public function name():GoString;
	public function isDir():Bool;
	public function type():FileMode;
	public function info():{var _0:FileInfo; var _1:Error;};
};

typedef ReadDirFile = StructType & {
	> File,
	public function readDir(_n:GoInt):{var _0:Slice<DirEntry>; var _1:Error;};
};

typedef FileInfo = StructType & {
	public function name():GoString;
	public function size():GoInt64;
	public function mode():FileMode;
	public function modTime():stdgo.time.Time.Time;
	public function isDir():Bool;
	public function sys():AnyInterface;
};

@:local typedef T__interface_4 = StructType & {
	public function timeout():Bool;
};

typedef GlobFS = StructType & {
	> FS,
	public function glob(_pattern:GoString):{var _0:Slice<GoString>; var _1:Error;};
};

typedef ReadDirFS = StructType & {
	> FS,
	public function readDir(_name:GoString):{var _0:Slice<DirEntry>; var _1:Error;};
};

typedef ReadFileFS = StructType & {
	> FS,
	public function readFile(_name:GoString):{var _0:Slice<GoByte>; var _1:Error;};
};

typedef StatFS = StructType & {
	> FS,
	public function stat(_name:GoString):{var _0:FileInfo; var _1:Error;};
};

typedef SubFS = StructType & {
	> FS,
	public function sub(_dir:GoString):{var _0:FS; var _1:Error;};
};

@:named class FileMode {
	public function type():FileMode {
		var _m = this.__copy__();
		return new FileMode(_m.__t__ & modeType.__t__);
	}

	public function perm():FileMode {
		var _m = this.__copy__();
		return new FileMode(_m.__t__ & modePerm.__t__);
	}

	public function isRegular():Bool {
		var _m = this.__copy__();
		return new FileMode(_m.__t__ & modeType.__t__).__t__ == ((0 : GoUInt32));
	}

	public function isDir():Bool {
		var _m = this.__copy__();
		return new FileMode(_m.__t__ & modeDir.__t__).__t__ != ((0 : GoUInt32));
	}

	public function toString():GoString {
		var _m = this.__copy__();
		final _str:GoString = "dalTLDpSugct?";
		var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...32) ((0 : GoUInt8))]);
		var _w:GoInt = ((0 : GoInt));
		{
			var _i;
			var _c;
			for (_obj in _str.keyValueIterator()) {
				_i = _obj.key;
				_c = _obj.value;
				if (new FileMode(_m.__t__ & ((new FileMode(((1 : GoUInt32)) << (((((32 : GoUnTypedInt)) - ((1 : GoUnTypedInt)) - _i) : GoUInt))))).__t__)
					.__t__ != ((0 : GoUInt32))) {
					_buf[_w] = ((_c : GoByte));
					_w++;
				};
			};
		};
		if (_w == ((0 : GoInt))) {
			_buf[_w] = (("-".code : GoRune));
			_w++;
		};
		final _rwx:GoString = "rwxrwxrwx";
		{
			var _i;
			var _c;
			for (_obj in _rwx.keyValueIterator()) {
				_i = _obj.key;
				_c = _obj.value;
				if (new FileMode(_m.__t__ & ((new FileMode(((1 : GoUInt32)) << (((((9 : GoUnTypedInt)) - ((1 : GoUnTypedInt)) - _i) : GoUInt))))).__t__)
					.__t__ != ((0 : GoUInt32))) {
					_buf[_w] = ((_c : GoByte));
				} else {
					_buf[_w] = (("-".code : GoRune));
				};
				_w++;
			};
		};
		return ((_buf.__slice__(0, _w) : GoString));
	}

	public var __t__:GoUInt32;

	public function new(?t:GoUInt32) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__()
		return new FileMode(__t__);
}

@:structInit class PathError {
	public function timeout():Bool {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = try {
			{value: ((_e.value.err.__underlying__().value : T__interface_4)), ok: true};
		} catch (_) {
			{value: ((null : T__interface_4)), ok: false};
		}, _t = __tmp__.value, _ok = __tmp__.ok;
		return _ok && _t.timeout();
	}

	public function unwrap():Error {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _e.value.err;
	}

	public function error():GoString {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _e.value.op + ((" " : GoString)) + _e.value.path + ((": " : GoString)) + _e.value.err.error();
	}

	public var op:GoString = (("" : GoString));
	public var path:GoString = (("" : GoString));
	public var err:stdgo.Error = ((null : stdgo.Error));

	public function new(?op:GoString, ?path:GoString, ?err:stdgo.Error)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(op) + " " + Go.string(path) + " " + Go.string(err) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new PathError(op, path, err);
	}

	public function __set__(__tmp__) {
		this.op = __tmp__.op;
		this.path = __tmp__.path;
		this.err = __tmp__.err;
		return this;
	}
}

@:structInit class T_dirInfo {
	public function name():GoString {
		var _di = this.__copy__();
		return _di._fileInfo.name();
	}

	public function info():{var _0:FileInfo; var _1:Error;} {
		var _di = this.__copy__();
		return {_0: _di._fileInfo, _1: ((null : stdgo.Error))};
	}

	public function type():FileMode {
		var _di = this.__copy__();
		return _di._fileInfo.mode().type();
	}

	public function isDir():Bool {
		var _di = this.__copy__();
		return _di._fileInfo.isDir();
	}

	public var _fileInfo:FileInfo = ((null : FileInfo));

	public function new(?_fileInfo:FileInfo)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_fileInfo) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_dirInfo(_fileInfo);
	}

	public function __set__(__tmp__) {
		this._fileInfo = __tmp__._fileInfo;
		return this;
	}
}

@:structInit class T_subFS {
	public function sub(_dir:GoString):{var _0:FS; var _1:Error;} {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_dir == (("." : GoString))) {
			return {_0: _f.value, _1: ((null : stdgo.Error))};
		};
		var __tmp__ = _f.value._fullName("sub", _dir),
			_full:GoString = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: ((null : FS)), _1: _err};
		};
		return {_0: Go.pointer(new T_subFS(_f.value._fsys, _full)).value, _1: ((null : stdgo.Error))};
	}

	public function glob(_pattern:GoString):{var _0:Slice<GoString>; var _1:Error;} {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		{
			var __tmp__ = stdgo.path.Path.match(_pattern, ""),
				_:Bool = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return {_0: new Slice<GoString>().nil(), _1: _err};
			};
		};
		if (_pattern == (("." : GoString))) {
			return {_0: new Slice<GoString>("."), _1: ((null : stdgo.Error))};
		};
		var _full:GoString = _f.value._dir + (("/" : GoString)) + _pattern;
		var __tmp__ = Fs.glob(_f.value._fsys, _full),
			_list:Slice<GoString> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		{
			var _i;
			var _name;
			for (_obj in _list.keyValueIterator()) {
				_i = _obj.key;
				_name = _obj.value;
				var __tmp__ = _f.value._shorten(_name),
					_name:GoString = __tmp__._0,
					_ok:Bool = __tmp__._1;
				if (!_ok) {
					return {_0: new Slice<GoString>().nil(), _1: stdgo.errors.Errors.new_((("invalid result from inner fsys Glob: " : GoString)) + _name
						+ ((" not in " : GoString)) + _f.value._dir)};
				};
				_list[_i] = _name;
			};
		};
		return {_0: _list, _1: _f.value._fixErr(_err)};
	}

	public function readFile(_name:GoString):{var _0:Slice<GoByte>; var _1:Error;} {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _f.value._fullName("read", _name),
			_full:GoString = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Slice<GoUInt8>().nil(), _1: _err};
		};
		var __tmp__ = Fs.readFile(_f.value._fsys, _full),
			_data:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		return {_0: _data, _1: _f.value._fixErr(_err)};
	}

	public function readDir(_name:GoString):{var _0:Slice<DirEntry>; var _1:Error;} {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _f.value._fullName("read", _name),
			_full:GoString = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Slice<DirEntry>().nil(), _1: _err};
		};
		var __tmp__ = Fs.readDir(_f.value._fsys, _full),
			_dir:Slice<DirEntry> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		return {_0: _dir, _1: _f.value._fixErr(_err)};
	}

	public function open(_name:GoString):{var _0:File; var _1:Error;} {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _f.value._fullName("open", _name),
			_full:GoString = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: ((null : File)), _1: _err};
		};
		var __tmp__ = _f.value._fsys.open(_full),
			_file:File = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		return {_0: _file, _1: _f.value._fixErr(_err)};
	}

	public function _fixErr(_err:Error):Error {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		{
			var __tmp__ = try {
				{value: ((_err.__underlying__().value : PathError)), ok: true};
			} catch (_) {
				{value: new Pointer<PathError>().nil(), ok: false};
			}, _e = __tmp__.value, _ok = __tmp__.ok;
			if (_ok) {
				{
					var __tmp__ = _f.value._shorten(_e.value.path),
						_short:GoString = __tmp__._0,
						_ok:Bool = __tmp__._1;
					if (_ok) {
						_e.value.path = _short;
					};
				};
			};
		};
		return _err;
	}

	public function _shorten(_name:GoString):{var _0:GoString; var _1:Bool;} {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _rel:GoString = (("" : GoString)), _ok:Bool = false;
		if (_name == _f.value._dir) {
			return {_0: ".", _1: true};
		};
		if (_name.length >= _f.value._dir.length + ((2 : GoInt))
			&& _name[_f.value._dir.length] == (("/".code : GoRune))
			&& _name.__slice__(0, _f.value._dir.length) == _f.value._dir) {
			return {_0: _name.__slice__(_f.value._dir.length + ((1 : GoInt))), _1: true};
		};
		return {_0: "", _1: false};
	}

	public function _fullName(_op:GoString, _name:GoString):{var _0:GoString; var _1:Error;} {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!validPath(_name)) {
			return {_0: "", _1: Go.pointer((({op: _op, path: _name, err: stdgo.errors.Errors.new_("invalid name")} : PathError))).value};
		};
		return {_0: stdgo.path.Path.join(_f.value._dir, _name), _1: ((null : stdgo.Error))};
	}

	public var _fsys:FS = ((null : FS));
	public var _dir:GoString = (("" : GoString));

	public function new(?_fsys:FS, ?_dir:GoString)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_fsys) + " " + Go.string(_dir) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_subFS(_fsys, _dir);
	}

	public function __set__(__tmp__) {
		this._fsys = __tmp__._fsys;
		this._dir = __tmp__._dir;
		return this;
	}
}

@:named class WalkDirFunc {
	public var __t__:(GoString, DirEntry, stdgo.Error) -> stdgo.Error;

	public function new(?t:(GoString, DirEntry, stdgo.Error) -> stdgo.Error) {
		__t__ = t == null ? null : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new WalkDirFunc(__t__);
}

@:structInit class T_statDirEntry {
	public function info():{var _0:FileInfo; var _1:Error;} {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return {_0: _d.value._info, _1: ((null : stdgo.Error))};
	}

	public function type():FileMode {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _d.value._info.mode().type();
	}

	public function isDir():Bool {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _d.value._info.isDir();
	}

	public function name():GoString {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _d.value._info.name();
	}

	public var _info:FileInfo = ((null : FileInfo));

	public function new(?_info:FileInfo)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_info) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_statDirEntry(_info);
	}

	public function __set__(__tmp__) {
		this._info = __tmp__._info;
		return this;
	}
}

final modeNamedPipe:FileMode = (new FileMode(((1 : GoUnTypedInt)) << (((32 : GoUnTypedInt)) - ((1 : GoUnTypedInt)) - (6 : GoUnTypedInt))));
final modeCharDevice:FileMode = (new FileMode(((1 : GoUnTypedInt)) << (((32 : GoUnTypedInt)) - ((1 : GoUnTypedInt)) - (10 : GoUnTypedInt))));
final modeSetgid:FileMode = (new FileMode(((1 : GoUnTypedInt)) << (((32 : GoUnTypedInt)) - ((1 : GoUnTypedInt)) - (9 : GoUnTypedInt))));
final modeSetuid:FileMode = (new FileMode(((1 : GoUnTypedInt)) << (((32 : GoUnTypedInt)) - ((1 : GoUnTypedInt)) - (8 : GoUnTypedInt))));
final modeSocket:FileMode = (new FileMode(((1 : GoUnTypedInt)) << (((32 : GoUnTypedInt)) - ((1 : GoUnTypedInt)) - (7 : GoUnTypedInt))));
final modeDir:FileMode = (new FileMode(((1 : GoUnTypedInt)) << (((32 : GoUnTypedInt)) - ((1 : GoUnTypedInt)) - (0 : GoUnTypedInt))));
final modeSymlink:FileMode = (new FileMode(((1 : GoUnTypedInt)) << (((32 : GoUnTypedInt)) - ((1 : GoUnTypedInt)) - (4 : GoUnTypedInt))));
final modeDevice:FileMode = (new FileMode(((1 : GoUnTypedInt)) << (((32 : GoUnTypedInt)) - ((1 : GoUnTypedInt)) - (5 : GoUnTypedInt))));
final modeIrregular:FileMode = (new FileMode(((1 : GoUnTypedInt)) << (((32 : GoUnTypedInt)) - ((1 : GoUnTypedInt)) - (12 : GoUnTypedInt))));
final modeType:FileMode = new FileMode(new FileMode(new FileMode(new FileMode(new FileMode(new FileMode(modeDir.__t__ | modeSymlink.__t__)
	.__t__ | modeNamedPipe.__t__).__t__ | modeSocket.__t__).__t__ | modeDevice.__t__).__t__ | modeCharDevice.__t__).__t__ | modeIrregular.__t__);
var errNotExist:stdgo.Error = _errNotExist();
var errExist:stdgo.Error = _errExist();
var errPermission:stdgo.Error = _errPermission();
var skipDir:stdgo.Error = stdgo.errors.Errors.new_("skip this directory");
final modeTemporary:FileMode = (new FileMode(((1 : GoUnTypedInt)) << (((32 : GoUnTypedInt)) - ((1 : GoUnTypedInt)) - (3 : GoUnTypedInt))));
final modeAppend:FileMode = (new FileMode(((1 : GoUnTypedInt)) << (((32 : GoUnTypedInt)) - ((1 : GoUnTypedInt)) - (1 : GoUnTypedInt))));
var errClosed:stdgo.Error = _errClosed();
var errInvalid:stdgo.Error = _errInvalid();
final modeSticky:FileMode = (new FileMode(((1 : GoUnTypedInt)) << (((32 : GoUnTypedInt)) - ((1 : GoUnTypedInt)) - (11 : GoUnTypedInt))));
final modeExclusive:FileMode = (new FileMode(((1 : GoUnTypedInt)) << (((32 : GoUnTypedInt)) - ((1 : GoUnTypedInt)) - (2 : GoUnTypedInt))));
final modePerm:FileMode = new FileMode(((511 : GoUInt32)));

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
	if (_name == (("." : GoString))) {
		return true;
	};
	while (true) {
		var _i:GoInt = ((0 : GoInt));
		while (_i < _name.length && _name[_i] != (("/".code : GoRune))) {
			_i++;
		};
		var _elem:GoString = _name.__slice__(0, _i);
		if (_elem == (("" : GoString)) || _elem == (("." : GoString)) || _elem == ((".." : GoString))) {
			return false;
		};
		if (_i == _name.length) {
			return true;
		};
		_name = _name.__slice__(_i + ((1 : GoInt)));
	};
}

function _errInvalid():Error {
	return internal.oserror.Oserror.errInvalid;
}

function _errPermission():Error {
	return internal.oserror.Oserror.errPermission;
}

function _errExist():Error {
	return internal.oserror.Oserror.errExist;
}

function _errNotExist():Error {
	return internal.oserror.Oserror.errNotExist;
}

function _errClosed():Error {
	return internal.oserror.Oserror.errClosed;
}

/**
	// Glob returns the names of all files matching pattern or nil
	// if there is no matching file. The syntax of patterns is the same
	// as in path.Match. The pattern may describe hierarchical names such as
	// usr/*|/bin/ed.
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
	var _matches:Slice<GoString> = new Slice<GoString>().nil(),
		_err:Error = ((null : stdgo.Error));
	{
		var __tmp__ = try {
			{value: ((_fsys.__underlying__().value : GlobFS)), ok: true};
		} catch (_) {
			{value: ((null : GlobFS)), ok: false};
		}, _fsys = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			return _fsys.glob(_pattern);
		};
	};
	{
		var __tmp__ = stdgo.path.Path.match(_pattern, ""),
			_:Bool = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Slice<GoString>().nil(), _1: _err};
		};
	};
	if (!_hasMeta(_pattern)) {
		{
			{
				var __tmp__ = stat(_fsys, _pattern);
				_err = __tmp__._1;
			};
			if (_err != null) {
				return {_0: new Slice<GoString>().nil(), _1: ((null : stdgo.Error))};
			};
		};
		return {_0: new Slice<GoString>(_pattern), _1: ((null : stdgo.Error))};
	};
	var __tmp__ = stdgo.path.Path.split(_pattern),
		_dir:GoString = __tmp__._0,
		_file:GoString = __tmp__._1;
	_dir = _cleanGlobPath(_dir);
	if (!_hasMeta(_dir)) {
		return _glob(_fsys, _dir, _file, new Slice<GoString>().nil());
	};
	if (_dir == _pattern) {
		return {_0: new Slice<GoString>().nil(), _1: stdgo.path.Path.errBadPattern};
	};
	var _m:Slice<GoString> = new Slice<GoString>().nil();
	{
		var __tmp__ = glob(_fsys, _dir);
		_m = __tmp__._0;
		_err = __tmp__._1;
	};
	if (_err != null) {
		return {_0: _matches, _1: _err};
	};
	for (_d in _m) {
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
	if (_path == (("" : GoString))) {
		return ".";
	} else {
		return _path.__slice__(((0 : GoInt)), _path.length - ((1 : GoInt)));
	};
}

/**
	// glob searches for files matching pattern in the directory dir
	// and appends them to matches, returning the updated slice.
	// If the directory cannot be opened, glob returns the existing matches.
	// New matches are added in lexicographical order.
**/
function _glob(_fs:FS, _dir:GoString, _pattern:GoString, _matches:Slice<GoString>):{var _0:Slice<GoString>; var _1:Error;} {
	var _m:Slice<GoString> = new Slice<GoString>().nil(),
		_e:Error = ((null : stdgo.Error));
	_m = _matches;
	var __tmp__ = readDir(_fs, _dir),
		_infos:Slice<DirEntry> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: _m, _1: _e};
	};
	for (_info in _infos) {
		var _n:GoString = _info.name();
		var __tmp__ = stdgo.path.Path.match(_pattern, _n),
			_matched:Bool = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: _m, _1: _err};
		};
		if (_matched) {
			_m = _m.__append__(stdgo.path.Path.join(_dir, _n));
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
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _path.length, _i++, {
			if (_path[_i] == (("*".code : GoRune)) || _path[_i] == (("?".code : GoRune)) || _path[_i] == (("[".code : GoRune))
				|| _path[_i] == (("\\".code : GoRune))) {
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
	var recover_exception:Error = null;
	var deferstack:Array<Void->Void> = [];
	{
		var __tmp__ = try {
			{value: ((_fsys.__underlying__().value : ReadDirFS)), ok: true};
		} catch (_) {
			{value: ((null : ReadDirFS)), ok: false};
		}, _fsys = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			return _fsys.readDir(_name);
		};
	};
	var __tmp__ = _fsys.open(_name),
		_file:File = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	try {
		if (_err != null) {
			return {_0: new Slice<DirEntry>().nil(), _1: _err};
		};
		deferstack.unshift(() -> _file.close());
		var __tmp__ = try {
			{value: ((_file.__underlying__().value : ReadDirFile)), ok: true};
		} catch (_) {
			{value: ((null : ReadDirFile)), ok: false};
		}, _dir = __tmp__.value, _ok = __tmp__.ok;
		if (!_ok) {
			{
				for (defer in deferstack) {
					defer();
				};
				return {_0: new Slice<DirEntry>().nil(), _1: Go.pointer((({op: "readdir", path: _name,
					err: stdgo.errors.Errors.new_("not implemented")} : PathError)))
					.value};
			};
		};
		var __tmp__ = _dir.readDir(-((1 : GoUnTypedInt))),
			_list:Slice<DirEntry> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		stdgo.sort.Sort.slice(Go.toInterface(_list), function(_i:GoInt, _j:GoInt):Bool {
			return _list[_i].name() < _list[_j].name();
		});
		{
			for (defer in deferstack) {
				defer();
			};
			return {_0: _list, _1: _err};
		};
		for (defer in deferstack) {
			defer();
		};
	} catch (e) {
		recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
		{
			for (defer in deferstack) {
				defer();
			};
			if (recover_exception != null)
				throw recover_exception;
			return {_0: new Slice<DirEntry>().nil(), _1: ((null : stdgo.Error))};
		};
	};
}

/**
	// FileInfoToDirEntry returns a DirEntry that returns information from info.
	// If info is nil, FileInfoToDirEntry returns nil.
**/
function fileInfoToDirEntry(_info:FileInfo):DirEntry {
	if (_info == null) {
		return ((null : DirEntry));
	};
	return (({_fileInfo: _info} : T_dirInfo)).__copy__();
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
	var recover_exception:Error = null;
	var deferstack:Array<Void->Void> = [];
	{
		var __tmp__ = try {
			{value: ((_fsys.__underlying__().value : ReadFileFS)), ok: true};
		} catch (_) {
			{value: ((null : ReadFileFS)), ok: false};
		}, _fsys = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			return _fsys.readFile(_name);
		};
	};
	var __tmp__ = _fsys.open(_name),
		_file:File = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	try {
		if (_err != null) {
			return {_0: new Slice<GoUInt8>().nil(), _1: _err};
		};
		deferstack.unshift(() -> _file.close());
		var _size:GoInt = ((0 : GoInt));
		{
			var __tmp__ = _file.stat(),
				_info:FileInfo = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err == null) {
				var _size64:GoInt64 = _info.size();
				if (((((_size64 : GoInt)) : GoInt64)) == _size64) {
					_size = ((_size64 : GoInt));
				};
			};
		};
		var _data:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_size +
			((1 : GoInt)) : GoInt)).toBasic());
		while (true) {
			if (_data.length >= _data.cap()) {
				var _d:Slice<GoUInt8> = _data.__slice__(0, _data.cap()).__append__(((0 : GoUInt8)));
				_data = _d.__slice__(0, _data.length);
			};
			var __tmp__ = _file.read(_data.__slice__(_data.length, _data.cap())),
				_n:GoInt = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			_data = _data.__slice__(0, _data.length + _n);
			if (_err != null) {
				if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
					_err = ((null : stdgo.Error));
				};
				{
					for (defer in deferstack) {
						defer();
					};
					return {_0: _data, _1: _err};
				};
			};
		};
		for (defer in deferstack) {
			defer();
		};
	} catch (e) {
		recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
		{
			for (defer in deferstack) {
				defer();
			};
			if (recover_exception != null)
				throw recover_exception;
			return {_0: new Slice<GoUInt8>().nil(), _1: ((null : stdgo.Error))};
		};
	};
}

/**
	// Stat returns a FileInfo describing the named file from the file system.
	//
	// If fs implements StatFS, Stat calls fs.Stat.
	// Otherwise, Stat opens the file to stat it.
**/
function stat(_fsys:FS, _name:GoString):{var _0:FileInfo; var _1:Error;} {
	var recover_exception:Error = null;
	var deferstack:Array<Void->Void> = [];
	{
		var __tmp__ = try {
			{value: ((_fsys.__underlying__().value : StatFS)), ok: true};
		} catch (_) {
			{value: ((null : StatFS)), ok: false};
		}, _fsys = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			return _fsys.stat(_name);
		};
	};
	var __tmp__ = _fsys.open(_name),
		_file:File = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	try {
		if (_err != null) {
			return {_0: ((null : FileInfo)), _1: _err};
		};
		deferstack.unshift(() -> _file.close());
		{
			for (defer in deferstack) {
				defer();
			};
			return _file.stat();
		};
		for (defer in deferstack) {
			defer();
		};
	} catch (e) {
		recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
		{
			for (defer in deferstack) {
				defer();
			};
			if (recover_exception != null)
				throw recover_exception;
			return {_0: ((null : FileInfo)), _1: ((null : stdgo.Error))};
		};
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
		return {_0: ((null : FS)), _1: Go.pointer((({op: "sub", path: _dir, err: stdgo.errors.Errors.new_("invalid name")} : PathError))).value};
	};
	if (_dir == (("." : GoString))) {
		return {_0: _fsys, _1: ((null : stdgo.Error))};
	};
	{
		var __tmp__ = try {
			{value: ((_fsys.__underlying__().value : SubFS)), ok: true};
		} catch (_) {
			{value: ((null : SubFS)), ok: false};
		}, _fsys = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			return _fsys.sub(_dir);
		};
	};
	return {_0: Go.pointer(new T_subFS(_fsys, _dir)).value, _1: ((null : stdgo.Error))};
}

/**
	// walkDir recursively descends path, calling walkDirFn.
**/
function _walkDir(_fsys:FS, _name:GoString, _d:DirEntry, _walkDirFn:WalkDirFunc):Error {
	{
		var _err:stdgo.Error = _walkDirFn.__t__(_name, _d, ((null : stdgo.Error)));
		if (_err != null || !_d.isDir()) {
			if (Go.toInterface(_err) == Go.toInterface(skipDir) && _d.isDir()) {
				_err = ((null : stdgo.Error));
			};
			return _err;
		};
	};
	var __tmp__ = readDir(_fsys, _name),
		_dirs:Slice<DirEntry> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		_err = _walkDirFn.__t__(_name, _d, _err);
		if (_err != null) {
			return _err;
		};
	};
	for (_d1 in _dirs) {
		var _name1:GoString = stdgo.path.Path.join(_name, _d1.name());
		{
			var _err:stdgo.Error = _walkDir(_fsys, _name1, _d1, _walkDirFn.__copy__());
			if (_err != null) {
				if (Go.toInterface(_err) == Go.toInterface(skipDir)) {
					break;
				};
				return _err;
			};
		};
	};
	return ((null : stdgo.Error));
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
		_err = _fn.__t__(_root, ((null : DirEntry)), _err);
	} else {
		_err = _walkDir(_fsys, _root, Go.pointer(new T_statDirEntry(_info)).value, _fn.__copy__());
	};
	if (Go.toInterface(_err) == Go.toInterface(skipDir)) {
		return ((null : stdgo.Error));
	};
	return _err;
}

class FileMode_extension_fields {
	public function toString(__tmp__):GoString
		return __tmp__.toString();

	public function isDir(__tmp__):Bool
		return __tmp__.isDir();

	public function isRegular(__tmp__):Bool
		return __tmp__.isRegular();

	public function perm(__tmp__):FileMode
		return __tmp__.perm();

	public function type(__tmp__):FileMode
		return __tmp__.type();
}

class PathError_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();

	public function unwrap(__tmp__):Error
		return __tmp__.unwrap();

	public function timeout(__tmp__):Bool
		return __tmp__.timeout();
}

class T_dirInfo_extension_fields {
	public function isDir(__tmp__):Bool
		return __tmp__.isDir();

	public function type(__tmp__):FileMode
		return __tmp__.type();

	public function info(__tmp__):{var _0:FileInfo; var _1:Error;}
		return __tmp__.info();

	public function name(__tmp__):GoString
		return __tmp__.name();
}

class T_subFS_extension_fields {
	public function _fullName(__tmp__, _op:GoString, _name:GoString):{var _0:GoString; var _1:Error;}
		return __tmp__._fullName(_op, _name);

	public function _shorten(__tmp__, _name:GoString):{var _0:GoString; var _1:Bool;}
		return __tmp__._shorten(_name);

	public function _fixErr(__tmp__, _err:Error):Error
		return __tmp__._fixErr(_err);

	public function open(__tmp__, _name:GoString):{var _0:File; var _1:Error;}
		return __tmp__.open(_name);

	public function readDir(__tmp__, _name:GoString):{var _0:Slice<DirEntry>; var _1:Error;}
		return __tmp__.readDir(_name);

	public function readFile(__tmp__, _name:GoString):{var _0:Slice<GoByte>; var _1:Error;}
		return __tmp__.readFile(_name);

	public function glob(__tmp__, _pattern:GoString):{var _0:Slice<GoString>; var _1:Error;}
		return __tmp__.glob(_pattern);

	public function sub(__tmp__, _dir:GoString):{var _0:FS; var _1:Error;}
		return __tmp__.sub(_dir);
}

class T_statDirEntry_extension_fields {
	public function name(__tmp__):GoString
		return __tmp__.name();

	public function isDir(__tmp__):Bool
		return __tmp__.isDir();

	public function type(__tmp__):FileMode
		return __tmp__.type();

	public function info(__tmp__):{var _0:FileInfo; var _1:Error;}
		return __tmp__.info();
}
