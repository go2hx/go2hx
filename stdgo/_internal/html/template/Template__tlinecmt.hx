package stdgo._internal.html.template;
function _tLineCmt(_c:stdgo._internal.html.template.Template_t_context.T_context, _s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.html.template.Template_t_context.T_context; var _1 : stdgo.GoInt; } {
        var _lineTerminators:stdgo.GoString = ("" : stdgo.GoString);
        var _endState:stdgo._internal.html.template.Template_t_state.T_state = ((0 : stdgo.GoUInt8) : stdgo._internal.html.template.Template_t_state.T_state);
        //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L416"
        {
            final __value__ = _c._state;
            if (__value__ == ((16 : stdgo._internal.html.template.Template_t_state.T_state)) || __value__ == ((17 : stdgo._internal.html.template.Template_t_state.T_state)) || __value__ == ((18 : stdgo._internal.html.template.Template_t_state.T_state))) {
                {
                    final __tmp__0 = ("\n\r\u2028\u2029" : stdgo.GoString);
                    final __tmp__1 = (10 : stdgo._internal.html.template.Template_t_state.T_state);
                    _lineTerminators = @:binopAssign __tmp__0;
                    _endState = @:binopAssign __tmp__1;
                };
            } else if (__value__ == ((26 : stdgo._internal.html.template.Template_t_state.T_state))) {
                {
                    final __tmp__0 = ("\n\x0C\r" : stdgo.GoString);
                    final __tmp__1 = (19 : stdgo._internal.html.template.Template_t_state.T_state);
                    _lineTerminators = @:binopAssign __tmp__0;
                    _endState = @:binopAssign __tmp__1;
                };
            } else {
                //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L429"
                throw stdgo.Go.toInterface((_c._state.string() : stdgo.GoString));
            };
        };
        var _i = (stdgo._internal.bytes.Bytes_indexany.indexAny(_s, _lineTerminators?.__copy__()) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L433"
        if (_i == ((-1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L434"
            return { _0 : _c?.__copy__(), _1 : (_s.length) };
        };
        _c._state = _endState;
        //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L442"
        return { _0 : _c?.__copy__(), _1 : _i };
    }
