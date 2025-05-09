package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.T_typeFixer_asInterface) class T_typeFixer_static_extension {
    @:keep
    @:tdfield
    static public function _apply( _tf:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typefixer.T_typeFixer>):Void {
        @:recv var _tf:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typefixer.T_typeFixer> = _tf;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L395"
        for (__3 => _t in (@:checkr _tf ?? throw "null pointer dereference")._typedefs) {
            _t.common().byteSize = (@:checkr _t ?? throw "null pointer dereference").type.size();
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L398"
        for (__4 => _t in (@:checkr _tf ?? throw "null pointer dereference")._arraytypes) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L399"
            stdgo._internal.debug.dwarf.Dwarf__zeroarray._zeroArray(_t);
        };
    }
    @:keep
    @:tdfield
    static public function _recordArrayType( _tf:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typefixer.T_typeFixer>, _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_type_.Type_>):Void {
        @:recv var _tf:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typefixer.T_typeFixer> = _tf;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L385"
        if (({
            final value = _t;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L386"
            return;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(((_t : stdgo._internal.debug.dwarf.Dwarf_type_.Type_))) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType>)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType>), _1 : false };
        }, __3 = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L389"
        if (_ok) {
            (@:checkr _tf ?? throw "null pointer dereference")._arraytypes = ((@:checkr _tf ?? throw "null pointer dereference")._arraytypes.__append__(_t) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_type_.Type_>>);
        };
    }
}
