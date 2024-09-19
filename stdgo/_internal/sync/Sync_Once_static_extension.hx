package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.Once_asInterface) class Once_static_extension {
    @:keep
    static public function _doSlow( _o:stdgo.Ref<stdgo._internal.sync.Sync_Once.Once>, _f:() -> Void):Void {
        @:recv var _o:stdgo.Ref<stdgo._internal.sync.Sync_Once.Once> = _o;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _o._m.lock();
            __deferstack__.unshift(() -> _o._m.unlock());
            if (_o._done == ((0u32 : stdgo.GoUInt32))) {
                {
                    var _a0 = stdgo.Go.pointer(_o._done);
                    var _a1 = (1u32 : stdgo.GoUInt32);
                    __deferstack__.unshift(() -> stdgo._internal.sync.atomic_.Atomic__storeUint32.storeUint32(_a0, _a1));
                };
                _f();
            };
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
    @:keep
    static public function do_( _o:stdgo.Ref<stdgo._internal.sync.Sync_Once.Once>, _f:() -> Void):Void {
        @:recv var _o:stdgo.Ref<stdgo._internal.sync.Sync_Once.Once> = _o;
        if (@:privateAccess _o._done == 1) return;
        @:privateAccess _o._done = 1;
        _f();
    }
}
