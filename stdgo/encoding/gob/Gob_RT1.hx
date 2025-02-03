package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.RT1_static_extension) abstract RT1(stdgo._internal.encoding.gob.Gob_RT1.RT1) from stdgo._internal.encoding.gob.Gob_RT1.RT1 to stdgo._internal.encoding.gob.Gob_RT1.RT1 {
    public var c(get, set) : StdTypes.Float;
    function get_c():StdTypes.Float return this.c;
    function set_c(v:StdTypes.Float):StdTypes.Float {
        this.c = (v : stdgo.GoFloat64);
        return v;
    }
    public var b(get, set) : String;
    function get_b():String return this.b;
    function set_b(v:String):String {
        this.b = (v : stdgo.GoString);
        return v;
    }
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public var notSet(get, set) : String;
    function get_notSet():String return this.notSet;
    function set_notSet(v:String):String {
        this.notSet = (v : stdgo.GoString);
        return v;
    }
    public function new(?c:StdTypes.Float, ?b:String, ?a:StdTypes.Int, ?notSet:String) this = new stdgo._internal.encoding.gob.Gob_RT1.RT1((c : stdgo.GoFloat64), (b : stdgo.GoString), (a : stdgo.GoInt), (notSet : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
