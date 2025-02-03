package stdgo.database.sql;
@:structInit @:using(stdgo.database.sql.Sql.T_connRequest_static_extension) abstract T_connRequest(stdgo._internal.database.sql.Sql_T_connRequest.T_connRequest) from stdgo._internal.database.sql.Sql_T_connRequest.T_connRequest to stdgo._internal.database.sql.Sql_T_connRequest.T_connRequest {
    public var _conn(get, set) : T_driverConn;
    function get__conn():T_driverConn return this._conn;
    function set__conn(v:T_driverConn):T_driverConn {
        this._conn = (v : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_conn:T_driverConn, ?_err:stdgo.Error) this = new stdgo._internal.database.sql.Sql_T_connRequest.T_connRequest((_conn : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>), (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
