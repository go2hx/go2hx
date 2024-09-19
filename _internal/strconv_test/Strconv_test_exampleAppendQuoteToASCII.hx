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
function exampleAppendQuoteToASCII():Void {
        var _b = (("quote (ascii):" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        _b = stdgo._internal.strconv.Strconv_appendQuoteToASCII.appendQuoteToASCII(_b, ("\"Fran & Freddie\'s Diner\"" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((_b : stdgo.GoString)));
    }
