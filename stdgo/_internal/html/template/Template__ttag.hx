package stdgo._internal.html.template;
function _tTag(_c:stdgo._internal.html.template.Template_t_context.T_context, _s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.html.template.Template_t_context.T_context; var _1 : stdgo.GoInt; } {
        var _i = (stdgo._internal.html.template.Template__eatwhitespace._eatWhiteSpace(_s, (0 : stdgo.GoInt)) : stdgo.GoInt);
        if (_i == ((_s.length))) {
            return { _0 : _c?.__copy__(), _1 : (_s.length) };
        };
        if (_s[(_i : stdgo.GoInt)] == ((62 : stdgo.GoUInt8))) {
            return { _0 : ({ _state : stdgo._internal.html.template.Template__elementcontenttype._elementContentType[(_c._element : stdgo.GoInt)], _element : _c._element } : stdgo._internal.html.template.Template_t_context.T_context), _1 : (_i + (1 : stdgo.GoInt) : stdgo.GoInt) };
        };
        var __tmp__ = stdgo._internal.html.template.Template__eatattrname._eatAttrName(_s, _i), _j:stdgo.GoInt = __tmp__._0, _err:stdgo.Ref<stdgo._internal.html.template.Template_error.Error> = __tmp__._1;
        if ((_err != null && ((_err : Dynamic).__nil__ == null || !(_err : Dynamic).__nil__))) {
            return { _0 : ({ _state : (27 : stdgo._internal.html.template.Template_t_state.T_state), _err : _err } : stdgo._internal.html.template.Template_t_context.T_context), _1 : (_s.length) };
        };
        var __0 = (1 : stdgo._internal.html.template.Template_t_state.T_state), __1 = (0 : stdgo._internal.html.template.Template_t_attr.T_attr);
var _attr = __1, _state = __0;
        if (_i == (_j)) {
            return { _0 : ({ _state : (27 : stdgo._internal.html.template.Template_t_state.T_state), _err : stdgo._internal.html.template.Template__errorf._errorf((2 : stdgo._internal.html.template.Template_errorcode.ErrorCode), (null : stdgo._internal.text.template.parse.Parse_node.Node), (0 : stdgo.GoInt), ("expected space, attr name, or end of tag, but got %q" : stdgo.GoString), stdgo.Go.toInterface((_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>))) } : stdgo._internal.html.template.Template_t_context.T_context), _1 : (_s.length) };
        };
        var _attrName = (stdgo._internal.strings.Strings_tolower.toLower(((_s.__slice__(_i, _j) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
        if (((_c._element == (1 : stdgo._internal.html.template.Template_t_element.T_element)) && (_attrName == ("type" : stdgo.GoString)) : Bool)) {
            _attr = (2 : stdgo._internal.html.template.Template_t_attr.T_attr);
        } else {
            {
                final __value__ = stdgo._internal.html.template.Template__attrtype._attrType(_attrName?.__copy__());
                if (__value__ == ((6 : stdgo._internal.html.template.Template_t_contenttype.T_contentType))) {
                    _attr = (4 : stdgo._internal.html.template.Template_t_attr.T_attr);
                } else if (__value__ == ((1 : stdgo._internal.html.template.Template_t_contenttype.T_contentType))) {
                    _attr = (3 : stdgo._internal.html.template.Template_t_attr.T_attr);
                } else if (__value__ == ((4 : stdgo._internal.html.template.Template_t_contenttype.T_contentType))) {
                    _attr = (1 : stdgo._internal.html.template.Template_t_attr.T_attr);
                } else if (__value__ == ((7 : stdgo._internal.html.template.Template_t_contenttype.T_contentType))) {
                    _attr = (5 : stdgo._internal.html.template.Template_t_attr.T_attr);
                };
            };
        };
        if (_j == ((_s.length))) {
            _state = (2 : stdgo._internal.html.template.Template_t_state.T_state);
        } else {
            _state = (3 : stdgo._internal.html.template.Template_t_state.T_state);
        };
        return { _0 : ({ _state : _state, _element : _c._element, _attr : _attr } : stdgo._internal.html.template.Template_t_context.T_context), _1 : _j };
    }
