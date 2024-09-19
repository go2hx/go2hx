package _internal.unicode_test;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
function testLatinOffset(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _maps:stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>>> = (new stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>>>(5, 5, ...[stdgo._internal.unicode.Unicode_categories.categories, stdgo._internal.unicode.Unicode_foldCategory.foldCategory, stdgo._internal.unicode.Unicode_foldScript.foldScript, stdgo._internal.unicode.Unicode_properties.properties, stdgo._internal.unicode.Unicode_scripts.scripts]) : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>>>);
        for (__0 => _m in _maps) {
            for (_name => _tab in _m) {
                var _i = (0 : stdgo.GoInt);
                while (((_i < (_tab.r16.length) : Bool) && (_tab.r16[(_i : stdgo.GoInt)].hi <= (255 : stdgo.GoUInt16) : Bool) : Bool)) {
                    _i++;
                };
                if (_tab.latinOffset != (_i)) {
                    _t.errorf(("%s: LatinOffset=%d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_tab.latinOffset), stdgo.Go.toInterface(_i));
                };
            };
        };
    }
