package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.TCPListener_asInterface) class TCPListener_static_extension {
    @:keep
    static public function file( _l:stdgo.Ref<stdgo._internal.net.Net_TCPListener.TCPListener>):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_File.File>; var _1 : stdgo.Error; } throw "TCPListener:net.file is not yet implemented";
    @:keep
    static public function setDeadline( _l:stdgo.Ref<stdgo._internal.net.Net_TCPListener.TCPListener>, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error throw "TCPListener:net.setDeadline is not yet implemented";
    @:keep
    static public function addr( _l:stdgo.Ref<stdgo._internal.net.Net_TCPListener.TCPListener>):stdgo._internal.net.Net_Addr.Addr throw "TCPListener:net.addr is not yet implemented";
    @:keep
    static public function close( _l:stdgo.Ref<stdgo._internal.net.Net_TCPListener.TCPListener>):stdgo.Error throw "TCPListener:net.close is not yet implemented";
    @:keep
    static public function accept( _l:stdgo.Ref<stdgo._internal.net.Net_TCPListener.TCPListener>):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } throw "TCPListener:net.accept is not yet implemented";
    @:keep
    static public function acceptTCP( _l:stdgo.Ref<stdgo._internal.net.Net_TCPListener.TCPListener>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_TCPConn.TCPConn>; var _1 : stdgo.Error; } throw "TCPListener:net.acceptTCP is not yet implemented";
    @:keep
    static public function syscallConn( _l:stdgo.Ref<stdgo._internal.net.Net_TCPListener.TCPListener>):{ var _0 : stdgo._internal.syscall.Syscall_RawConn.RawConn; var _1 : stdgo.Error; } throw "TCPListener:net.syscallConn is not yet implemented";
}
