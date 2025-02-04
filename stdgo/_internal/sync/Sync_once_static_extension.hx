package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.Once_asInterface) class Once_static_extension {
    @:keep
    @:tdfield
    static public function _doSlow( _o:stdgo.Ref<stdgo._internal.sync.Sync_once.Once>, _f:() -> Void):Void {
        @:recv var _o:stdgo.Ref<stdgo._internal.sync.Sync_once.Once> = _o;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _o ?? throw "null pointer dereference")._m.lock();
            {
                final __f__ = @:check2 (@:checkr _o ?? throw "null pointer dereference")._m.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _o ?? throw "null pointer dereference")._done == ((0u32 : stdgo.GoUInt32))) {
                {
                    var _a0 = stdgo.Go.pointer((@:checkr _o ?? throw "null pointer dereference")._done);
                    var _a1 = (1u32 : stdgo.GoUInt32);
                    final __f__ = stdgo._internal.sync.atomic_.Atomic__storeuint32.storeUint32;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0, _a1) });
                };
                _f();
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
    @:keep
    @:tdfield
    static public function do_( _o:stdgo.Ref<stdgo._internal.sync.Sync_once.Once>, _f:() -> Void):Void {
        @:recv var _o:stdgo.Ref<stdgo._internal.sync.Sync_once.Once> = _o;
        if (@:privateAccess _o._done == 1) return;
        @:privateAccess _o._done = 1;
        _f();
    }
}
