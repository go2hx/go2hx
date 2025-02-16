package stdgo._internal.io.fs;
@:interface typedef GlobFS = stdgo.StructType & {
    > stdgo._internal.io.fs.Fs_fs.FS,
    @:interfacetypeffun
    function glob(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; };
};
