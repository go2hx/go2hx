package stdgo._internal.text.template;
function _prepareArg(_value:stdgo._internal.reflect.Reflect_value.Value, _argType:stdgo._internal.reflect.Reflect_type_.Type_):{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : stdgo.Error; } {
        if (!_value.isValid()) {
            if (!stdgo._internal.text.template.Template__canbenil._canBeNil(_argType)) {
                return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("value is nil; should be of type %s" : stdgo.GoString), stdgo.Go.toInterface(_argType)) };
            };
            _value = stdgo._internal.reflect.Reflect_zero.zero(_argType)?.__copy__();
        };
        if (_value.type().assignableTo(_argType)) {
            return { _0 : _value?.__copy__(), _1 : (null : stdgo.Error) };
        };
        if (((stdgo._internal.text.template.Template__intlike._intLike(_value.kind()) && stdgo._internal.text.template.Template__intlike._intLike(_argType.kind()) : Bool) && _value.type().convertibleTo(_argType) : Bool)) {
            _value = _value.convert(_argType)?.__copy__();
            return { _0 : _value?.__copy__(), _1 : (null : stdgo.Error) };
        };
        return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("value has type %s; should be %s" : stdgo.GoString), stdgo.Go.toInterface(_value.type()), stdgo.Go.toInterface(_argType)) };
    }
