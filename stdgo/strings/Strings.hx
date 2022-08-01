package stdgo.strings;

import haxe.Rest;
import stdgo.StdGoTypes;
import stdgo.syscall.Syscall.Errno;

using stdgo.GoString.GoStringTools;

final runeError:GoInt = 65533;
final runeSelf:GoInt = 65533;

class Builder_wrapper {
	/**
		// WriteString appends the contents of s to b's buffer.
		// It returns the length of s and a nil error.
	**/
	@:keep
	public var writeString:GoString -> {
		var _0:GoInt;
		var _1:Error;
	} = null;

	/**
		// WriteRune appends the UTF-8 encoding of Unicode code point r to b's buffer.
		// It returns the length of r and a nil error.
	**/
	@:keep
	public var writeRune:GoRune -> {
		var _0:GoInt;
		var _1:Error;
	} = null;

	/**
		// WriteByte appends the byte c to b's buffer.
		// The returned error is always nil.
	**/
	@:keep
	public var writeByte:GoByte->Error = null;

	/**
		// Write appends the contents of p to b's buffer.
		// Write always returns len(p), nil.
	**/
	@:keep
	public var write:Slice<GoByte> -> {
		var _0:GoInt;
		var _1:Error;
	} = null;

	/**
		// Grow grows b's capacity, if necessary, to guarantee space for
		// another n bytes. After Grow(n), at least n bytes can be written to b
		// without another allocation. If n is negative, Grow panics.
	**/
	@:keep
	public var grow:GoInt->Void = null;

	/**
		// grow copies the buffer to a new, larger buffer so that there are at least n
		// bytes of capacity beyond len(b.buf).
	**/
	@:keep
	public var _grow:GoInt->Void = null;

	/**
		// Reset resets the Builder to be empty.
	**/
	@:keep
	public var reset:() -> Void = null;

	/**
		// Cap returns the capacity of the builder's underlying byte slice. It is the
		// total space allocated for the string being built and includes any bytes
		// already written.
	**/
	@:keep
	public var cap_:() -> GoInt = null;

	/**
		// Len returns the number of accumulated bytes; b.Len() == len(b.String()).
	**/
	@:keep
	public var len:() -> GoInt = null;

	/**
		// String returns the accumulated string.
	**/
	@:keep
	public var toString:() -> GoString = null;

	@:keep
	public var _copyCheck:() -> Void = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(__self__);

	var __self__:Builder;
}

@:structInit
class Builder {
	var buf:GoString;

	public function new() {
		buf = "";
	}

	public function reset() {}

	public function writeRune(r:GoRune):{_0:GoInt, _1:Error} {
		return null;
	}

	public function cap_():GoInt
		return 0;

	public function write(p:Slice<GoByte>):{_0:GoInt, _1:Error} {
		buf += (p : GoString);
		return {_0: p.length, _1: null};
	}

	public function read(p:Slice<GoByte>):{_0:GoInt, _1:Error} {
		return {_0: 0, _1: null};
	}

	public function writeByte(c:GoByte):Error {
		return null;
	}

	public function writeString(s:GoString):{_0:GoInt, _1:Error} {
		buf += s;
		return {_0: s.length, _1: null};
	}

	public function grow(_n:GoInt) {}

	public function _grow(_n:GoInt)
		grow(_n);

	public function _copyCheck() {}

	public function toString():GoString
		return buf.toString();

	public function len():GoInt {
		return buf.toString().length;
	}

	public function __underlying__():AnyInterface
		return null;
}

inline function cut(s:GoString, sep:GoString):{_0:GoString, _1:GoString, _2:Bool} {
	final index = s.indexOf(sep);
	if (index == -1)
		return {_0: "", _1: "", _2: false};
	return {_0: s.substr(0, index), _1: s.substr(index + sep.length), _2: true};
}

inline function contains(s:GoString, value:GoString):Bool {
	return StringTools.contains(s, value);
}

inline function count(s:GoString, value:GoString):GoInt {
	var index = -1;
	final s:String = s.toString();
	var count = 0;
	while (true) {
		index = s.indexOf(value, index + 1);
		if (index == -1)
			break;
		count++;
	}
	return count;
}

function join(elems:Slice<GoString>, sep:GoString):GoString {
	return elems.__toVector__().join(sep);
}

