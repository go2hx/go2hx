package stdgo._internal.encoding.gob;
function _getBaseType(_name:stdgo.GoString, _rt:stdgo._internal.reflect.Reflect_Type_.Type_):{ var _0 : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType; var _1 : stdgo.Error; } {
        var _ut = stdgo._internal.encoding.gob.Gob__userType._userType(_rt);
        return stdgo._internal.encoding.gob.Gob__getType._getType(_name?.__copy__(), _ut, _ut._base);
    }
