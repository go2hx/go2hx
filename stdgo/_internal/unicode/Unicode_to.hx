package stdgo._internal.unicode;
function to(__case:stdgo.GoInt, _r:stdgo.GoInt32):stdgo.GoInt32 {
        {
            var __tmp__ = stdgo._internal.unicode.Unicode__to._to(__case, _r, stdgo._internal.unicode.Unicode_caseranges.caseRanges);
            _r = @:tmpset0 __tmp__._0;
        };
        //"file:///home/runner/.go/go1.21.3/src/unicode/letter.go#L250"
        return _r;
    }
