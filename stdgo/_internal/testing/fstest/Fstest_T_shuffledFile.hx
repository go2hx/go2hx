package stdgo._internal.testing.fstest;
@:structInit @:using(stdgo._internal.testing.fstest.Fstest_T_shuffledFile_static_extension.T_shuffledFile_static_extension) class T_shuffledFile {
    @:embedded
    public var file : stdgo._internal.io.fs.Fs_File.File = (null : stdgo._internal.io.fs.Fs_File.File);
    public function new(?file:stdgo._internal.io.fs.Fs_File.File) {
        if (file != null) this.file = file;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function close():stdgo.Error return this.file.close();
    @:embedded
    public function read(__0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.file.read(__0);
    @:embedded
    public function stat():{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } return this.file.stat();
    public function __copy__() {
        return new T_shuffledFile(file);
    }
}
