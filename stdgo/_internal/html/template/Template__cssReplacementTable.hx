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
var _cssReplacementTable : stdgo.Slice<stdgo.GoString> = {
        var s = new stdgo.Slice<stdgo.GoString>(126, 0).__setString__();
        s[0] = ("\\0" : stdgo.GoString);
        s[9] = ("\\9" : stdgo.GoString);
        s[10] = ("\\a" : stdgo.GoString);
        s[12] = ("\\c" : stdgo.GoString);
        s[13] = ("\\d" : stdgo.GoString);
        s[34] = ("\\22" : stdgo.GoString);
        s[38] = ("\\26" : stdgo.GoString);
        s[39] = ("\\27" : stdgo.GoString);
        s[40] = ("\\28" : stdgo.GoString);
        s[41] = ("\\29" : stdgo.GoString);
        s[43] = ("\\2b" : stdgo.GoString);
        s[47] = ("\\2f" : stdgo.GoString);
        s[58] = ("\\3a" : stdgo.GoString);
        s[59] = ("\\3b" : stdgo.GoString);
        s[60] = ("\\3c" : stdgo.GoString);
        s[62] = ("\\3e" : stdgo.GoString);
        s[92] = ("\\\\" : stdgo.GoString);
        s[123] = ("\\7b" : stdgo.GoString);
        s[125] = ("\\7d" : stdgo.GoString);
        s;
    };
