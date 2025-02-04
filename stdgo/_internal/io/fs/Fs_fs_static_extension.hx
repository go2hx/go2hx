package stdgo._internal.io.fs;
@:keep class FS_static_extension {
    @:interfacetypeffun
    static public function open(t:stdgo._internal.io.fs.Fs_fs.FS, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; } return t.open(_name);
}
