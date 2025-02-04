package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.T_fakeNetFD_asInterface) class T_fakeNetFD_static_extension {
    @:keep
    @:tdfield
    static public function setWriteDeadline( _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error throw "T_fakeNetFD:net.setWriteDeadline is not yet implemented";
    @:keep
    @:tdfield
    static public function setReadDeadline( _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error throw "T_fakeNetFD:net.setReadDeadline is not yet implemented";
    @:keep
    @:tdfield
    static public function setDeadline( _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error throw "T_fakeNetFD:net.setDeadline is not yet implemented";
    @:keep
    @:tdfield
    static public function close( _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>):stdgo.Error throw "T_fakeNetFD:net.close is not yet implemented";
    @:keep
    @:tdfield
    static public function write( _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_fakeNetFD:net.write is not yet implemented";
    @:keep
    @:tdfield
    static public function read( _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_fakeNetFD:net.read is not yet implemented";
}
