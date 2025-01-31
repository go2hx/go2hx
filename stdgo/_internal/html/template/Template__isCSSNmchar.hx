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
function _isCSSNmchar(_r:stdgo.GoInt32):Bool {
        return ((((((((((97 : stdgo.GoInt32) <= _r : Bool) && (_r <= (122 : stdgo.GoInt32) : Bool) : Bool) || (((65 : stdgo.GoInt32) <= _r : Bool) && (_r <= (90 : stdgo.GoInt32) : Bool) : Bool) : Bool) || (((48 : stdgo.GoInt32) <= _r : Bool) && (_r <= (57 : stdgo.GoInt32) : Bool) : Bool) : Bool) || _r == ((45 : stdgo.GoInt32)) : Bool) || _r == ((95 : stdgo.GoInt32)) : Bool) || (((128 : stdgo.GoInt32) <= _r : Bool) && (_r <= (55295 : stdgo.GoInt32) : Bool) : Bool) : Bool) || (((57344 : stdgo.GoInt32) <= _r : Bool) && (_r <= (65533 : stdgo.GoInt32) : Bool) : Bool) : Bool) || (((65536 : stdgo.GoInt32) <= _r : Bool) && (_r <= (1114111 : stdgo.GoInt32) : Bool) : Bool) : Bool);
    }
