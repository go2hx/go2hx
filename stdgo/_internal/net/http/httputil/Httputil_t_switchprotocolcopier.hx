package stdgo._internal.net.http.httputil;
@:structInit @:using(stdgo._internal.net.http.httputil.Httputil_t_switchprotocolcopier_static_extension.T_switchProtocolCopier_static_extension) class T_switchProtocolCopier {
    public var _user : stdgo._internal.io.Io_readwriter.ReadWriter = (null : stdgo._internal.io.Io_readwriter.ReadWriter);
    public var _backend : stdgo._internal.io.Io_readwriter.ReadWriter = (null : stdgo._internal.io.Io_readwriter.ReadWriter);
    public function new(?_user:stdgo._internal.io.Io_readwriter.ReadWriter, ?_backend:stdgo._internal.io.Io_readwriter.ReadWriter) {
        if (_user != null) this._user = _user;
        if (_backend != null) this._backend = _backend;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_switchProtocolCopier(_user, _backend);
    }
}
