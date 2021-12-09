package stdgo.unicode.utf16;

import stdgo.Chan;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.StdGoTypes;

final _surr2:GoInt64 = ((56320 : GoUnTypedInt));
final _surrSelf:GoInt64 = ((65536 : GoUnTypedInt));
final _surr3:GoInt64 = ((57344 : GoUnTypedInt));
final _replacementChar:GoInt32 = (((("\uFFFD" : GoString)).code : GoRune));
final _surr1:GoInt64 = ((55296 : GoUnTypedInt));
final _maxRune:GoInt32 = (((("\u{0010FFFF}" : GoString)).code : GoRune));

/**
	// IsSurrogate reports whether the specified Unicode code point
	// can appear in a surrogate pair.
**/
function isSurrogate(_r:GoRune):Bool {
	return (_surr1 <= _r) && (_r < _surr3);
}

/**
	// DecodeRune returns the UTF-16 decoding of a surrogate pair.
	// If the pair is not a valid UTF-16 surrogate pair, DecodeRune returns
	// the Unicode replacement code point U+FFFD.
**/
function decodeRune(_r1:GoRune, _r2:GoRune):GoRune {
	if ((((_surr1 <= _r1) && (_r1 < _surr2)) && (_surr2 <= _r2)) && (_r2 < _surr3)) {
		return (((_r1 - _surr1) << ((10 : GoUnTypedInt))) | (_r2 - _surr2)) + _surrSelf;
	};
	return _replacementChar;
}

/**
	// EncodeRune returns the UTF-16 surrogate pair r1, r2 for the given rune.
	// If the rune is not a valid Unicode code point or does not need encoding,
	// EncodeRune returns U+FFFD, U+FFFD.
**/
function encodeRune(_r:GoRune):{var _0:GoRune; var _1:GoRune;} {
	var _r1:GoRune = ((0 : GoInt32)), _r2:GoRune = ((0 : GoInt32));
	if ((_r < _surrSelf) || (_r > _maxRune)) {
		return {_0: _replacementChar, _1: _replacementChar};
	};
	_r = _r - (_surrSelf);
	return {_0: _surr1 + ((_r >> ((10 : GoUnTypedInt))) & ((1023 : GoInt32))), _1: _surr2 + (_r & ((1023 : GoInt32)))};
}

/**
	// Encode returns the UTF-16 encoding of the Unicode code point sequence s.
**/
function encode(_s:Slice<GoRune>):Slice<GoUInt16> {
	var _n:GoInt = _s.length;
	for (_ => _v in _s) {
		if (_v >= _surrSelf) {
			_n++;
		};
	};
	var _a:Slice<GoUInt16> = new Slice<GoUInt16>(...[for (i in 0...((_n : GoInt)).toBasic()) ((0 : GoUInt16))]);
	_n = ((0 : GoInt));
	for (_ => _v in _s) {
		if ((((0 : GoInt32)) <= _v) && (_v < _surr1) || (_surr3 <= _v) && (_v < _surrSelf)) {
			_a[_n] = ((_v : GoUInt16));
			_n++;
		} else if ((_surrSelf <= _v) && (_v <= _maxRune)) {
			var __tmp__ = encodeRune(_v),
				_r1:GoInt32 = __tmp__._0,
				_r2:GoInt32 = __tmp__._1;
			_a[_n] = ((_r1 : GoUInt16));
			_a[_n + ((1 : GoInt))] = ((_r2 : GoUInt16));
			_n = _n + (((2 : GoInt)));
		} else {
			_a[_n] = ((_replacementChar : GoUInt16));
			_n++;
		};
	};
	return _a.__slice__(0, _n);
}

/**
	// Decode returns the Unicode code point sequence represented
	// by the UTF-16 encoding s.
**/
function decode(_s:Slice<GoUInt16>):Slice<GoRune> {
	var _a:Slice<GoInt32> = new Slice<GoInt32>(...[for (i in 0...((_s.length : GoInt)).toBasic()) ((0 : GoInt32))]);
	var _n:GoInt = ((0 : GoInt));
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _s.length, _i++, {
			{
				var _r:GoUInt16 = _s[_i];
				if (_r < _surr1 || _surr3 <= _r) {
					_a[_n] = ((_r : GoRune));
				} else if (((((_surr1 <= _r) && (_r < _surr2)) && ((_i + ((1 : GoInt))) < _s.length))
					&& (_surr2 <= _s[_i + ((1 : GoInt))]))
					&& (_s[_i + ((1 : GoInt))] < _surr3)) {
					_a[_n] = decodeRune(((_r : GoRune)), ((_s[_i + ((1 : GoInt))] : GoRune)));
					_i++;
				} else {
					_a[_n] = _replacementChar;
				};
			};
			_n++;
		});
	};
	return _a.__slice__(0, _n);
}
