package stdgo._internal.archive.zip;
@:interface typedef T_fileInfoDirEntry = stdgo.StructType & {
    public dynamic function isDir():Bool;
    public dynamic function modTime():stdgo._internal.time.Time_time.Time;
    public dynamic function mode():stdgo._internal.io.fs.Fs_filemode.FileMode;
    public dynamic function name():stdgo.GoString;
    public dynamic function size():stdgo.GoInt64;
    public dynamic function sys():stdgo.AnyInterface;
    public dynamic function info():{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; };
    public dynamic function type():stdgo._internal.io.fs.Fs_filemode.FileMode;
};
