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
function get(_name:stdgo.GoString):stdgo._internal.expvar.Expvar_Var.Var {
        var __tmp__ = @:check2 stdgo._internal.expvar.Expvar__vars._vars.load(stdgo.Go.toInterface(_name)), _i:stdgo.AnyInterface = __tmp__._0, __8:Bool = __tmp__._1;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_i : stdgo._internal.expvar.Expvar_Var.Var)) : stdgo._internal.expvar.Expvar_Var.Var), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.expvar.Expvar_Var.Var), _1 : false };
        }, _v = __tmp__._0, __9 = __tmp__._1;
        return _v;
    }
