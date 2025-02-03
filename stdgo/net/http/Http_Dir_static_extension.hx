package stdgo.net.http;
class Dir_static_extension {
    static public function open(_d:Dir, _name:String):stdgo.Tuple<File, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_Dir_static_extension.Dir_static_extension.open(_d, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
