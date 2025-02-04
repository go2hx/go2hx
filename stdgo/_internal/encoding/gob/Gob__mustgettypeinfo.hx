package stdgo._internal.encoding.gob;
function _mustGetTypeInfo(_rt:stdgo._internal.reflect.Reflect_type_.Type_):stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo> {
        var __tmp__ = stdgo._internal.encoding.gob.Gob__gettypeinfo._getTypeInfo(stdgo._internal.encoding.gob.Gob__usertype._userType(_rt)), _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface((("getTypeInfo: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString));
        };
        return _t;
    }
