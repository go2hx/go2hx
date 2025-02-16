package stdgo._internal.io.fs;
@:interface typedef ReadDirFS = stdgo.StructType & {
    > stdgo._internal.io.fs.Fs_fs.FS,
    @:interfacetypeffun
    function readDir(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; };
};
