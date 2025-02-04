package stdgo._internal.database.sql;
@:structInit @:using(stdgo._internal.database.sql.Sql_row_static_extension.Row_static_extension) class Row {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _rows : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>);
    public function new(?_err:stdgo.Error, ?_rows:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>) {
        if (_err != null) this._err = _err;
        if (_rows != null) this._rows = _rows;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Row(_err, _rows);
    }
}
