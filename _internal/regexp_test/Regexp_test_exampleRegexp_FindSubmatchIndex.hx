package _internal.regexp_test;
function exampleRegexp_FindSubmatchIndex():Void {
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("a(x*)b" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.findSubmatchIndex((("-ab-" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.findSubmatchIndex((("-axxb-" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.findSubmatchIndex((("-ab-axb-" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.findSubmatchIndex((("-axxb-ab-" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.findSubmatchIndex((("-foo-" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))));
    }
