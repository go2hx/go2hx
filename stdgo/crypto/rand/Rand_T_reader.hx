package stdgo.crypto.rand;
@:structInit @:using(stdgo.crypto.rand.Rand.T_reader_static_extension) abstract T_reader(stdgo._internal.crypto.rand.Rand_T_reader.T_reader) from stdgo._internal.crypto.rand.Rand_T_reader.T_reader to stdgo._internal.crypto.rand.Rand_T_reader.T_reader {
    public function new() this = new stdgo._internal.crypto.rand.Rand_T_reader.T_reader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
