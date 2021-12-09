package stdgo.encoding.pem;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

@:structInit class Block {
	public var type:GoString = (("" : GoString));
	public var headers:GoMap<GoString, GoString> = new GoMap<GoString,
		GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
			stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil();
	public var bytes:Slice<GoUInt8> = new Slice<GoUInt8>().nil();

	public function new(?type:GoString, ?headers:GoMap<GoString, GoString>, ?bytes:Slice<GoUInt8>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(type) + " " + Go.string(headers) + " " + Go.string(bytes) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Block(type, headers, bytes);
	}

	public function __set__(__tmp__) {
		this.type = __tmp__.type;
		this.headers = __tmp__.headers;
		this.bytes = __tmp__.bytes;
		return this;
	}
}

@:structInit class T_lineBreaker {
	public function close():Error {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _err:Error = ((null : stdgo.Error));
		if (_l.value._used > ((0 : GoInt))) {
			{
				var __tmp__ = _l.value._out.write(_l.value._line.__slice__(((0 : GoInt)), _l.value._used));
				_err = __tmp__._1;
			};
			if (_err != null) {
				return _err;
			};
			{
				var __tmp__ = _l.value._out.write(_nl);
				_err = __tmp__._1;
			};
		};
		return _err;
	}

	public function write(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		if (_l.value._used + _b.length < _pemLineLength) {
			Go.copy(_l.value._line.__slice__(_l.value._used), _b);
			_l.value._used = _l.value._used + (_b.length);
			return {_0: _b.length, _1: ((null : stdgo.Error))};
		};
		{
			var __tmp__ = _l.value._out.write(_l.value._line.__slice__(((0 : GoInt)), _l.value._used));
			_n = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			return {_0: _n, _1: _err};
		};
		var _excess:GoInt = _pemLineLength - _l.value._used;
		_l.value._used = ((0 : GoInt));
		{
			var __tmp__ = _l.value._out.write(_b.__slice__(((0 : GoInt)), _excess));
			_n = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			return {_0: _n, _1: _err};
		};
		{
			var __tmp__ = _l.value._out.write(_nl);
			_n = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			return {_0: _n, _1: _err};
		};
		return _l.value.write(_b.__slice__(_excess));
	}

	public var _line:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...64) ((0 : GoUInt8))]);
	public var _used:GoInt = ((0 : GoInt));
	public var _out:stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));

	public function new(?_line:GoArray<GoUInt8>, ?_used:GoInt, ?_out:stdgo.io.Io.Writer)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_line) + " " + Go.string(_used) + " " + Go.string(_out) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_lineBreaker(_line, _used, _out);
	}

	public function __set__(__tmp__) {
		this._line = __tmp__._line;
		this._used = __tmp__._used;
		this._out = __tmp__._out;
		return this;
	}
}

final _pemLineLength:GoInt64 = ((64 : GoUnTypedInt));
var _nl:Slice<GoUInt8> = new Slice<GoUInt8>((("\n".code : GoRune)));
var _pemStart:Slice<GoUInt8> = (("\n-----BEGIN " : Slice<GoByte>));
var _pemEndOfLine:Slice<GoUInt8> = (("-----" : Slice<GoByte>));
var _pemEnd:Slice<GoUInt8> = (("\n-----END " : Slice<GoByte>));

/**
	// getLine results the first \r\n or \n delineated line from the given byte
	// array. The line does not include trailing whitespace or the trailing new
	// line bytes. The remainder of the byte array (also not including the new line
	// bytes) is also returned and this will always be smaller than the original
	// argument.
**/
function _getLine(_data:Slice<GoByte>):{var _0:Slice<GoByte>; var _1:Slice<GoByte>;} {
	var _line:Slice<GoByte> = new Slice<GoUInt8>().nil(),
		_rest:Slice<GoByte> = new Slice<GoUInt8>().nil();
	var _i:GoInt = stdgo.bytes.Bytes.indexByte(_data, (("\n".code : GoRune)));
	var _j:GoInt = ((0 : GoInt));
	if (_i < ((0 : GoInt))) {
		_i = _data.length;
		_j = _i;
	} else {
		_j = _i + ((1 : GoInt));
		if (_i > ((0 : GoInt)) && _data[_i - ((1 : GoInt))] == (("\r".code : GoRune))) {
			_i--;
		};
	};
	return {_0: stdgo.bytes.Bytes.trimRight(_data.__slice__(((0 : GoInt)), _i), " \t"), _1: _data.__slice__(_j)};
}

/**
	// removeSpacesAndTabs returns a copy of its input with all spaces and tabs
	// removed, if there were any. Otherwise, the input is returned unchanged.
	//
	// The base64 decoder already skips newline characters, so we don't need to
	// filter them out here.
**/
function _removeSpacesAndTabs(_data:Slice<GoByte>):Slice<GoByte> {
	if (!stdgo.bytes.Bytes.containsAny(_data, " \t")) {
		return _data;
	};
	var _result:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_data.length : GoInt)).toBasic()) ((0 : GoUInt8))]);
	var _n:GoInt = ((0 : GoInt));
	for (_b in _data) {
		if (_b == ((" ".code : GoRune)) || _b == (("\t".code : GoRune))) {
			continue;
		};
		_result[_n] = _b;
		_n++;
	};
	return _result.__slice__(((0 : GoInt)), _n);
}

