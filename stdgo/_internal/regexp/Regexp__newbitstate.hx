package stdgo._internal.regexp;
function _newBitState():stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState> {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo._internal.regexp.Regexp__bitstatepool._bitStatePool.get() : stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState>)) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState>), _1 : false };
        }, _b = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L51"
        if (!_ok) {
            _b = (stdgo.Go.setRef(({} : stdgo._internal.regexp.Regexp_t_bitstate.T_bitState)) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState>);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L54"
        return _b;
    }
