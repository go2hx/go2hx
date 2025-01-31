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
function _isSafeURL(_s:stdgo.GoString):Bool {
        {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_s?.__copy__(), (":" : stdgo.GoString)), _protocol:stdgo.GoString = __tmp__._0, __6:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if ((_ok && !stdgo._internal.strings.Strings_contains.contains(_protocol?.__copy__(), ("/" : stdgo.GoString)) : Bool)) {
                if (((!stdgo._internal.strings.Strings_equalFold.equalFold(_protocol?.__copy__(), ("http" : stdgo.GoString)) && !stdgo._internal.strings.Strings_equalFold.equalFold(_protocol?.__copy__(), ("https" : stdgo.GoString)) : Bool) && !stdgo._internal.strings.Strings_equalFold.equalFold(_protocol?.__copy__(), ("mailto" : stdgo.GoString)) : Bool)) {
                    return false;
                };
            };
        };
        return true;
    }
