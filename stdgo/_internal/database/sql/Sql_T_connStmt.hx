package stdgo._internal.database.sql;
@:structInit @:using(stdgo._internal.database.sql.Sql_T_connStmt_static_extension.T_connStmt_static_extension) class T_connStmt {
    public var _dc : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
    public var _ds : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>);
    public function new(?_dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, ?_ds:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>) {
        if (_dc != null) this._dc = _dc;
        if (_ds != null) this._ds = _ds;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_connStmt(_dc, _ds);
    }
}
