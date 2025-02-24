package stdgo._internal.archive.zip;
@:interface typedef T_fileInfoDirEntry = stdgo.StructType & {
    function isDir():Bool;
    function modTime():stdgo._internal.time.Time_time.Time;
    function mode():stdgo._internal.io.fs.Fs_filemode.FileMode;
    function name():stdgo.GoString;
    function size():stdgo.GoInt64;
    function sys():stdgo.AnyInterface;
    function info():{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; };
    function type():stdgo._internal.io.fs.Fs_filemode.FileMode;
};
