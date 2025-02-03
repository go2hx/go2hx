package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.ET3_static_extension) abstract ET3(stdgo._internal.encoding.gob.Gob_ET3.ET3) from stdgo._internal.encoding.gob.Gob_ET3.ET3 to stdgo._internal.encoding.gob.Gob_ET3.ET3 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public var et2(get, set) : ET2;
    function get_et2():ET2 return this.et2;
    function set_et2(v:ET2):ET2 {
        this.et2 = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ET2.ET2>);
        return v;
    }
    public var differentNext(get, set) : ET1;
    function get_differentNext():ET1 return this.differentNext;
    function set_differentNext(v:ET1):ET1 {
        this.differentNext = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ET1.ET1>);
        return v;
    }
    public function new(?a:StdTypes.Int, ?et2:ET2, ?differentNext:ET1) this = new stdgo._internal.encoding.gob.Gob_ET3.ET3((a : stdgo.GoInt), (et2 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ET2.ET2>), (differentNext : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ET1.ET1>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
