package stdgo._internal.io.fs;
@:keep class StatFS_static_extension {
    @:interfacetypeffun
    static public function stat(t:stdgo._internal.io.fs.Fs_statfs.StatFS, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } return t.stat(_name);
}
