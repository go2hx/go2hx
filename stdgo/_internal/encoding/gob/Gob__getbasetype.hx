package stdgo._internal.encoding.gob;
function _getBaseType(_name:stdgo.GoString, _rt:stdgo._internal.reflect.Reflect_type_.Type_):{ var _0 : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType; var _1 : stdgo.Error; } {
        var _ut = stdgo._internal.encoding.gob.Gob__usertype._userType(_rt);
        return stdgo._internal.encoding.gob.Gob__gettype._getType(_name?.__copy__(), _ut, (@:checkr _ut ?? throw "null pointer dereference")._base);
    }
