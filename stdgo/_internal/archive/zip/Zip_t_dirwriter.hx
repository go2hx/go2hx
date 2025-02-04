package stdgo._internal.archive.zip;
@:structInit @:using(stdgo._internal.archive.zip.Zip_t_dirwriter_static_extension.T_dirWriter_static_extension) class T_dirWriter {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dirWriter();
    }
}
