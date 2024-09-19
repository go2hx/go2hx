package stdgo._internal.encoding.gob;
function _isSent(_field:stdgo.Ref<stdgo._internal.reflect.Reflect_StructField.StructField>):Bool {
        if (!stdgo._internal.encoding.gob.Gob__isExported._isExported(_field.name?.__copy__())) {
            return false;
        };
        var _typ = (_field.type : stdgo._internal.reflect.Reflect_Type_.Type_);
        while (_typ.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
            _typ = _typ.elem();
        };
        if (((_typ.kind() == (18u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || (_typ.kind() == (19u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool)) {
            return false;
        };
        return true;
    }
