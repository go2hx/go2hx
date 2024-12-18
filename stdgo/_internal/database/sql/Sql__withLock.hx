package stdgo._internal.database.sql;
function _withLock(_lk:stdgo._internal.sync.Sync_Locker.Locker, _fn:() -> Void):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _lk.lock();
            {
                final __f__ = _lk.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            _fn();
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
