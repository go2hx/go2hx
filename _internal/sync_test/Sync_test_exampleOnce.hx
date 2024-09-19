package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function exampleOnce():Void {
        var _once:stdgo._internal.sync.Sync_Once.Once = ({} : stdgo._internal.sync.Sync_Once.Once);
        var _onceBody = (function():Void {
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("Only once" : stdgo.GoString)));
        } : () -> Void);
        var _done = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        _once.do_(_onceBody);
                        _done.__send__(true);
                    };
                    a();
                });
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                _done.__get__();
            });
        };
    }
