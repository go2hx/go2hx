package _internal.regexp_test;
function exampleRegexp_ReplaceAllString():Void {
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("a(x*)b" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.replaceAllString(("-ab-axxb-" : stdgo.GoString), ("T" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.replaceAllString(("-ab-axxb-" : stdgo.GoString), ("$1" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.replaceAllString(("-ab-axxb-" : stdgo.GoString), ("$1W" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.replaceAllString(("-ab-axxb-" : stdgo.GoString), ("${1}W" : stdgo.GoString))));
    }
