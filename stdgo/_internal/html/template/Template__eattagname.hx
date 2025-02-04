package stdgo._internal.html.template;
function _eatTagName(_s:stdgo.Slice<stdgo.GoUInt8>, _i:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.html.template.Template_t_element.T_element; } {
        if (((_i == (_s.length)) || !stdgo._internal.html.template.Template__asciialpha._asciiAlpha(_s[(_i : stdgo.GoInt)]) : Bool)) {
            return { _0 : _i, _1 : (0 : stdgo._internal.html.template.Template_t_element.T_element) };
        };
        var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
        while ((_j < (_s.length) : Bool)) {
            var _x = (_s[(_j : stdgo.GoInt)] : stdgo.GoUInt8);
            if (stdgo._internal.html.template.Template__asciialphanum._asciiAlphaNum(_x)) {
                _j++;
                continue;
            };
            if ((((((_x == (58 : stdgo.GoUInt8)) || (_x == (45 : stdgo.GoUInt8)) : Bool)) && ((_j + (1 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) : Bool) && stdgo._internal.html.template.Template__asciialphanum._asciiAlphaNum(_s[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                _j = (_j + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                continue;
            };
            break;
        };
        return { _0 : _j, _1 : (stdgo._internal.html.template.Template__elementnamemap._elementNameMap[stdgo._internal.strings.Strings_tolower.toLower(((_s.__slice__(_i, _j) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__())] ?? ((0 : stdgo.GoUInt8) : stdgo._internal.html.template.Template_t_element.T_element)) };
    }
