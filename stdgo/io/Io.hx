package stdgo.io;

import stdgo.StdGoTypes.Error;
import stdgo.StdGoTypes.GoByte;
import stdgo.StdGoTypes.GoInt;
import stdgo.StdGoTypes.AnyInterface;

interface Writer {
	public function __underlying__():AnyInterface;
	public function write(p:Slice<GoByte>):{_n:GoInt, _err:Error};
}

interface Reader {
	public function __underlying__():AnyInterface;
	public function read(p:Slice<GoByte>):{_n:GoInt, _err:Error};
}

function readAll(r:Reader):{v0:Slice<GoByte>,v1:Error} {
	final s = new Slice<GoByte>(...[for (_ in 0...512) 0]);
	return {v0: s, v1: null};
}