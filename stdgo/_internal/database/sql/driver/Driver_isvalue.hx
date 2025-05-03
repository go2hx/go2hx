package stdgo._internal.database.sql.driver;
function isValue(_v:stdgo.AnyInterface):Bool {
        //"file:///home/runner/.go/go1.21.3/src/database/sql/driver/types.go#L177"
        if (_v == null) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/driver/types.go#L178"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/driver/types.go#L180"
        {
            final __type__ = _v;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>)) || stdgo.Go.typeEquals((__type__ : Bool)) || stdgo.Go.typeEquals((__type__ : stdgo.GoFloat64)) || stdgo.Go.typeEquals((__type__ : stdgo.GoInt64)) || stdgo.Go.typeEquals((__type__ : stdgo.GoString)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.time.Time_time.Time))) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/driver/types.go#L182"
                return true;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.database.sql.driver.Driver_t_decimaldecompose.T_decimalDecompose))) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/driver/types.go#L184"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/driver/types.go#L186"
        return false;
    }
