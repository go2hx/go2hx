package stdgo.unsafe;

import stdgo.Pointer as Base;

abstract Pointer(Base<Dynamic>) to Base<Dynamic> {
    public function new(obj) {
        this = new Pointer(obj);
    }
}