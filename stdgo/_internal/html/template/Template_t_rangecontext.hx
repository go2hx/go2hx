package stdgo._internal.html.template;
@:structInit @:using(stdgo._internal.html.template.Template_t_rangecontext_static_extension.T_rangeContext_static_extension) class T_rangeContext {
    public var _outer : stdgo.Ref<stdgo._internal.html.template.Template_t_rangecontext.T_rangeContext> = (null : stdgo.Ref<stdgo._internal.html.template.Template_t_rangecontext.T_rangeContext>);
    public var _breaks : stdgo.Slice<stdgo._internal.html.template.Template_t_context.T_context> = (null : stdgo.Slice<stdgo._internal.html.template.Template_t_context.T_context>);
    public var _continues : stdgo.Slice<stdgo._internal.html.template.Template_t_context.T_context> = (null : stdgo.Slice<stdgo._internal.html.template.Template_t_context.T_context>);
    public function new(?_outer:stdgo.Ref<stdgo._internal.html.template.Template_t_rangecontext.T_rangeContext>, ?_breaks:stdgo.Slice<stdgo._internal.html.template.Template_t_context.T_context>, ?_continues:stdgo.Slice<stdgo._internal.html.template.Template_t_context.T_context>) {
        if (_outer != null) this._outer = _outer;
        if (_breaks != null) this._breaks = _breaks;
        if (_continues != null) this._continues = _continues;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_rangeContext(_outer, _breaks, _continues);
    }
}
