package stdgo._internal.io.fs;
@:keep class ReadDirFS_static_extension {
    static public function readDir(t:stdgo._internal.io.fs.Fs_ReadDirFS.ReadDirFS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; } return t.readDir(_name);
}
