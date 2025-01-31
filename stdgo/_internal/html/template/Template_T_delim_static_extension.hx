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
@:keep @:allow(stdgo._internal.html.template.Template.T_delim_asInterface) class T_delim_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.html.template.Template_T_delim.T_delim):stdgo.GoString {
        @:recv var _i:stdgo._internal.html.template.Template_T_delim.T_delim = _i;
        if ((_i >= ((4 : stdgo.GoInt) : stdgo._internal.html.template.Template_T_delim.T_delim) : Bool)) {
            return ((("delim(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatInt.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return (("delimNonedelimDoubleQuotedelimSingleQuotedelimSpaceOrTagEnd" : stdgo.GoString).__slice__(stdgo._internal.html.template.Template___delim_index.__delim_index[(_i : stdgo.GoInt)], stdgo._internal.html.template.Template___delim_index.__delim_index[((_i + (1 : stdgo._internal.html.template.Template_T_delim.T_delim) : stdgo._internal.html.template.Template_T_delim.T_delim) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
}
