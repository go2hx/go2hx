package stdgo.database.sql;
@:structInit @:using(stdgo.database.sql.Sql.T_connStmt_static_extension) abstract T_connStmt(stdgo._internal.database.sql.Sql_T_connStmt.T_connStmt) from stdgo._internal.database.sql.Sql_T_connStmt.T_connStmt to stdgo._internal.database.sql.Sql_T_connStmt.T_connStmt {
    public var _dc(get, set) : T_driverConn;
    function get__dc():T_driverConn return this._dc;
    function set__dc(v:T_driverConn):T_driverConn {
        this._dc = (v : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
        return v;
    }
    public var _ds(get, set) : T_driverStmt;
    function get__ds():T_driverStmt return this._ds;
    function set__ds(v:T_driverStmt):T_driverStmt {
        this._ds = (v : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>);
        return v;
    }
    public function new(?_dc:T_driverConn, ?_ds:T_driverStmt) this = new stdgo._internal.database.sql.Sql_T_connStmt.T_connStmt((_dc : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>), (_ds : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
