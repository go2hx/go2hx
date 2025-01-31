package stdgo._internal.expvar;
import stdgo._internal.log.Log;
import stdgo._internal.sort.Sort;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.net.http.Http;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.encoding.json.Json;
function _memstats():stdgo.AnyInterface {
        var _stats = (stdgo.Go.setRef(({} : stdgo._internal.runtime.Runtime_MemStats.MemStats)) : stdgo.Ref<stdgo._internal.runtime.Runtime_MemStats.MemStats>);
        stdgo._internal.runtime.Runtime_readMemStats.readMemStats(_stats);
        return stdgo.Go.toInterface(stdgo.Go.asInterface((_stats : stdgo._internal.runtime.Runtime_MemStats.MemStats)));
    }
