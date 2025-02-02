package stdgo._internal.encoding.gob;
function _setTypeId(_typ:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType):Void {
        if (_typ._id() != ((0 : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId))) {
            return;
        };
        var _nextId = (stdgo._internal.encoding.gob.Gob__idToTypeSlice._idToTypeSlice.length : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId);
        _typ._setId(_nextId);
        stdgo._internal.encoding.gob.Gob__idToTypeSlice._idToTypeSlice = (stdgo._internal.encoding.gob.Gob__idToTypeSlice._idToTypeSlice.__append__(_typ));
    }
