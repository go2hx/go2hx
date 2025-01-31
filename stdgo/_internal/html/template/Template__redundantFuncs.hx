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
var _redundantFuncs : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>> = ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.GoMap<stdgo.GoString, Bool>>();
        x.__defaultValue__ = () -> (null : stdgo.GoMap<stdgo.GoString, Bool>);
        x.set(("_html_template_commentescaper" : stdgo.GoString), ({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            x.set(("_html_template_attrescaper" : stdgo.GoString), true);
x.set(("_html_template_htmlescaper" : stdgo.GoString), true);
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>));
x.set(("_html_template_cssescaper" : stdgo.GoString), ({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            x.set(("_html_template_attrescaper" : stdgo.GoString), true);
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>));
x.set(("_html_template_jsregexpescaper" : stdgo.GoString), ({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            x.set(("_html_template_attrescaper" : stdgo.GoString), true);
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>));
x.set(("_html_template_jsstrescaper" : stdgo.GoString), ({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            x.set(("_html_template_attrescaper" : stdgo.GoString), true);
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>));
x.set(("_html_template_urlescaper" : stdgo.GoString), ({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            x.set(("_html_template_urlnormalizer" : stdgo.GoString), true);
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>));
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>>);
