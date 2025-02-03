package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.N2_static_extension) abstract N2(stdgo._internal.encoding.gob.Gob_N2.N2) from stdgo._internal.encoding.gob.Gob_N2.N2 to stdgo._internal.encoding.gob.Gob_N2.N2 {
    public function new() this = new stdgo._internal.encoding.gob.Gob_N2.N2();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
