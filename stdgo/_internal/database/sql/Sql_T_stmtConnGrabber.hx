package stdgo._internal.database.sql;
typedef T_stmtConnGrabber = stdgo.StructType & {
    /**
        grabConn returns the driverConn and the associated release function
        that must be called when the operation completes.
        
        
    **/
    public dynamic function _grabConn(_0:stdgo._internal.context.Context_Context.Context):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>; var _1 : stdgo._internal.database.sql.Sql_T_releaseConn.T_releaseConn; var _2 : stdgo.Error; };
    /**
        txCtx returns the transaction context if available.
        The returned context should be selected on along with
        any query context when awaiting a cancel.
        
        
    **/
    public dynamic function _txCtx():stdgo._internal.context.Context_Context.Context;
};