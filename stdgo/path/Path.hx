package stdgo.path;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

var errBadPattern:stdgo.Error = stdgo.errors.Errors.new_((Go.str("syntax error in pattern") : GoString));

@:structInit @:using(stdgo.path.Path.T_lazybuf_static_extension) private class T_lazybuf {
	public var _s:GoString = "";
	public var _buf:Slice<GoUInt8> = (null : Slice<GoUInt8>);
	public var _w:GoInt = 0;

	public function new(?_s:GoString, ?_buf:Slice<GoUInt8>, ?_w:GoInt) {
		if (_s != null)
			this._s = _s;
		if (_buf != null)
			this._buf = _buf;
		if (_w != null)
			this._w = _w;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_lazybuf(_s, _buf, _w);
	}
}

/**
	// Match reports whether name matches the shell pattern.
	// The pattern syntax is:
	//
	//	pattern:
	//		{ term }
	//	term:
	//		'*'         matches any sequence of non-/ characters
	//		'?'         matches any single non-/ character
	//		'[' [ '^' ] { character-range } ']'
	//		            character class (must be non-empty)
	//		c           matches character c (c != '*', '?', '\\', '[')
	//		'\\' c      matches character c
	//
	//	character-range:
	//		c           matches character c (c != '\\', '-', ']')
	//		'\\' c      matches character c
	//		lo '-' hi   matches character c for lo <= c <= hi
	//
	// Match requires pattern to match all of name, not just a substring.
	// The only possible returned error is ErrBadPattern, when pattern
	// is malformed.
**/
function match(_pattern:GoString, _name:GoString):{var _0:Bool; var _1:Error;} {
	return stdgo.internal.Macro.controlFlow({
		var _matched:Bool = false, _err:Error = (null : stdgo.Error);
		@:label("Pattern") while ((_pattern.length) > (0 : GoInt)) {
			var _star:Bool = false;
			var _chunk:GoString = ("" : GoString);
			{
				var __tmp__ = _scanChunk(_pattern);
				_star = __tmp__._0;
				_chunk = __tmp__._1;
				_pattern = __tmp__._2;
			};
			if (_star && (_chunk == (Go.str() : GoString))) {
				return {_0: stdgo.internal.bytealg.Bytealg.indexByteString(_name, ("/".code : GoUInt8)) < (0:GoInt), _1: (null : stdgo.Error)};
			};
			var __tmp__ = _matchChunk(_chunk, _name),
				_t:GoString = __tmp__._0,
				_ok:Bool = __tmp__._1,
				_err:stdgo.Error = __tmp__._2;
			if (_ok && ((_t.length) == (0 : GoInt) || (_pattern.length) > (0 : GoInt))) {
				_name = _t;
				continue;
			};
			if (_err != null) {
				return {_0: false, _1: _err};
			};
			if (_star) {
				{
					var _i:GoInt = (0 : GoInt);
					Go.cfor((_i < _name.length) && (_name[_i] != ("/".code : GoUInt8)), _i++, {
						var __tmp__ = _matchChunk(_chunk, (_name.__slice__(_i + (1 : GoInt)) : GoString)),
							_t:GoString = __tmp__._0,
							_ok:Bool = __tmp__._1,
							_err:stdgo.Error = __tmp__._2;
						if (_ok) {
							if ((_pattern.length == (0 : GoInt)) && (_t.length > (0 : GoInt))) {
								continue;
							};
							_name = _t;
							continue;
						};
						if (_err != null) {
							return {_0: false, _1: _err};
						};
					});
				};
			};
			while ((_pattern.length) > (0 : GoInt)) {
				{
					var __tmp__ = _scanChunk(_pattern);
					_chunk = __tmp__._1;
					_pattern = __tmp__._2;
				};
				{
					var __tmp__ = _matchChunk(_chunk, (Go.str() : GoString)),
						_0:GoString = __tmp__._0,
						_1:Bool = __tmp__._1,
						_err:stdgo.Error = __tmp__._2;
					if (_err != null) {
						return {_0: false, _1: _err};
					};
				};
			};
			return {_0: false, _1: (null : stdgo.Error)};
		};
		return {_0: (_name.length) == (0 : GoInt), _1: (null : stdgo.Error)};
	});
}

