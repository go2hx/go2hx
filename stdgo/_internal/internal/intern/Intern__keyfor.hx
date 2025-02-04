package stdgo._internal.internal.intern;
function _keyFor(_cmpVal:stdgo.AnyInterface):stdgo._internal.internal.intern.Intern_t_key.T_key {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_cmpVal : stdgo.GoString)) : stdgo.GoString), _1 : true };
            } catch(_) {
                { _0 : ("" : stdgo.GoString), _1 : false };
            }, _s = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return ({ _s : _s?.__copy__(), _isString : true } : stdgo._internal.internal.intern.Intern_t_key.T_key);
            };
        };
        return ({ _cmpVal : _cmpVal } : stdgo._internal.internal.intern.Intern_t_key.T_key);
    }
