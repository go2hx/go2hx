package stdgo.net.http;
class ResponseController_static_extension {
    static public function enableFullDuplex(_c:ResponseController):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_ResponseController.ResponseController>);
        return stdgo._internal.net.http.Http_ResponseController_static_extension.ResponseController_static_extension.enableFullDuplex(_c);
    }
    static public function setWriteDeadline(_c:ResponseController, _deadline:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_ResponseController.ResponseController>);
        return stdgo._internal.net.http.Http_ResponseController_static_extension.ResponseController_static_extension.setWriteDeadline(_c, _deadline);
    }
    static public function setReadDeadline(_c:ResponseController, _deadline:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_ResponseController.ResponseController>);
        return stdgo._internal.net.http.Http_ResponseController_static_extension.ResponseController_static_extension.setReadDeadline(_c, _deadline);
    }
    static public function hijack(_c:ResponseController):stdgo.Tuple.Tuple3<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_ResponseController.ResponseController>);
        return {
            final obj = stdgo._internal.net.http.Http_ResponseController_static_extension.ResponseController_static_extension.hijack(_c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function flush(_c:ResponseController):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_ResponseController.ResponseController>);
        return stdgo._internal.net.http.Http_ResponseController_static_extension.ResponseController_static_extension.flush(_c);
    }
}