/**
	// scanChunk gets the next segment of pattern, which is a non-star string
	// possibly preceded by a star.
**/
function _scanChunk(_pattern:GoString):{var _0:Bool; var _1:GoString; var _2:GoString;} {
	return stdgo.internal.Macro.controlFlow({
		var _star:Bool = false,
			_chunk:GoString = ("" : GoString),
			_rest:GoString = ("" : GoString);
		while ((_pattern.length > (0 : GoInt)) && (_pattern[(0 : GoInt)] == ("*".code : GoUInt8))) {
			_pattern = (_pattern.__slice__((1 : GoInt)) : GoString);
			_star = true;
		};
		var _inrange:Bool = false;
		var _i:GoInt = (0 : GoInt);
		@:label("Scan") {
			_i = (0 : GoInt);
			Go.cfor(_i < (_pattern.length), _i++, {
				{
					var __switchIndex__ = -1;
					while (true) {
						if (_pattern[_i] == ("\\".code : GoUInt8)) {
							if ((_i + (1 : GoInt)) < (_pattern.length)) {
								_i++;
							};
							break;
						} else if (_pattern[_i] == ("[".code : GoUInt8)) {
							_inrange = true;
							break;
						} else if (_pattern[_i] == ("]".code : GoUInt8)) {
							_inrange = false;
							break;
						} else if (_pattern[_i] == ("*".code : GoUInt8)) {
							if (!_inrange) {
								@:break {
									____exit____ = true;
									____break____ = true;
									break;
								};
							};
							break;
						};
						break;
					};
				};
			});
		};
		return {_0: _star, _1: (_pattern.__slice__((0 : GoInt), _i) : GoString), _2: (_pattern.__slice__(_i) : GoString)};
	});
}

/**
	// matchChunk checks whether chunk matches the beginning of s.
	// If so, it returns the remainder of s (after the match).
	// Chunk is all single-character operators: literals, char classes, and ?.
**/
function _matchChunk(_chunk:GoString, _s:GoString):{var _0:GoString; var _1:Bool; var _2:Error;} {
	var _rest:GoString = ("" : GoString),
		_ok:Bool = false,
		_err:Error = (null : stdgo.Error);
	var _failed:Bool = false;
	while ((_chunk.length) > (0 : GoInt)) {
		if (!_failed && (_s.length == (0 : GoInt))) {
			_failed = true;
		};
		{
			var __switchIndex__ = -1;
			while (true) {
				if (__switchIndex__ == 0 || (__switchIndex__ == -1 && _chunk[(0 : GoInt)] == ("[".code : GoUInt8))) {
					var _r:GoRune = (0 : GoInt32);
					if (!_failed) {
						var _n:GoInt = (0 : GoInt);
						{
							var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s);
							_r = __tmp__._0;
							_n = __tmp__._1;
						};
						_s = (_s.__slice__(_n) : GoString);
					};
					_chunk = (_chunk.__slice__((1 : GoInt)) : GoString);
					var _negated:Bool = false;
					if ((_chunk.length > (0 : GoInt)) && (_chunk[(0 : GoInt)] == ("^".code : GoUInt8))) {
						_negated = true;
						_chunk = (_chunk.__slice__((1 : GoInt)) : GoString);
					};
					var _match:Bool = false;
					var _nrange:GoInt = (0 : GoInt);
					while (true) {
						if (((_chunk.length) > (0 : GoInt) && _chunk[(0 : GoInt)] == ("]".code : GoUInt8)) && (_nrange > (0 : GoInt))) {
							_chunk = (_chunk.__slice__((1 : GoInt)) : GoString);
							break;
						};
						var _lo:GoRune = (0 : GoInt32),
							_hi:GoRune = (0 : GoInt32);
						{
							{
								var __tmp__ = _getEsc(_chunk);
								_lo = __tmp__._0;
								_chunk = __tmp__._1;
								_err = __tmp__._2;
							};
							if (_err != null) {
								return {_0: (Go.str() : GoString), _1: false, _2: _err};
							};
						};
						_hi = _lo;
						if (_chunk[(0 : GoInt)] == ("-".code : GoUInt8)) {
							{
								{
									var __tmp__ = _getEsc((_chunk.__slice__((1 : GoInt)) : GoString));
									_hi = __tmp__._0;
									_chunk = __tmp__._1;
									_err = __tmp__._2;
								};
								if (_err != null) {
									return {_0: (Go.str() : GoString), _1: false, _2: _err};
								};
							};
						};
						if ((_lo <= _r) && (_r <= _hi)) {
							_match = true;
						};
						_nrange++;
					};
					if (_match == _negated) {
						_failed = true;
					};
					break;
					break;
				} else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _chunk[(0 : GoInt)] == ("?".code : GoUInt8))) {
					if (!_failed) {
						if (_s[(0 : GoInt)] == ("/".code : GoUInt8)) {
							_failed = true;
						};
						var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s),
							_0:GoInt32 = __tmp__._0,
							_n:GoInt = __tmp__._1;
						_s = (_s.__slice__(_n) : GoString);
					};
					_chunk = (_chunk.__slice__((1 : GoInt)) : GoString);
					break;
					break;
				} else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && _chunk[(0 : GoInt)] == ("\\".code : GoUInt8))) {
					_chunk = (_chunk.__slice__((1 : GoInt)) : GoString);
					if ((_chunk.length) == (0 : GoInt)) {
						return {_0: (Go.str() : GoString), _1: false, _2: errBadPattern};
					};
					@:fallthrough {
						__switchIndex__ = 3;
						continue;
					};
					break;
				} else {
					if (!_failed) {
						if (_chunk[(0 : GoInt)] != _s[(0 : GoInt)]) {
							_failed = true;
						};
						_s = (_s.__slice__((1 : GoInt)) : GoString);
					};
					_chunk = (_chunk.__slice__((1 : GoInt)) : GoString);
					break;
				};
				break;
			};
		};
	};
	if (_failed) {
		return {_0: (Go.str() : GoString), _1: false, _2: (null : stdgo.Error)};
	};
	return {_0: _s, _1: true, _2: (null : stdgo.Error)};
}

