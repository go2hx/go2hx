package stdgo._internal.io.fs;
@:interface typedef ReadDirFile = stdgo.StructType & {
    > stdgo._internal.io.fs.Fs_file.File,
    @:interfacetypeffun
    function readDir(_n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; };
};
