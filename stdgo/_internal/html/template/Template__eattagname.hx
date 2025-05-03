package stdgo._internal.html.template;
function _eatTagName(_s:stdgo.Slice<stdgo.GoUInt8>, _i:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.html.template.Template_t_element.T_element; } {
        //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L603"
        if (((_i == (_s.length)) || !stdgo._internal.html.template.Template__asciialpha._asciiAlpha(_s[(_i : stdgo.GoInt)]) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L604"
            return { _0 : _i, _1 : (0 : stdgo._internal.html.template.Template_t_element.T_element) };
        };
        var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L607"
        while ((_j < (_s.length) : Bool)) {
            var _x = (_s[(_j : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L609"
            if (stdgo._internal.html.template.Template__asciialphanum._asciiAlphaNum(_x)) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L610"
                _j++;
                //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L611"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L614"
            if ((((((_x == (58 : stdgo.GoUInt8)) || (_x == (45 : stdgo.GoUInt8)) : Bool)) && ((_j + (1 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) : Bool) && stdgo._internal.html.template.Template__asciialphanum._asciiAlphaNum(_s[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                _j = (_j + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L616"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L618"
            break;
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L620"
        return { _0 : _j, _1 : (stdgo._internal.html.template.Template__elementnamemap._elementNameMap[stdgo._internal.strings.Strings_tolower.toLower(((_s.__slice__(_i, _j) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__())] ?? ((0 : stdgo.GoUInt8) : stdgo._internal.html.template.Template_t_element.T_element)) };
    }
