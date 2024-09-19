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
function testQuoteToASCII(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.strconv_test.Strconv_test__quotetests._quotetests) {
            {
                var _out = (stdgo._internal.strconv.Strconv_quoteToASCII.quoteToASCII(_tt._in?.__copy__())?.__copy__() : stdgo.GoString);
                if (_out != (_tt._ascii)) {
                    _t.errorf(("QuoteToASCII(%s) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._ascii));
                };
            };
            {
                var _out = stdgo._internal.strconv.Strconv_appendQuoteToASCII.appendQuoteToASCII((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _tt._in?.__copy__());
                if ((_out : stdgo.GoString) != ((("abc" : stdgo.GoString) + _tt._ascii?.__copy__() : stdgo.GoString))) {
                    _t.errorf(("AppendQuoteToASCII(%q, %s) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(("abc" : stdgo.GoString)), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface((("abc" : stdgo.GoString) + _tt._ascii?.__copy__() : stdgo.GoString)));
                };
            };
        };
    }
