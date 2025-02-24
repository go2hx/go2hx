package stdgo._internal.io.fs;
@:interface typedef ReadDirFile = stdgo.StructType & {
    @:interfacetypeffun
    function readDir(_n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; };
    function close():stdgo.Error;
    function read(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    function stat():{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; };
};
