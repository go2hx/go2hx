package stdgo._internal.net.http.pprof;
function _sleep(_r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _d:stdgo._internal.time.Time_duration.Duration):Void {
        {
            var __select__ = true;
            while (__select__) {
                if (stdgo._internal.time.Time_after.after(_d) != null && stdgo._internal.time.Time_after.after(_d).__isGet__()) {
                    __select__ = false;
                    {
                        stdgo._internal.time.Time_after.after(_d).__get__();
                        {};
                    };
                } else if (@:check2r _r.context().done() != null && @:check2r _r.context().done().__isGet__()) {
                    __select__ = false;
                    {
                        @:check2r _r.context().done().__get__();
                        {};
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
    }
