package stdgo._internal.net.http.httputil;
@:keep @:allow(stdgo._internal.net.http.httputil.Httputil.T_switchProtocolCopier_asInterface) class T_switchProtocolCopier_static_extension {
    @:keep
    @:tdfield
    static public function _copyToBackend( _c:stdgo._internal.net.http.httputil.Httputil_t_switchprotocolcopier.T_switchProtocolCopier, _errc:stdgo.Chan<stdgo.Error>):Void {
        @:recv var _c:stdgo._internal.net.http.httputil.Httputil_t_switchprotocolcopier.T_switchProtocolCopier = _c?.__copy__();
        var __tmp__ = stdgo._internal.io.Io_copy.copy(_c._backend, _c._user), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _errc.__send__(_err);
    }
    @:keep
    @:tdfield
    static public function _copyFromBackend( _c:stdgo._internal.net.http.httputil.Httputil_t_switchprotocolcopier.T_switchProtocolCopier, _errc:stdgo.Chan<stdgo.Error>):Void {
        @:recv var _c:stdgo._internal.net.http.httputil.Httputil_t_switchprotocolcopier.T_switchProtocolCopier = _c?.__copy__();
        var __tmp__ = stdgo._internal.io.Io_copy.copy(_c._user, _c._backend), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _errc.__send__(_err);
    }
}
