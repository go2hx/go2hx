package stdgo._internal.encoding.gob;
function _builtinIdToType(_id:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId):stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType {
        if (((_id < (0 : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId) : Bool) || ((_id : stdgo.GoInt) >= (stdgo._internal.encoding.gob.Gob__builtinIdToTypeSlice._builtinIdToTypeSlice.length) : Bool) : Bool)) {
            return (null : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType);
        };
        return stdgo._internal.encoding.gob.Gob__builtinIdToTypeSlice._builtinIdToTypeSlice[(_id : stdgo.GoInt)];
    }
