package stdgo._internal.html.template;
@:keep @:allow(stdgo._internal.html.template.Template.T_jsCtx_asInterface) class T_jsCtx_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.html.template.Template_t_jsctx.T_jsCtx):stdgo.GoString {
        @:recv var _i:stdgo._internal.html.template.Template_t_jsctx.T_jsCtx = _i;
        //"file:///home/runner/.go/go1.21.3/src/html/template/jsctx_string.go#L21"
        if ((_i >= ((3 : stdgo.GoInt) : stdgo._internal.html.template.Template_t_jsctx.T_jsCtx) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/jsctx_string.go#L22"
            return ((("jsCtx(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/jsctx_string.go#L24"
        return (("jsCtxRegexpjsCtxDivOpjsCtxUnknown" : stdgo.GoString).__slice__(stdgo._internal.html.template.Template___jsctx_index.__jsCtx_index[(_i : stdgo.GoInt)], stdgo._internal.html.template.Template___jsctx_index.__jsCtx_index[((_i + (1 : stdgo._internal.html.template.Template_t_jsctx.T_jsCtx) : stdgo._internal.html.template.Template_t_jsctx.T_jsCtx) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
}
