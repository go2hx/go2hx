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
function _resultFromStatement(_ctx:stdgo._internal.context.Context_Context.Context, _ci:stdgo._internal.database.sql.driver.Driver_Conn.Conn, _ds:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.database.sql.Sql_Result.Result; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            (@:checkr _ds ?? throw "null pointer dereference").lock();
            {
                final __f__ = (@:checkr _ds ?? throw "null pointer dereference").unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var __tmp__ = stdgo._internal.database.sql.Sql__driverArgsConnLocked._driverArgsConnLocked(_ci, _ds, _args), _dargs:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo._internal.database.sql.Sql_Result.Result; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.database.sql.Sql_Result.Result), _1 : _err };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var __tmp__ = stdgo._internal.database.sql.Sql__ctxDriverStmtExec._ctxDriverStmtExec(_ctx, (@:checkr _ds ?? throw "null pointer dereference")._si, _dargs), _resi:stdgo._internal.database.sql.driver.Driver_Result.Result = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo._internal.database.sql.Sql_Result.Result; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.database.sql.Sql_Result.Result), _1 : _err };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:{ var _0 : stdgo._internal.database.sql.Sql_Result.Result; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((new stdgo._internal.database.sql.Sql_T_driverResult.T_driverResult((@:checkr _ds ?? throw "null pointer dereference").locker, _resi) : stdgo._internal.database.sql.Sql_T_driverResult.T_driverResult)), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : (null : stdgo._internal.database.sql.Sql_Result.Result), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : (null : stdgo._internal.database.sql.Sql_Result.Result), _1 : (null : stdgo.Error) };
            };
        };
    }
