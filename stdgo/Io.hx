package stdgo;

import stdgo.Errors.Error;
import stdgo.StdTypes.Byte;



interface Writer {
    public function write(p:Array<Byte>):{n:Int,err:Error};
}