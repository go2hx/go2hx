package _internal.regexp_test;
function exampleRegexp_ReplaceAllStringFunc():Void {
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("[^aeiou]" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.replaceAllStringFunc(("seafood fool" : stdgo.GoString), stdgo._internal.strings.Strings_toUpper.toUpper)));
    }
