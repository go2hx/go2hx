package stdgo._internal.encoding.gob;
function _lookupTypeInfo(_rt:stdgo._internal.reflect.Reflect_type_.Type_):stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo> {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L707"
        {
            var _m = stdgo._internal.encoding.gob.Gob__typeinfomapinit._typeInfoMapInit;
            if (_m != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L708"
                return (_m[_rt] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>));
            };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo._internal.encoding.gob.Gob__typeinfomap._typeInfoMap.load() : stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>>)) : stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>>), _1 : false };
        }, _m = __tmp__._0, __8 = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L711"
        return (_m[_rt] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>));
    }
