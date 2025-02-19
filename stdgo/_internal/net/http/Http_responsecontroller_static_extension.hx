package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.ResponseController_asInterface) class ResponseController_static_extension {
    @:keep
    @:tdfield
    static public function enableFullDuplex( _c:stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController>):stdgo.Error throw "ResponseController:net.http.enableFullDuplex is not yet implemented";
    @:keep
    @:tdfield
    static public function setWriteDeadline( _c:stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController>, _deadline:stdgo._internal.time.Time_time.Time):stdgo.Error throw "ResponseController:net.http.setWriteDeadline is not yet implemented";
    @:keep
    @:tdfield
    static public function setReadDeadline( _c:stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController>, _deadline:stdgo._internal.time.Time_time.Time):stdgo.Error throw "ResponseController:net.http.setReadDeadline is not yet implemented";
    @:keep
    @:tdfield
    static public function hijack( _c:stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController>):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_readwriter.ReadWriter>; var _2 : stdgo.Error; } throw "ResponseController:net.http.hijack is not yet implemented";
    @:keep
    @:tdfield
    static public function flush( _c:stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController>):stdgo.Error throw "ResponseController:net.http.flush is not yet implemented";
}
