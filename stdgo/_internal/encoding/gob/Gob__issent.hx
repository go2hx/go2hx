package stdgo._internal.encoding.gob;
function _isSent(_field:stdgo.Ref<stdgo._internal.reflect.Reflect_structfield.StructField>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L580"
        if (!stdgo._internal.encoding.gob.Gob__isexported._isExported((@:checkr _field ?? throw "null pointer dereference").name?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L581"
            return false;
        };
        var _typ = ((@:checkr _field ?? throw "null pointer dereference").type : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L586"
        while (_typ.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            _typ = _typ.elem();
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L589"
        if (((_typ.kind() == (18u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || (_typ.kind() == (19u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L590"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L592"
        return true;
    }