function repeat(s:GoString, count:GoInt):GoString {
	return [for (i in 0...count.toBasic()) s].join("");
}

function split(s:GoString, sep:GoString):Slice<GoString> {
	return splitN(s, sep, -1);
}

function splitN(s:GoString, sep:GoString, n:GoInt):Slice<GoString> {
	if (n == 0)
		return null;
	// very inefficent (TODO) more optimized version
	final s:String = s.toString();
	if (n == -1)
		n = s.length;
	return new Slice<GoString>(...[for (s in s.split(sep)) (s : GoString)].slice(0, n.toBasic()));
}

function hasPrefix(s:GoString, value:GoString):Bool {
	return s.substr(0, value.toString().length) == value;
}

inline function hasSuffix(s:GoString, value:GoString):Bool {
	return s.substr(s.toString().length - value.toString().length) == value;
}

function containsRune(s:GoString, r:GoRune):Bool {
	final s = s.toString();
	final r = r.toBasic();
	for (i in 0...s.length) {
		if (s.charCodeAt(i) == r)
			return true;
	}
	return false;
}

inline function lastIndex(s:GoString, substr:GoString):GoInt
	return s.toString().lastIndexOf(substr);

inline function lastIndexByte(s:GoString, b:GoByte):GoInt
	return s.__toSliceByte__().__toArray__().lastIndexOf(b);

inline function index(s:GoString, substr:GoString):GoInt
	return s.toString().indexOf(substr);

function indexByte(s:GoString, c:GoByte):GoInt {
	for (i in 0...s.length.toBasic()) {
		if (s[i] == c)
			return i;
	}
	return -1;
}

function replace(s:GoString, sub:GoString, by:GoString, count:GoInt):GoString {
	if (count == 0)
		return s;
	if (count == -1)
		return StringTools.replace(s, sub, by);
	var str:String = s;
	var index = -1;
	for (i in 0...count.toBasic()) {
		var j = str.indexOf(sub, index + 1);
		if (j == -1)
			return str;
		index = j + sub.length.toBasic();
		str = str.substr(0, j) + by + str.substr(index);
	}
	return str;
}

function replaceAll(s:GoString, old:GoString, n:GoString):GoString {
	return StringTools.replace(s, old, n);
}

inline function toUpper(s:GoString):GoString {
	return s.toString().toUpperCase();
}

inline function toLower(s:GoString):GoString {
	return s.toString().toLowerCase();
}

@:structInit
class Replacer {
	var strings:Array<String> = [];

	public function new(?strings) {
		if (strings != null)
			this.strings = strings;
	}

	public function replace(s:GoString):GoString {
		return s;
	}

	public function writeString(w:stdgo.io.Io.Writer):{_0:GoInt, _1:Error} {
		return {_0: 0, _1: null};
	}
}

function newReplacer(oldnew:Rest<GoString>):Pointer<Replacer> {
	if (oldnew.length % 2 == 1) {
		throw "strings.NewReplacer: odd argument count";
	}
	return Go.pointer(new Replacer([for (str in oldnew) str.toString()]));
}

function toLowerSpecial(c:stdgo.unicode.Unicode.SpecialCase, s:GoString):GoString {
	return map(c.toLower, s);
}

function map(mapping:GoRune->GoRune, s:GoString):GoString {
	var b:GoString = "";
	for (i in 0...s.length.toBasic()) {
		var c = s[i];
		final r = mapping(c);
		if (r == c && c != runeError) {
			continue;
		}
		var width:GoInt = 0;
		if (c == runeError) {
			final __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(s.__slice__(i));
			c = __tmp__._0;
			width = __tmp__._1;
		} else {
			width = stdgo.unicode.utf8.Utf8.runeLen(c);
		}
		b += s.__slice__(0, i);
		if (r >= 0) {
			b += r;
		}

		s = s.__slice__(i + width);
		break;
	}
	if (b == "")
		return s;

	for (i in 0...s.length.toBasic()) {
		final c = s[i];
		final r = mapping(c);
		if (r >= 0) {
			if (r < runeSelf) {
				b += r;
			} else {
				b += r;
			}
		}
	}
	return b;
}

@:structInit @:using(Strings.T_nat_static_extension) class T_nat {
	@:keep
	public function _make():T_nat {
		var _n = this;
		(_n == null ? null : _n.__copy__());
		return (_n == null ? null : _n.__copy__());
	}

	public function new() {}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_nat();
	}
}

