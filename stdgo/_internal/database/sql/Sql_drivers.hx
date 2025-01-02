package stdgo._internal.database.sql;
function drivers():stdgo.Slice<stdgo.GoString> {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            @:check2 stdgo._internal.database.sql.Sql__driversMu._driversMu.rLock();
            {
                final __f__ = @:check2 stdgo._internal.database.sql.Sql__driversMu._driversMu.rUnlock;
                __deferstack__.unshift(() -> __f__());
            };
            var _list = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (stdgo._internal.database.sql.Sql__drivers._drivers.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
            for (_name => _ in stdgo._internal.database.sql.Sql__drivers._drivers) {
                _list = (_list.__append__(_name?.__copy__()));
            };
            stdgo._internal.sort.Sort_strings.strings(_list);
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                return _list;
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.Slice<stdgo.GoString>);
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return (null : stdgo.Slice<stdgo.GoString>);
        };
    }
