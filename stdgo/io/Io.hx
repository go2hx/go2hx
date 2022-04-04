package stdgo.io;

import stdgo.StdGoTypes;

final seekEnd:GoInt64 = ((2 : GoUnTypedInt));
final seekCurrent:GoInt64 = ((1 : GoUnTypedInt));
final seekStart:GoInt64 = ((0 : GoUnTypedInt));
var errNoProgress:stdgo.Error = stdgo.errors.Errors.new_("multiple Read calls return no data or error");
var errShortBuffer:stdgo.Error = stdgo.errors.Errors.new_("short buffer");
var errUnexpectedEOF:stdgo.Error = stdgo.errors.Errors.new_("unexpected EOF");
var eof:stdgo.Error = stdgo.errors.Errors.new_("EOF");
var _errInvalidWrite:stdgo.Error = stdgo.errors.Errors.new_("invalid write result");
var errShortWrite:stdgo.Error = stdgo.errors.Errors.new_("short write");

typedef StringWriter = StructType & {
	public function writeString(s:GoString):{_0:GoInt, _1:Error};
}

typedef ByteReader = StructType & {
	public function readByte():{_0:GoByte, _1:Error};
}

typedef ByteScanner = ByteReader &
	StructType & {
	public function unreadByte():Error;
}

typedef ByteWriter = StructType & {
	public function writeByte(_c:GoByte):Error;
}

typedef RuneReader = StructType & {
	public function readRune():{var _0:GoRune; var _1:GoInt; var _2:Error;};
}

typedef RuneScanner = StructType & {
	> RuneReader,
	public function unreadRune():Error;
};

typedef ReaderFrom = StructType & {
	public function readFrom(_r:Reader):{var _0:GoInt64; var _1:Error;};
}

typedef ReaderAt = StructType & {
	public function readAt(_p:Slice<GoByte>, _off:GoInt64):{var _0:GoInt; var _1:Error;};
}

typedef Writer = StructType & {
	public function write(p:Slice<GoByte>):{_0:GoInt, _1:Error};
}

typedef Closer = StructType & {
	public function close():Error;
}

typedef ReadCloser = Reader & Closer;
typedef ReadWriter = Reader & Writer;

typedef Reader = StructType & {
	public function read(p:Slice<GoByte>):{_0:GoInt, _1:Error};
}

typedef WriterTo = StructType & {
	public function writeTo(w:Writer):{_0:GoInt64, _1:Error};
}

function readAll(r:Reader):{_0:Slice<GoByte>, _1:Error} {
	final s = new Slice<GoByte>(...[for (_ in 0...512) 0]);
	return {_0: s, _1: null};
}

function readAtLeast(_r:Reader, _buf:Slice<GoByte>, _min:GoInt):{var _0:GoInt; var _1:Error;} {
	var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
	if (_buf.length < _min) {
		return {_0: ((0 : GoInt)), _1: errShortBuffer};
	};
	while ((_n < _min) && (_err == null)) {
		var _nn:GoInt = ((0 : GoInt));
		{
			var __tmp__ = _r.read(_buf.__slice__(_n));
			_nn = __tmp__._0;
			_err = __tmp__._1;
		};
		_n = _n + (_nn);
	};
	if (_n >= _min) {
		_err = ((null : stdgo.Error));
	} else if ((_n > ((0 : GoInt))) && (Go.toInterface(_err) == Go.toInterface(eof))) {
		_err = errUnexpectedEOF;
	};
	return {_0: _n, _1: _err};
}

function readFull(_r:Reader, _buf:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
	var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
	return readAtLeast(_r, _buf, _buf.length);
}
