package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_typeId_asInterface) class T_typeId_static_extension {
    @:keep
    @:tdfield
    static public function _name( _t:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId):stdgo.GoString {
        @:recv var _t:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId = _t;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L223"
        if (_t._gobType() == null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L224"
            return ("<nil>" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L226"
        return _t._gobType()._name()?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _string( _t:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId):stdgo.GoString {
        @:recv var _t:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId = _t;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L215"
        if (_t._gobType() == null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L216"
            return ("<nil>" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L218"
        return _t._gobType()._string()?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _gobType( _t:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId):stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType {
        @:recv var _t:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId = _t;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L207"
        if (_t == ((0 : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L208"
            return (null : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L210"
        return stdgo._internal.encoding.gob.Gob__idtotype._idToType(_t);
    }
}
