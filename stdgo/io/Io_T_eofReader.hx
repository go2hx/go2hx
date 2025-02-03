package stdgo.io;
@:structInit @:using(stdgo.io.Io.T_eofReader_static_extension) abstract T_eofReader(stdgo._internal.io.Io_T_eofReader.T_eofReader) from stdgo._internal.io.Io_T_eofReader.T_eofReader to stdgo._internal.io.Io_T_eofReader.T_eofReader {
    public function new() this = new stdgo._internal.io.Io_T_eofReader.T_eofReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
