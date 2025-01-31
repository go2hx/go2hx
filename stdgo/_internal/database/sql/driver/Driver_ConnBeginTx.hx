package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:interface typedef ConnBeginTx = stdgo.StructType & {
    /**
        BeginTx starts and returns a new transaction.
        If the context is canceled by the user the sql package will
        call Tx.Rollback before discarding and closing the connection.
        
        This must check opts.Isolation to determine if there is a set
        isolation level. If the driver does not support a non-default
        level and one is set or if there is a non-default isolation level
        that is not supported, an error must be returned.
        
        This must also check opts.ReadOnly to determine if the read-only
        value is true to either set the read-only transaction property if supported
        or return an error if it is not supported.
        
        
    **/
    @:interfacetypeffun
    public dynamic function beginTx(_ctx:stdgo._internal.context.Context_Context.Context, _opts:stdgo._internal.database.sql.driver.Driver_TxOptions.TxOptions):{ var _0 : stdgo._internal.database.sql.driver.Driver_Tx.Tx; var _1 : stdgo.Error; };
};
