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
function newInt(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.expvar.Expvar_Int_.Int_> {
        var _v = (stdgo.Go.setRef(({} : stdgo._internal.expvar.Expvar_Int_.Int_)) : stdgo.Ref<stdgo._internal.expvar.Expvar_Int_.Int_>);
        stdgo._internal.expvar.Expvar_publish.publish(_name?.__copy__(), stdgo.Go.asInterface(_v));
        return _v;
    }
