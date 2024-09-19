package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testSpace(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _r = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            stdgo.Go.cfor((_r <= (1114111 : stdgo.GoInt32) : Bool), _r++, {
                if (stdgo._internal.bufio.Bufio_isSpace.isSpace(_r) != (stdgo._internal.unicode.Unicode_isSpace.isSpace(_r))) {
                    _t.fatalf(("white space property disagrees: %#U should be %t" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode_isSpace.isSpace(_r)));
                };
            });
        };
    }
