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
function exampleQuoteToGraphic():Void {
        var _s = (stdgo._internal.strconv.Strconv_quoteToGraphic.quoteToGraphic(("☺" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_s));
        _s = stdgo._internal.strconv.Strconv_quoteToGraphic.quoteToGraphic(("This is a ☺\t\n" : stdgo.GoString))?.__copy__();
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_s));
        _s = stdgo._internal.strconv.Strconv_quoteToGraphic.quoteToGraphic(("\" This is a ☺ \\n \"" : stdgo.GoString))?.__copy__();
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_s));
    }
