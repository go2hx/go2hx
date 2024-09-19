package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2stickyErrWriter_static_extension.T_http2stickyErrWriter_static_extension) class T_http2stickyErrWriter {
    public var _conn : stdgo._internal.net.Net_Conn.Conn = (null : stdgo._internal.net.Net_Conn.Conn);
    public var _timeout : stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
    public var _err : stdgo.Ref<stdgo.Error> = (null : stdgo.Ref<stdgo.Error>);
    public function new(?_conn:stdgo._internal.net.Net_Conn.Conn, ?_timeout:stdgo._internal.time.Time_Duration.Duration, ?_err:stdgo.Ref<stdgo.Error>) {
        if (_conn != null) this._conn = _conn;
        if (_timeout != null) this._timeout = _timeout;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2stickyErrWriter(_conn, _timeout, _err);
    }
}
