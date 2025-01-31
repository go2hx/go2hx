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
function _skipCSSSpace(_c:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        if ((_c.length) == ((0 : stdgo.GoInt))) {
            return _c;
        };
        {
            final __value__ = _c[(0 : stdgo.GoInt)];
            if (__value__ == ((9 : stdgo.GoUInt8)) || __value__ == ((10 : stdgo.GoUInt8)) || __value__ == ((12 : stdgo.GoUInt8)) || __value__ == ((32 : stdgo.GoUInt8))) {
                return (_c.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            } else if (__value__ == ((13 : stdgo.GoUInt8))) {
                if ((((_c.length) >= (2 : stdgo.GoInt) : Bool) && (_c[(1 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                    return (_c.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                };
                return (_c.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        return _c;
    }
