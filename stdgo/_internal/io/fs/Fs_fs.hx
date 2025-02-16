package stdgo._internal.io.fs;
@:interface typedef FS = stdgo.StructType & {
    @:interfacetypeffun
    function open(_name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; };
};
