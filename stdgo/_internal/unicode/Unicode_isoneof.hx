package stdgo._internal.unicode;
function isOneOf(_ranges:stdgo.Slice<stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>, _r:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/unicode/graphic.go#L60"
        for (__0 => _inside in _ranges) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/graphic.go#L61"
            if (stdgo._internal.unicode.Unicode_is_.is_(_inside, _r)) {
                //"file:///home/runner/.go/go1.21.3/src/unicode/graphic.go#L62"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/unicode/graphic.go#L65"
        return false;
    }
