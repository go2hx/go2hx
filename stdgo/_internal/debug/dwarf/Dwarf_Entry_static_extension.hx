package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.Entry_asInterface) class Entry_static_extension {
    @:keep
    static public function attrField( _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>, _a:stdgo._internal.debug.dwarf.Dwarf_Attr.Attr):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Field.Field> {
        @:recv var _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = _e;
        for (_i => _f in _e.field) {
            if (_f.attr == (_a)) {
                return (stdgo.Go.setRef(_e.field[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Field.Field>);
            };
        };
        return null;
    }
    @:keep
    static public function val( _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>, _a:stdgo._internal.debug.dwarf.Dwarf_Attr.Attr):stdgo.AnyInterface {
        @:recv var _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = _e;
        {
            var _f = _e.attrField(_a);
            if ((_f != null && ((_f : Dynamic).__nil__ == null || !(_f : Dynamic).__nil__))) {
                return _f.val;
            };
        };
        return (null : stdgo.AnyInterface);
    }
}
