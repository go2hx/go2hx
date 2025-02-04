package stdgo._internal.encoding.json;
function _dominantField(_fields:stdgo.Slice<stdgo._internal.encoding.json.Json_t_field.T_field>):{ var _0 : stdgo._internal.encoding.json.Json_t_field.T_field; var _1 : Bool; } {
        if (((((_fields.length) > (1 : stdgo.GoInt) : Bool) && (_fields[(0 : stdgo.GoInt)]._index.length) == ((_fields[(1 : stdgo.GoInt)]._index.length)) : Bool) && (_fields[(0 : stdgo.GoInt)]._tag == _fields[(1 : stdgo.GoInt)]._tag) : Bool)) {
            return { _0 : (new stdgo._internal.encoding.json.Json_t_field.T_field() : stdgo._internal.encoding.json.Json_t_field.T_field), _1 : false };
        };
        return { _0 : _fields[(0 : stdgo.GoInt)], _1 : true };
    }
