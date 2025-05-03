package stdgo._internal.encoding.gob;
function _idToType(_id:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId):stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L183"
        if (((_id < (0 : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId) : Bool) || ((_id : stdgo.GoInt) >= (stdgo._internal.encoding.gob.Gob__idtotypeslice._idToTypeSlice.length) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L184"
            return (null : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L186"
        return stdgo._internal.encoding.gob.Gob__idtotypeslice._idToTypeSlice[(_id : stdgo.GoInt)];
    }
