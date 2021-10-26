package stdgo.io;

import stdgo.StdGoTypes;

var eof = stdgo.errors.Errors.new_("EOF");

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

interface Reader {
	public function __underlying__():AnyInterface;
	public function read(p:Slice<GoByte>):{_0:GoInt, _1:Error};
}

function readAll(r:Reader):{_0:Slice<GoByte>, _1:Error} {
	final s = new Slice<GoByte>(...[for (_ in 0...512) 0]);
	return {_0: s, _1: null};
}
