package stdgo._internal.database.sql;
@:structInit @:using(stdgo._internal.database.sql.Sql_t_connstmt_static_extension.T_connStmt_static_extension) class T_connStmt {
    public var _dc : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>);
    public var _ds : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>);
    public function new(?_dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>, ?_ds:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>) {
        if (_dc != null) this._dc = _dc;
        if (_ds != null) this._ds = _ds;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_connStmt(_dc, _ds);
    }
}
