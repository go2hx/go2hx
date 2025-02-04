package stdgo._internal.encoding.gob;
function _idToType(_id:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId):stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType {
        if (((_id < (0 : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId) : Bool) || ((_id : stdgo.GoInt) >= (stdgo._internal.encoding.gob.Gob__idtotypeslice._idToTypeSlice.length) : Bool) : Bool)) {
            return (null : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType);
        };
        return stdgo._internal.encoding.gob.Gob__idtotypeslice._idToTypeSlice[(_id : stdgo.GoInt)];
    }
