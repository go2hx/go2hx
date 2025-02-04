package stdgo._internal.encoding.gob;
function _getEncEngine(_ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>, _building:stdgo.GoMap<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>, Bool>):stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encengine.T_encEngine> {
        var __tmp__ = stdgo._internal.encoding.gob.Gob__gettypeinfo._getTypeInfo(_ut), _info:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.encoding.gob.Gob__error_._error_(_err);
        };
        var _enc = @:check2 (@:checkr _info ?? throw "null pointer dereference")._encoder.load();
        if ((_enc == null || (_enc : Dynamic).__nil__)) {
            _enc = stdgo._internal.encoding.gob.Gob__buildencengine._buildEncEngine(_info, _ut, _building);
        };
        return _enc;
    }
