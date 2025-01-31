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
function _durationExceedsWriteTimeout(_r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _seconds:stdgo.GoFloat64):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((@:check2r _r.context().value(stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_serverContextKey.serverContextKey))) : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>)) : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>), _1 : false };
        }, _srv = __tmp__._0, _ok = __tmp__._1;
        return ((_ok && (@:checkr _srv ?? throw "null pointer dereference").writeTimeout != ((0i64 : stdgo._internal.time.Time_Duration.Duration)) : Bool) && (_seconds >= (@:checkr _srv ?? throw "null pointer dereference").writeTimeout.seconds() : Bool) : Bool);
    }
