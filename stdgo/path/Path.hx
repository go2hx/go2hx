package path;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

@:structInit class T_lazybuf {
	public function _string():GoString {
		var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_b.value._buf == null || _b.value._buf.isNil()) {
			return _b.value._s.__slice__(0, _b.value._w);
		};
		return ((_b.value._buf.__slice__(0, _b.value._w) : GoString));
	}

	public function _append(_c:GoByte):Void {
		var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_b.value._buf == null || _b.value._buf.isNil()) {
			if (_b.value._w < _b.value._s.length && _b.value._s[_b.value._w] == _c) {
				_b.value._w++;
				return;
			};
			_b.value._buf = new Slice<GoUInt8>(...[for (i in 0...((_b.value._s.length : GoInt)).toBasic()) ((0 : GoUInt8))]);
			Go.copy(_b.value._buf, _b.value._s.__slice__(0, _b.value._w));
		};
		_b.value._buf[_b.value._w] = _c;
		_b.value._w++;
	}

	public function _index(_i:GoInt):GoByte {
		var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_b.value._buf != null && !_b.value._buf.isNil()) {
			return _b.value._buf[_i];
		};
		return _b.value._s[_i];
	}

	public var _s:GoString = (("" : GoString));
	public var _buf:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var _w:GoInt = ((0 : GoInt));

	public function new(?_s:GoString, ?_buf:Slice<GoUInt8>, ?_w:GoInt)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_s) + " " + Go.string(_buf) + " " + Go.string(_w) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_lazybuf(_s, _buf, _w);
	}

	public function __set__(__tmp__) {
		this._s = __tmp__._s;
		this._buf = __tmp__._buf;
		this._w = __tmp__._w;
		return this;
	}
}

var errBadPattern:stdgo.Error = stdgo.errors.Errors.new_("syntax error in pattern");

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
	//
