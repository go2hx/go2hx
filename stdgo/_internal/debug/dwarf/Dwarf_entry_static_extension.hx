package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.Entry_asInterface) class Entry_static_extension {
    @:keep
    @:tdfield
    static public function attrField( _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>, _a:stdgo._internal.debug.dwarf.Dwarf_attr.Attr):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_field.Field> {
        @:recv var _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = _e;
        for (_i => _f in (@:checkr _e ?? throw "null pointer dereference").field) {
            if (_f.attr == (_a)) {
                return (stdgo.Go.setRef((@:checkr _e ?? throw "null pointer dereference").field[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_field.Field>);
            };
        };
        return null;
    }
    @:keep
    @:tdfield
    static public function val( _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>, _a:stdgo._internal.debug.dwarf.Dwarf_attr.Attr):stdgo.AnyInterface {
        @:recv var _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = _e;
        {
            var _f = @:check2r _e.attrField(_a);
            if ((_f != null && ((_f : Dynamic).__nil__ == null || !(_f : Dynamic).__nil__))) {
                return (@:checkr _f ?? throw "null pointer dereference").val;
            };
        };
        return (null : stdgo.AnyInterface);
    }
}
