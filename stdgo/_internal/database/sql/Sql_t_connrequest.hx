package stdgo._internal.database.sql;
@:structInit @:using(stdgo._internal.database.sql.Sql_t_connrequest_static_extension.T_connRequest_static_extension) class T_connRequest {
    public var _conn : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_conn:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>, ?_err:stdgo.Error) {
        if (_conn != null) this._conn = _conn;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_connRequest(_conn, _err);
    }
}
