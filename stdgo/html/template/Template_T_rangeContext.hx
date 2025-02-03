package stdgo.html.template;
@:structInit @:using(stdgo.html.template.Template.T_rangeContext_static_extension) abstract T_rangeContext(stdgo._internal.html.template.Template_T_rangeContext.T_rangeContext) from stdgo._internal.html.template.Template_T_rangeContext.T_rangeContext to stdgo._internal.html.template.Template_T_rangeContext.T_rangeContext {
    public var _outer(get, set) : T_rangeContext;
    function get__outer():T_rangeContext return this._outer;
    function set__outer(v:T_rangeContext):T_rangeContext {
        this._outer = (v : stdgo.Ref<stdgo._internal.html.template.Template_T_rangeContext.T_rangeContext>);
        return v;
    }
    public var _breaks(get, set) : Array<T_context>;
    function get__breaks():Array<T_context> return [for (i in this._breaks) i];
    function set__breaks(v:Array<T_context>):Array<T_context> {
        this._breaks = ([for (i in v) i] : stdgo.Slice<stdgo._internal.html.template.Template_T_context.T_context>);
        return v;
    }
    public var _continues(get, set) : Array<T_context>;
    function get__continues():Array<T_context> return [for (i in this._continues) i];
    function set__continues(v:Array<T_context>):Array<T_context> {
        this._continues = ([for (i in v) i] : stdgo.Slice<stdgo._internal.html.template.Template_T_context.T_context>);
        return v;
    }
    public function new(?_outer:T_rangeContext, ?_breaks:Array<T_context>, ?_continues:Array<T_context>) this = new stdgo._internal.html.template.Template_T_rangeContext.T_rangeContext((_outer : stdgo.Ref<stdgo._internal.html.template.Template_T_rangeContext.T_rangeContext>), ([for (i in _breaks) i] : stdgo.Slice<stdgo._internal.html.template.Template_T_context.T_context>), ([for (i in _continues) i] : stdgo.Slice<stdgo._internal.html.template.Template_T_context.T_context>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
