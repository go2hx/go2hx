package stdgo.io;

import stdgo.StdGoTypes;

interface ByteReader {
	public function readByte():{var v0:GoByte; var v1:Error;};
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
	public function readRune():{var _r:GoRune; var _size:GoInt; var _err:Error;};
	public function __underlying__():AnyInterface;
}

interface RuneScanner extends RuneReader {
	public function unreadRune():Error;
	public function __underlying__():AnyInterface;
}

interface ReaderFrom {
	public function readFrom(_r:Reader):{var _n:GoInt64; var _err:Error;};
	public function __underlying__():AnyInterface;
}

interface ReaderAt {
	public function readAt(_p:Slice<GoByte>, _off:GoInt64):{var _n:GoInt; var _err:Error;};
	public function __underlying__():AnyInterface;
}

interface Writer {
	public function __underlying__():AnyInterface;
	public function write(p:Slice<GoByte>):{_n:GoInt, _err:Error};
}

interface Reader {
	public function __underlying__():AnyInterface;
	public function read(p:Slice<GoByte>):{_n:GoInt, _err:Error};
}

function readAll(r:Reader):{v0:Slice<GoByte>, v1:Error} {
	final s = new Slice<GoByte>(...[for (_ in 0...512) 0]);
	return {v0: s, v1: null};
}
