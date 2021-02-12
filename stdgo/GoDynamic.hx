package stdgo;

abstract GoDynamic(Dynamic) from Dynamic {
    public function new(?obj) {
        if (obj == null)
            obj = {};
        this = obj;
    }
    @:op(A == B) static public function equals(a:Dynamic,b:GoDynamic):Bool {
        return stdgo.GoReflect.deepEqual(a,b);
    }
    public inline function toDynamic():Dynamic {
        return this;
    }
}