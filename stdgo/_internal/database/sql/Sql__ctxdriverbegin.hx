package stdgo._internal.database.sql;
function _ctxDriverBegin(_ctx:stdgo._internal.context.Context_context.Context, _opts:stdgo.Ref<stdgo._internal.database.sql.Sql_txoptions.TxOptions>, _ci:stdgo._internal.database.sql.driver.Driver_conn.Conn):{ var _0 : stdgo._internal.database.sql.driver.Driver_tx.Tx; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L98"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_ci) : stdgo._internal.database.sql.driver.Driver_connbegintx.ConnBeginTx)) : stdgo._internal.database.sql.driver.Driver_connbegintx.ConnBeginTx), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.database.sql.driver.Driver_connbegintx.ConnBeginTx), _1 : false };
            }, _ciCtx = __tmp__._0, _is = __tmp__._1;
            if (_is) {
                var _dopts = (new stdgo._internal.database.sql.driver.Driver_txoptions.TxOptions() : stdgo._internal.database.sql.driver.Driver_txoptions.TxOptions);
                //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L100"
                if (({
                    final value = _opts;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    _dopts.isolation = ((@:checkr _opts ?? throw "null pointer dereference").isolation : stdgo._internal.database.sql.driver.Driver_isolationlevel.IsolationLevel);
                    _dopts.readOnly = (@:checkr _opts ?? throw "null pointer dereference").readOnly;
                };
                //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L104"
                return _ciCtx.beginTx(_ctx, _dopts?.__copy__());
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L107"
        if (({
            final value = _opts;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L110"
            if ((@:checkr _opts ?? throw "null pointer dereference").isolation != ((0 : stdgo._internal.database.sql.Sql_isolationlevel.IsolationLevel))) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L111"
                return { _0 : (null : stdgo._internal.database.sql.driver.Driver_tx.Tx), _1 : stdgo._internal.errors.Errors_new_.new_(("sql: driver does not support non-default isolation level" : stdgo.GoString)) };
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L116"
            if ((@:checkr _opts ?? throw "null pointer dereference").readOnly) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L117"
                return { _0 : (null : stdgo._internal.database.sql.driver.Driver_tx.Tx), _1 : stdgo._internal.errors.Errors_new_.new_(("sql: driver does not support read-only transactions" : stdgo.GoString)) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L121"
        if (_ctx.done() == null) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L122"
            return _ci.begin();
        };
        var __tmp__ = _ci.begin(), _txi:stdgo._internal.database.sql.driver.Driver_tx.Tx = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L126"
        if (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L127"
            {
                var __select__ = true;
                var __c__0 = null;
                while (__select__) {
                    if ({
                        if (__c__0 == null) {
                            __c__0 = _ctx.done();
                        };
                        __c__0 != null && __c__0.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__0.__get__();
                            {
                                //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L130"
                                _txi.rollback();
                                //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L131"
                                return { _0 : (null : stdgo._internal.database.sql.driver.Driver_tx.Tx), _1 : _ctx.err() };
                            };
                        };
                    } else {
                        __select__ = false;
                        {};
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L134"
        return { _0 : _txi, _1 : _err };
    }
