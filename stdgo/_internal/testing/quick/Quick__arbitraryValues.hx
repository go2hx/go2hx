package stdgo._internal.testing.quick;
function _arbitraryValues(_args:stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>, _f:stdgo._internal.reflect.Reflect_Type_.Type_, _config:stdgo.Ref<stdgo._internal.testing.quick.Quick_Config.Config>, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>):stdgo.Error {
        var _err = (null : stdgo.Error);
        if (_config.values != null) {
            _config.values(_args, _rand);
            return _err;
        };
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < (_args.length) : Bool)) {
                var _ok:Bool = false;
{
                    var __tmp__ = stdgo._internal.testing.quick.Quick_value.value(_f.in_(_j), _rand);
                    _args[(_j : stdgo.GoInt)] = __tmp__._0.__copy__();
                    _ok = __tmp__._1;
                };
if (!_ok) {
                    _err = stdgo.Go.asInterface((stdgo._internal.fmt.Fmt_sprintf.sprintf(("cannot create arbitrary value of type %s for argument %d" : stdgo.GoString), stdgo.Go.toInterface(_f.in_(_j)), stdgo.Go.toInterface(_j)) : stdgo._internal.testing.quick.Quick_SetupError.SetupError));
                    return _err;
                };
                _j++;
            };
        };
        return _err;
    }
