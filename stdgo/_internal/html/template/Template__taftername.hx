package stdgo._internal.html.template;
function _tAfterName(_c:stdgo._internal.html.template.Template_t_context.T_context, _s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.html.template.Template_t_context.T_context; var _1 : stdgo.GoInt; } {
        var _i = (stdgo._internal.html.template.Template__eatwhitespace._eatWhiteSpace(_s, (0 : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L152"
        if (_i == ((_s.length))) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L153"
            return { _0 : _c?.__copy__(), _1 : (_s.length) };
        } else if (_s[(_i : stdgo.GoInt)] != ((61 : stdgo.GoUInt8))) {
            _c._state = (1 : stdgo._internal.html.template.Template_t_state.T_state);
            //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L157"
            return { _0 : _c?.__copy__(), _1 : _i };
        };
        _c._state = (4 : stdgo._internal.html.template.Template_t_state.T_state);
        //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L161"
        return { _0 : _c?.__copy__(), _1 : (_i + (1 : stdgo.GoInt) : stdgo.GoInt) };
    }
