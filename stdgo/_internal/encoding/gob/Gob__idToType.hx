package stdgo._internal.encoding.gob;
function _idToType(_id:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId):stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType {
        if (((_id < (0 : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId) : Bool) || ((_id : stdgo.GoInt) >= (stdgo._internal.encoding.gob.Gob__idToTypeSlice._idToTypeSlice.length) : Bool) : Bool)) {
            return (null : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType);
        };
        return stdgo._internal.encoding.gob.Gob__idToTypeSlice._idToTypeSlice[(_id : stdgo.GoInt)];
    }
