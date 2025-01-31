package stdgo._internal.net.http.pprof;
import stdgo._internal.net.http.Http;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.os.Os;
import stdgo._internal.time.Time;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.runtime.pprof.Pprof;
import stdgo._internal.runtime.trace_.Trace_;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.io.Io;
import stdgo._internal.internal.profile.Profile;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
import stdgo._internal.html.Html;
import stdgo._internal.context.Context;
function _sleep(_r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _d:stdgo._internal.time.Time_Duration.Duration):Void {
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
