package stdgo._internal.unicode;
function in_(_r:stdgo.GoInt32, _ranges:haxe.Rest<stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>):Bool {
        var _ranges = new stdgo.Slice<stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>(_ranges.length, 0, ..._ranges);
        for (__0 => _inside in _ranges) {
            if (stdgo._internal.unicode.Unicode_is_.is_(_inside, _r)) {
                return true;
            };
        };
        return false;
    }
