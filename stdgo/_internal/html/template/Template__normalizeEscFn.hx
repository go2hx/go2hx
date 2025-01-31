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
function _normalizeEscFn(_e:stdgo.GoString):stdgo.GoString {
        {
            var _norm = ((stdgo._internal.html.template.Template__equivEscapers._equivEscapers[_e] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_norm != (stdgo.Go.str())) {
                return _norm?.__copy__();
            };
        };
        return _e?.__copy__();
    }
