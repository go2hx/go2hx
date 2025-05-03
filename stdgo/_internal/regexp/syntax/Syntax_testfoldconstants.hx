package stdgo._internal.regexp.syntax;
function testFoldConstants(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _last = ((-1 : stdgo.GoInt32) : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L427"
        {
            var _i = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            while ((_i <= (1114111 : stdgo.GoInt32) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L428"
                if (stdgo._internal.unicode.Unicode_simplefold.simpleFold(_i) == (_i)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L429"
                    {
                        _i++;
                        continue;
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L431"
                if (((_last == (-1 : stdgo.GoInt32)) && ((65 : stdgo.GoInt32) != _i) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L432"
                    _t.errorf(("minFold=%#U should be %#U" : stdgo.GoString), stdgo.Go.toInterface((65 : stdgo.GoInt)), stdgo.Go.toInterface(_i));
                };
_last = _i;
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L436"
        if ((125251 : stdgo.GoInt32) != (_last)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L437"
            _t.errorf(("maxFold=%#U should be %#U" : stdgo.GoString), stdgo.Go.toInterface((125251 : stdgo.GoInt)), stdgo.Go.toInterface(_last));
        };
    }
