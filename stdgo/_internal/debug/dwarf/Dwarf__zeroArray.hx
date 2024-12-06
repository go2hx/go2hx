package stdgo._internal.debug.dwarf;
function _zeroArray(_t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>):Void {
        var _at = (stdgo.Go.typeAssert((stdgo.Go.toInterface(((_t : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_))) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType>)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType>);
        if (_at.type.size() == ((0i64 : stdgo.GoInt64))) {
            return;
        };
        var _tt = ((_at : stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType);
        var _tt__pointer__ = (stdgo.Go.setRef(_tt) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType>);
        _tt.count = (0i64 : stdgo.GoInt64);
        {
            var __tmp__ = stdgo.Go.asInterface(_tt__pointer__);
            (_t : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_).common = __tmp__.common;
            (_t : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_).size = __tmp__.size;
            (_t : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_).string = __tmp__.string;
        };
    }
