package stdgo._internal.text.template;
function _isMissing(_v:stdgo._internal.reflect.Reflect_value.Value):Bool {
        return (_v.isValid() && ((_v.type().string() : String) == (stdgo._internal.text.template.Template__missingvalreflecttype._missingValReflectType.string() : String)) : Bool);
    }
