package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.ET4_static_extension) abstract ET4(stdgo._internal.encoding.gob.Gob_ET4.ET4) from stdgo._internal.encoding.gob.Gob_ET4.ET4 to stdgo._internal.encoding.gob.Gob_ET4.ET4 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public var et2(get, set) : StdTypes.Float;
    function get_et2():StdTypes.Float return this.et2;
    function set_et2(v:StdTypes.Float):StdTypes.Float {
        this.et2 = (v : stdgo.GoFloat64);
        return v;
    }
    public var next(get, set) : StdTypes.Int;
    function get_next():StdTypes.Int return this.next;
    function set_next(v:StdTypes.Int):StdTypes.Int {
        this.next = (v : stdgo.GoInt);
        return v;
    }
    public function new(?a:StdTypes.Int, ?et2:StdTypes.Float, ?next:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_ET4.ET4((a : stdgo.GoInt), (et2 : stdgo.GoFloat64), (next : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
