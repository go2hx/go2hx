package stdgo._internal.unicode;
function isOneOf(_ranges:stdgo.Slice<stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>, _r:stdgo.GoInt32):Bool {
        for (__0 => _inside in _ranges) {
            if (stdgo._internal.unicode.Unicode_is_.is_(_inside, _r)) {
                return true;
            };
        };
        return false;
    }
