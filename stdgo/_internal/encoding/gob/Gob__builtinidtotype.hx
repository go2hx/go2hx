package stdgo._internal.encoding.gob;
function _builtinIdToType(_id:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId):stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L190"
        if (((_id < (0 : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId) : Bool) || ((_id : stdgo.GoInt) >= (stdgo._internal.encoding.gob.Gob__builtinidtotypeslice._builtinIdToTypeSlice.length) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L191"
            return (null : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L193"
        return stdgo._internal.encoding.gob.Gob__builtinidtotypeslice._builtinIdToTypeSlice[(_id : stdgo.GoInt)];
    }
