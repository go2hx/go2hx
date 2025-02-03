package stdgo.archive.tar;
@:structInit @:using(stdgo.archive.tar.Tar.T_zeroWriter_static_extension) abstract T_zeroWriter(stdgo._internal.archive.tar.Tar_T_zeroWriter.T_zeroWriter) from stdgo._internal.archive.tar.Tar_T_zeroWriter.T_zeroWriter to stdgo._internal.archive.tar.Tar_T_zeroWriter.T_zeroWriter {
    public function new() this = new stdgo._internal.archive.tar.Tar_T_zeroWriter.T_zeroWriter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
