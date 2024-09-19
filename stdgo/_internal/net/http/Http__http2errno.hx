package stdgo._internal.net.http;
function _http2errno(_v:stdgo.Error):stdgo.GoUIntptr {
        {
            var _rv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_v))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            if (_rv.kind() == ((12u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return (_rv.uint() : stdgo.GoUIntptr);
            };
        };
        return (0 : stdgo.GoUIntptr);
    }
