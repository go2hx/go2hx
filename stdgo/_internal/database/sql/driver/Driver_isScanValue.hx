package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
function isScanValue(_v:stdgo.AnyInterface):Bool {
        return stdgo._internal.database.sql.driver.Driver_isValue.isValue(_v);
    }
