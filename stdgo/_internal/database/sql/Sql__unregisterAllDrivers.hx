package stdgo._internal.database.sql;
function _unregisterAllDrivers():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.database.sql.Sql__driversMu._driversMu.lock();
            __deferstack__.unshift(() -> stdgo._internal.database.sql.Sql__driversMu._driversMu.unlock());
            stdgo._internal.database.sql.Sql__drivers._drivers = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo._internal.database.sql.driver.Driver_Driver.Driver>();
                x.__defaultValue__ = () -> (null : stdgo._internal.database.sql.driver.Driver_Driver.Driver);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo._internal.database.sql.driver.Driver_Driver.Driver>);
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
