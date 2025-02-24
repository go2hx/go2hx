package stdgo._internal.io.fs;
@:interface typedef StatFS = stdgo.StructType & {
    @:interfacetypeffun
    function stat(_name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; };
    function open(_0:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; };
};
