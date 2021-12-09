package stdgo.internal.itoa;

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
	// Itoa converts val to a decimal string.
**/
function itoa(_val:GoInt):GoString {
	if (_val < ((0 : GoInt))) {
		return (("-" : GoString)) + uitoa(((-_val : GoUInt)));
	};
	return uitoa(((_val : GoUInt)));
}

/**
	// Uitoa converts val to a decimal string.
**/
function uitoa(_val:GoUInt):GoString {
	if (_val == ((0 : GoUInt))) {
		return "0";
	};
	var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...20) ((0 : GoUInt8))]);
	var _i:GoInt = _buf.length - ((1 : GoInt));
	while (_val >= ((10 : GoUInt))) {
		var _q:GoUInt = _val / ((10 : GoUInt));
		_buf[_i] = ((((("0".code : GoRune)) + _val - _q * ((10 : GoUInt))) : GoByte));
		_i--;
		_val = _q;
	};
	_buf[_i] = ((((("0".code : GoRune)) + _val) : GoByte));
	return ((_buf.__slice__(_i) : GoString));
}
