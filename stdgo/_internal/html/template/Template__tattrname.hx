package stdgo._internal.html.template;
function _tAttrName(_c:stdgo._internal.html.template.Template_t_context.T_context, _s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.html.template.Template_t_context.T_context; var _1 : stdgo.GoInt; } {
        var __tmp__ = stdgo._internal.html.template.Template__eatattrname._eatAttrName(_s, (0 : stdgo.GoInt)), _i:stdgo.GoInt = __tmp__._0, _err:stdgo.Ref<stdgo._internal.html.template.Template_error.Error> = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L140"
        if (({
            final value = _err;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L141"
            return { _0 : ({ _state : (27 : stdgo._internal.html.template.Template_t_state.T_state), _err : _err } : stdgo._internal.html.template.Template_t_context.T_context), _1 : (_s.length) };
        } else if (_i != ((_s.length))) {
            _c._state = (3 : stdgo._internal.html.template.Template_t_state.T_state);
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L145"
        return { _0 : _c?.__copy__(), _1 : _i };
    }
