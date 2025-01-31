package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:interface typedef NamedValueChecker = stdgo.StructType & {
    /**
        CheckNamedValue is called before passing arguments to the driver
        and is called in place of any ColumnConverter. CheckNamedValue must do type
        validation and conversion as appropriate for the driver.
        
        
    **/
    @:interfacetypeffun
    public dynamic function checkNamedValue(_0:stdgo.Ref<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>):stdgo.Error;
};
