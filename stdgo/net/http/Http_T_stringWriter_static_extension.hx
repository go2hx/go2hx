package stdgo.net.http;
class T_stringWriter_static_extension {
    static public function writeString(_w:T_stringWriter, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_T_stringWriter_static_extension.T_stringWriter_static_extension.writeString(_w, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
