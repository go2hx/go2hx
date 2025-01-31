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
@:keep @:allow(stdgo._internal.html.template.Template.Error_asInterface) class Error_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.html.template.Template_Error.Error>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_Error.Error> = _e;
        if ((@:checkr _e ?? throw "null pointer dereference").node != null) {
            var __tmp__ = @:check2r (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>).errorContext((@:checkr _e ?? throw "null pointer dereference").node), _loc:stdgo.GoString = __tmp__._0, __6:stdgo.GoString = __tmp__._1;
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("html/template:%s: %s" : stdgo.GoString), stdgo.Go.toInterface(_loc), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").description))?.__copy__();
        } else if ((@:checkr _e ?? throw "null pointer dereference").line != ((0 : stdgo.GoInt))) {
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("html/template:%s:%d: %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").name), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").line), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").description))?.__copy__();
        } else if ((@:checkr _e ?? throw "null pointer dereference").name != (stdgo.Go.str())) {
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("html/template:%s: %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").name), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").description))?.__copy__();
        };
        return (("html/template: " : stdgo.GoString) + (@:checkr _e ?? throw "null pointer dereference").description?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
