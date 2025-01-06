package stdgo._internal.log;
function testOutputRace(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _l = stdgo._internal.log.Log_new_.new_(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt));
        var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
        @:check2 _wg.add((100 : stdgo.GoInt));
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (100 : stdgo.GoInt) : Bool)) {
                stdgo.Go.routine(() -> ({
                    var a = function():Void {
                        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                        try {
                            {
                                final __f__ = @:check2 _wg.done;
                                __deferstack__.unshift({ ran : false, f : () -> __f__() });
                            };
                            @:check2r _l.setFlags((0 : stdgo.GoInt));
                            @:check2r _l.output((0 : stdgo.GoInt), stdgo.Go.str().__copy__());
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
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
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    };
                    a();
                }));
                _i++;
            };
        };
        @:check2 _wg.wait_();
    }
