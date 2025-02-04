package stdgo._internal.html.template;
function _tSpecialTagEnd(_c:stdgo._internal.html.template.Template_t_context.T_context, _s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.html.template.Template_t_context.T_context; var _1 : stdgo.GoInt; } {
        if (_c._element != ((0 : stdgo._internal.html.template.Template_t_element.T_element))) {
            if (((_c._element == (1 : stdgo._internal.html.template.Template_t_element.T_element)) && ((stdgo._internal.html.template.Template__isinscriptliteral._isInScriptLiteral(_c._state) || stdgo._internal.html.template.Template__iscomment._isComment(_c._state) : Bool)) : Bool)) {
                return { _0 : _c?.__copy__(), _1 : (_s.length) };
            };
            {
                var _i = (stdgo._internal.html.template.Template__indextagend._indexTagEnd(_s, stdgo._internal.html.template.Template__specialtagendmarkers._specialTagEndMarkers[(_c._element : stdgo.GoInt)]) : stdgo.GoInt);
                if (_i != ((-1 : stdgo.GoInt))) {
                    return { _0 : (new stdgo._internal.html.template.Template_t_context.T_context() : stdgo._internal.html.template.Template_t_context.T_context), _1 : _i };
                };
            };
        };
        return { _0 : _c?.__copy__(), _1 : (_s.length) };
    }
