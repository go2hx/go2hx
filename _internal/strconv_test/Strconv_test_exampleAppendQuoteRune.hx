package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
function exampleAppendQuoteRune():Void {
        var _b = (("rune:" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        _b = stdgo._internal.strconv.Strconv_appendQuoteRune.appendQuoteRune(_b, (9786 : stdgo.GoInt32));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((_b : stdgo.GoString)));
    }
