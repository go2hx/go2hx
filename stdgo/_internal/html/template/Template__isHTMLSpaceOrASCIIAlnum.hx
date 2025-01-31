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
function _isHTMLSpaceOrASCIIAlnum(_c:stdgo.GoUInt8):Bool {
        return (((_c < (128 : stdgo.GoUInt8) : Bool)) && ((0 : stdgo.GoUInt8) != ((stdgo.Go.str(0,
"6",
0,
0,
1,
0,
255,
3,
254,
255,
255,
"\x07",
254,
255,
255,
"\x07")[((_c >> (3i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)] & (((1 : stdgo.GoUInt8) << ((_c & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt) : stdgo.GoUInt8)) : stdgo.GoUInt8))) : Bool);
    }
