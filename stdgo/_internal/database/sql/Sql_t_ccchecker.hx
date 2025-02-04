package stdgo._internal.database.sql;
@:structInit @:using(stdgo._internal.database.sql.Sql_t_ccchecker_static_extension.T_ccChecker_static_extension) class T_ccChecker {
    public var _cci : stdgo._internal.database.sql.driver.Driver_columnconverter.ColumnConverter = (null : stdgo._internal.database.sql.driver.Driver_columnconverter.ColumnConverter);
    public var _want : stdgo.GoInt = 0;
    public function new(?_cci:stdgo._internal.database.sql.driver.Driver_columnconverter.ColumnConverter, ?_want:stdgo.GoInt) {
        if (_cci != null) this._cci = _cci;
        if (_want != null) this._want = _want;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ccChecker(_cci, _want);
    }
}
