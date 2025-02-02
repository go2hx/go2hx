package stdgo._internal.net.http.httputil;
@:structInit @:using(stdgo._internal.net.http.httputil.Httputil_T_switchProtocolCopier_static_extension.T_switchProtocolCopier_static_extension) class T_switchProtocolCopier {
    public var _user : stdgo._internal.io.Io_ReadWriter.ReadWriter = (null : stdgo._internal.io.Io_ReadWriter.ReadWriter);
    public var _backend : stdgo._internal.io.Io_ReadWriter.ReadWriter = (null : stdgo._internal.io.Io_ReadWriter.ReadWriter);
    public function new(?_user:stdgo._internal.io.Io_ReadWriter.ReadWriter, ?_backend:stdgo._internal.io.Io_ReadWriter.ReadWriter) {
        if (_user != null) this._user = _user;
        if (_backend != null) this._backend = _backend;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_switchProtocolCopier(_user, _backend);
    }
}
