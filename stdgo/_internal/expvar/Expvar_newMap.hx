package stdgo._internal.expvar;
import stdgo._internal.log.Log;
import stdgo._internal.sort.Sort;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.net.http.Http;
import _internal.sync.atomic_.Atomic_;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.encoding.json.Json;
function newMap(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_> {
        var _v = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.expvar.Expvar_Map_.Map_)) : stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_>).init();
        stdgo._internal.expvar.Expvar_publish.publish(_name?.__copy__(), stdgo.Go.asInterface(_v));
        return _v;
    }
