package stdgo.net.http;
class File_static_extension {
    static public function stat(t:stdgo._internal.net.http.Http_File.File):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_File_static_extension.File_static_extension.stat(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readdir(t:stdgo._internal.net.http.Http_File.File, _count:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>, stdgo.Error> {
        final _count = (_count : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.http.Http_File_static_extension.File_static_extension.readdir(t, _count);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
