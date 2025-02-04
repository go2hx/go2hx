package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.T_rawListener_asInterface) class T_rawListener_static_extension {
    @:keep
    @:tdfield
    static public function write( _l:stdgo.Ref<stdgo._internal.net.Net_t_rawlistener.T_rawListener>, _0:stdgo.GoUIntptr -> Bool):stdgo.Error throw "T_rawListener:net.write is not yet implemented";
    @:keep
    @:tdfield
    static public function read( _l:stdgo.Ref<stdgo._internal.net.Net_t_rawlistener.T_rawListener>, _0:stdgo.GoUIntptr -> Bool):stdgo.Error throw "T_rawListener:net.read is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function _ok( __self__:stdgo._internal.net.Net_t_rawlistener.T_rawListener):Bool return @:_5 __self__._ok();
    @:embedded
    @:embeddededffieldsffun
    public static function pollFD( __self__:stdgo._internal.net.Net_t_rawlistener.T_rawListener):stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> return @:_5 __self__.pollFD();
    @:embedded
    @:embeddededffieldsffun
    public static function control( __self__:stdgo._internal.net.Net_t_rawlistener.T_rawListener, _0:stdgo.GoUIntptr -> Void):stdgo.Error return @:_5 __self__.control(_0);
}
