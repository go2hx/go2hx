package stdgo._internal.regexp.syntax;
function _dump(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):stdgo.GoString {
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L292"
        stdgo._internal.regexp.syntax.Syntax__dumpregexp._dumpRegexp((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), _re);
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L293"
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
