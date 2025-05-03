package stdgo._internal.html.template;
@:keep @:allow(stdgo._internal.html.template.Template.T_state_asInterface) class T_state_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.html.template.Template_t_state.T_state):stdgo.GoString {
        @:recv var _i:stdgo._internal.html.template.Template_t_state.T_state = _i;
        //"file:///home/runner/.go/go1.21.3/src/html/template/state_string.go#L47"
        if ((_i >= ((29 : stdgo.GoInt) : stdgo._internal.html.template.Template_t_state.T_state) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/state_string.go#L48"
            return ((("state(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/state_string.go#L50"
        return (("stateTextstateTagstateAttrNamestateAfterNamestateBeforeValuestateHTMLCmtstateRCDATAstateAttrstateURLstateSrcsetstateJSstateJSDqStrstateJSSqStrstateJSBqStrstateJSRegexpstateJSBlockCmtstateJSLineCmtstateJSHTMLOpenCmtstateJSHTMLCloseCmtstateCSSstateCSSDqStrstateCSSSqStrstateCSSDqURLstateCSSSqURLstateCSSURLstateCSSBlockCmtstateCSSLineCmtstateErrorstateDead" : stdgo.GoString).__slice__(stdgo._internal.html.template.Template___state_index.__state_index[(_i : stdgo.GoInt)], stdgo._internal.html.template.Template___state_index.__state_index[((_i + (1 : stdgo._internal.html.template.Template_t_state.T_state) : stdgo._internal.html.template.Template_t_state.T_state) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
}
