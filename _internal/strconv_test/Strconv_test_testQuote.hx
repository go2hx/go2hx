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
function testQuote(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.strconv_test.Strconv_test__quotetests._quotetests) {
            {
                var _out = (stdgo._internal.strconv.Strconv_quote.quote(_tt._in?.__copy__())?.__copy__() : stdgo.GoString);
                if (_out != (_tt._out)) {
                    _t.errorf(("Quote(%s) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
                };
            };
            {
                var _out = stdgo._internal.strconv.Strconv_appendQuote.appendQuote((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _tt._in?.__copy__());
                if ((_out : stdgo.GoString) != ((("abc" : stdgo.GoString) + _tt._out?.__copy__() : stdgo.GoString))) {
                    _t.errorf(("AppendQuote(%q, %s) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(("abc" : stdgo.GoString)), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface((("abc" : stdgo.GoString) + _tt._out?.__copy__() : stdgo.GoString)));
                };
            };
        };
    }
