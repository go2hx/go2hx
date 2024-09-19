package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_serverHandler_static_extension.T_serverHandler_static_extension) class T_serverHandler {
    public var _srv : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>);
    public function new(?_srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>) {
        if (_srv != null) this._srv = _srv;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_serverHandler(_srv);
    }
}
