package stdgo._internal.io;
@:structInit @:using(stdgo._internal.io.Io_t_discard_static_extension.T_discard_static_extension) class T_discard {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_discard();
    }
}
