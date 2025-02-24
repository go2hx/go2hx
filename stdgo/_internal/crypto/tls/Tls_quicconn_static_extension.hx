package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.QUICConn_asInterface) class QUICConn_static_extension {
    @:keep
    @:tdfield
    static public function setTransportParameters( _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicconn.QUICConn>, _params:stdgo.Slice<stdgo.GoUInt8>):Void throw "QUICConn:crypto.tls.setTransportParameters is not yet implemented";
    @:keep
    @:tdfield
    static public function connectionState( _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicconn.QUICConn>):stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState throw "QUICConn:crypto.tls.connectionState is not yet implemented";
    @:keep
    @:tdfield
    static public function sendSessionTicket( _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicconn.QUICConn>, _opts:stdgo._internal.crypto.tls.Tls_quicsessionticketoptions.QUICSessionTicketOptions):stdgo.Error throw "QUICConn:crypto.tls.sendSessionTicket is not yet implemented";
    @:keep
    @:tdfield
    static public function handleData( _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicconn.QUICConn>, _level:stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error throw "QUICConn:crypto.tls.handleData is not yet implemented";
    @:keep
    @:tdfield
    static public function close( _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicconn.QUICConn>):stdgo.Error throw "QUICConn:crypto.tls.close is not yet implemented";
    @:keep
    @:tdfield
    static public function nextEvent( _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicconn.QUICConn>):stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent throw "QUICConn:crypto.tls.nextEvent is not yet implemented";
    @:keep
    @:tdfield
    static public function start( _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicconn.QUICConn>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error throw "QUICConn:crypto.tls.start is not yet implemented";
}