/**
	// getEsc gets a possibly-escaped character from chunk, for a character class.
**/
function _getEsc(_chunk:GoString):{var _0:GoRune; var _1:GoString; var _2:Error;} {
	var _r:GoRune = (0 : GoInt32),
		_nchunk:GoString = ("" : GoString),
		_err:Error = (null : stdgo.Error);
	if (((_chunk.length) == (0 : GoInt) || _chunk[(0 : GoInt)] == ("-".code : GoUInt8)) || (_chunk[(0 : GoInt)] == ("]".code : GoUInt8))) {
		_err = errBadPattern;
		return {_0: _r, _1: _nchunk, _2: _err};
	};
	if (_chunk[(0 : GoInt)] == ("\\".code : GoUInt8)) {
		_chunk = (_chunk.__slice__((1 : GoInt)) : GoString);
		if ((_chunk.length) == (0 : GoInt)) {
			_err = errBadPattern;
			return {_0: _r, _1: _nchunk, _2: _err};
		};
	};
	var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_chunk),
		_r:GoInt32 = __tmp__._0,
		_n:GoInt = __tmp__._1;
	if ((_r == (65533 : GoInt32)) && (_n == (1 : GoInt))) {
		_err = errBadPattern;
	};
	_nchunk = (_chunk.__slice__(_n) : GoString);
	if ((_nchunk.length) == (0 : GoInt)) {
		_err = errBadPattern;
	};
	return {_0: _r, _1: _nchunk, _2: _err};
}

