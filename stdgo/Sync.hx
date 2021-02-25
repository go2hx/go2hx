package stdgo;

import sys.thread.Mutex;

class RWMutex {
    var mutux:Mutex;

    public function new() {
        mutux = new Mutex();
    }
}