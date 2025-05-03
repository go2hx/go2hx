package stdgo._internal.html.template;
function _tHTMLCmt(_c:stdgo._internal.html.template.Template_t_context.T_context, _s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.html.template.Template_t_context.T_context; var _1 : stdgo.GoInt; } {
        //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L193"
        {
            var _i = (stdgo._internal.bytes.Bytes_index.index(_s, stdgo._internal.html.template.Template__commentend._commentEnd) : stdgo.GoInt);
            if (_i != ((-1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L194"
                return { _0 : (new stdgo._internal.html.template.Template_t_context.T_context() : stdgo._internal.html.template.Template_t_context.T_context), _1 : (_i + (3 : stdgo.GoInt) : stdgo.GoInt) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L196"
        return { _0 : _c?.__copy__(), _1 : (_s.length) };
    }
