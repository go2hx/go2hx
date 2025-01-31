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
function _indirect(_a:stdgo.AnyInterface):stdgo.AnyInterface {
        if (_a == null) {
            return (null : stdgo.AnyInterface);
        };
        {
            var _t = (stdgo._internal.reflect.Reflect_typeOf.typeOf(_a) : stdgo._internal.reflect.Reflect_Type_.Type_);
            if (_t.kind() != ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return _a;
            };
        };
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_a)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        while (((_v.kind() == (22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && !_v.isNil() : Bool)) {
            _v = _v.elem()?.__copy__();
        };
        return _v.interface_();
    }
