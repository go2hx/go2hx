package stdgo._internal.encoding.gob;
function _allocValue(_t:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Value.Value {
        return stdgo._internal.reflect.Reflect_new_.new_(_t).elem()?.__copy__();
    }
