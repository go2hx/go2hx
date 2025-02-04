package stdgo._internal.encoding.gob;
function _newGobEncoderType(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobencodertype.T_gobEncoderType> {
        var _g = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_gobencodertype.T_gobEncoderType(({ name : _name?.__copy__() } : stdgo._internal.encoding.gob.Gob_commontype.CommonType)) : stdgo._internal.encoding.gob.Gob_t_gobencodertype.T_gobEncoderType)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobencodertype.T_gobEncoderType>);
        stdgo._internal.encoding.gob.Gob__settypeid._setTypeId(stdgo.Go.asInterface(_g));
        return _g;
    }
