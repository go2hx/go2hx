package stdgo._internal.io.fs;
@:keep class ReadFileFS_static_extension {
    @:interfacetypeffun
    static public function readFile(t:stdgo._internal.io.fs.Fs_readfilefs.ReadFileFS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return t.readFile(_name);
}