**/
function match(_pattern:GoString, _name:GoString):{var _0:Bool; var _1:Error;} {
	return stdgo.internal.Macro.controlFlow({
		var _matched:Bool = false, _err:Error = ((null : stdgo.Error));
		@:label("Pattern") while (_pattern.length > ((0 : GoInt))) {
			var _star:Bool = false;
			var _chunk:GoString = (("" : GoString));
			{
				var __tmp__ = _scanChunk(_pattern);
				_star = __tmp__._0;
				_chunk = __tmp__._1;
				_pattern = __tmp__._2;
			};
			if (_star && _chunk == (("" : GoString))) {
				return {_0: internal.bytealg.Bytealg.indexByteString(_name, (("/".code : GoRune))) < ((0 : GoInt)), _1: ((null : stdgo.Error))};
			};
			var __tmp__ = _matchChunk(_chunk, _name),
				_t:GoString = __tmp__._0,
				_ok:Bool = __tmp__._1,
				_err:stdgo.Error = __tmp__._2;
			if (_ok && (_t.length == ((0 : GoInt)) || _pattern.length > ((0 : GoInt)))) {
				_name = _t;
				continue;
			};
			if (_err != null) {
				return {_0: false, _1: _err};
			};
			if (_star) {
				{
					var _i:GoInt = ((0 : GoInt));
					Go.cfor(_i < _name.length && _name[_i] != (("/".code : GoRune)), _i++, {
						var __tmp__ = _matchChunk(_chunk, _name.__slice__(_i + ((1 : GoInt)))),
							_t:GoString = __tmp__._0,
							_ok:Bool = __tmp__._1,
							_err:stdgo.Error = __tmp__._2;
						if (_ok) {
							if (_pattern.length == ((0 : GoInt)) && _t.length > ((0 : GoInt))) {
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
			while (_pattern.length > ((0 : GoInt))) {
				{
					var __tmp__ = _scanChunk(_pattern);
					_chunk = __tmp__._1;
					_pattern = __tmp__._2;
				};
				{
					var __tmp__ = _matchChunk(_chunk, ""),
						_:GoString = __tmp__._0,
						_:Bool = __tmp__._1,
						_err:stdgo.Error = __tmp__._2;
					if (_err != null) {
						return {_0: false, _1: _err};
					};
				};
			};
			return {_0: false, _1: ((null : stdgo.Error))};
		};
		return {_0: _name.length == ((0 : GoInt)), _1: ((null : stdgo.Error))};
	});
}

/**
	// scanChunk gets the next segment of pattern, which is a non-star string
	// possibly preceded by a star.
**/
function _scanChunk(_pattern:GoString):{var _0:Bool; var _1:GoString; var _2:GoString;} {
	return stdgo.internal.Macro.controlFlow({
		var _star:Bool = false,
			_chunk:GoString = (("" : GoString)),
			_rest:GoString = (("" : GoString));
		while (_pattern.length > ((0 : GoInt)) && _pattern[((0 : GoInt))] == (("*".code : GoRune))) {
			_pattern = _pattern.__slice__(((1 : GoInt)));
			_star = true;
		};
		var _inrange:Bool = false;
		var _i:GoInt = ((0 : GoInt));
		@:label("Scan") {
			_i = ((0 : GoInt));
			Go.cfor(_i < _pattern.length, _i++, {
				{
					var __switchIndex__ = -1;
					while (true) {
						if (_pattern[_i] == (("\\".code : GoRune))) {
							if (_i + ((1 : GoInt)) < _pattern.length) {
								_i++;
							};
							break;
						} else if (_pattern[_i] == (("[".code : GoRune))) {
							_inrange = true;
							break;
						} else if (_pattern[_i] == (("]".code : GoRune))) {
							_inrange = false;
							break;
						} else if (_pattern[_i] == (("*".code : GoRune))) {
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
		return {_0: _star, _1: _pattern.__slice__(((0 : GoInt)), _i), _2: _pattern.__slice__(_i)};
	});
}

/**
	// matchChunk checks whether chunk matches the beginning of s.
	// If so, it returns the remainder of s (after the match).
	// Chunk is all single-character operators: literals, char classes, and ?.
**/
function _matchChunk(_chunk:GoString, _s:GoString):{var _0:GoString; var _1:Bool; var _2:Error;} {
	var _rest:GoString = (("" : GoString)),
		_ok:Bool = false,
		_err:Error = ((null : stdgo.Error));
	var _failed:Bool = false;
	while (_chunk.length > ((0 : GoInt))) {
		if (!_failed && _s.length == ((0 : GoInt))) {
			_failed = true;
		};
		{
			var __switchIndex__ = -1;
			while (true) {
				if (__switchIndex__ == 0 || (__switchIndex__ == -1 && _chunk[((0 : GoInt))] == (("[".code : GoRune)))) {
					var _r:GoRune = ((0 : GoInt32));
					if (!_failed) {
						var _n:GoInt = ((0 : GoInt));
						{
							var __tmp__ = unicode.utf8.Utf8.decodeRuneInString(_s);
							_r = __tmp__._0;
							_n = __tmp__._1;
						};
						_s = _s.__slice__(_n);
					};
					_chunk = _chunk.__slice__(((1 : GoInt)));
					var _negated:Bool = false;
					if (_chunk.length > ((0 : GoInt)) && _chunk[((0 : GoInt))] == (("^".code : GoRune))) {
						_negated = true;
						_chunk = _chunk.__slice__(((1 : GoInt)));
					};
					var _match:Bool = false;
					var _nrange:GoInt = ((0 : GoInt));
					while (true) {
						if (_chunk.length > ((0 : GoInt)) && _chunk[((0 : GoInt))] == (("]".code : GoRune)) && _nrange > ((0 : GoInt))) {
							_chunk = _chunk.__slice__(((1 : GoInt)));
							break;
						};
						var _lo:GoRune = ((0 : GoInt32)),
							_hi:GoRune = ((0 : GoInt32));
						{
							{
								var __tmp__ = _getEsc(_chunk);
								_lo = __tmp__._0;
								_chunk = __tmp__._1;
								_err = __tmp__._2;
							};
							if (_err != null) {
								return {_0: "", _1: false, _2: _err};
							};
						};
						_hi = _lo;
						if (_chunk[((0 : GoInt))] == (("-".code : GoRune))) {
							{
								{
									var __tmp__ = _getEsc(_chunk.__slice__(((1 : GoInt))));
									_hi = __tmp__._0;
									_chunk = __tmp__._1;
									_err = __tmp__._2;
								};
								if (_err != null) {
									return {_0: "", _1: false, _2: _err};
								};
							};
						};
						if (_lo <= _r && _r <= _hi) {
							_match = true;
						};
						_nrange++;
					};
					if (_match == _negated) {
						_failed = true;
					};
					break;
					break;
				} else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _chunk[((0 : GoInt))] == (("?".code : GoRune)))) {
					if (!_failed) {
						if (_s[((0 : GoInt))] == (("/".code : GoRune))) {
							_failed = true;
						};
						var __tmp__ = unicode.utf8.Utf8.decodeRuneInString(_s),
							_:GoInt32 = __tmp__._0,
							_n:GoInt = __tmp__._1;
						_s = _s.__slice__(_n);
					};
					_chunk = _chunk.__slice__(((1 : GoInt)));
					break;
					break;
				} else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && _chunk[((0 : GoInt))] == (("\\".code : GoRune)))) {
					_chunk = _chunk.__slice__(((1 : GoInt)));
					if (_chunk.length == ((0 : GoInt))) {
						return {_0: "", _1: false, _2: errBadPattern};
					};
					@:fallthrough {
						__switchIndex__ = 3;
						continue;
					};
					break;
				} else {
					if (!_failed) {
						if (_chunk[((0 : GoInt))] != _s[((0 : GoInt))]) {
							_failed = true;
						};
						_s = _s.__slice__(((1 : GoInt)));
					};
					_chunk = _chunk.__slice__(((1 : GoInt)));
					break;
				};
				break;
			};
		};
	};
	if (_failed) {
		return {_0: "", _1: false, _2: ((null : stdgo.Error))};
	};
	return {_0: _s, _1: true, _2: ((null : stdgo.Error))};
}

/**
	// getEsc gets a possibly-escaped character from chunk, for a character class.
**/
function _getEsc(_chunk:GoString):{var _0:GoRune; var _1:GoString; var _2:Error;} {
	var _r:GoRune = ((0 : GoInt32)),
		_nchunk:GoString = (("" : GoString)),
		_err:Error = ((null : stdgo.Error));
	if (_chunk.length == ((0 : GoInt))
		|| _chunk[((0 : GoInt))] == (("-".code : GoRune))
		|| _chunk[((0 : GoInt))] == (("]".code : GoRune))) {
		_err = errBadPattern;
		return {_0: _r, _1: _nchunk, _2: _err};
	};
	if (_chunk[((0 : GoInt))] == (("\\".code : GoRune))) {
		_chunk = _chunk.__slice__(((1 : GoInt)));
		if (_chunk.length == ((0 : GoInt))) {
			_err = errBadPattern;
			return {_0: _r, _1: _nchunk, _2: _err};
		};
	};
	var __tmp__ = unicode.utf8.Utf8.decodeRuneInString(_chunk),
		_r:GoInt32 = __tmp__._0,
		_n:GoInt = __tmp__._1;
	if (_r == unicode.utf8.Utf8.runeError && _n == ((1 : GoInt))) {
		_err = errBadPattern;
	};
	_nchunk = _chunk.__slice__(_n);
	if (_nchunk.length == ((0 : GoInt))) {
		_err = errBadPattern;
	};
	return {_0: _r, _1: _nchunk, _2: _err};
}

/**
	// Clean returns the shortest path name equivalent to path
	// by purely lexical processing. It applies the following rules
	// iteratively until no further processing can be done:
	//
	//	1. Replace multiple slashes with a single slash.
	//	2. Eliminate each . path name element (the current directory).
	//	3. Eliminate each inner .. path name element (the parent directory)
	//	   along with the non-.. element that precedes it.
	//	4. Eliminate .. elements that begin a rooted path:
	//	   that is, replace "/.." by "/" at the beginning of a path.
	//
	// The returned path ends in a slash only if it is the root "/".
	//
	// If the result of this process is an empty string, Clean
	// returns the string ".".
	//
	// See also Rob Pike, ``Lexical File Names in Plan 9 or
	// Getting Dot-Dot Right,''
	// https://9p.io/sys/doc/lexnames.html
**/
function clean(_path:GoString):GoString {
	if (_path == (("" : GoString))) {
		return ".";
	};
	var _rooted:Bool = _path[((0 : GoInt))] == (("/".code : GoRune));
	var _n:GoInt = _path.length;
	var _out:T_lazybuf = (({_s: _path, _buf: new Slice<GoUInt8>().nil(), _w: 0} : T_lazybuf)).__copy__();
	var _r:GoInt = ((0 : GoInt)), _dotdot:GoInt = ((0 : GoInt));
	if (_rooted) {
		_out._append((("/".code : GoRune)));
		{
			final __tmp__0 = ((1 : GoInt));
			final __tmp__1 = ((1 : GoInt));
			_r = __tmp__0;
			_dotdot = __tmp__1;
		};
	};
	while (_r < _n) {
		if (_path[_r] == (("/".code : GoRune))) {
			_r++;
		} else if (_path[_r] == ((".".code : GoRune))
			&& (_r + ((1 : GoInt)) == _n || _path[_r + ((1 : GoInt))] == (("/".code : GoRune)))) {
			_r++;
		} else if (_path[_r] == ((".".code : GoRune))
			&& _path[_r + ((1 : GoInt))] == ((".".code : GoRune))
			&& (_r + ((2 : GoInt)) == _n || _path[_r + ((2 : GoInt))] == (("/".code : GoRune)))) {
			_r = _r + (((2 : GoInt)));
			if (_out._w > _dotdot) {
				_out._w--;
				while (_out._w > _dotdot && _out._index(_out._w) != (("/".code : GoRune))) {
					_out._w--;
				};
			} else if (!_rooted) {
				if (_out._w > ((0 : GoInt))) {
					_out._append((("/".code : GoRune)));
				};
				_out._append(((".".code : GoRune)));
				_out._append(((".".code : GoRune)));
				_dotdot = _out._w;
			};
		} else {
			if (_rooted && _out._w != ((1 : GoInt)) || !_rooted && _out._w != ((0 : GoInt))) {
				_out._append((("/".code : GoRune)));
			};
			Go.cfor(_r < _n && _path[_r] != (("/".code : GoRune)), _r++, {
				_out._append(_path[_r]);
			});
		};
	};
	if (_out._w == ((0 : GoInt))) {
		return ".";
	};
	return _out._string();
}

/**
	// lastSlash(s) is strings.LastIndex(s, "/") but we can't import strings.
**/
function _lastSlash(_s:GoString):GoInt {
	var _i:GoInt = _s.length - ((1 : GoInt));
	while (_i >= ((0 : GoInt)) && _s[_i] != (("/".code : GoRune))) {
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
	var _dir:GoString = (("" : GoString)), _file:GoString = (("" : GoString));
	var _i:GoInt = _lastSlash(_path);
	return {_0: _path.__slice__(0, _i + ((1 : GoInt))), _1: _path.__slice__(_i + ((1 : GoInt)))};
}

/**
	// Join joins any number of path elements into a single path,
	// separating them with slashes. Empty elements are ignored.
	// The result is Cleaned. However, if the argument list is
	// empty or all its elements are empty, Join returns
	// an empty string.
**/
function join(_elem:haxe.Rest<GoString>):GoString {
	var _elem = new Slice<GoString>(..._elem);
	var _size:GoInt = ((0 : GoInt));
	for (_e in _elem) {
		_size = _size + (_e.length);
	};
	if (_size == ((0 : GoInt))) {
		return "";
	};
	var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_size + _elem.length
		- ((1 : GoInt)) : GoInt)).toBasic());
	for (_e in _elem) {
		if (_buf.length > ((0 : GoInt)) || _e != (("" : GoString))) {
			if (_buf.length > ((0 : GoInt))) {
				_buf = _buf.__append__((("/".code : GoRune)));
			};
			_buf = _buf.__append__(..._e.toArray());
		};
	};
	return clean(((_buf : GoString)));
}

/**
	// Ext returns the file name extension used by path.
	// The extension is the suffix beginning at the final dot
	// in the final slash-separated element of path;
	// it is empty if there is no dot.
**/
function ext(_path:GoString):GoString {
	{
		var _i:GoInt = _path.length - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)) && _path[_i] != (("/".code : GoRune)), _i--, {
			if (_path[_i] == ((".".code : GoRune))) {
				return _path.__slice__(_i);
			};
		});
	};
	return "";
}

/**
	// Base returns the last element of path.
	// Trailing slashes are removed before extracting the last element.
	// If the path is empty, Base returns ".".
	// If the path consists entirely of slashes, Base returns "/".
**/
function base(_path:GoString):GoString {
	if (_path == (("" : GoString))) {
		return ".";
	};
	while (_path.length > ((0 : GoInt)) && _path[_path.length - ((1 : GoInt))] == (("/".code : GoRune))) {
		_path = _path.__slice__(((0 : GoInt)), _path.length - ((1 : GoInt)));
	};
	{
		var _i:GoInt = _lastSlash(_path);
		if (_i >= ((0 : GoInt))) {
			_path = _path.__slice__(_i + ((1 : GoInt)));
		};
	};
	if (_path == (("" : GoString))) {
		return "/";
	};
	return _path;
}

/**
	// IsAbs reports whether the path is absolute.
**/
function isAbs(_path:GoString):Bool {
	return _path.length > ((0 : GoInt)) && _path[((0 : GoInt))] == (("/".code : GoRune));
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
		_:GoString = __tmp__._1;
	return clean(_dir);
}

class T_lazybuf_extension_fields {
	public function _index(__tmp__, _i:GoInt):GoByte
		return __tmp__._index(_i);

	public function _append(__tmp__, _c:GoByte):Void
		__tmp__._append(_c);

	public function _string(__tmp__):GoString
		return __tmp__._string();
}
