package stdgo._internal.encoding.gob;
function _newStructType(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_structType.T_structType> {
        var _s = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_T_structType.T_structType(({ name : _name?.__copy__() } : stdgo._internal.encoding.gob.Gob_CommonType.CommonType), (null : stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_fieldType.T_fieldType>)) : stdgo._internal.encoding.gob.Gob_T_structType.T_structType)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_structType.T_structType>);
        stdgo._internal.encoding.gob.Gob__setTypeId._setTypeId(stdgo.Go.asInterface(_s));
        return _s;
    }
