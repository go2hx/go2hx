package stdgo._internal.html.template;
function _tJS(_c:stdgo._internal.html.template.Template_t_context.T_context, _s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.html.template.Template_t_context.T_context; var _1 : stdgo.GoInt; } {
        var _i = (stdgo._internal.bytes.Bytes_indexany.indexAny(_s, ("\"`\'/<-#" : stdgo.GoString)) : stdgo.GoInt);
        if (_i == ((-1 : stdgo.GoInt))) {
            _c._jsCtx = stdgo._internal.html.template.Template__nextjsctx._nextJSCtx(_s, _c._jsCtx);
            return { _0 : _c?.__copy__(), _1 : (_s.length) };
        };
        _c._jsCtx = stdgo._internal.html.template.Template__nextjsctx._nextJSCtx((_s.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>), _c._jsCtx);
        {
            final __value__ = _s[(_i : stdgo.GoInt)];
            if (__value__ == ((34 : stdgo.GoUInt8))) {
                {
                    final __tmp__0 = (11 : stdgo._internal.html.template.Template_t_state.T_state);
                    final __tmp__1 = (0 : stdgo._internal.html.template.Template_t_jsctx.T_jsCtx);
                    _c._state = __tmp__0;
                    _c._jsCtx = __tmp__1;
                };
            } else if (__value__ == ((39 : stdgo.GoUInt8))) {
                {
                    final __tmp__0 = (12 : stdgo._internal.html.template.Template_t_state.T_state);
                    final __tmp__1 = (0 : stdgo._internal.html.template.Template_t_jsctx.T_jsCtx);
                    _c._state = __tmp__0;
                    _c._jsCtx = __tmp__1;
                };
            } else if (__value__ == ((96 : stdgo.GoUInt8))) {
                {
                    final __tmp__0 = (13 : stdgo._internal.html.template.Template_t_state.T_state);
                    final __tmp__1 = (0 : stdgo._internal.html.template.Template_t_jsctx.T_jsCtx);
                    _c._state = __tmp__0;
                    _c._jsCtx = __tmp__1;
                };
            } else if (__value__ == ((47 : stdgo.GoUInt8))) {
                if ((((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && (_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool)) {
                    {
                        final __tmp__0 = (16 : stdgo._internal.html.template.Template_t_state.T_state);
                        final __tmp__1 = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        _c._state = __tmp__0;
                        _i = __tmp__1;
                    };
                } else if ((((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && (_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                    {
                        final __tmp__0 = (15 : stdgo._internal.html.template.Template_t_state.T_state);
                        final __tmp__1 = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        _c._state = __tmp__0;
                        _i = __tmp__1;
                    };
                } else if (_c._jsCtx == ((0 : stdgo._internal.html.template.Template_t_jsctx.T_jsCtx))) {
                    _c._state = (14 : stdgo._internal.html.template.Template_t_state.T_state);
                } else if (_c._jsCtx == ((1 : stdgo._internal.html.template.Template_t_jsctx.T_jsCtx))) {
                    _c._jsCtx = (0 : stdgo._internal.html.template.Template_t_jsctx.T_jsCtx);
                } else {
                    return { _0 : ({ _state : (27 : stdgo._internal.html.template.Template_t_state.T_state), _err : stdgo._internal.html.template.Template__errorf._errorf((10 : stdgo._internal.html.template.Template_errorcode.ErrorCode), (null : stdgo._internal.text.template.parse.Parse_node.Node), (0 : stdgo.GoInt), ("\'/\' could start a division or regexp: %.32q" : stdgo.GoString), stdgo.Go.toInterface((_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>))) } : stdgo._internal.html.template.Template_t_context.T_context), _1 : (_s.length) };
                };
            } else if (__value__ == ((60 : stdgo.GoUInt8))) {
                if ((((_i + (3 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.html.template.Template__commentstart._commentStart, (_s.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : Bool)) {
                    {
                        final __tmp__0 = (17 : stdgo._internal.html.template.Template_t_state.T_state);
                        final __tmp__1 = (_i + (3 : stdgo.GoInt) : stdgo.GoInt);
                        _c._state = __tmp__0;
                        _i = __tmp__1;
                    };
                };
            } else if (__value__ == ((45 : stdgo.GoUInt8))) {
                if ((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.html.template.Template__commentend._commentEnd, (_s.__slice__(_i, (_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : Bool)) {
                    {
                        final __tmp__0 = (18 : stdgo._internal.html.template.Template_t_state.T_state);
                        final __tmp__1 = (_i + (2 : stdgo.GoInt) : stdgo.GoInt);
                        _c._state = __tmp__0;
                        _i = __tmp__1;
                    };
                };
            } else if (__value__ == ((35 : stdgo.GoUInt8))) {
                if ((((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && (_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (33 : stdgo.GoUInt8)) : Bool)) {
                    {
                        final __tmp__0 = (16 : stdgo._internal.html.template.Template_t_state.T_state);
                        final __tmp__1 = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        _c._state = __tmp__0;
                        _i = __tmp__1;
                    };
                };
            } else {
                throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
            };
        };
        return { _0 : _c?.__copy__(), _1 : (_i + (1 : stdgo.GoInt) : stdgo.GoInt) };
    }
