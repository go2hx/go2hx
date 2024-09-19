package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_persistConnWriter_static_extension.T_persistConnWriter_static_extension) class T_persistConnWriter {
    public var _pc : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>);
    public function new(?_pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>) {
        if (_pc != null) this._pc = _pc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_persistConnWriter(_pc);
    }
}
