package stdgo._internal.net.http.pprof;
function _sleep(_r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _d:stdgo._internal.time.Time_duration.Duration):Void {
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L111"
        {
            var __select__ = true;
            var __c__0 = null;
var __c__1 = null;
            while (__select__) {
                if ({
                    if (__c__0 == null) {
                        __c__0 = stdgo._internal.time.Time_after.after(_d);
                    };
                    __c__0 != null && __c__0.__isGet__(true);
                }) {
                    __select__ = false;
                    {
                        __c__0.__get__();
                        {};
                    };
                } else if ({
                    if (__c__1 == null) {
                        __c__1 = _r.context().done();
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
