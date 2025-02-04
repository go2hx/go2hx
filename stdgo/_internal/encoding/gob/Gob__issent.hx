package stdgo._internal.encoding.gob;
function _isSent(_field:stdgo.Ref<stdgo._internal.reflect.Reflect_structfield.StructField>):Bool {
        if (!stdgo._internal.encoding.gob.Gob__isexported._isExported((@:checkr _field ?? throw "null pointer dereference").name?.__copy__())) {
            return false;
        };
        var _typ = ((@:checkr _field ?? throw "null pointer dereference").type : stdgo._internal.reflect.Reflect_type_.Type_);
        while (_typ.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            _typ = _typ.elem();
        };
        if (((_typ.kind() == (18u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || (_typ.kind() == (19u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool)) {
            return false;
        };
        return true;
    }
