package stdgo.net.http;
class FileSystem_static_extension {
    static public function open(t:stdgo._internal.net.http.Http_FileSystem.FileSystem, _name:String):stdgo.Tuple<File, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_FileSystem_static_extension.FileSystem_static_extension.open(t, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
