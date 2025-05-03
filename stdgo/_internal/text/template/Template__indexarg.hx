package stdgo._internal.text.template;
function _indexArg(_index:stdgo._internal.reflect.Reflect_value.Value, _cap:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _x:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L187"
        {
            final __value__ = _index.kind();
            if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _x = _index.int_();
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _x = (_index.uint() : stdgo.GoInt64);
            } else if (__value__ == ((0u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L193"
                return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("cannot index slice/array with nil" : stdgo.GoString)) };
            } else {
                //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L195"
                return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("cannot index slice/array with type %s" : stdgo.GoString), stdgo.Go.toInterface(_index.type())) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L197"
        if ((((_x < (0i64 : stdgo.GoInt64) : Bool) || ((_x : stdgo.GoInt) < (0 : stdgo.GoInt) : Bool) : Bool) || ((_x : stdgo.GoInt) > _cap : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L198"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("index out of range: %d" : stdgo.GoString), stdgo.Go.toInterface(_x)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L200"
        return { _0 : (_x : stdgo.GoInt), _1 : (null : stdgo.Error) };
    }
