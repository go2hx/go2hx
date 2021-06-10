package stdgo.io;

import stdgo.StdGoTypes.Error;
import stdgo.StdGoTypes.GoByte;
import stdgo.StdGoTypes.GoInt;
import stdgo.StdGoTypes.AnyInterface;

interface Writer {
	public function __underlying__():AnyInterface;
	public function write(p:Array<GoByte>):{n:GoInt, err:Error};
}

interface Reader {
	public function __underlying__():AnyInterface;
	public function read():{p:Array<GoByte>, err:Error};
}
