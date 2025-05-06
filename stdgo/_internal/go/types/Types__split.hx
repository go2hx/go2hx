package stdgo._internal.go.types;
function _split(_s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        var _r = stdgo._internal.strings.Strings_split.split(_s?.__copy__(), (" " : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm_test.go#L39"
        if ((_r.length) != (_n)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm_test.go#L40"
            throw stdgo.Go.toInterface((("invalid test case: " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm_test.go#L42"
        return _r;
    }
