package stdgo._internal.text.template;
function _length(_item:stdgo._internal.reflect.Reflect_value.Value):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.text.template.Template__indirect._indirect(_item?.__copy__()), _item:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _isNil:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L300"
        if (_isNil) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L301"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("len of nil pointer" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L303"
        {
            final __value__ = _item.kind();
            if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((18u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L305"
                return { _0 : _item.len(), _1 : (null : stdgo.Error) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L307"
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("len of type %s" : stdgo.GoString), stdgo.Go.toInterface(_item.type())) };
    }
