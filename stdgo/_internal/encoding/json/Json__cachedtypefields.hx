package stdgo._internal.encoding.json;
function _cachedTypeFields(_t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.encoding.json.Json_t_structfields.T_structFields {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1271"
        {
            var __tmp__ = stdgo._internal.encoding.json.Json__fieldcache._fieldCache.load(stdgo.Go.toInterface(_t)), _f:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1272"
                return (stdgo.Go.typeAssert((_f : stdgo._internal.encoding.json.Json_t_structfields.T_structFields)) : stdgo._internal.encoding.json.Json_t_structfields.T_structFields)?.__copy__();
            };
        };
        var __tmp__ = stdgo._internal.encoding.json.Json__fieldcache._fieldCache.loadOrStore(stdgo.Go.toInterface(_t), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.encoding.json.Json__typefields._typeFields(_t)))), _f:stdgo.AnyInterface = __tmp__._0, __12:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1275"
        return (stdgo.Go.typeAssert((_f : stdgo._internal.encoding.json.Json_t_structfields.T_structFields)) : stdgo._internal.encoding.json.Json_t_structfields.T_structFields)?.__copy__();
    }
