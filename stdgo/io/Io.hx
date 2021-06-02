package stdgo.io;

import stdgo.StdGoTypes.Error;
import stdgo.StdGoTypes.GoByte;
import stdgo.StdGoTypes.GoInt;

interface Writer {
	public function write(p:Array<GoByte>):{n:GoInt, err:Error};
}

interface Reader {
	public function read():{p:Array<GoByte>, err:Error};
}
