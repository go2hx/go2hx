package stdgo._internal.html.template;
function _nudge(_c:stdgo._internal.html.template.Template_T_context.T_context):stdgo._internal.html.template.Template_T_context.T_context {
        {
            final __value__ = _c._state;
            if (__value__ == ((1 : stdgo._internal.html.template.Template_T_state.T_state))) {
                _c._state = (2 : stdgo._internal.html.template.Template_T_state.T_state);
            } else if (__value__ == ((4 : stdgo._internal.html.template.Template_T_state.T_state))) {
                {
                    final __tmp__0 = stdgo._internal.html.template.Template__attrStartStates._attrStartStates[(_c._attr : stdgo.GoInt)];
                    final __tmp__1 = (3 : stdgo._internal.html.template.Template_T_delim.T_delim);
                    final __tmp__2 = (0 : stdgo._internal.html.template.Template_T_attr.T_attr);
                    _c._state = __tmp__0;
                    _c._delim = __tmp__1;
                    _c._attr = __tmp__2;
                };
            } else if (__value__ == ((3 : stdgo._internal.html.template.Template_T_state.T_state))) {
                {
                    final __tmp__0 = (2 : stdgo._internal.html.template.Template_T_state.T_state);
                    final __tmp__1 = (0 : stdgo._internal.html.template.Template_T_attr.T_attr);
                    _c._state = __tmp__0;
                    _c._attr = __tmp__1;
                };
            };
        };
        return _c?.__copy__();
    }
