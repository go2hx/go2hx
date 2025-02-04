package stdgo._internal.encoding.gob;
function _userType(_rt:stdgo._internal.reflect.Reflect_type_.Type_):stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo> {
        var __tmp__ = stdgo._internal.encoding.gob.Gob__validusertype._validUserType(_rt), _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.encoding.gob.Gob__error_._error_(_err);
        };
        return _ut;
    }