/**
	// Decode will find the next PEM formatted block (certificate, private key
	// etc) in the input. It returns that block and the remainder of the input. If
	// no PEM data is found, p is nil and the whole of the input is returned in
	// rest.
**/
function decode(_data:Slice<GoByte>):{var _0:Pointer<Block>; var _1:Slice<GoByte>;} {
	var _p:Pointer<Block> = new Pointer<Block>().nil(),
		_rest:Slice<GoByte> = new Slice<GoUInt8>().nil();
	_rest = _data;
	if (stdgo.bytes.Bytes.hasPrefix(_data, _pemStart.__slice__(((1 : GoInt))))) {
		_rest = _rest.__slice__(_pemStart.length - ((1 : GoInt)), _data.length);
	} else {
		var _i:GoInt = stdgo.bytes.Bytes.index(_data, _pemStart);
		if (_i >= ((0 : GoInt))) {
			_rest = _rest.__slice__(_i + _pemStart.length, _data.length);
		} else {
			return {_0: new Pointer<Block>().nil(), _1: _data};
		};
	};
	var __tmp__ = _getLine(_rest),
		_typeLine:Slice<GoUInt8> = __tmp__._0,
		_rest:Slice<GoUInt8> = __tmp__._1;
	if (!stdgo.bytes.Bytes.hasSuffix(_typeLine, _pemEndOfLine)) {
		return _decodeError(_data, _rest);
	};
	_typeLine = _typeLine.__slice__(((0 : GoInt)), _typeLine.length - _pemEndOfLine.length);
	_p = Go.pointer((({headers: new GoMap<GoString,
		GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
		stdgo.reflect.Reflect.GoType.basic(string_kind)))), type: ((_typeLine : GoString)), bytes: new Slice<GoUInt8>().nil()} : Block)));
	while (true) {
		if (_rest.length == ((0 : GoInt))) {
			return {_0: new Pointer<Block>().nil(), _1: _data};
		};
		var __tmp__ = _getLine(_rest),
			_line:Slice<GoUInt8> = __tmp__._0,
			_next:Slice<GoUInt8> = __tmp__._1;
		var _i:GoInt = stdgo.bytes.Bytes.indexByte(_line, ((":".code : GoRune)));
		if (_i == -((1 : GoUnTypedInt))) {
			break;
		};
		var _key:Slice<GoUInt8> = _line.__slice__(0, _i),
			_val:Slice<GoUInt8> = _line.__slice__(_i + ((1 : GoInt)));
		_key = stdgo.bytes.Bytes.trimSpace(_key);
		_val = stdgo.bytes.Bytes.trimSpace(_val);
		_p.value.headers[((_key : GoString))] = ((_val : GoString));
		_rest = _next;
	};
	var _endIndex:GoInt = ((0 : GoInt)),
		_endTrailerIndex:GoInt = ((0 : GoInt));
	if ((_p.value.headers == null ? 0 : _p.value.headers.length) == ((0 : GoInt))
		&& stdgo.bytes.Bytes.hasPrefix(_rest, _pemEnd.__slice__(((1 : GoInt))))) {
		_endIndex = ((0 : GoInt));
		_endTrailerIndex = _pemEnd.length - ((1 : GoInt));
	} else {
		_endIndex = stdgo.bytes.Bytes.index(_rest, _pemEnd);
		_endTrailerIndex = _endIndex + _pemEnd.length;
	};
	if (_endIndex < ((0 : GoInt))) {
		return _decodeError(_data, _rest);
	};
	var _endTrailer:Slice<GoUInt8> = _rest.__slice__(_endTrailerIndex);
	var _endTrailerLen:GoInt = _typeLine.length + _pemEndOfLine.length;
	if (_endTrailer.length < _endTrailerLen) {
		return _decodeError(_data, _rest);
	};
	var _restOfEndLine:Slice<GoUInt8> = _endTrailer.__slice__(_endTrailerLen);
	_endTrailer = _endTrailer.__slice__(0, _endTrailerLen);
	if (!stdgo.bytes.Bytes.hasPrefix(_endTrailer, _typeLine) || !stdgo.bytes.Bytes.hasSuffix(_endTrailer, _pemEndOfLine)) {
		return _decodeError(_data, _rest);
	};
	{
		var __tmp__ = _getLine(_restOfEndLine),
			_s:Slice<GoUInt8> = __tmp__._0,
			_:Slice<GoUInt8> = __tmp__._1;
		if (_s.length != ((0 : GoInt))) {
			return _decodeError(_data, _rest);
		};
	};
	var _base64Data:Slice<GoUInt8> = _removeSpacesAndTabs(_rest.__slice__(0, _endIndex));
	_p.value.bytes = new Slice<GoUInt8>(...[
		for (i in 0...((stdgo.encoding.base64.Base64.stdEncoding.value.decodedLen(_base64Data.length) : GoInt)).toBasic()) ((0 : GoUInt8))
	]);
	var __tmp__ = stdgo.encoding.base64.Base64.stdEncoding.value.decode(_p.value.bytes, _base64Data),
		_n:GoInt = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return _decodeError(_data, _rest);
	};
	_p.value.bytes = _p.value.bytes.__slice__(0, _n);
	{
		var __tmp__ = _getLine(_rest.__slice__(_endIndex + _pemEnd.length - ((1 : GoInt))));
		_rest = __tmp__._1;
	};
	return {_0: _p, _1: _rest};
}

