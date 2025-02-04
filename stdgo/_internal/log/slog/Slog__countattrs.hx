package stdgo._internal.log.slog;
function _countAttrs(_args:stdgo.Slice<stdgo.AnyInterface>):stdgo.GoInt {
        var _n = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_args.length) : Bool)) {
                _n++;
{
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_args[(_i : stdgo.GoInt)] : stdgo.GoString)) : stdgo.GoString), _1 : true };
                    } catch(_) {
                        { _0 : ("" : stdgo.GoString), _1 : false };
                    }, __10 = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _i++;
                    };
                };
                _i++;
            };
        };
        return _n;
    }
