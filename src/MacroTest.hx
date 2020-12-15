import Fmt;
import Builtin;
import haxe.ds.Vector;
import Pointer;
import Go;
import Builtin.append;
function main() {
    var data = new Data();
    data.x = 10;
    var data2 = Go.copy(data);
    //data2.x = 20;
    trace("data2: " + data2.x);
}
class Data {
    public var x:Int = 0;
    public function new(x:Int = 0) {
        this.x = x;
    }
}