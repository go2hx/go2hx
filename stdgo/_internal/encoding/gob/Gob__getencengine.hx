package stdgo._internal.encoding.gob;
function _getEncEngine(_ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>, _building:stdgo.GoMap<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>, Bool>):stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encengine.T_encEngine> {
        var __tmp__ = stdgo._internal.encoding.gob.Gob__gettypeinfo._getTypeInfo(_ut), _info:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L626"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L627"
            stdgo._internal.encoding.gob.Gob__error_._error_(_err);
        };
        var _enc = (@:checkr _info ?? throw "null pointer dereference")._encoder.load();
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L630"
        if (({
            final value = _enc;
            (value == null || (value : Dynamic).__nil__);
        })) {
            _enc = stdgo._internal.encoding.gob.Gob__buildencengine._buildEncEngine(_info, _ut, _building);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L633"
        return _enc;
    }
