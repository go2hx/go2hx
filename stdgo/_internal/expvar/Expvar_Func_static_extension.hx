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
@:keep @:allow(stdgo._internal.expvar.Expvar.Func_asInterface) class Func_static_extension {
    @:keep
    @:tdfield
    static public function string( _f:stdgo._internal.expvar.Expvar_Func.Func):stdgo.GoString {
        @:recv var _f:stdgo._internal.expvar.Expvar_Func.Func = _f;
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(_f()), _v:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __4:stdgo.Error = __tmp__._1;
        return (_v : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function value( _f:stdgo._internal.expvar.Expvar_Func.Func):stdgo.AnyInterface {
        @:recv var _f:stdgo._internal.expvar.Expvar_Func.Func = _f;
        return _f();
    }
}
