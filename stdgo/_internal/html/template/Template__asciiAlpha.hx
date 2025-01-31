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
function _asciiAlpha(_c:stdgo.GoUInt8):Bool {
        return ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool) || (((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool) : Bool);
    }
