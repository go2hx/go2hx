package stdgo._internal.io.fs;
@:keep class DirEntry_static_extension {
    static public function info(t:DirEntry):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } return t.info();
    static public function type(t:DirEntry):stdgo._internal.io.fs.Fs_FileMode.FileMode return t.type();
    static public function isDir(t:DirEntry):Bool return t.isDir();
    static public function name(t:DirEntry):stdgo.GoString return t.name();
}
