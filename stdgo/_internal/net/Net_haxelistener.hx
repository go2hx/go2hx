package stdgo._internal.net;
@:using(stdgo._internal.net.Net_haxelistener_static_extension.HaxeListener_static_extension) class HaxeListener {
    @:local
    private var _socket = #if sys {
        (null : sys.net.Socket);
    } #else null #end;
    @:local
    private var _addr = null;
    public function new(addr, socket) {
        this._addr = addr;
        this._socket = socket;
    }
    public dynamic function accept():{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } {
        #if sys {
            final s = _socket.accept();
            return { _0 : new stdgo._internal.net.Net_haxeconn.HaxeConn(this._addr, s), _1 : null };
        } #else null #end;
        return { _0 : null, _1 : null };
    }
    public dynamic function close():stdgo.Error {
        #if sys {
            _socket.close();
        } #else null #end;
        return null;
    }
    public dynamic function addr():stdgo._internal.net.Net_addr.Addr {
        return this._addr;
    }
    public function __underlying__():stdgo.AnyInterface return stdgo.Go.toInterface(this);
}
