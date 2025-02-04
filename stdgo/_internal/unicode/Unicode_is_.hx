package stdgo._internal.unicode;
function is_(_rangeTab:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>, _r:stdgo.GoInt32):Bool {
        var _r16 = (@:checkr _rangeTab ?? throw "null pointer dereference").r16;
        if ((((_r16.length) > (0 : stdgo.GoInt) : Bool) && ((_r : stdgo.GoUInt32) <= (_r16[((_r16.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].hi : stdgo.GoUInt32) : Bool) : Bool)) {
            return stdgo._internal.unicode.Unicode__is16._is16(_r16, (_r : stdgo.GoUInt16));
        };
        var _r32 = (@:checkr _rangeTab ?? throw "null pointer dereference").r32;
        if ((((_r32.length) > (0 : stdgo.GoInt) : Bool) && (_r >= (_r32[(0 : stdgo.GoInt)].lo : stdgo.GoInt32) : Bool) : Bool)) {
            return stdgo._internal.unicode.Unicode__is32._is32(_r32, (_r : stdgo.GoUInt32));
        };
        return false;
    }
