package stdgo.archive.zip;
@:structInit @:using(stdgo.archive.zip.Zip.T_dirWriter_static_extension) abstract T_dirWriter(stdgo._internal.archive.zip.Zip_T_dirWriter.T_dirWriter) from stdgo._internal.archive.zip.Zip_T_dirWriter.T_dirWriter to stdgo._internal.archive.zip.Zip_T_dirWriter.T_dirWriter {
    public function new() this = new stdgo._internal.archive.zip.Zip_T_dirWriter.T_dirWriter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
