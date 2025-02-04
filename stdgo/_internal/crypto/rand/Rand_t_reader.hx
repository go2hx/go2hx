package stdgo._internal.crypto.rand;
@:structInit @:using(stdgo._internal.crypto.rand.Rand_t_reader_static_extension.T_reader_static_extension) class T_reader {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_reader();
    }
}
