package stdgo._internal.text.template;
function _canBeNil(_typ:stdgo._internal.reflect.Reflect_type_.Type_):Bool {
        {
            final __value__ = _typ.kind();
            if (__value__ == ((18u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((19u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                return true;
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                return (_typ.string() : String) == (stdgo._internal.text.template.Template__reflectvaluetype._reflectValueType.string() : String);
            };
        };
        return false;
    }
