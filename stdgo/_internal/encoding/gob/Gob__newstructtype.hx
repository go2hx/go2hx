package stdgo._internal.encoding.gob;
function _newStructType(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_structtype.T_structType> {
        var _s = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_structtype.T_structType(({ name : _name?.__copy__() } : stdgo._internal.encoding.gob.Gob_commontype.CommonType), (null : stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_fieldtype.T_fieldType>)) : stdgo._internal.encoding.gob.Gob_t_structtype.T_structType)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_structtype.T_structType>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L443"
        stdgo._internal.encoding.gob.Gob__settypeid._setTypeId(stdgo.Go.asInterface(_s));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L444"
        return _s;
    }
