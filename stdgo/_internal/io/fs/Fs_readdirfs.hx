package stdgo._internal.io.fs;
@:interface typedef ReadDirFS = stdgo.StructType & {
    @:interfacetypeffun
    function readDir(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; };
    function open(_0:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; };
};
