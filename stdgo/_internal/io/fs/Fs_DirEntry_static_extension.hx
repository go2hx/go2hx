package stdgo._internal.io.fs;
@:keep class DirEntry_static_extension {
    @:interfacetypeffun
    static public function info(t:stdgo._internal.io.fs.Fs_DirEntry.DirEntry):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } return t.info();
    @:interfacetypeffun
    static public function type(t:stdgo._internal.io.fs.Fs_DirEntry.DirEntry):stdgo._internal.io.fs.Fs_FileMode.FileMode return t.type();
    @:interfacetypeffun
    static public function isDir(t:stdgo._internal.io.fs.Fs_DirEntry.DirEntry):Bool return t.isDir();
    @:interfacetypeffun
    static public function name(t:stdgo._internal.io.fs.Fs_DirEntry.DirEntry):stdgo.GoString return t.name();
}
