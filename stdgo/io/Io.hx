package stdgo.io;

import stdgo.errors.Errors.Error;
import stdgo.StdTypes.Byte;



interface Writer {
    public function write(p:Array<Byte>):{n:Int,err:Error};
}
interface Reader {
    public function read():{p:Array<Byte>,err:Error};
}