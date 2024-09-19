package stdgo._internal.html.template;
function _contextAfterText(_c:stdgo._internal.html.template.Template_T_context.T_context, _s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.html.template.Template_T_context.T_context; var _1 : stdgo.GoInt; } {
        if (_c._delim == ((0 : stdgo._internal.html.template.Template_T_delim.T_delim))) {
            var __tmp__ = stdgo._internal.html.template.Template__tSpecialTagEnd._tSpecialTagEnd(_c?.__copy__(), _s), _c1:stdgo._internal.html.template.Template_T_context.T_context = __tmp__._0, _i:stdgo.GoInt = __tmp__._1;
            if (_i == ((0 : stdgo.GoInt))) {
                return { _0 : _c1?.__copy__(), _1 : (0 : stdgo.GoInt) };
            };
            return stdgo._internal.html.template.Template__transitionFunc._transitionFunc[(_c._state : stdgo.GoInt)](_c?.__copy__(), (_s.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>));
        };
        var _i = (stdgo._internal.bytes.Bytes_indexAny.indexAny(_s, stdgo._internal.html.template.Template__delimEnds._delimEnds[(_c._delim : stdgo.GoInt)]?.__copy__()) : stdgo.GoInt);
        if (_i == ((-1 : stdgo.GoInt))) {
            _i = (_s.length);
        };
        if (_c._delim == ((3 : stdgo._internal.html.template.Template_T_delim.T_delim))) {
            {
                var _j = (stdgo._internal.bytes.Bytes_indexAny.indexAny((_s.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>), ("\"\'<=`" : stdgo.GoString)) : stdgo.GoInt);
                if ((_j >= (0 : stdgo.GoInt) : Bool)) {
                    return { _0 : ({ _state : (27 : stdgo._internal.html.template.Template_T_state.T_state), _err : stdgo._internal.html.template.Template__errorf._errorf((2 : stdgo._internal.html.template.Template_ErrorCode.ErrorCode), (null : stdgo._internal.text.template.parse.Parse_Node.Node), (0 : stdgo.GoInt), ("%q in unquoted attr: %q" : stdgo.GoString), stdgo.Go.toInterface((_s.__slice__(_j, (_j + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface((_s.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>))) } : stdgo._internal.html.template.Template_T_context.T_context), _1 : (_s.length) };
                };
            };
        };
        if (_i == ((_s.length))) {
            {
                var _u = (stdgo._internal.html.Html_unescapeString.unescapeString((_s : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoUInt8>);
                while ((_u.length) != ((0 : stdgo.GoInt))) {
                    var __tmp__ = stdgo._internal.html.template.Template__transitionFunc._transitionFunc[(_c._state : stdgo.GoInt)](_c?.__copy__(), _u), _c1:stdgo._internal.html.template.Template_T_context.T_context = __tmp__._0, _i1:stdgo.GoInt = __tmp__._1;
                    {
                        final __tmp__0 = _c1?.__copy__();
                        final __tmp__1 = (_u.__slice__(_i1) : stdgo.Slice<stdgo.GoUInt8>);
                        _c = __tmp__0;
                        _u = __tmp__1;
                    };
                };
            };
            return { _0 : _c?.__copy__(), _1 : (_s.length) };
        };
        var _element = (_c._element : stdgo._internal.html.template.Template_T_element.T_element);
        if ((((_c._state == ((7 : stdgo._internal.html.template.Template_T_state.T_state)) && _c._element == ((1 : stdgo._internal.html.template.Template_T_element.T_element)) : Bool) && _c._attr == ((2 : stdgo._internal.html.template.Template_T_attr.T_attr)) : Bool) && !stdgo._internal.html.template.Template__isJSType._isJSType(((_s.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__()) : Bool)) {
            _element = (0 : stdgo._internal.html.template.Template_T_element.T_element);
        };
        if (_c._delim != ((3 : stdgo._internal.html.template.Template_T_delim.T_delim))) {
            _i++;
        };
        return { _0 : ({ _state : (1 : stdgo._internal.html.template.Template_T_state.T_state), _element : _element } : stdgo._internal.html.template.Template_T_context.T_context), _1 : _i };
    }
