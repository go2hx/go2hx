package stdgo._internal.encoding.gob;
function _setTypeId(_typ:stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L198"
        if (_typ._id() != ((0 : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L199"
            return;
        };
        var _nextId = (stdgo._internal.encoding.gob.Gob__idtotypeslice._idToTypeSlice.length : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L202"
        _typ._setId(_nextId);
        stdgo._internal.encoding.gob.Gob__idtotypeslice._idToTypeSlice = (stdgo._internal.encoding.gob.Gob__idtotypeslice._idToTypeSlice.__append__(_typ) : stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType>);
    }
