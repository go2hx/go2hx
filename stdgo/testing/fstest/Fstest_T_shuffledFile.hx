package stdgo.testing.fstest;
@:structInit @:using(stdgo.testing.fstest.Fstest.T_shuffledFile_static_extension) abstract T_shuffledFile(stdgo._internal.testing.fstest.Fstest_T_shuffledFile.T_shuffledFile) from stdgo._internal.testing.fstest.Fstest_T_shuffledFile.T_shuffledFile to stdgo._internal.testing.fstest.Fstest_T_shuffledFile.T_shuffledFile {
    public var file(get, set) : stdgo._internal.io.fs.Fs_File.File;
    function get_file():stdgo._internal.io.fs.Fs_File.File return this.file;
    function set_file(v:stdgo._internal.io.fs.Fs_File.File):stdgo._internal.io.fs.Fs_File.File {
        this.file = v;
        return v;
    }
    public function new(?file:stdgo._internal.io.fs.Fs_File.File) this = new stdgo._internal.testing.fstest.Fstest_T_shuffledFile.T_shuffledFile(file);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
