package stdgo.net.http;
class Hijacker_static_extension {
    static public function hijack(t:stdgo._internal.net.http.Http_Hijacker.Hijacker):stdgo.Tuple.Tuple3<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_Hijacker_static_extension.Hijacker_static_extension.hijack(t);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
}
