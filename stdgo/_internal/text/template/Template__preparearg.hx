package stdgo._internal.text.template;
function _prepareArg(_value:stdgo._internal.reflect.Reflect_value.Value, _argType:stdgo._internal.reflect.Reflect_type_.Type_):{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L158"
        if (!_value.isValid()) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L159"
            if (!stdgo._internal.text.template.Template__canbenil._canBeNil(_argType)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L160"
                return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("value is nil; should be of type %s" : stdgo.GoString), stdgo.Go.toInterface(_argType)) };
            };
            _value = stdgo._internal.reflect.Reflect_zero.zero(_argType)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L164"
        if (_value.type().assignableTo(_argType)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L165"
            return { _0 : _value?.__copy__(), _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L167"
        if (((stdgo._internal.text.template.Template__intlike._intLike(_value.kind()) && stdgo._internal.text.template.Template__intlike._intLike(_argType.kind()) : Bool) && _value.type().convertibleTo(_argType) : Bool)) {
            _value = _value.convert(_argType)?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L169"
            return { _0 : _value?.__copy__(), _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L171"
        return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("value has type %s; should be %s" : stdgo.GoString), stdgo.Go.toInterface(_value.type()), stdgo.Go.toInterface(_argType)) };
    }