@:structInit @:using(Strings.Reader_static_extension) class Reader {
	@:keep
	public function reset(_s:GoString):Void {
		var _r = this;
		_r;
		{
			var __tmp__ = ((new Reader(_s, ((0 : GoInt64)), ((-1 : GoInt))) : Reader));
			_r._s = __tmp__._s;
			_r._i = __tmp__._i;
			_r._prevRune = __tmp__._prevRune;
		};
	}

	@:keep
	public function writeTo(_w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:Error;} {
		var _r = this;
		_r;
		var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
		_r._prevRune = ((-1 : GoInt));
		if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
			return {_0: ((0 : GoInt64)), _1: ((null : stdgo.Error))};
		};
		var _s:GoString = ((_r._s.__slice__(_r._i) : GoString));
		var __tmp__ = stdgo.io.Io.writeString(_w, _s),
			_m:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_m > (_s != null ? _s.length : ((0 : GoInt)))) {
			throw Go.toInterface(((("strings.Reader.WriteTo: invalid WriteString count" : GoString))));
		};
		_r._i = _r._i + (((_m : GoInt64)));
		_n = ((_m : GoInt64));
		if ((_m != (_s != null ? _s.length : ((0 : GoInt)))) && (_err == null)) {
			_err = stdgo.io.Io.errShortWrite;
		};
		return {_0: _n, _1: _err};
	}

	@:keep
	public function seek(_offset:GoInt64, _whence:GoInt):{var _0:GoInt64; var _1:Error;} {
		var _r = this;
		_r;
		_r._prevRune = ((-1 : GoInt));
		var _abs:GoInt64 = ((0 : GoInt64));
		if (_whence == ((0 : GoInt))) {
			_abs = _offset;
		} else if (_whence == ((1 : GoInt))) {
			_abs = _r._i + _offset;
		} else if (_whence == ((2 : GoInt))) {
			_abs = (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64)) + _offset;
		} else {
			return {_0: ((0 : GoInt64)), _1: stdgo.errors.Errors.new_(((("strings.Reader.Seek: invalid whence" : GoString))))};
		};
		if (_abs < ((0 : GoInt64))) {
			return {_0: ((0 : GoInt64)), _1: stdgo.errors.Errors.new_(((("strings.Reader.Seek: negative position" : GoString))))};
		};
		_r._i = _abs;
		return {_0: _abs, _1: ((null : stdgo.Error))};
	}

	@:keep
	public function unreadRune():Error {
		var _r = this;
		_r;
		if (_r._i <= ((0 : GoInt64))) {
			return stdgo.errors.Errors.new_(((("strings.Reader.UnreadRune: at beginning of string" : GoString))));
		};
		if (_r._prevRune < ((0 : GoInt))) {
			return stdgo.errors.Errors.new_(((("strings.Reader.UnreadRune: previous operation was not ReadRune" : GoString))));
		};
		_r._i = ((_r._prevRune : GoInt64));
		_r._prevRune = ((-1 : GoInt));
		return ((null : stdgo.Error));
	}

	@:keep
	public function readRune():{var _0:GoRune; var _1:GoInt; var _2:Error;} {
		var _r = this;
		_r;
		var _ch:GoRune = ((0 : GoInt32)),
			_size:GoInt = ((0 : GoInt)),
			_err:Error = ((null : stdgo.Error));
		if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
			_r._prevRune = ((-1 : GoInt));
			return {_0: ((0 : GoInt32)), _1: ((0 : GoInt)), _2: stdgo.io.Io.eof};
		};
		_r._prevRune = ((_r._i : GoInt));
		{
			var _c:GoUInt8 = (_r._s != null ? _r._s[_r._i] : ((0 : GoUInt8)));
			if (_c < ((128 : GoUInt8))) {
				_r._i++;
				return {_0: ((_c : GoRune)), _1: ((1 : GoInt)), _2: ((null : stdgo.Error))};
			};
		};
		{
			var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(((_r._s.__slice__(_r._i) : GoString)));
			_ch = __tmp__._0;
			_size = __tmp__._1;
		};
		_r._i = _r._i + (((_size : GoInt64)));
		return {_0: _ch, _1: _size, _2: _err};
	}

	@:keep
	public function unreadByte():Error {
		var _r = this;
		_r;
		if (_r._i <= ((0 : GoInt64))) {
			return stdgo.errors.Errors.new_(((("strings.Reader.UnreadByte: at beginning of string" : GoString))));
		};
		_r._prevRune = ((-1 : GoInt));
		_r._i--;
		return ((null : stdgo.Error));
	}

	@:keep
	public function readByte():{var _0:GoByte; var _1:Error;} {
		var _r = this;
		_r;
		_r._prevRune = ((-1 : GoInt));
		if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
			return {_0: ((0 : GoUInt8)), _1: stdgo.io.Io.eof};
		};
		var _b:GoUInt8 = (_r._s != null ? _r._s[_r._i] : ((0 : GoUInt8)));
		_r._i++;
		return {_0: _b, _1: ((null : stdgo.Error))};
	}

	@:keep
	public function readAt(_b:Slice<GoByte>, _off:GoInt64):{var _0:GoInt; var _1:Error;} {
		var _r = this;
		_r;
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		if (_off < ((0 : GoInt64))) {
			return {_0: ((0 : GoInt)), _1: stdgo.errors.Errors.new_(((("strings.Reader.ReadAt: negative offset" : GoString))))};
		};
		if (_off >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
			return {_0: ((0 : GoInt)), _1: stdgo.io.Io.eof};
		};
		_n = Go.copySlice(_b, ((_r._s.__slice__(_off) : GoString)));
		if (_n < (_b != null ? _b.length : ((0 : GoInt)))) {
			_err = stdgo.io.Io.eof;
		};
		return {_0: _n, _1: _err};
	}

	@:keep
	public function read(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _r = this;
		_r;
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
			return {_0: ((0 : GoInt)), _1: stdgo.io.Io.eof};
		};
		_r._prevRune = ((-1 : GoInt));
		_n = Go.copySlice(_b, ((_r._s.__slice__(_r._i) : GoString)));
		_r._i = _r._i + (((_n : GoInt64)));
		return {_0: _n, _1: _err};
	}

	@:keep
	public function size():GoInt64 {
		var _r = this;
		_r;
		return (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64));
	}

	@:keep
	public function len():GoInt {
		var _r = this;
		_r;
		if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
			return ((0 : GoInt));
		};
		return ((((((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64)) - _r._i) : GoInt));
	}

	public var _s:GoString = (("" : GoString));
	public var _i:GoInt64 = ((0 : GoInt64));
	public var _prevRune:GoInt = ((0 : GoInt));

	public function new(?_s:GoString, ?_i:GoInt64, ?_prevRune:GoInt) {
		if (_s != null)
			this._s = _s;
		if (_i != null)
			this._i = _i;
		if (_prevRune != null)
			this._prevRune = _prevRune;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Reader(_s, _i, _prevRune);
	}
}

