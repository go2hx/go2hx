package stdgo._internal.html.template;
function _nextJSCtx(_s:stdgo.Slice<stdgo.GoUInt8>, _preceding:stdgo._internal.html.template.Template_t_jsctx.T_jsCtx):stdgo._internal.html.template.Template_t_jsctx.T_jsCtx {
        _s = stdgo._internal.bytes.Bytes_trimright.trimRight(_s, ("\x0C\n\r\t\x0B \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u2028\u2029\u202f\u205f\u3000\ufeff" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L36"
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L37"
            return _preceding;
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L41"
        {
            var __0 = (_s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8), __1 = (_s.length : stdgo.GoInt);
var _n = __1, _c = __0;
            {
                final __value__ = _c;
                if (__value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((45 : stdgo.GoUInt8))) {
                    var _start = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L47"
                    while (((_start > (0 : stdgo.GoInt) : Bool) && (_s[(_start - (1 : stdgo.GoInt) : stdgo.GoInt)] == _c) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L48"
                        _start--;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L50"
                    if ((((_n - _start : stdgo.GoInt)) & (1 : stdgo.GoInt) : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L53"
                        return (0 : stdgo._internal.html.template.Template_t_jsctx.T_jsCtx);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L55"
                    return (1 : stdgo._internal.html.template.Template_t_jsctx.T_jsCtx);
                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L58"
                    if (((_n != ((1 : stdgo.GoInt)) && ((48 : stdgo.GoUInt8) <= _s[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)] : Bool) : Bool) && (_s[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L59"
                        return (1 : stdgo._internal.html.template.Template_t_jsctx.T_jsCtx);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L61"
                    return (0 : stdgo._internal.html.template.Template_t_jsctx.T_jsCtx);
                } else if (__value__ == ((44 : stdgo.GoUInt8)) || __value__ == ((60 : stdgo.GoUInt8)) || __value__ == ((62 : stdgo.GoUInt8)) || __value__ == ((61 : stdgo.GoUInt8)) || __value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((37 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((94 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L65"
                    return (0 : stdgo._internal.html.template.Template_t_jsctx.T_jsCtx);
                } else if (__value__ == ((33 : stdgo.GoUInt8)) || __value__ == ((126 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L69"
                    return (0 : stdgo._internal.html.template.Template_t_jsctx.T_jsCtx);
                } else if (__value__ == ((40 : stdgo.GoUInt8)) || __value__ == ((91 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L73"
                    return (0 : stdgo._internal.html.template.Template_t_jsctx.T_jsCtx);
                } else if (__value__ == ((58 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L77"
                    return (0 : stdgo._internal.html.template.Template_t_jsctx.T_jsCtx);
                } else if (__value__ == ((125 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L90"
                    return (0 : stdgo._internal.html.template.Template_t_jsctx.T_jsCtx);
                } else {
                    var _j = (_n : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L95"
                    while (((_j > (0 : stdgo.GoInt) : Bool) && stdgo._internal.html.template.Template__isjsidentpart._isJSIdentPart((_s[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L96"
                        _j--;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L98"
                    if ((stdgo._internal.html.template.Template__regexpprecederkeywords._regexpPrecederKeywords[((_s.__slice__(_j) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)] ?? false)) {
                        //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L99"
                        return (0 : stdgo._internal.html.template.Template_t_jsctx.T_jsCtx);
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L105"
        return (1 : stdgo._internal.html.template.Template_t_jsctx.T_jsCtx);
    }
