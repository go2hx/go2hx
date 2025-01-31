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
function _endsWithCSSKeyword(_b:stdgo.Slice<stdgo.GoUInt8>, _kw:stdgo.GoString):Bool {
        var _i = ((_b.length) - (_kw.length) : stdgo.GoInt);
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            return false;
        };
        if (_i != ((0 : stdgo.GoInt))) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeLastRune.decodeLastRune((_b.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>)), _r:stdgo.GoInt32 = __tmp__._0, __6:stdgo.GoInt = __tmp__._1;
            if (stdgo._internal.html.template.Template__isCSSNmchar._isCSSNmchar(_r)) {
                return false;
            };
        };
        return (stdgo._internal.bytes.Bytes_toLower.toLower((_b.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoString) == (_kw);
    }
