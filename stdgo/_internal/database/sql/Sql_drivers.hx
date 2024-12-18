package stdgo._internal.database.sql;
function drivers():stdgo.Slice<stdgo.GoString> {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.database.sql.Sql__driversMu._driversMu.rlock();
            {
                final __f__ = stdgo._internal.database.sql.Sql__driversMu._driversMu.runlock;
                __deferstack__.unshift(() -> __f__());
            };
            var _list = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (stdgo._internal.database.sql.Sql__drivers._drivers.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
            for (_name => _ in stdgo._internal.database.sql.Sql__drivers._drivers) {
                _list = (_list.__append__(_name?.__copy__()));
            };
            stdgo._internal.sort.Sort_strings.strings(_list);
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _list;
            };
            {
                final __ret__:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
