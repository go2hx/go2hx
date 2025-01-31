package stdgo._internal.testing.quick;
import stdgo._internal.flag.Flag;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.time.Time;
function _arbitraryValues(_args:stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>, _f:stdgo._internal.reflect.Reflect_Type_.Type_, _config:stdgo.Ref<stdgo._internal.testing.quick.Quick_Config.Config>, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>):stdgo.Error {
        var _err = (null : stdgo.Error);
        if ((@:checkr _config ?? throw "null pointer dereference").values != null) {
            (@:checkr _config ?? throw "null pointer dereference").values(_args, _rand);
            return _err;
        };
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < (_args.length) : Bool)) {
                var _ok:Bool = false;
{
                    var __tmp__ = stdgo._internal.testing.quick.Quick_value.value(_f.in_(_j), _rand);
                    _args[(_j : stdgo.GoInt)] = @:tmpset0 __tmp__._0.__copy__();
                    _ok = @:tmpset0 __tmp__._1;
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
