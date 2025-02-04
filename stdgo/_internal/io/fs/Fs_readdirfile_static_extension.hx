package stdgo._internal.io.fs;
@:keep class ReadDirFile_static_extension {
    @:interfacetypeffun
    static public function readDir(t:stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile, _n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } return t.readDir(_n);
}