/**
	// NewReader returns a new Reader reading from s.
	// It is similar to bytes.NewBufferString but more efficient and read-only.
**/
function newReader(_s:GoString):Reader {
	return ((new Reader(_s, ((0 : GoInt64)), ((-1 : GoInt))) : Reader));
}

class T_nat_wrapper {
	@:keep
	public function _make():T_nat {
		var _n = __t__;
		(_n == null ? null : _n.__copy__());
		return (_n == null ? null : _n.__copy__());
	}

	public var __t__:T_nat;

	public function new(__t__)
		this.__t__ = __t__;

	public function __underlying__():AnyInterface
		return Go.toInterface(this);
}

@:keep class T_nat_static_extension {
	@:keep
	public static function _make(_n:T_nat):T_nat {
		(_n == null ? null : _n.__copy__());
		return (_n == null ? null : _n.__copy__());
	}
}

class Reader_wrapper {
	@:keep
	public function reset(_s:GoString):Void {
		var _r = __t__;
		_r;
		{
			var __tmp__ = ((new Reader(_s, ((0 : GoInt64)), ((-1 : GoInt))) : Reader));
			_r._s = __tmp__._s;
			_r._i = __tmp__._i;
			_r._prevRune = __tmp__._prevRune;
		};
	}

	@:keep
	public function writeTo(_w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:Error;} {
		var _r = __t__;
		_r;
		var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
		_r._prevRune = ((-1 : GoInt));
		if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
			return {_0: ((0 : GoInt64)), _1: ((null : stdgo.Error))};
		};
		var _s:GoString = ((_r._s.__slice__(_r._i) : GoString));
		var __tmp__ = stdgo.io.Io.writeString(_w, _s),
			_m:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_m > (_s != null ? _s.length : ((0 : GoInt)))) {
			throw Go.toInterface(((("strings.Reader.WriteTo: invalid WriteString count" : GoString))));
		};
		_r._i = _r._i + (((_m : GoInt64)));
		_n = ((_m : GoInt64));
		if ((_m != (_s != null ? _s.length : ((0 : GoInt)))) && (_err == null)) {
			_err = stdgo.io.Io.errShortWrite;
		};
		return {_0: _n, _1: _err};
	}

	@:keep
	public function seek(_offset:GoInt64, _whence:GoInt):{var _0:GoInt64; var _1:Error;} {
		var _r = __t__;
		_r;
		_r._prevRune = ((-1 : GoInt));
		var _abs:GoInt64 = ((0 : GoInt64));
		if (_whence == ((0 : GoInt))) {
			_abs = _offset;
		} else if (_whence == ((1 : GoInt))) {
			_abs = _r._i + _offset;
		} else if (_whence == ((2 : GoInt))) {
			_abs = (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64)) + _offset;
		} else {
			return {_0: ((0 : GoInt64)), _1: stdgo.errors.Errors.new_(((("strings.Reader.Seek: invalid whence" : GoString))))};
		};
		if (_abs < ((0 : GoInt64))) {
			return {_0: ((0 : GoInt64)), _1: stdgo.errors.Errors.new_(((("strings.Reader.Seek: negative position" : GoString))))};
		};
		_r._i = _abs;
		return {_0: _abs, _1: ((null : stdgo.Error))};
	}

	@:keep
	public function unreadRune():Error {
		var _r = __t__;
		_r;
		if (_r._i <= ((0 : GoInt64))) {
			return stdgo.errors.Errors.new_(((("strings.Reader.UnreadRune: at beginning of string" : GoString))));
		};
		if (_r._prevRune < ((0 : GoInt))) {
			return stdgo.errors.Errors.new_(((("strings.Reader.UnreadRune: previous operation was not ReadRune" : GoString))));
		};
		_r._i = ((_r._prevRune : GoInt64));
		_r._prevRune = ((-1 : GoInt));
		return ((null : stdgo.Error));
	}

	@:keep
	public function readRune():{var _0:GoRune; var _1:GoInt; var _2:Error;} {
		var _r = __t__;
		_r;
		var _ch:GoRune = ((0 : GoInt32)),
			_size:GoInt = ((0 : GoInt)),
			_err:Error = ((null : stdgo.Error));
		if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
			_r._prevRune = ((-1 : GoInt));
			return {_0: ((0 : GoInt32)), _1: ((0 : GoInt)), _2: stdgo.io.Io.eof};
		};
		_r._prevRune = ((_r._i : GoInt));
		{
			var _c:GoUInt8 = (_r._s != null ? _r._s[_r._i] : ((0 : GoUInt8)));
			if (_c < ((128 : GoUInt8))) {
				_r._i++;
				return {_0: ((_c : GoRune)), _1: ((1 : GoInt)), _2: ((null : stdgo.Error))};
			};
		};
		{
			var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(((_r._s.__slice__(_r._i) : GoString)));
			_ch = __tmp__._0;
			_size = __tmp__._1;
		};
		_r._i = _r._i + (((_size : GoInt64)));
		return {_0: _ch, _1: _size, _2: _err};
	}

	@:keep
	public function unreadByte():Error {
		var _r = __t__;
		_r;
		if (_r._i <= ((0 : GoInt64))) {
			return stdgo.errors.Errors.new_(((("strings.Reader.UnreadByte: at beginning of string" : GoString))));
		};
		_r._prevRune = ((-1 : GoInt));
		_r._i--;
		return ((null : stdgo.Error));
	}

	@:keep
	public function readByte():{var _0:GoByte; var _1:Error;} {
		var _r = __t__;
		_r;
		_r._prevRune = ((-1 : GoInt));
		if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
			return {_0: ((0 : GoUInt8)), _1: stdgo.io.Io.eof};
		};
		var _b:GoUInt8 = (_r._s != null ? _r._s[_r._i] : ((0 : GoUInt8)));
		_r._i++;
		return {_0: _b, _1: ((null : stdgo.Error))};
	}

	@:keep
	public function readAt(_b:Slice<GoByte>, _off:GoInt64):{var _0:GoInt; var _1:Error;} {
		var _r = __t__;
		_r;
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		if (_off < ((0 : GoInt64))) {
			return {_0: ((0 : GoInt)), _1: stdgo.errors.Errors.new_(((("strings.Reader.ReadAt: negative offset" : GoString))))};
		};
		if (_off >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
			return {_0: ((0 : GoInt)), _1: stdgo.io.Io.eof};
		};
		_n = Go.copySlice(_b, ((_r._s.__slice__(_off) : GoString)));
		if (_n < (_b != null ? _b.length : ((0 : GoInt)))) {
			_err = stdgo.io.Io.eof;
		};
		return {_0: _n, _1: _err};
	}

	@:keep
	public function read(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _r = __t__;
		_r;
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
			return {_0: ((0 : GoInt)), _1: stdgo.io.Io.eof};
		};
		_r._prevRune = ((-1 : GoInt));
		_n = Go.copySlice(_b, ((_r._s.__slice__(_r._i) : GoString)));
		_r._i = _r._i + (((_n : GoInt64)));
		return {_0: _n, _1: _err};
	}

	@:keep
	public function size():GoInt64 {
		var _r = __t__;
		_r;
		return (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64));
	}

	@:keep
	public function len():GoInt {
		var _r = __t__;
		_r;
		if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
			return ((0 : GoInt));
		};
		return ((((((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64)) - _r._i) : GoInt));
	}

	public var __t__:Reader;

	public function new(__t__)
		this.__t__ = __t__;

	public function __underlying__():AnyInterface
		return Go.toInterface(this);
}

