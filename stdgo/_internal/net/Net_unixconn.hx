package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_unixconn_static_extension.UnixConn_static_extension) class UnixConn {
    @:embedded
    public var _conn : stdgo._internal.net.Net_t_conn.T_conn = ({} : stdgo._internal.net.Net_t_conn.T_conn);
    public function new(?_conn:stdgo._internal.net.Net_t_conn.T_conn) {
        if (_conn != null) this._conn = _conn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var close(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_close():() -> stdgo.Error return @:check32 this._conn.close;
    public var file(get, never) : () -> { var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_file():() -> { var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } return @:check32 this._conn.file;
    public var localAddr(get, never) : () -> stdgo._internal.net.Net_addr.Addr;
    @:embedded
    @:embeddededffieldsffun
    public function get_localAddr():() -> stdgo._internal.net.Net_addr.Addr return @:check32 this._conn.localAddr;
    public var read(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_read():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check32 this._conn.read;
    public var remoteAddr(get, never) : () -> stdgo._internal.net.Net_addr.Addr;
    @:embedded
    @:embeddededffieldsffun
    public function get_remoteAddr():() -> stdgo._internal.net.Net_addr.Addr return @:check32 this._conn.remoteAddr;
    public var setDeadline(get, never) : stdgo._internal.time.Time_time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setDeadline():stdgo._internal.time.Time_time.Time -> stdgo.Error return @:check32 this._conn.setDeadline;
    public var setReadBuffer(get, never) : stdgo.GoInt -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setReadBuffer():stdgo.GoInt -> stdgo.Error return @:check32 this._conn.setReadBuffer;
    public var setReadDeadline(get, never) : stdgo._internal.time.Time_time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setReadDeadline():stdgo._internal.time.Time_time.Time -> stdgo.Error return @:check32 this._conn.setReadDeadline;
    public var setWriteBuffer(get, never) : stdgo.GoInt -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setWriteBuffer():stdgo.GoInt -> stdgo.Error return @:check32 this._conn.setWriteBuffer;
    public var setWriteDeadline(get, never) : stdgo._internal.time.Time_time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setWriteDeadline():stdgo._internal.time.Time_time.Time -> stdgo.Error return @:check32 this._conn.setWriteDeadline;
    public var write(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_write():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check32 this._conn.write;
    public var _ok(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__ok():() -> Bool return @:check32 this._conn._ok;
    public function __copy__() {
        return new UnixConn(_conn);
    }
}
