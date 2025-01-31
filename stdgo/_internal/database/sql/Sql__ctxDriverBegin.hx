package stdgo._internal.database.sql;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.database.sql.driver.Driver;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
import stdgo._internal.context.Context;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.io.Io;
function _ctxDriverBegin(_ctx:stdgo._internal.context.Context_Context.Context, _opts:stdgo.Ref<stdgo._internal.database.sql.Sql_TxOptions.TxOptions>, _ci:stdgo._internal.database.sql.driver.Driver_Conn.Conn):{ var _0 : stdgo._internal.database.sql.driver.Driver_Tx.Tx; var _1 : stdgo.Error; } {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_ci) : stdgo._internal.database.sql.driver.Driver_ConnBeginTx.ConnBeginTx)) : stdgo._internal.database.sql.driver.Driver_ConnBeginTx.ConnBeginTx), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.database.sql.driver.Driver_ConnBeginTx.ConnBeginTx), _1 : false };
            }, _ciCtx = __tmp__._0, _is = __tmp__._1;
            if (_is) {
                var _dopts = (new stdgo._internal.database.sql.driver.Driver_TxOptions.TxOptions() : stdgo._internal.database.sql.driver.Driver_TxOptions.TxOptions);
                if ((_opts != null && ((_opts : Dynamic).__nil__ == null || !(_opts : Dynamic).__nil__))) {
                    _dopts.isolation = ((@:checkr _opts ?? throw "null pointer dereference").isolation : stdgo._internal.database.sql.driver.Driver_IsolationLevel.IsolationLevel);
                    _dopts.readOnly = (@:checkr _opts ?? throw "null pointer dereference").readOnly;
                };
                return _ciCtx.beginTx(_ctx, _dopts?.__copy__());
            };
        };
        if ((_opts != null && ((_opts : Dynamic).__nil__ == null || !(_opts : Dynamic).__nil__))) {
            if ((@:checkr _opts ?? throw "null pointer dereference").isolation != ((0 : stdgo._internal.database.sql.Sql_IsolationLevel.IsolationLevel))) {
                return { _0 : (null : stdgo._internal.database.sql.driver.Driver_Tx.Tx), _1 : stdgo._internal.errors.Errors_new_.new_(("sql: driver does not support non-default isolation level" : stdgo.GoString)) };
            };
            if ((@:checkr _opts ?? throw "null pointer dereference").readOnly) {
                return { _0 : (null : stdgo._internal.database.sql.driver.Driver_Tx.Tx), _1 : stdgo._internal.errors.Errors_new_.new_(("sql: driver does not support read-only transactions" : stdgo.GoString)) };
            };
        };
        if (_ctx.done() == null) {
            return _ci.begin();
        };
        var __tmp__ = _ci.begin(), _txi:stdgo._internal.database.sql.driver.Driver_Tx.Tx = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            {
                var __select__ = true;
                while (__select__) {
                    if (_ctx.done() != null && _ctx.done().__isGet__()) {
                        __select__ = false;
                        {
                            _ctx.done().__get__();
                            {
                                _txi.rollback();
                                return { _0 : (null : stdgo._internal.database.sql.driver.Driver_Tx.Tx), _1 : _ctx.err() };
                            };
                        };
                    } else {
                        __select__ = false;
                        {};
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
        };
        return { _0 : _txi, _1 : _err };
    }
