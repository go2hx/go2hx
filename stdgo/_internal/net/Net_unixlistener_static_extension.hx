package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.UnixListener_asInterface) class UnixListener_static_extension {
    @:keep
    @:tdfield
    static public function setUnlinkOnClose( _l:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>, _unlink:Bool):Void throw "UnixListener:net.setUnlinkOnClose is not yet implemented";
    @:keep
    @:tdfield
    static public function file( _l:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } throw "UnixListener:net.file is not yet implemented";
    @:keep
    @:tdfield
    static public function setDeadline( _l:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error throw "UnixListener:net.setDeadline is not yet implemented";
    @:keep
    @:tdfield
    static public function addr( _l:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>):stdgo._internal.net.Net_addr.Addr throw "UnixListener:net.addr is not yet implemented";
    @:keep
    @:tdfield
    static public function close( _l:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>):stdgo.Error throw "UnixListener:net.close is not yet implemented";
    @:keep
    @:tdfield
    static public function accept( _l:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } throw "UnixListener:net.accept is not yet implemented";
    @:keep
    @:tdfield
    static public function acceptUnix( _l:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>; var _1 : stdgo.Error; } throw "UnixListener:net.acceptUnix is not yet implemented";
    @:keep
    @:tdfield
    static public function syscallConn( _l:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>):{ var _0 : stdgo._internal.syscall.Syscall_rawconn.RawConn; var _1 : stdgo.Error; } throw "UnixListener:net.syscallConn is not yet implemented";
}
