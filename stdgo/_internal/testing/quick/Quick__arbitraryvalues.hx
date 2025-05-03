package stdgo._internal.testing.quick;
function _arbitraryValues(_args:stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>, _f:stdgo._internal.reflect.Reflect_type_.Type_, _config:stdgo.Ref<stdgo._internal.testing.quick.Quick_config.Config>, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>):stdgo.Error {
        var _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick.go#L344"
        if ((@:checkr _config ?? throw "null pointer dereference").values != null) {
            //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick.go#L345"
            (@:checkr _config ?? throw "null pointer dereference").values(_args, _rand);
            //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick.go#L346"
            return _err;
        };
        //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick.go#L349"
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < (_args.length) : Bool)) {
                var _ok:Bool = false;
{
                    var __tmp__ = stdgo._internal.testing.quick.Quick_value.value(_f.in_(_j), _rand);
                    _args[(_j : stdgo.GoInt)] = @:tmpset0 __tmp__._0.__copy__();
                    _ok = @:tmpset0 __tmp__._1;
                };
//"file:///home/runner/.go/go1.21.3/src/testing/quick/quick.go#L352"
                if (!_ok) {
                    _err = stdgo.Go.asInterface((stdgo._internal.fmt.Fmt_sprintf.sprintf(("cannot create arbitrary value of type %s for argument %d" : stdgo.GoString), stdgo.Go.toInterface(_f.in_(_j)), stdgo.Go.toInterface(_j)) : stdgo._internal.testing.quick.Quick_setuperror.SetupError));
                    //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick.go#L354"
                    return _err;
                };
                _j++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick.go#L358"
        return _err;
    }
