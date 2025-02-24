package stdgo._internal.io.fs;
@:interface typedef GlobFS = stdgo.StructType & {
    @:interfacetypeffun
    function glob(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; };
    function open(_0:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; };
};
