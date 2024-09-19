package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testPipeCloseRace(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (true) {
                _t.skipf(("skipping on %s: no pipes" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
            };
            _t.parallel();
            var __tmp__ = stdgo._internal.os.Os_pipe.pipe(), _r:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
            var _c = (new stdgo.Chan<stdgo.Error>((4 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
            var _f = (function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    __deferstack__.unshift(() -> _wg.done());
                    _c.__send__(_r.close());
                    _c.__send__(_w.close());
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
            } : () -> Void);
            _wg.add((2 : stdgo.GoInt));
            stdgo.Go.routine(() -> _f());
            stdgo.Go.routine(() -> _f());
            var __0 = (0 : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _errs = __1, _nils = __0;
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (4 : stdgo.GoInt) : Bool), _i++, {
                    var _err = (_c.__get__() : stdgo.Error);
                    if (_err == null) {
                        _nils++;
                    } else {
                        _errs++;
                    };
                });
            };
            if (((_nils != (2 : stdgo.GoInt)) || (_errs != (2 : stdgo.GoInt)) : Bool)) {
                _t.errorf(("got nils %d errs %d, want 2 2" : stdgo.GoString), stdgo.Go.toInterface(_nils), stdgo.Go.toInterface(_errs));
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
