package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
function _dump(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):stdgo.GoString {
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        stdgo._internal.regexp.syntax.Syntax__dumpRegexp._dumpRegexp((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>), _re);
        return (@:check2 _b.string() : stdgo.GoString)?.__copy__();
    }
