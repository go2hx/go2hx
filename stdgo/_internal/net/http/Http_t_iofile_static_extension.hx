package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_ioFile_asInterface) class T_ioFile_static_extension {
    @:keep
    @:tdfield
    static public function readdir( _f:stdgo._internal.net.http.Http_t_iofile.T_ioFile, _count:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>; var _1 : stdgo.Error; } throw "T_ioFile:net.http.readdir is not yet implemented";
    @:keep
    @:tdfield
    static public function readDir( _f:stdgo._internal.net.http.Http_t_iofile.T_ioFile, _count:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } throw "T_ioFile:net.http.readDir is not yet implemented";
    @:keep
    @:tdfield
    static public function seek( _f:stdgo._internal.net.http.Http_t_iofile.T_ioFile, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } throw "T_ioFile:net.http.seek is not yet implemented";
    @:keep
    @:tdfield
    static public function stat( _f:stdgo._internal.net.http.Http_t_iofile.T_ioFile):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } throw "T_ioFile:net.http.stat is not yet implemented";
    @:keep
    @:tdfield
    static public function read( _f:stdgo._internal.net.http.Http_t_iofile.T_ioFile, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_ioFile:net.http.read is not yet implemented";
    @:keep
    @:tdfield
    static public function close( _f:stdgo._internal.net.http.Http_t_iofile.T_ioFile):stdgo.Error throw "T_ioFile:net.http.close is not yet implemented";
}
