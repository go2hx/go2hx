package stdgo._internal.net.http;
@:keep class File_static_extension {
    @:interfacetypeffun
    static public function stat(t:stdgo._internal.net.http.Http_file.File):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } return t.stat();
    @:interfacetypeffun
    static public function readdir(t:stdgo._internal.net.http.Http_file.File, _count:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>; var _1 : stdgo.Error; } return t.readdir(_count);
}
