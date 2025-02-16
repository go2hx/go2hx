package stdgo._internal.io.fs;
@:interface typedef ReadFileFS = stdgo.StructType & {
    > stdgo._internal.io.fs.Fs_fs.FS,
    @:interfacetypeffun
    function readFile(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
};
