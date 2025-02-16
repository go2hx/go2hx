package stdgo._internal.io.fs;
@:interface typedef DirEntry = stdgo.StructType & {
    @:interfacetypeffun
    function name():stdgo.GoString;
    @:interfacetypeffun
    function isDir():Bool;
    @:interfacetypeffun
    function type():stdgo._internal.io.fs.Fs_filemode.FileMode;
    @:interfacetypeffun
    function info():{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; };
};
