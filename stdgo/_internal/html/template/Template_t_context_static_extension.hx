package stdgo._internal.html.template;
@:keep @:allow(stdgo._internal.html.template.Template.T_context_asInterface) class T_context_static_extension {
    @:keep
    @:tdfield
    static public function _mangle( _c:stdgo._internal.html.template.Template_t_context.T_context, _templateName:stdgo.GoString):stdgo.GoString {
        @:recv var _c:stdgo._internal.html.template.Template_t_context.T_context = _c?.__copy__();
        if (_c._state == ((0 : stdgo._internal.html.template.Template_t_state.T_state))) {
            return _templateName?.__copy__();
        };
        var _s = (((_templateName + ("$htmltemplate_" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_c._state.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (_c._delim != ((0 : stdgo._internal.html.template.Template_t_delim.T_delim))) {
            _s = (_s + ((("_" : stdgo.GoString) + (_c._delim.string() : stdgo.GoString)?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        if (_c._urlPart != ((0 : stdgo._internal.html.template.Template_t_urlpart.T_urlPart))) {
            _s = (_s + ((("_" : stdgo.GoString) + (_c._urlPart.string() : stdgo.GoString)?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        if (_c._jsCtx != ((0 : stdgo._internal.html.template.Template_t_jsctx.T_jsCtx))) {
            _s = (_s + ((("_" : stdgo.GoString) + (_c._jsCtx.string() : stdgo.GoString)?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        if (_c._attr != ((0 : stdgo._internal.html.template.Template_t_attr.T_attr))) {
            _s = (_s + ((("_" : stdgo.GoString) + (_c._attr.string() : stdgo.GoString)?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        if (_c._element != ((0 : stdgo._internal.html.template.Template_t_element.T_element))) {
            _s = (_s + ((("_" : stdgo.GoString) + (_c._element.string() : stdgo.GoString)?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        return _s?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _eq( _c:stdgo._internal.html.template.Template_t_context.T_context, _d:stdgo._internal.html.template.Template_t_context.T_context):Bool {
        @:recv var _c:stdgo._internal.html.template.Template_t_context.T_context = _c?.__copy__();
        return ((((((_c._state == (_d._state) && _c._delim == (_d._delim) : Bool) && _c._urlPart == (_d._urlPart) : Bool) && _c._jsCtx == (_d._jsCtx) : Bool) && _c._attr == (_d._attr) : Bool) && _c._element == (_d._element) : Bool) && (_c._err == _d._err) : Bool);
    }
    @:keep
    @:tdfield
    static public function string( _c:stdgo._internal.html.template.Template_t_context.T_context):stdgo.GoString {
        @:recv var _c:stdgo._internal.html.template.Template_t_context.T_context = _c?.__copy__();
        var _err:stdgo.Error = (null : stdgo.Error);
        if ((_c._err != null && ((_c._err : Dynamic).__nil__ == null || !(_c._err : Dynamic).__nil__))) {
            _err = stdgo.Go.asInterface(_c._err);
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("{%v %v %v %v %v %v %v}" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_c._state)), stdgo.Go.toInterface(stdgo.Go.asInterface(_c._delim)), stdgo.Go.toInterface(stdgo.Go.asInterface(_c._urlPart)), stdgo.Go.toInterface(stdgo.Go.asInterface(_c._jsCtx)), stdgo.Go.toInterface(stdgo.Go.asInterface(_c._attr)), stdgo.Go.toInterface(stdgo.Go.asInterface(_c._element)), stdgo.Go.toInterface(_err))?.__copy__();
    }
}
