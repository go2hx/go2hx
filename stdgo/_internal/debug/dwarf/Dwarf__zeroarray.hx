package stdgo._internal.debug.dwarf;
function _zeroArray(_t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_type_.Type_>):Void {
        var _at = (stdgo.Go.typeAssert((stdgo.Go.toInterface(((_t : stdgo._internal.debug.dwarf.Dwarf_type_.Type_))) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType>)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType>);
        if ((@:checkr _at ?? throw "null pointer dereference").type.size() == ((0i64 : stdgo.GoInt64))) {
            return;
        };
        var _tt = ((_at : stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType);
        _tt.count = (0i64 : stdgo.GoInt64);
        {
            var __tmp__ = stdgo.Go.asInterface((stdgo.Go.setRef(_tt) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType>));
            var x = (_t : stdgo._internal.debug.dwarf.Dwarf_type_.Type_);
            x.common = __tmp__.common;
            x.size = __tmp__.size;
            x.string = __tmp__.string;
        };
    }
