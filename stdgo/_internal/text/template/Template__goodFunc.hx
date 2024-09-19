package stdgo._internal.text.template;
function _goodFunc(_typ:stdgo._internal.reflect.Reflect_Type_.Type_):Bool {
        if (_typ.numOut() == ((1 : stdgo.GoInt))) {
            return true;
        } else if (((_typ.numOut() == (2 : stdgo.GoInt)) && ((_typ.out((1 : stdgo.GoInt)).string() : String) == (stdgo._internal.text.template.Template__errorType._errorType.string() : String)) : Bool)) {
            return true;
        };
        return false;
    }
