package stdgo.database.sql;
@:structInit @:using(stdgo.database.sql.Sql.T_ccChecker_static_extension) abstract T_ccChecker(stdgo._internal.database.sql.Sql_T_ccChecker.T_ccChecker) from stdgo._internal.database.sql.Sql_T_ccChecker.T_ccChecker to stdgo._internal.database.sql.Sql_T_ccChecker.T_ccChecker {
    public var _cci(get, set) : ColumnConverter;
    function get__cci():ColumnConverter return this._cci;
    function set__cci(v:ColumnConverter):ColumnConverter {
        this._cci = v;
        return v;
    }
    public var _want(get, set) : StdTypes.Int;
    function get__want():StdTypes.Int return this._want;
    function set__want(v:StdTypes.Int):StdTypes.Int {
        this._want = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_cci:ColumnConverter, ?_want:StdTypes.Int) this = new stdgo._internal.database.sql.Sql_T_ccChecker.T_ccChecker(_cci, (_want : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
