package stdgo._internal.html.template;
function _tJSDelimited(_c:stdgo._internal.html.template.Template_t_context.T_context, _s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.html.template.Template_t_context.T_context; var _1 : stdgo.GoInt; } {
        var _specials = (("\\\"" : stdgo.GoString) : stdgo.GoString);
        {
            final __value__ = _c._state;
            if (__value__ == ((12 : stdgo._internal.html.template.Template_t_state.T_state))) {
                _specials = ("\\\'" : stdgo.GoString);
            } else if (__value__ == ((13 : stdgo._internal.html.template.Template_t_state.T_state))) {
                _specials = ("`\\" : stdgo.GoString);
            } else if (__value__ == ((14 : stdgo._internal.html.template.Template_t_state.T_state))) {
                _specials = ("\\/[]" : stdgo.GoString);
            };
        };
        var __0 = (0 : stdgo.GoInt), __1 = (false : Bool);
var _inCharset = __1, _k = __0;
        while (true) {
            var _i = (_k + stdgo._internal.bytes.Bytes_indexany.indexAny((_s.__slice__(_k) : stdgo.Slice<stdgo.GoUInt8>), _specials?.__copy__()) : stdgo.GoInt);
            if ((_i < _k : Bool)) {
                break;
            };
            {
                final __value__ = _s[(_i : stdgo.GoInt)];
                if (__value__ == ((92 : stdgo.GoUInt8))) {
                    _i++;
                    if (_i == ((_s.length))) {
                        return { _0 : ({ _state : (27 : stdgo._internal.html.template.Template_t_state.T_state), _err : stdgo._internal.html.template.Template__errorf._errorf((8 : stdgo._internal.html.template.Template_errorcode.ErrorCode), (null : stdgo._internal.text.template.parse.Parse_node.Node), (0 : stdgo.GoInt), ("unfinished escape sequence in JS string: %q" : stdgo.GoString), stdgo.Go.toInterface(_s)) } : stdgo._internal.html.template.Template_t_context.T_context), _1 : (_s.length) };
                    };
                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                    _inCharset = true;
                } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                    _inCharset = false;
                } else if (__value__ == ((47 : stdgo.GoUInt8))) {
                    if ((((_i > (0 : stdgo.GoInt) : Bool) && ((_i + (7 : stdgo.GoInt) : stdgo.GoInt) <= (_s.length) : Bool) : Bool) && (stdgo._internal.bytes.Bytes_compare.compare(stdgo._internal.bytes.Bytes_tolower.toLower((_s.__slice__((_i - (1 : stdgo.GoInt) : stdgo.GoInt), (_i + (7 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), ((("</script" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) == (0 : stdgo.GoInt)) : Bool)) {
                        _i++;
                    } else if (!_inCharset) {
                        {
                            final __tmp__0 = (10 : stdgo._internal.html.template.Template_t_state.T_state);
                            final __tmp__1 = (1 : stdgo._internal.html.template.Template_t_jsctx.T_jsCtx);
                            _c._state = __tmp__0;
                            _c._jsCtx = __tmp__1;
                        };
                        return { _0 : _c?.__copy__(), _1 : (_i + (1 : stdgo.GoInt) : stdgo.GoInt) };
                    };
                } else {
                    if (!_inCharset) {
                        {
                            final __tmp__0 = (10 : stdgo._internal.html.template.Template_t_state.T_state);
                            final __tmp__1 = (1 : stdgo._internal.html.template.Template_t_jsctx.T_jsCtx);
                            _c._state = __tmp__0;
                            _c._jsCtx = __tmp__1;
                        };
                        return { _0 : _c?.__copy__(), _1 : (_i + (1 : stdgo.GoInt) : stdgo.GoInt) };
                    };
                };
            };
            _k = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        if (_inCharset) {
            return { _0 : ({ _state : (27 : stdgo._internal.html.template.Template_t_state.T_state), _err : stdgo._internal.html.template.Template__errorf._errorf((7 : stdgo._internal.html.template.Template_errorcode.ErrorCode), (null : stdgo._internal.text.template.parse.Parse_node.Node), (0 : stdgo.GoInt), ("unfinished JS regexp charset: %q" : stdgo.GoString), stdgo.Go.toInterface(_s)) } : stdgo._internal.html.template.Template_t_context.T_context), _1 : (_s.length) };
        };
        return { _0 : _c?.__copy__(), _1 : (_s.length) };
    }
