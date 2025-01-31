package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:interface typedef RowsColumnTypeScanType = stdgo.StructType & {
    > stdgo._internal.database.sql.driver.Driver_Rows.Rows,
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function columnTypeScanType(_index:stdgo.GoInt):stdgo._internal.reflect.Reflect_Type_.Type_;
};
