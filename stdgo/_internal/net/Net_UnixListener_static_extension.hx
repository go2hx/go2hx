package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.UnixListener_asInterface) class UnixListener_static_extension {
    @:keep
    static public function setUnlinkOnClose( _l:stdgo.Ref<stdgo._internal.net.Net_UnixListener.UnixListener>, _unlink:Bool):Void throw "UnixListener:net.setUnlinkOnClose is not yet implemented";
    @:keep
    static public function file( _l:stdgo.Ref<stdgo._internal.net.Net_UnixListener.UnixListener>):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_File.File>; var _1 : stdgo.Error; } throw "UnixListener:net.file is not yet implemented";
    @:keep
    static public function setDeadline( _l:stdgo.Ref<stdgo._internal.net.Net_UnixListener.UnixListener>, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error throw "UnixListener:net.setDeadline is not yet implemented";
    @:keep
    static public function addr( _l:stdgo.Ref<stdgo._internal.net.Net_UnixListener.UnixListener>):stdgo._internal.net.Net_Addr.Addr throw "UnixListener:net.addr is not yet implemented";
    @:keep
    static public function close( _l:stdgo.Ref<stdgo._internal.net.Net_UnixListener.UnixListener>):stdgo.Error throw "UnixListener:net.close is not yet implemented";
    @:keep
    static public function accept( _l:stdgo.Ref<stdgo._internal.net.Net_UnixListener.UnixListener>):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } throw "UnixListener:net.accept is not yet implemented";
    @:keep
    static public function acceptUnix( _l:stdgo.Ref<stdgo._internal.net.Net_UnixListener.UnixListener>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_UnixConn.UnixConn>; var _1 : stdgo.Error; } throw "UnixListener:net.acceptUnix is not yet implemented";
    @:keep
    static public function syscallConn( _l:stdgo.Ref<stdgo._internal.net.Net_UnixListener.UnixListener>):{ var _0 : stdgo._internal.syscall.Syscall_RawConn.RawConn; var _1 : stdgo.Error; } throw "UnixListener:net.syscallConn is not yet implemented";
}
