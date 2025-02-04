package stdgo._internal.html.template;
function _tBlockCmt(_c:stdgo._internal.html.template.Template_t_context.T_context, _s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.html.template.Template_t_context.T_context; var _1 : stdgo.GoInt; } {
        var _i = (stdgo._internal.bytes.Bytes_index.index(_s, stdgo._internal.html.template.Template__blockcommentend._blockCommentEnd) : stdgo.GoInt);
        if (_i == ((-1 : stdgo.GoInt))) {
            return { _0 : _c?.__copy__(), _1 : (_s.length) };
        };
        {
            final __value__ = _c._state;
            if (__value__ == ((15 : stdgo._internal.html.template.Template_t_state.T_state))) {
                _c._state = (10 : stdgo._internal.html.template.Template_t_state.T_state);
            } else if (__value__ == ((25 : stdgo._internal.html.template.Template_t_state.T_state))) {
                _c._state = (19 : stdgo._internal.html.template.Template_t_state.T_state);
            } else {
                throw stdgo.Go.toInterface((_c._state.string() : stdgo.GoString));
            };
        };
        return { _0 : _c?.__copy__(), _1 : (_i + (2 : stdgo.GoInt) : stdgo.GoInt) };
    }
