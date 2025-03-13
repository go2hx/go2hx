package stdgo._internal.net.http.pprof;
function _sleep(_r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _d:stdgo._internal.time.Time_duration.Duration):Void {
        {
            var __select__ = true;
            var __c__0 = stdgo._internal.time.Time_after.after(_d);
var __c__1 = @:check2r _r.context().done();
            while (__select__) {
                if (__c__0 != null && __c__0.__isGet__(true)) {
                    __select__ = false;
                    {
                        __c__0.__get__();
                        {};
                    };
                } else if (__c__1 != null && __c__1.__isGet__(true)) {
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
