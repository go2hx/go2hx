package stdgo._internal.regexp.syntax;
function _dump(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):stdgo.GoString {
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        var _b__pointer__ = (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        var _b__pointer__ = (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        stdgo._internal.regexp.syntax.Syntax__dumpRegexp._dumpRegexp(_b__pointer__, _re);
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
