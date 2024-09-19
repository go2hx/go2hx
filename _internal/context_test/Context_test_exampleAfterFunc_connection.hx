package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function exampleAfterFunc_connection():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _readFromConn = function(_ctx:stdgo._internal.context.Context_Context.Context, _conn:stdgo._internal.net.Net_Conn.Conn, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
                var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
                var _stopc = (new stdgo.Chan<_internal.context_test.Context_test_T__struct_1.T__struct_1>(0, () -> ({  } : _internal.context_test.Context_test_T__struct_1.T__struct_1)) : stdgo.Chan<_internal.context_test.Context_test_T__struct_1.T__struct_1>);
                var _stop = (_internal.context_test.Context_test_context.context.afterFunc(_ctx, function():Void {
                    _conn.setReadDeadline(stdgo._internal.time.Time_now.now()?.__copy__());
                    if (_stopc != null) _stopc.__close__();
                }) : () -> Bool);
                {
                    var __tmp__ = _conn.read(_b);
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (!_stop()) {
                    _stopc.__get__();
                    _conn.setReadDeadline((new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time));
                    return { _0 : _n, _1 : _ctx.err() };
                };
                return { _0 : _n, _1 : _err };
            };
            var __tmp__ = stdgo._internal.net.Net_listen.listen(("tcp" : stdgo.GoString), (":0" : stdgo.GoString)), _listener:stdgo._internal.net.Net_Listener.Listener = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_err));
                return;
            };
            __deferstack__.unshift(() -> _listener.close());
            var __tmp__ = stdgo._internal.net.Net_dial.dial(_listener.addr().network()?.__copy__(), (_listener.addr().string() : stdgo.GoString)?.__copy__()), _conn:stdgo._internal.net.Net_Conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_err));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            __deferstack__.unshift(() -> _conn.close());
            var __tmp__ = _internal.context_test.Context_test_context.context.withTimeout(_internal.context_test.Context_test_context.context.background(), (1000000i64 : stdgo._internal.time.Time_Duration.Duration)), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            __deferstack__.unshift(() -> _cancel());
            var _b = (new stdgo.Slice<stdgo.GoUInt8>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = _readFromConn(_ctx, _conn, _b);
                _err = __tmp__._1;
            };
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_err));
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
