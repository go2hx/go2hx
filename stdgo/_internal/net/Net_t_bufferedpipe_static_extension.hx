package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.T_bufferedPipe_asInterface) class T_bufferedPipe_static_extension {
    @:keep
    @:tdfield
    static public function setWriteDeadline( _p:stdgo.Ref<stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe>, _t:stdgo._internal.time.Time_time.Time):Void throw "T_bufferedPipe:net.setWriteDeadline is not yet implemented";
    @:keep
    @:tdfield
    static public function setReadDeadline( _p:stdgo.Ref<stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe>, _t:stdgo._internal.time.Time_time.Time):Void throw "T_bufferedPipe:net.setReadDeadline is not yet implemented";
    @:keep
    @:tdfield
    static public function close( _p:stdgo.Ref<stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe>):Void throw "T_bufferedPipe:net.close is not yet implemented";
    @:keep
    @:tdfield
    static public function write( _p:stdgo.Ref<stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_bufferedPipe:net.write is not yet implemented";
    @:keep
    @:tdfield
    static public function read( _p:stdgo.Ref<stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_bufferedPipe:net.read is not yet implemented";
}
