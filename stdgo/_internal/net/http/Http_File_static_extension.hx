package stdgo._internal.net.http;
@:keep class File_static_extension {
    static public function stat(t:File):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } return t.stat();
    static public function readdir(t:File, _count:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>; var _1 : stdgo.Error; } return t.readdir(_count);
}
