package stdgo._internal.io.fs;
@:keep class File_static_extension {
    static public function close(t:File):stdgo.Error return t.close();
    static public function read(t:File, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return t.read(_0);
    static public function stat(t:File):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } return t.stat();
}