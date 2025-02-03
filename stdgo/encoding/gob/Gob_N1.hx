package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.N1_static_extension) abstract N1(stdgo._internal.encoding.gob.Gob_N1.N1) from stdgo._internal.encoding.gob.Gob_N1.N1 to stdgo._internal.encoding.gob.Gob_N1.N1 {
    public function new() this = new stdgo._internal.encoding.gob.Gob_N1.N1();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
