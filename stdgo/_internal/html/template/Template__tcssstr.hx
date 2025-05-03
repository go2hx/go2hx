package stdgo._internal.html.template;
function _tCSSStr(_c:stdgo._internal.html.template.Template_t_context.T_context, _s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.html.template.Template_t_context.T_context; var _1 : stdgo.GoInt; } {
        var _endAndEsc:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L521"
        {
            final __value__ = _c._state;
            if (__value__ == ((20 : stdgo._internal.html.template.Template_t_state.T_state)) || __value__ == ((22 : stdgo._internal.html.template.Template_t_state.T_state))) {
                _endAndEsc = ("\\\"" : stdgo.GoString);
            } else if (__value__ == ((21 : stdgo._internal.html.template.Template_t_state.T_state)) || __value__ == ((23 : stdgo._internal.html.template.Template_t_state.T_state))) {
                _endAndEsc = ("\\\'" : stdgo.GoString);
            } else if (__value__ == ((24 : stdgo._internal.html.template.Template_t_state.T_state))) {
                _endAndEsc = ("\\\t\n\x0C\r )" : stdgo.GoString);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L531"
                throw stdgo.Go.toInterface((_c._state.string() : stdgo.GoString));
            };
        };
        var _k = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L535"
        while (true) {
            var _i = (_k + stdgo._internal.bytes.Bytes_indexany.indexAny((_s.__slice__(_k) : stdgo.Slice<stdgo.GoUInt8>), _endAndEsc?.__copy__()) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L537"
            if ((_i < _k : Bool)) {
                var __tmp__ = stdgo._internal.html.template.Template__turl._tURL(_c?.__copy__(), stdgo._internal.html.template.Template__decodecss._decodeCSS((_s.__slice__(_k) : stdgo.Slice<stdgo.GoUInt8>))), _c:stdgo._internal.html.template.Template_t_context.T_context = __tmp__._0, _nread:stdgo.GoInt = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L539"
                return { _0 : _c?.__copy__(), _1 : (_k + _nread : stdgo.GoInt) };
            };
            //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L541"
            if (_s[(_i : stdgo.GoInt)] == ((92 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L542"
                _i++;
                //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L543"
                if (_i == ((_s.length))) {
                    //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L544"
                    return { _0 : ({ _state : (27 : stdgo._internal.html.template.Template_t_state.T_state), _err : stdgo._internal.html.template.Template__errorf._errorf((8 : stdgo._internal.html.template.Template_errorcode.ErrorCode), (null : stdgo._internal.text.template.parse.Parse_node.Node), (0 : stdgo.GoInt), ("unfinished escape sequence in CSS string: %q" : stdgo.GoString), stdgo.Go.toInterface(_s)) } : stdgo._internal.html.template.Template_t_context.T_context), _1 : (_s.length) };
                };
            } else {
                _c._state = (19 : stdgo._internal.html.template.Template_t_state.T_state);
                //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L551"
                return { _0 : _c?.__copy__(), _1 : (_i + (1 : stdgo.GoInt) : stdgo.GoInt) };
            };
            {
                var __tmp__ = stdgo._internal.html.template.Template__turl._tURL(_c?.__copy__(), stdgo._internal.html.template.Template__decodecss._decodeCSS((_s.__slice__(0, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)));
                _c = @:tmpset0 __tmp__._0?.__copy__();
            };
            _k = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
    }
