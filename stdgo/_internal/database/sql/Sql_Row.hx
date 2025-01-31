package stdgo._internal.database.sql;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.database.sql.driver.Driver;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
import stdgo._internal.context.Context;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.io.Io;
@:structInit @:using(stdgo._internal.database.sql.Sql_Row_static_extension.Row_static_extension) class Row {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _rows : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>);
    public function new(?_err:stdgo.Error, ?_rows:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>) {
        if (_err != null) this._err = _err;
        if (_rows != null) this._rows = _rows;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Row(_err, _rows);
    }
}
