package stdgo.database.sql;
@:structInit @:using(stdgo.database.sql.Sql.Row_static_extension) abstract Row(stdgo._internal.database.sql.Sql_Row.Row) from stdgo._internal.database.sql.Sql_Row.Row to stdgo._internal.database.sql.Sql_Row.Row {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _rows(get, set) : Rows;
    function get__rows():Rows return this._rows;
    function set__rows(v:Rows):Rows {
        this._rows = (v : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>);
        return v;
    }
    public function new(?_err:stdgo.Error, ?_rows:Rows) this = new stdgo._internal.database.sql.Sql_Row.Row((_err : stdgo.Error), (_rows : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
