package stdgo._internal.strconv;
function _convErr(_err:stdgo.Error, _s:stdgo.GoString):{ var _0 : stdgo.Error; var _1 : stdgo.Error; } {
        var _syntax = (null : stdgo.Error), _range_ = (null : stdgo.Error);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>)) : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>), _1 : false };
            }, _x = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                (@:checkr _x ?? throw "null pointer dereference").func = ("ParseComplex" : stdgo.GoString);
                (@:checkr _x ?? throw "null pointer dereference").num = stdgo._internal.strconv.Strconv__clonestring._cloneString(_s?.__copy__())?.__copy__();
                if (stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference").err) == (stdgo.Go.toInterface(stdgo._internal.strconv.Strconv_errrange.errRange))) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Error; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Error), _1 : stdgo.Go.asInterface(_x) };
                        _syntax = __tmp__._0;
                        _range_ = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.Error; var _1 : stdgo.Error; } = { _0 : _err, _1 : (null : stdgo.Error) };
            _syntax = __tmp__._0;
            _range_ = __tmp__._1;
            __tmp__;
        };
    }
