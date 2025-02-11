package stdgo._internal.encoding.gob;
function _getType(_name:stdgo.GoString, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>, _rt:stdgo._internal.reflect.Reflect_type_.Type_):{ var _0 : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType; var _1 : stdgo.Error; } {
        var __tmp__ = (stdgo._internal.encoding.gob.Gob__types._types != null && stdgo._internal.encoding.gob.Gob__types._types.__exists__(_rt) ? { _0 : stdgo._internal.encoding.gob.Gob__types._types[_rt], _1 : true } : { _0 : (null : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType), _1 : false }), _typ:stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType = __tmp__._0, _present:Bool = __tmp__._1;
        if (_present) {
            return { _0 : _typ, _1 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.encoding.gob.Gob__newtypeobject._newTypeObject(_name?.__copy__(), _ut, _rt), _typ:stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            stdgo._internal.encoding.gob.Gob__types._types[_rt] = _typ;
        };
        return { _0 : _typ, _1 : _err };
    }
