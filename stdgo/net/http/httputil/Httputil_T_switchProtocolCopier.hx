package stdgo.net.http.httputil;
@:structInit @:using(stdgo.net.http.httputil.Httputil.T_switchProtocolCopier_static_extension) abstract T_switchProtocolCopier(stdgo._internal.net.http.httputil.Httputil_T_switchProtocolCopier.T_switchProtocolCopier) from stdgo._internal.net.http.httputil.Httputil_T_switchProtocolCopier.T_switchProtocolCopier to stdgo._internal.net.http.httputil.Httputil_T_switchProtocolCopier.T_switchProtocolCopier {
    public var _user(get, set) : stdgo._internal.io.Io_ReadWriter.ReadWriter;
    function get__user():stdgo._internal.io.Io_ReadWriter.ReadWriter return this._user;
    function set__user(v:stdgo._internal.io.Io_ReadWriter.ReadWriter):stdgo._internal.io.Io_ReadWriter.ReadWriter {
        this._user = v;
        return v;
    }
    public var _backend(get, set) : stdgo._internal.io.Io_ReadWriter.ReadWriter;
    function get__backend():stdgo._internal.io.Io_ReadWriter.ReadWriter return this._backend;
    function set__backend(v:stdgo._internal.io.Io_ReadWriter.ReadWriter):stdgo._internal.io.Io_ReadWriter.ReadWriter {
        this._backend = v;
        return v;
    }
    public function new(?_user:stdgo._internal.io.Io_ReadWriter.ReadWriter, ?_backend:stdgo._internal.io.Io_ReadWriter.ReadWriter) this = new stdgo._internal.net.http.httputil.Httputil_T_switchProtocolCopier.T_switchProtocolCopier(_user, _backend);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