/**
	// Clean returns the shortest path name equivalent to path
	// by purely lexical processing. It applies the following rules
	// iteratively until no further processing can be done:
	//
	//  1. Replace multiple slashes with a single slash.
	//  2. Eliminate each . path name element (the current directory).
	//  3. Eliminate each inner .. path name element (the parent directory)
	//     along with the non-.. element that precedes it.
	//  4. Eliminate .. elements that begin a rooted path:
	//     that is, replace "/.." by "/" at the beginning of a path.
	//
	// The returned path ends in a slash only if it is the root "/".
	//
	// If the result of this process is an empty string, Clean
	// returns the string ".".
	//
	// See also Rob Pike, “Lexical File Names in Plan 9 or
	// Getting Dot-Dot Right,”
	// https://9p.io/sys/doc/lexnames.html
**/
function clean(_path:GoString):GoString {
	if (_path == (Go.str() : GoString)) {
		return (Go.str(".") : GoString);
	};
	var _rooted:Bool = _path[(0 : GoInt)] == ("/".code : GoUInt8);
	var _n:GoInt = (_path.length);
	var _out:T_lazybuf = ({_s: _path} : T_lazybuf);
	var _r:GoInt = (0 : GoInt), _dotdot:GoInt = (0 : GoInt);
	if (_rooted) {
		_out._append(("/".code : GoUInt8));
		{
			final __tmp__0 = (1 : GoInt);
			final __tmp__1 = (1 : GoInt);
			_r = __tmp__0;
			_dotdot = __tmp__1;
		};
	};
	while (_r < _n) {
		if (_path[_r] == ("/".code : GoUInt8)) {
			_r++;
		} else if ((_path[_r] == (".".code : GoUInt8)) && ((_r + (1 : GoInt)) == _n || _path[_r + (1 : GoInt)] == ("/".code : GoUInt8))) {
			_r++;
		} else if ((_path[_r] == (".".code : GoUInt8) && _path[_r + (1 : GoInt)] == (".".code : GoUInt8))
			&& ((_r + (2 : GoInt)) == _n || _path[_r + (2 : GoInt)] == ("/".code : GoUInt8))) {
			_r = _r + ((2 : GoInt));
			if (_out._w > _dotdot) {
				_out._w--;
				while ((_out._w > _dotdot) && (_out._index(_out._w) != ("/".code : GoUInt8))) {
					_out._w--;
				};
			} else if (!_rooted) {
				if (_out._w > (0 : GoInt)) {
					_out._append(("/".code : GoUInt8));
				};
				_out._append((".".code : GoUInt8));
				_out._append((".".code : GoUInt8));
				_dotdot = _out._w;
			};
		} else {
			if ((_rooted && _out._w != (1 : GoInt)) || (!_rooted && _out._w != (0 : GoInt))) {
				_out._append(("/".code : GoUInt8));
			};
			Go.cfor((_r < _n) && (_path[_r] != ("/".code : GoUInt8)), _r++, {
				_out._append(_path[_r]);
			});
		};
	};
	if (_out._w == (0 : GoInt)) {
		return (Go.str(".") : GoString);
	};
	return _out._string();
}

/**
	// lastSlash(s) is strings.LastIndex(s, "/") but we can't import strings.
**/
function _lastSlash(_s:GoString):GoInt {
	var _i:GoInt = (_s.length) - (1 : GoInt);
	while ((_i >= (0 : GoInt)) && (_s[_i] != ("/".code : GoUInt8))) {
		_i--;
	};
	return _i;
}

/**
	// Split splits path immediately following the final slash,
	// separating it into a directory and file name component.
	// If there is no slash in path, Split returns an empty dir and
	// file set to path.
	// The returned values have the property that path = dir+file.
**/
function split(_path:GoString):{var _0:GoString; var _1:GoString;} {
	var _dir:GoString = ("" : GoString), _file:GoString = ("" : GoString);
	var _i:GoInt = _lastSlash(_path);
	return {_0: (_path.__slice__(0, _i + (1 : GoInt)) : GoString), _1: (_path.__slice__(_i + (1 : GoInt)) : GoString)};
}

/**
	// Join joins any number of path elements into a single path,
	// separating them with slashes. Empty elements are ignored.
	// The result is Cleaned. However, if the argument list is
	// empty or all its elements are empty, Join returns
	// an empty string.
**/
function join(_elem:haxe.Rest<GoString>):GoString {
	var _elem = new Slice<GoString>(0, 0, ..._elem);
	var _size:GoInt = (0 : GoInt);
	for (_0 => _e in _elem) {
		_size = _size + ((_e.length));
	};
	if (_size == (0 : GoInt)) {
		return (Go.str() : GoString);
	};
	var _buf = new Slice<GoUInt8>((0 : GoInt).toBasic(), (_size + _elem.length) - (1 : GoInt), ...[for (i in 0...(0 : GoInt).toBasic()) (0 : GoUInt8)]);
	for (_1 => _e in _elem) {
		if ((_buf.length > (0 : GoInt)) || (_e != (Go.str() : GoString))) {
			if ((_buf.length) > (0 : GoInt)) {
				_buf = (_buf.__append__(("/".code : GoUInt8)));
			};
			_buf = (_buf.__append__(..._e.__toArray__()));
		};
	};
	return clean((_buf : GoString));
}

