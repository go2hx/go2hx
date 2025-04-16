package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_t_rawlistener_static_extension.T_rawListener_static_extension) class T_rawListener {
    @:embedded
    public var _rawConn : stdgo._internal.net.Net_t_rawconn.T_rawConn = ({} : stdgo._internal.net.Net_t_rawconn.T_rawConn);
    public function new(?_rawConn:stdgo._internal.net.Net_t_rawconn.T_rawConn) {
        if (_rawConn != null) this._rawConn = _rawConn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var control(get, never) : (stdgo.GoUIntptr -> Void) -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_control():(stdgo.GoUIntptr -> Void) -> stdgo.Error return @:check32 this._rawConn.control;
    public var pollFD(get, never) : () -> stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>;
    @:embedded
    @:embeddededffieldsffun
    public function get_pollFD():() -> stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> return @:check32 this._rawConn.pollFD;
    public var _ok(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__ok():() -> Bool return @:check32 this._rawConn._ok;
    public function __copy__() {
        return new T_rawListener(_rawConn);
    }
}
