package stdgo.io;

import stdgo.StdGoTypes.Error;
import stdgo.StdGoTypes.GoByte;

interface Writer {
	public function write(p:Array<GoByte>):{n:Int, err:Error};
}

interface Reader {
	public function read():{p:Array<GoByte>, err:Error};
}
