package stdgo._internal.io;
@:structInit @:using(stdgo._internal.io.Io_t_eofreader_static_extension.T_eofReader_static_extension) class T_eofReader {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_eofReader();
    }
}
