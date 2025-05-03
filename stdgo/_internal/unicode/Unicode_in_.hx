package stdgo._internal.unicode;
function in_(_r:stdgo.GoInt32, _ranges:haxe.Rest<stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>):Bool {
        var _ranges = new stdgo.Slice<stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>(_ranges.length, 0, ..._ranges);
        //"file:///home/runner/.go/go1.21.3/src/unicode/graphic.go#L70"
        for (__0 => _inside in _ranges) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/graphic.go#L71"
            if (stdgo._internal.unicode.Unicode_is_.is_(_inside, _r)) {
                //"file:///home/runner/.go/go1.21.3/src/unicode/graphic.go#L72"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/unicode/graphic.go#L75"
        return false;
    }
