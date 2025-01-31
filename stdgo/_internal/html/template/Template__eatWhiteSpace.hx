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
function _eatWhiteSpace(_s:stdgo.Slice<stdgo.GoUInt8>, _i:stdgo.GoInt):stdgo.GoInt {
        {
            var _j = (_i : stdgo.GoInt);
            while ((_j < (_s.length) : Bool)) {
                {
                    final __value__ = _s[(_j : stdgo.GoInt)];
                    if (__value__ == ((32 : stdgo.GoUInt8)) || __value__ == ((9 : stdgo.GoUInt8)) || __value__ == ((10 : stdgo.GoUInt8)) || __value__ == ((12 : stdgo.GoUInt8)) || __value__ == ((13 : stdgo.GoUInt8))) {} else {
                        return _j;
                    };
                };
                _j++;
            };
        };
        return (_s.length);
    }