function _decodeError(_data:Slice<GoByte>, _rest:Slice<GoByte>):{var _0:Pointer<Block>; var _1:Slice<GoByte>;} {
	var __tmp__ = decode(_rest),
		_p:Pointer<Block> = __tmp__._0,
		_rest:Slice<GoUInt8> = __tmp__._1;
	if (_p == null || _p.isNil()) {
		_rest = _data;
	};
	return {_0: _p, _1: _rest};
}

function _writeHeader(_out:stdgo.io.Io.Writer, _k:GoString, _v:GoString):Error {
	var __tmp__ = _out.write((((_k + ((": " : GoString)) + _v + (("\n" : GoString))) : Slice<GoByte>))),
		_:GoInt = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	return _err;
}

/**
	// Encode writes the PEM encoding of b to out.
**/
function encode(_out:stdgo.io.Io.Writer, _b:Pointer<Block>):Error {
	{
		var _k;
		for (_obj in _b.value.headers.keyValueIterator()) {
			_k = _obj.key;
			if (stdgo.strings.Strings.contains(_k, ":")) {
				return stdgo.errors.Errors.new_("pem: cannot encode a header key that contains a colon");
			};
		};
	};
	{
		var __tmp__ = _out.write(_pemStart.__slice__(((1 : GoInt)))),
			_:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return _err;
		};
	};
	{
		var __tmp__ = _out.write((((_b.value.type + (("-----\n" : GoString))) : Slice<GoByte>))),
			_:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return _err;
		};
	};
	if ((_b.value.headers == null ? 0 : _b.value.headers.length) > ((0 : GoInt))) {
		final _procType:GoString = "Proc-Type";
		var _h:Slice<GoString> = new Slice<GoString>(...[for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) (("" : GoString))])
			.setCap((((_b.value.headers == null ? 0 : _b.value.headers.length) : GoInt)).toBasic());
		var _hasProcType:Bool = false;
		{
			var _k;
			for (_obj in _b.value.headers.keyValueIterator()) {
				_k = _obj.key;
				if (_k == _procType) {
					_hasProcType = true;
					continue;
				};
				_h = _h.__append__(_k);
			};
		};
		if (_hasProcType) {
			{
				var _err:stdgo.Error = _writeHeader(_out, _procType, _b.value.headers[_procType]);
				if (_err != null) {
					return _err;
				};
			};
		};
		stdgo.sort.Sort.strings(_h);
		for (_k in _h) {
			{
				var _err:stdgo.Error = _writeHeader(_out, _k, _b.value.headers[_k]);
				if (_err != null) {
					return _err;
				};
			};
		};
		{
			var __tmp__ = _out.write(_nl),
				_:GoInt = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return _err;
			};
		};
	};
	var _breaker:T_lineBreaker = new T_lineBreaker();
	_breaker._out = _out;
	var _b64:stdgo.io.Io.WriteCloser = stdgo.encoding.base64.Base64.newEncoder(stdgo.encoding.base64.Base64.stdEncoding, Go.pointer(_breaker).value);
	{
		var __tmp__ = _b64.write(_b.value.bytes),
			_:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return _err;
		};
	};
	_b64.close();
	_breaker.close();
	{
		var __tmp__ = _out.write(_pemEnd.__slice__(((1 : GoInt)))),
			_:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return _err;
		};
	};
	var __tmp__ = _out.write((((_b.value.type + (("-----\n" : GoString))) : Slice<GoByte>))),
		_:GoInt = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	return _err;
}

/**
	// EncodeToMemory returns the PEM encoding of b.
	//
	// If b has invalid headers and cannot be encoded,
	// EncodeToMemory returns nil. If it is important to
	// report details about this error case, use Encode instead.
**/
function encodeToMemory(_b:Pointer<Block>):Slice<GoByte> {
	var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
	{
		var _err:stdgo.Error = encode(Go.pointer(_buf).value, _b);
		if (_err != null) {
			return new Slice<GoUInt8>().nil();
		};
	};
	return _buf.bytes();
}

class T_lineBreaker_extension_fields {
	public function write(__tmp__, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.write(_b);

	public function close(__tmp__):Error
		return __tmp__.close();
}
