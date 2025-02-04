package stdgo._internal.io.fs;
@:keep class GlobFS_static_extension {
    @:interfacetypeffun
    static public function glob(t:stdgo._internal.io.fs.Fs_globfs.GlobFS, _pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return t.glob(_pattern);
}
