package stdgo.sync;

import stdgo.StdGoTypes.StructType;
import sys.thread.Mutex;

class RWMutex implements StructType {
    var mutux:Mutex;
    public var _is_pointer_:Bool = false;
    public final _typeName_:String = "RWMutex";
    public final _address_:String = "RWMutex";

    public function new() {
        mutux = new Mutex();
    }
    public function lock() {

    }
    public function unlock() {
        
    }
    public function rlock() {

    }
    public function runlock() {
        
    }
}