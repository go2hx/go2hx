package stdgo._internal.io.fs;
@:keep class GlobFS_static_extension {
    static public function glob(t:GlobFS, _pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return t.glob(_pattern);
}
