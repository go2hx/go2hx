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
@:structInit @:using(stdgo._internal.database.sql.Sql_T_ccChecker_static_extension.T_ccChecker_static_extension) class T_ccChecker {
    public var _cci : stdgo._internal.database.sql.driver.Driver_ColumnConverter.ColumnConverter = (null : stdgo._internal.database.sql.driver.Driver_ColumnConverter.ColumnConverter);
    public var _want : stdgo.GoInt = 0;
    public function new(?_cci:stdgo._internal.database.sql.driver.Driver_ColumnConverter.ColumnConverter, ?_want:stdgo.GoInt) {
        if (_cci != null) this._cci = _cci;
        if (_want != null) this._want = _want;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ccChecker(_cci, _want);
    }
}
