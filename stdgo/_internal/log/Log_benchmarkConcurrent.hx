package stdgo._internal.log;
function benchmarkConcurrent(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _l = stdgo._internal.log.Log_new_.new_(stdgo.Go.asInterface((new stdgo._internal.log.Log_T_discard.T_discard() : stdgo._internal.log.Log_T_discard.T_discard)), ("prefix: " : stdgo.GoString), (79 : stdgo.GoInt));
        var _group:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
        {
            var _i = (stdgo._internal.runtime.Runtime_numCPU.numCPU() : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                _group.add((1 : stdgo.GoInt));
stdgo.Go.routine(() -> {
                    var a = function():Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            {
                                var _i = (0 : stdgo.GoInt);
                                while ((_i < _b.n : Bool)) {
                                    _l.output((0 : stdgo.GoInt), ("hello, world!" : stdgo.GoString));
                                    _i++;
                                };
                            };
                            __deferstack__.unshift(() -> _group.done());
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
                    };
                    a();
                });
                _i--;
            };
        };
        _group.wait_();
    }
