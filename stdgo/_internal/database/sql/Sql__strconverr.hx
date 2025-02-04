package stdgo._internal.database.sql;
function _strconvErr(_err:stdgo.Error):stdgo.Error {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>)) : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>), _1 : false };
            }, _ne = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return (@:checkr _ne ?? throw "null pointer dereference").err;
            };
        };
        return _err;
    }
