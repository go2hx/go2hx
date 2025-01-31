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
function register(_name:stdgo.GoString, _driver:stdgo._internal.database.sql.driver.Driver_Driver.Driver):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 stdgo._internal.database.sql.Sql__driversMu._driversMu.lock();
            {
                final __f__ = @:check2 stdgo._internal.database.sql.Sql__driversMu._driversMu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if (_driver == null) {
                throw stdgo.Go.toInterface(("sql: Register driver is nil" : stdgo.GoString));
            };
            {
                var __tmp__ = (stdgo._internal.database.sql.Sql__drivers._drivers != null && stdgo._internal.database.sql.Sql__drivers._drivers.exists(_name?.__copy__()) ? { _0 : stdgo._internal.database.sql.Sql__drivers._drivers[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo._internal.database.sql.driver.Driver_Driver.Driver), _1 : false }), __27:stdgo._internal.database.sql.driver.Driver_Driver.Driver = __tmp__._0, _dup:Bool = __tmp__._1;
                if (_dup) {
                    throw stdgo.Go.toInterface((("sql: Register called twice for driver " : stdgo.GoString) + _name?.__copy__() : stdgo.GoString));
                };
            };
            stdgo._internal.database.sql.Sql__drivers._drivers[_name] = _driver;
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
                return;
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
                return;
            };
        };
    }
