package stdgo._internal.encoding.gob;
function _lookupTypeInfo(_rt:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo> {
        {
            var _m = stdgo._internal.encoding.gob.Gob__typeInfoMapInit._typeInfoMapInit;
            if (_m != null) {
                return (_m[_rt] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>));
            };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((@:check2 stdgo._internal.encoding.gob.Gob__typeInfoMap._typeInfoMap.load() : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>>)) : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>>), _1 : false };
        }, _m = __tmp__._0, __8 = __tmp__._1;
        return (_m[_rt] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>));
    }
