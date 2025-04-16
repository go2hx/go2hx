package stdgo._internal.net;
@:using(stdgo._internal.net.Net_haxeconn_static_extension.HaxeConn_static_extension) class HaxeConn {
    @:local
    private var _socket = #if sys {
        (null : sys.net.Socket);
    } #else null #end;
    @:local
    private var _addr = null;
    public function new(addr, socket) {
        this._socket = socket;
        this._addr = addr;
    }
    public dynamic function read(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        #if sys {
            final b = _b.toBytes();
            final i = _socket.input.readBytes(b, 0, b.length);
            @:privateAccess _b.__bytes__ = b;
            return { _0 : i, _1 : null };
        } #else null #end;
        return { _0 : 0, _1 : null };
    }
    public dynamic function write(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        #if sys {
            final b = _b.toBytes();
            final i = _socket.output.writeBytes(b, 0, b.length);
            @:privateAccess _b.__bytes__ = b;
            return { _0 : i, _1 : null };
        } #else null #end;
        return { _0 : 0, _1 : null };
    }
    public dynamic function close():stdgo.Error {
        #if sys {
            _socket.close();
        } #else null #end;
        return null;
    }
    public dynamic function localAddr():stdgo._internal.net.Net_addr.Addr {
        throw "not implemented";
        return null;
    }
    public dynamic function remoteAddr():stdgo._internal.net.Net_addr.Addr {
        throw "not implemented";
        return null;
    }
    public dynamic function setDeadline(t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        throw "not implemented";
        return null;
    }
    public dynamic function setReadDeadline(t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        throw "not implemented";
        return null;
    }
    public dynamic function setWriteDeadline(t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        throw "not implemented";
        return null;
    }
    public function __underlying__():stdgo.AnyInterface return stdgo.Go.toInterface(this);
}