/**
	// Ext returns the file name extension used by path.
	// The extension is the suffix beginning at the final dot
	// in the final slash-separated element of path;
	// it is empty if there is no dot.
**/
function ext(_path:GoString):GoString {
	{
		var _i:GoInt = (_path.length) - (1 : GoInt);
		Go.cfor((_i >= (0 : GoInt)) && (_path[_i] != ("/".code : GoUInt8)), _i--, {
			if (_path[_i] == (".".code : GoUInt8)) {
				return (_path.__slice__(_i) : GoString);
			};
		});
	};
	return (Go.str() : GoString);
}

/**
	// Base returns the last element of path.
	// Trailing slashes are removed before extracting the last element.
	// If the path is empty, Base returns ".".
	// If the path consists entirely of slashes, Base returns "/".
**/
function base(_path:GoString):GoString {
	if (_path == (Go.str() : GoString)) {
		return (Go.str(".") : GoString);
	};
	while ((_path.length > (0 : GoInt)) && (_path[(_path.length) - (1 : GoInt)] == ("/".code : GoUInt8))) {
		_path = (_path.__slice__((0 : GoInt), (_path.length) - (1 : GoInt)) : GoString);
	};
	{
		var _i:GoInt = _lastSlash(_path);
		if (_i >= (0 : GoInt)) {
			_path = (_path.__slice__(_i + (1 : GoInt)) : GoString);
		};
	};
	if (_path == (Go.str() : GoString)) {
		return (Go.str("/") : GoString);
	};
	return _path;
}

/**
	// IsAbs reports whether the path is absolute.
**/
function isAbs(_path:GoString):Bool {
	return (_path.length > (0 : GoInt)) && (_path[(0 : GoInt)] == ("/".code : GoUInt8));
}

/**
	// Dir returns all but the last element of path, typically the path's directory.
	// After dropping the final element using Split, the path is Cleaned and trailing
	// slashes are removed.
	// If the path is empty, Dir returns ".".
	// If the path consists entirely of slashes followed by non-slash bytes, Dir
	// returns a single slash. In any other case, the returned path does not end in a
	// slash.
**/
function dir(_path:GoString):GoString {
	var __tmp__ = split(_path),
		_dir:GoString = __tmp__._0,
		_0:GoString = __tmp__._1;
	return clean(_dir);
}

@:keep private class T_lazybuf_static_extension {
	@:keep
	static public function _string(_b:T_lazybuf):GoString {
		if (_b._buf == null) {
			return (_b._s.__slice__(0, _b._w) : GoString);
		};
		return ((_b._buf.__slice__(0, _b._w) : Slice<GoUInt8>) : GoString);
	}

	@:keep
	static public function _append(_b:T_lazybuf, _c:GoByte):Void {
		if (_b._buf == null) {
			if ((_b._w < _b._s.length) && (_b._s[_b._w] == _c)) {
				_b._w++;
				return;
			};
			_b._buf = new Slice<GoUInt8>((_b._s.length : GoInt).toBasic(), 0, ...[for (i in 0...(_b._s.length : GoInt).toBasic()) (0 : GoUInt8)]);
			Go.copySlice(_b._buf, (_b._s.__slice__(0, _b._w) : GoString));
		};
		_b._buf[_b._w] = _c;
		_b._w++;
	}

	@:keep
	static public function _index(_b:T_lazybuf, _i:GoInt):GoByte {
		if (_b._buf != null) {
			return _b._buf[_i];
		};
		return _b._s[_i];
	}
}

class T_lazybuf_wrapper {
	@:keep
	public var _string:() -> GoString = null;
	@:keep
	public var _append:GoByte->Void = null;
	@:keep
	public var _index:GoInt->GoByte = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_lazybuf;
}
