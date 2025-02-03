package stdgo.net.http.fcgi;
@:structInit @:using(stdgo.net.http.fcgi.Fcgi.T_streamWriter_static_extension) abstract T_streamWriter(stdgo._internal.net.http.fcgi.Fcgi_T_streamWriter.T_streamWriter) from stdgo._internal.net.http.fcgi.Fcgi_T_streamWriter.T_streamWriter to stdgo._internal.net.http.fcgi.Fcgi_T_streamWriter.T_streamWriter {
    public var _c(get, set) : T_conn;
    function get__c():T_conn return this._c;
    function set__c(v:T_conn):T_conn {
        this._c = (v : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn>);
        return v;
    }
    public var _recType(get, set) : T_recType;
    function get__recType():T_recType return this._recType;
    function set__recType(v:T_recType):T_recType {
        this._recType = v;
        return v;
    }
    public var _reqId(get, set) : std.UInt;
    function get__reqId():std.UInt return this._reqId;
    function set__reqId(v:std.UInt):std.UInt {
        this._reqId = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?_c:T_conn, ?_recType:T_recType, ?_reqId:std.UInt) this = new stdgo._internal.net.http.fcgi.Fcgi_T_streamWriter.T_streamWriter((_c : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn>), _recType, (_reqId : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
