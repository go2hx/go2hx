package stdgo._internal.html.template;
function _tCSS(_c:stdgo._internal.html.template.Template_t_context.T_context, _s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.html.template.Template_t_context.T_context; var _1 : stdgo.GoInt; } {
        var _k = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L475"
        while (true) {
            var _i = (_k + stdgo._internal.bytes.Bytes_indexany.indexAny((_s.__slice__(_k) : stdgo.Slice<stdgo.GoUInt8>), ("(\"\'/" : stdgo.GoString)) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L477"
            if ((_i < _k : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L478"
                return { _0 : _c?.__copy__(), _1 : (_s.length) };
            };
            //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L480"
            {
                final __value__ = _s[(_i : stdgo.GoInt)];
                if (__value__ == ((40 : stdgo.GoUInt8))) {
                    var _p = stdgo._internal.bytes.Bytes_trimright.trimRight((_s.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>), ("\t\n\x0C\r " : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L484"
                    if (stdgo._internal.html.template.Template__endswithcsskeyword._endsWithCSSKeyword(_p, ("url" : stdgo.GoString))) {
                        var _j = ((_s.length) - (stdgo._internal.bytes.Bytes_trimleft.trimLeft((_s.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ("\t\n\x0C\r " : stdgo.GoString)).length) : stdgo.GoInt);
                        //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L486"
                        if (((_j != (_s.length)) && (_s[(_j : stdgo.GoInt)] == (34 : stdgo.GoUInt8)) : Bool)) {
                            {
                                final __tmp__0 = (22 : stdgo._internal.html.template.Template_t_state.T_state);
                                final __tmp__1 = (_j + (1 : stdgo.GoInt) : stdgo.GoInt);
                                _c._state = @:binopAssign __tmp__0;
                                _j = @:binopAssign __tmp__1;
                            };
                        } else if (((_j != (_s.length)) && (_s[(_j : stdgo.GoInt)] == (39 : stdgo.GoUInt8)) : Bool)) {
                            {
                                final __tmp__0 = (23 : stdgo._internal.html.template.Template_t_state.T_state);
                                final __tmp__1 = (_j + (1 : stdgo.GoInt) : stdgo.GoInt);
                                _c._state = @:binopAssign __tmp__0;
                                _j = @:binopAssign __tmp__1;
                            };
                        } else {
                            _c._state = (24 : stdgo._internal.html.template.Template_t_state.T_state);
                        };
                        //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L494"
                        return { _0 : _c?.__copy__(), _1 : _j };
                    };
                } else if (__value__ == ((47 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L497"
                    if (((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L498"
                        {
                            final __value__ = _s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)];
                            if (__value__ == ((47 : stdgo.GoUInt8))) {
                                _c._state = (26 : stdgo._internal.html.template.Template_t_state.T_state);
                                //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L501"
                                return { _0 : _c?.__copy__(), _1 : (_i + (2 : stdgo.GoInt) : stdgo.GoInt) };
                            } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _c._state = (25 : stdgo._internal.html.template.Template_t_state.T_state);
                                //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L504"
                                return { _0 : _c?.__copy__(), _1 : (_i + (2 : stdgo.GoInt) : stdgo.GoInt) };
                            };
                        };
                    };
                } else if (__value__ == ((34 : stdgo.GoUInt8))) {
                    _c._state = (20 : stdgo._internal.html.template.Template_t_state.T_state);
                    //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L509"
                    return { _0 : _c?.__copy__(), _1 : (_i + (1 : stdgo.GoInt) : stdgo.GoInt) };
                } else if (__value__ == ((39 : stdgo.GoUInt8))) {
                    _c._state = (21 : stdgo._internal.html.template.Template_t_state.T_state);
                    //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L512"
                    return { _0 : _c?.__copy__(), _1 : (_i + (1 : stdgo.GoInt) : stdgo.GoInt) };
                };
            };
            _k = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
    }
