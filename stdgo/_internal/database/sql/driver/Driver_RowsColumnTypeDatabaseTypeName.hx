package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:interface typedef RowsColumnTypeDatabaseTypeName = stdgo.StructType & {
    > stdgo._internal.database.sql.driver.Driver_Rows.Rows,
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function columnTypeDatabaseTypeName(_index:stdgo.GoInt):stdgo.GoString;
};
