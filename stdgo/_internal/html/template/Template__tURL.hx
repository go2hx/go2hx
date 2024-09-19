package stdgo._internal.html.template;
function _tURL(_c:stdgo._internal.html.template.Template_T_context.T_context, _s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.html.template.Template_T_context.T_context; var _1 : stdgo.GoInt; } {
        if (stdgo._internal.bytes.Bytes_containsAny.containsAny(_s, ("#?" : stdgo.GoString))) {
            _c._urlPart = (2 : stdgo._internal.html.template.Template_T_urlPart.T_urlPart);
        } else if (((_s.length != stdgo._internal.html.template.Template__eatWhiteSpace._eatWhiteSpace(_s, (0 : stdgo.GoInt))) && (_c._urlPart == (0 : stdgo._internal.html.template.Template_T_urlPart.T_urlPart)) : Bool)) {
            _c._urlPart = (1 : stdgo._internal.html.template.Template_T_urlPart.T_urlPart);
        };
        return { _0 : _c?.__copy__(), _1 : (_s.length) };
    }
