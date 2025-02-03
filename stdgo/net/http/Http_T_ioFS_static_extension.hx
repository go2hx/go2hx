package stdgo.net.http;
class T_ioFS_static_extension {
    static public function open(_f:T_ioFS, _name:String):stdgo.Tuple<File, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_T_ioFS_static_extension.T_ioFS_static_extension.open(_f, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
