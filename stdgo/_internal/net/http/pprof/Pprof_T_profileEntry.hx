package stdgo._internal.net.http.pprof;
import stdgo._internal.net.http.Http;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.os.Os;
import stdgo._internal.time.Time;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.runtime.pprof.Pprof;
import _internal.runtime.trace_.Trace_;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.io.Io;
import stdgo._internal.internal.profile.Profile;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
import stdgo._internal.html.Html;
import stdgo._internal.context.Context;
@:structInit @:using(stdgo._internal.net.http.pprof.Pprof_T_profileEntry_static_extension.T_profileEntry_static_extension) class T_profileEntry {
    public var name : stdgo.GoString = "";
    public var href : stdgo.GoString = "";
    public var desc : stdgo.GoString = "";
    public var count : stdgo.GoInt = 0;
    public function new(?name:stdgo.GoString, ?href:stdgo.GoString, ?desc:stdgo.GoString, ?count:stdgo.GoInt) {
        if (name != null) this.name = name;
        if (href != null) this.href = href;
        if (desc != null) this.desc = desc;
        if (count != null) this.count = count;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_profileEntry(name, href, desc, count);
    }
}
