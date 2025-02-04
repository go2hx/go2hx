package stdgo._internal.regexp;
function compilePOSIX(_expr:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>; var _1 : stdgo.Error; } {
        return stdgo._internal.regexp.Regexp__compile._compile(_expr?.__copy__(), (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags), true);
    }
