package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
function isValue(_v:stdgo.AnyInterface):Bool {
        if (_v == null) {
            return true;
        };
        {
            final __type__ = _v;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>)) || stdgo.Go.typeEquals((__type__ : Bool)) || stdgo.Go.typeEquals((__type__ : stdgo.GoFloat64)) || stdgo.Go.typeEquals((__type__ : stdgo.GoInt64)) || stdgo.Go.typeEquals((__type__ : stdgo.GoString)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.time.Time_Time.Time))) {
                return true;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.database.sql.driver.Driver_T_decimalDecompose.T_decimalDecompose))) {
                return true;
            };
        };
        return false;
    }
