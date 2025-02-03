package stdgo.html.template;
@:structInit @:using(stdgo.html.template.Template.T_context_static_extension) abstract T_context(stdgo._internal.html.template.Template_T_context.T_context) from stdgo._internal.html.template.Template_T_context.T_context to stdgo._internal.html.template.Template_T_context.T_context {
    public var _state(get, set) : T_state;
    function get__state():T_state return this._state;
    function set__state(v:T_state):T_state {
        this._state = v;
        return v;
    }
    public var _delim(get, set) : T_delim;
    function get__delim():T_delim return this._delim;
    function set__delim(v:T_delim):T_delim {
        this._delim = v;
        return v;
    }
    public var _urlPart(get, set) : T_urlPart;
    function get__urlPart():T_urlPart return this._urlPart;
    function set__urlPart(v:T_urlPart):T_urlPart {
        this._urlPart = v;
        return v;
    }
    public var _jsCtx(get, set) : T_jsCtx;
    function get__jsCtx():T_jsCtx return this._jsCtx;
    function set__jsCtx(v:T_jsCtx):T_jsCtx {
        this._jsCtx = v;
        return v;
    }
    public var _attr(get, set) : T_attr;
    function get__attr():T_attr return this._attr;
    function set__attr(v:T_attr):T_attr {
        this._attr = v;
        return v;
    }
    public var _element(get, set) : T_element;
    function get__element():T_element return this._element;
    function set__element(v:T_element):T_element {
        this._element = v;
        return v;
    }
    public var _n(get, set) : stdgo._internal.text.template.parse.Parse_Node.Node;
    function get__n():stdgo._internal.text.template.parse.Parse_Node.Node return this._n;
    function set__n(v:stdgo._internal.text.template.parse.Parse_Node.Node):stdgo._internal.text.template.parse.Parse_Node.Node {
        this._n = v;
        return v;
    }
    public var _err(get, set) : Error;
    function get__err():Error return this._err;
    function set__err(v:Error):Error {
        this._err = (v : stdgo.Ref<stdgo._internal.html.template.Template_Error.Error>);
        return v;
    }
    public function new(?_state:T_state, ?_delim:T_delim, ?_urlPart:T_urlPart, ?_jsCtx:T_jsCtx, ?_attr:T_attr, ?_element:T_element, ?_n:stdgo._internal.text.template.parse.Parse_Node.Node, ?_err:Error) this = new stdgo._internal.html.template.Template_T_context.T_context(_state, _delim, _urlPart, _jsCtx, _attr, _element, _n, (_err : stdgo.Ref<stdgo._internal.html.template.Template_Error.Error>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
