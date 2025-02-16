package stdgo._internal.io.fs;
@:interface typedef SubFS = stdgo.StructType & {
    > stdgo._internal.io.fs.Fs_fs.FS,
    @:interfacetypeffun
    function sub(_dir:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_fs.FS; var _1 : stdgo.Error; };
};
