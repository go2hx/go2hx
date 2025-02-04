package stdgo._internal.html.template;
@:structInit @:using(stdgo._internal.html.template.Template_t_context_static_extension.T_context_static_extension) class T_context {
    public var _state : stdgo._internal.html.template.Template_t_state.T_state = ((0 : stdgo.GoUInt8) : stdgo._internal.html.template.Template_t_state.T_state);
    public var _delim : stdgo._internal.html.template.Template_t_delim.T_delim = ((0 : stdgo.GoUInt8) : stdgo._internal.html.template.Template_t_delim.T_delim);
    public var _urlPart : stdgo._internal.html.template.Template_t_urlpart.T_urlPart = ((0 : stdgo.GoUInt8) : stdgo._internal.html.template.Template_t_urlpart.T_urlPart);
    public var _jsCtx : stdgo._internal.html.template.Template_t_jsctx.T_jsCtx = ((0 : stdgo.GoUInt8) : stdgo._internal.html.template.Template_t_jsctx.T_jsCtx);
    public var _attr : stdgo._internal.html.template.Template_t_attr.T_attr = ((0 : stdgo.GoUInt8) : stdgo._internal.html.template.Template_t_attr.T_attr);
    public var _element : stdgo._internal.html.template.Template_t_element.T_element = ((0 : stdgo.GoUInt8) : stdgo._internal.html.template.Template_t_element.T_element);
    public var _n : stdgo._internal.text.template.parse.Parse_node.Node = (null : stdgo._internal.text.template.parse.Parse_node.Node);
    public var _err : stdgo.Ref<stdgo._internal.html.template.Template_error.Error> = (null : stdgo.Ref<stdgo._internal.html.template.Template_error.Error>);
    public function new(?_state:stdgo._internal.html.template.Template_t_state.T_state, ?_delim:stdgo._internal.html.template.Template_t_delim.T_delim, ?_urlPart:stdgo._internal.html.template.Template_t_urlpart.T_urlPart, ?_jsCtx:stdgo._internal.html.template.Template_t_jsctx.T_jsCtx, ?_attr:stdgo._internal.html.template.Template_t_attr.T_attr, ?_element:stdgo._internal.html.template.Template_t_element.T_element, ?_n:stdgo._internal.text.template.parse.Parse_node.Node, ?_err:stdgo.Ref<stdgo._internal.html.template.Template_error.Error>) {
        if (_state != null) this._state = _state;
        if (_delim != null) this._delim = _delim;
        if (_urlPart != null) this._urlPart = _urlPart;
        if (_jsCtx != null) this._jsCtx = _jsCtx;
        if (_attr != null) this._attr = _attr;
        if (_element != null) this._element = _element;
        if (_n != null) this._n = _n;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_context(_state, _delim, _urlPart, _jsCtx, _attr, _element, _n, _err);
    }
}
