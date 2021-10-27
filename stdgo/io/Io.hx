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

interface StringWriter {
	public function writeString(s:GoString):{_0:GoInt, _1:Error};
}

interface ByteReader {
	public function readByte():{_0:GoByte, _1:Error};
	public function __underlying__():AnyInterface;
}

interface ByteScanner extends ByteReader {
	public function unreadByte():Error;
	public function __underlying__():AnyInterface;
}

interface ByteWriter {
	public function writeByte(_c:GoByte):Error;
	public function __underlying__():AnyInterface;
}

interface RuneReader {
	public function readRune():{var _0:GoRune; var _1:GoInt; var _2:Error;};
	public function __underlying__():AnyInterface;
}

interface RuneScanner extends RuneReader {
	public function unreadRune():Error;
	public function __underlying__():AnyInterface;
}

interface ReaderFrom {
	public function readFrom(_r:Reader):{var _0:GoInt64; var _1:Error;};
	public function __underlying__():AnyInterface;
}

interface ReaderAt {
	public function readAt(_p:Slice<GoByte>, _off:GoInt64):{var _0:GoInt; var _1:Error;};
	public function __underlying__():AnyInterface;
}

interface Writer {
	public function __underlying__():AnyInterface;
	public function write(p:Slice<GoByte>):{_0:GoInt, _1:Error};
}

interface Closer {
	public function __underlying__():AnyInterface;
	public function close():Error;
}

interface ReadCloser extends Reader extends Closer {}

interface Reader {
	public function __underlying__():AnyInterface;
	public function read(p:Slice<GoByte>):{_0:GoInt, _1:Error};
}

function readAll(r:Reader):{_0:Slice<GoByte>, _1:Error} {
	final s = new Slice<GoByte>(...[for (_ in 0...512) 0]);
	return {_0: s, _1: null};
}