@:keep class Reader_static_extension {
	@:keep
	public static function reset(_r:Ref<Reader>, _s:GoString):Void {
		_r;
		{
			var __tmp__ = ((new Reader(_s, ((0 : GoInt64)), ((-1 : GoInt))) : Reader));
			_r._s = __tmp__._s;
			_r._i = __tmp__._i;
			_r._prevRune = __tmp__._prevRune;
		};
	}

	@:keep
	public static function writeTo(_r:Ref<Reader>, _w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:Error;} {
		_r;
		var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
		_r._prevRune = ((-1 : GoInt));
		if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
			return {_0: ((0 : GoInt64)), _1: ((null : stdgo.Error))};
		};
		var _s:GoString = ((_r._s.__slice__(_r._i) : GoString));
		var __tmp__ = stdgo.io.Io.writeString(_w, _s),
			_m:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_m > (_s != null ? _s.length : ((0 : GoInt)))) {
			throw Go.toInterface(((("strings.Reader.WriteTo: invalid WriteString count" : GoString))));
		};
		_r._i = _r._i + (((_m : GoInt64)));
		_n = ((_m : GoInt64));
		if ((_m != (_s != null ? _s.length : ((0 : GoInt)))) && (_err == null)) {
			_err = stdgo.io.Io.errShortWrite;
		};
		return {_0: _n, _1: _err};
	}

	@:keep
	public static function seek(_r:Ref<Reader>, _offset:GoInt64, _whence:GoInt):{var _0:GoInt64; var _1:Error;} {
		_r;
		_r._prevRune = ((-1 : GoInt));
		var _abs:GoInt64 = ((0 : GoInt64));
		if (_whence == ((0 : GoInt))) {
			_abs = _offset;
		} else if (_whence == ((1 : GoInt))) {
			_abs = _r._i + _offset;
		} else if (_whence == ((2 : GoInt))) {
			_abs = (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64)) + _offset;
		} else {
			return {_0: ((0 : GoInt64)), _1: stdgo.errors.Errors.new_(((("strings.Reader.Seek: invalid whence" : GoString))))};
		};
		if (_abs < ((0 : GoInt64))) {
			return {_0: ((0 : GoInt64)), _1: stdgo.errors.Errors.new_(((("strings.Reader.Seek: negative position" : GoString))))};
		};
		_r._i = _abs;
		return {_0: _abs, _1: ((null : stdgo.Error))};
	}

	@:keep
	public static function unreadRune(_r:Ref<Reader>):Error {
		_r;
		if (_r._i <= ((0 : GoInt64))) {
			return stdgo.errors.Errors.new_(((("strings.Reader.UnreadRune: at beginning of string" : GoString))));
		};
		if (_r._prevRune < ((0 : GoInt))) {
			return stdgo.errors.Errors.new_(((("strings.Reader.UnreadRune: previous operation was not ReadRune" : GoString))));
		};
		_r._i = ((_r._prevRune : GoInt64));
		_r._prevRune = ((-1 : GoInt));
		return ((null : stdgo.Error));
	}

	@:keep
	public static function readRune(_r:Ref<Reader>):{var _0:GoRune; var _1:GoInt; var _2:Error;} {
		_r;
		var _ch:GoRune = ((0 : GoInt32)),
			_size:GoInt = ((0 : GoInt)),
			_err:Error = ((null : stdgo.Error));
		if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
			_r._prevRune = ((-1 : GoInt));
			return {_0: ((0 : GoInt32)), _1: ((0 : GoInt)), _2: stdgo.io.Io.eof};
		};
		_r._prevRune = ((_r._i : GoInt));
		{
			var _c:GoUInt8 = (_r._s != null ? _r._s[_r._i] : ((0 : GoUInt8)));
			if (_c < ((128 : GoUInt8))) {
				_r._i++;
				return {_0: ((_c : GoRune)), _1: ((1 : GoInt)), _2: ((null : stdgo.Error))};
			};
		};
		{
			var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(((_r._s.__slice__(_r._i) : GoString)));
			_ch = __tmp__._0;
			_size = __tmp__._1;
		};
		_r._i = _r._i + (((_size : GoInt64)));
		return {_0: _ch, _1: _size, _2: _err};
	}

	@:keep
	public static function unreadByte(_r:Ref<Reader>):Error {
		_r;
		if (_r._i <= ((0 : GoInt64))) {
			return stdgo.errors.Errors.new_(((("strings.Reader.UnreadByte: at beginning of string" : GoString))));
		};
		_r._prevRune = ((-1 : GoInt));
		_r._i--;
		return ((null : stdgo.Error));
	}

	@:keep
	public static function readByte(_r:Ref<Reader>):{var _0:GoByte; var _1:Error;} {
		_r;
		_r._prevRune = ((-1 : GoInt));
		if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
			return {_0: ((0 : GoUInt8)), _1: stdgo.io.Io.eof};
		};
		var _b:GoUInt8 = (_r._s != null ? _r._s[_r._i] : ((0 : GoUInt8)));
		_r._i++;
		return {_0: _b, _1: ((null : stdgo.Error))};
	}

	@:keep
	public static function readAt(_r:Ref<Reader>, _b:Slice<GoByte>, _off:GoInt64):{var _0:GoInt; var _1:Error;} {
		_r;
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		if (_off < ((0 : GoInt64))) {
			return {_0: ((0 : GoInt)), _1: stdgo.errors.Errors.new_(((("strings.Reader.ReadAt: negative offset" : GoString))))};
		};
		if (_off >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
			return {_0: ((0 : GoInt)), _1: stdgo.io.Io.eof};
		};
		_n = Go.copySlice(_b, ((_r._s.__slice__(_off) : GoString)));
		if (_n < (_b != null ? _b.length : ((0 : GoInt)))) {
			_err = stdgo.io.Io.eof;
		};
		return {_0: _n, _1: _err};
	}

	@:keep
	public static function read(_r:Ref<Reader>, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		_r;
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
			return {_0: ((0 : GoInt)), _1: stdgo.io.Io.eof};
		};
		_r._prevRune = ((-1 : GoInt));
		_n = Go.copySlice(_b, ((_r._s.__slice__(_r._i) : GoString)));
		_r._i = _r._i + (((_n : GoInt64)));
		return {_0: _n, _1: _err};
	}

	@:keep
	public static function size(_r:Ref<Reader>):GoInt64 {
		_r;
		return (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64));
	}

	@:keep
	public static function len(_r:Ref<Reader>):GoInt {
		_r;
		if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
			return ((0 : GoInt));
		};
		return ((((((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64)) - _r._i) : GoInt));
	}
}
