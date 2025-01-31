package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:interface typedef RowsColumnTypePrecisionScale = stdgo.StructType & {
    > stdgo._internal.database.sql.driver.Driver_Rows.Rows,
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function columnTypePrecisionScale(_index:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; var _2 : Bool; };
};
