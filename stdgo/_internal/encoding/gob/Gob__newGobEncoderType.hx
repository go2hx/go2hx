package stdgo._internal.encoding.gob;
function _newGobEncoderType(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType> {
        var _g = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType(({ name : _name?.__copy__() } : stdgo._internal.encoding.gob.Gob_CommonType.CommonType)) : stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType>);
        stdgo._internal.encoding.gob.Gob__setTypeId._setTypeId(stdgo.Go.asInterface(_g));
        return _g;
    }
