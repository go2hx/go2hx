package stdgo._internal.database.sql;
function openDB(_c:stdgo._internal.database.sql.driver.Driver_Connector.Connector):stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> {
        var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
        var _db = (stdgo.Go.setRef(({ _connector : _c, _openerCh : (new stdgo.Chan<stdgo._internal.database.sql.Sql_T__struct_0.T__struct_0>((stdgo._internal.database.sql.Sql__connectionRequestQueueSize._connectionRequestQueueSize : stdgo.GoInt).toBasic(), () -> ({  } : stdgo._internal.database.sql.Sql_T__struct_0.T__struct_0)) : stdgo.Chan<stdgo._internal.database.sql.Sql_T__struct_0.T__struct_0>), _lastPut : ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, stdgo.GoString>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, stdgo.GoString>), _connRequests : ({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Chan<stdgo._internal.database.sql.Sql_T_connRequest.T_connRequest>>();
            x.__defaultValue__ = () -> (null : stdgo.Chan<stdgo._internal.database.sql.Sql_T_connRequest.T_connRequest>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Chan<stdgo._internal.database.sql.Sql_T_connRequest.T_connRequest>>), _stop : _cancel } : stdgo._internal.database.sql.Sql_DB.DB)) : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        stdgo.Go.routine(() -> _db._connectionOpener(_ctx));
        return _db;
    }
