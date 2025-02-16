package stdgo._internal.io.fs;
@:interface typedef FileInfo = stdgo.StructType & {
    @:interfacetypeffun
    function name():stdgo.GoString;
    @:interfacetypeffun
    function size():stdgo.GoInt64;
    @:interfacetypeffun
    function mode():stdgo._internal.io.fs.Fs_filemode.FileMode;
    @:interfacetypeffun
    function modTime():stdgo._internal.time.Time_time.Time;
    @:interfacetypeffun
    function isDir():Bool;
    @:interfacetypeffun
    function sys():stdgo.AnyInterface;
};
