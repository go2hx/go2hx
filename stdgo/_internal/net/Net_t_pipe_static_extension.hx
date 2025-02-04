package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.T_pipe_asInterface) class T_pipe_static_extension {
    @:keep
    @:tdfield
    static public function close( _p:stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe>):stdgo.Error throw "T_pipe:net.close is not yet implemented";
    @:keep
    @:tdfield
    static public function setWriteDeadline( _p:stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error throw "T_pipe:net.setWriteDeadline is not yet implemented";
    @:keep
    @:tdfield
    static public function setReadDeadline( _p:stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error throw "T_pipe:net.setReadDeadline is not yet implemented";
    @:keep
    @:tdfield
    static public function setDeadline( _p:stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error throw "T_pipe:net.setDeadline is not yet implemented";
    @:keep
    @:tdfield
    static public function write( _p:stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_pipe:net.write is not yet implemented";
    @:keep
    @:tdfield
    static public function read( _p:stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_pipe:net.read is not yet implemented";
    @:keep
    @:tdfield
    static public function remoteAddr( _:stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe>):stdgo._internal.net.Net_addr.Addr throw "T_pipe:net.remoteAddr is not yet implemented";
    @:keep
    @:tdfield
    static public function localAddr( _:stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe>):stdgo._internal.net.Net_addr.Addr throw "T_pipe:net.localAddr is not yet implemented";
}
