package stdgo._internal.io.fs;
@:interface typedef StatFS = stdgo.StructType & {
    > stdgo._internal.io.fs.Fs_fs.FS,
    @:interfacetypeffun
    function stat(_name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; };
};
