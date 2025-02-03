package stdgo.archive.tar;
@:structInit @:using(stdgo.archive.tar.Tar.T_zeroReader_static_extension) abstract T_zeroReader(stdgo._internal.archive.tar.Tar_T_zeroReader.T_zeroReader) from stdgo._internal.archive.tar.Tar_T_zeroReader.T_zeroReader to stdgo._internal.archive.tar.Tar_T_zeroReader.T_zeroReader {
    public function new() this = new stdgo._internal.archive.tar.Tar_T_zeroReader.T_zeroReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
