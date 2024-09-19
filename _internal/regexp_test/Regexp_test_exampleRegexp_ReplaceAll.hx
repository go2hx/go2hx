package _internal.regexp_test;
function exampleRegexp_ReplaceAll():Void {
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("a(x*)b" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_re.replaceAll((("-ab-axxb-" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (("T" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))));
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_re.replaceAll((("-ab-axxb-" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (("$1" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))));
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_re.replaceAll((("-ab-axxb-" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (("$1W" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))));
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_re.replaceAll((("-ab-axxb-" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (("${1}W" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))));
    }
