package stdgo._internal.encoding.json;
function _cachedTypeFields(_t:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.encoding.json.Json_T_structFields.T_structFields {
        {
            var __tmp__ = stdgo._internal.encoding.json.Json__fieldCache._fieldCache.load(stdgo.Go.toInterface(_t)), _f:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return (stdgo.Go.typeAssert((_f : stdgo._internal.encoding.json.Json_T_structFields.T_structFields)) : stdgo._internal.encoding.json.Json_T_structFields.T_structFields)?.__copy__();
            };
        };
        var __tmp__ = stdgo._internal.encoding.json.Json__fieldCache._fieldCache.loadOrStore(stdgo.Go.toInterface(_t), stdgo.Go.toInterface(stdgo._internal.encoding.json.Json__typeFields._typeFields(_t))), _f:stdgo.AnyInterface = __tmp__._0, __16:Bool = __tmp__._1;
        return (stdgo.Go.typeAssert((_f : stdgo._internal.encoding.json.Json_T_structFields.T_structFields)) : stdgo._internal.encoding.json.Json_T_structFields.T_structFields)?.__copy__();
    }