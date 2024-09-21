package _internal.runtime.trace_;
import stdgo._internal.unsafe.Unsafe;
function withRegion(_ctx:stdgo._internal.context.Context_Context.Context, _regionType:stdgo.GoString, _fn:() -> Void):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _id = (_internal.runtime.trace_.Trace___fromContext._fromContext(_ctx)._id : stdgo.GoUInt64);
            _internal.runtime.trace_.Trace___userRegion._userRegion(_id, (0i64 : stdgo.GoUInt64), _regionType?.__copy__());
            {
                var _a0 = _id;
                var _a1 = (1i64 : stdgo.GoUInt64);
                var _a2 = _regionType;
                __deferstack__.unshift(() -> _internal.runtime.trace_.Trace___userRegion._userRegion(_a0, _a1, _a2?.__copy__()));
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
