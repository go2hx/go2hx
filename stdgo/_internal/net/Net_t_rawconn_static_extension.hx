package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.T_rawConn_asInterface) class T_rawConn_static_extension {
    @:keep
    @:tdfield
    static public function pollFD( _c:stdgo.Ref<stdgo._internal.net.Net_t_rawconn.T_rawConn>):stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> throw "T_rawConn:net.pollFD is not yet implemented";
    @:keep
    @:tdfield
    static public function write( _c:stdgo.Ref<stdgo._internal.net.Net_t_rawconn.T_rawConn>, _f:stdgo.GoUIntptr -> Bool):stdgo.Error throw "T_rawConn:net.write is not yet implemented";
    @:keep
    @:tdfield
    static public function read( _c:stdgo.Ref<stdgo._internal.net.Net_t_rawconn.T_rawConn>, _f:stdgo.GoUIntptr -> Bool):stdgo.Error throw "T_rawConn:net.read is not yet implemented";
    @:keep
    @:tdfield
    static public function control( _c:stdgo.Ref<stdgo._internal.net.Net_t_rawconn.T_rawConn>, _f:stdgo.GoUIntptr -> Void):stdgo.Error throw "T_rawConn:net.control is not yet implemented";
}
