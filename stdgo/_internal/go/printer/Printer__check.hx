package stdgo._internal.go.printer;
function _check(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _source:stdgo.GoString, _golden:stdgo.GoString, _mode:stdgo._internal.go.printer.Printer_t_checkmode.T_checkMode):Void {
        var _cc = (new stdgo.Chan<stdgo.GoInt>((1 : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L151"
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L152"
                stdgo._internal.go.printer.Printer__runcheck._runcheck(_t, _source?.__copy__(), _golden?.__copy__(), _mode);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L153"
                _cc.__send__((0 : stdgo.GoInt));
            };
            a();
        }));
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L157"
        {
            var __select__ = true;
            var __c__0 = null;
var __c__1 = null;
            while (__select__) {
                if ({
                    if (__c__0 == null) {
                        __c__0 = stdgo._internal.time.Time_after.after((10000000000i64 : stdgo._internal.time.Time_duration.Duration));
                    };
                    __c__0 != null && __c__0.__isGet__(true);
                }) {
                    __select__ = false;
                    {
                        __c__0.__get__();
                        {
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L160"
                            _t.errorf(("%s: running too slowly" : stdgo.GoString), stdgo.Go.toInterface(_source));
                        };
                    };
                } else if ({
                    if (__c__1 == null) {
                        __c__1 = _cc;
                    };
                    __c__1 != null && __c__1.__isGet__(true);
                }) {
                    __select__ = false;
                    {
                        __c__1.__get__();
                        {};
                    };
                };
                #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
            __c__0.__reset__();
__c__1.__reset__();
        };
    }
