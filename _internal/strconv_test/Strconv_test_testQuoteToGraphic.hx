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
function testQuoteToGraphic(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.strconv_test.Strconv_test__quotetests._quotetests) {
            {
                var _out = (stdgo._internal.strconv.Strconv_quoteToGraphic.quoteToGraphic(_tt._in?.__copy__())?.__copy__() : stdgo.GoString);
                if (_out != (_tt._graphic)) {
                    _t.errorf(("QuoteToGraphic(%s) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._graphic));
                };
            };
            {
                var _out = stdgo._internal.strconv.Strconv_appendQuoteToGraphic.appendQuoteToGraphic((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _tt._in?.__copy__());
                if ((_out : stdgo.GoString) != ((("abc" : stdgo.GoString) + _tt._graphic?.__copy__() : stdgo.GoString))) {
                    _t.errorf(("AppendQuoteToGraphic(%q, %s) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(("abc" : stdgo.GoString)), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface((("abc" : stdgo.GoString) + _tt._graphic?.__copy__() : stdgo.GoString)));
                };
            };
        };
    }
