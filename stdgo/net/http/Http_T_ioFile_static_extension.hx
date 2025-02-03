package stdgo.net.http;
class T_ioFile_static_extension {
    static public function readdir(_f:T_ioFile, _count:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>, stdgo.Error> {
        final _count = (_count : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.http.Http_T_ioFile_static_extension.T_ioFile_static_extension.readdir(_f, _count);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readDir(_f:T_ioFile, _count:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>, stdgo.Error> {
        final _count = (_count : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.http.Http_T_ioFile_static_extension.T_ioFile_static_extension.readDir(_f, _count);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function seek(_f:T_ioFile, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _offset = (_offset : stdgo.GoInt64);
        final _whence = (_whence : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.http.Http_T_ioFile_static_extension.T_ioFile_static_extension.seek(_f, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function stat(_f:T_ioFile):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_ioFile_static_extension.T_ioFile_static_extension.stat(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_f:T_ioFile, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_ioFile_static_extension.T_ioFile_static_extension.read(_f, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_f:T_ioFile):stdgo.Error {
        return stdgo._internal.net.http.Http_T_ioFile_static_extension.T_ioFile_static_extension.close(_f);
    }
}
