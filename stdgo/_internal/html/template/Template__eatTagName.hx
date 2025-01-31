package stdgo._internal.html.template;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.text.template.parse.Parse;
import stdgo._internal.html.Html;
import stdgo._internal.text.template.Template;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
function _eatTagName(_s:stdgo.Slice<stdgo.GoUInt8>, _i:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.html.template.Template_T_element.T_element; } {
        if (((_i == (_s.length)) || !stdgo._internal.html.template.Template__asciiAlpha._asciiAlpha(_s[(_i : stdgo.GoInt)]) : Bool)) {
            return { _0 : _i, _1 : (0 : stdgo._internal.html.template.Template_T_element.T_element) };
        };
        var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
        while ((_j < (_s.length) : Bool)) {
            var _x = (_s[(_j : stdgo.GoInt)] : stdgo.GoUInt8);
            if (stdgo._internal.html.template.Template__asciiAlphaNum._asciiAlphaNum(_x)) {
                _j++;
                continue;
            };
            if ((((((_x == (58 : stdgo.GoUInt8)) || (_x == (45 : stdgo.GoUInt8)) : Bool)) && ((_j + (1 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) : Bool) && stdgo._internal.html.template.Template__asciiAlphaNum._asciiAlphaNum(_s[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                _j = (_j + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                continue;
            };
            break;
        };
        return { _0 : _j, _1 : (stdgo._internal.html.template.Template__elementNameMap._elementNameMap[stdgo._internal.strings.Strings_toLower.toLower(((_s.__slice__(_i, _j) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__())] ?? ((0 : stdgo.GoUInt8) : stdgo._internal.html.template.Template_T_element.T_element)) };
    }
