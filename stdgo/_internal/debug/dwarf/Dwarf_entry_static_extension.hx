package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.Entry_asInterface) class Entry_static_extension {
    @:keep
    @:tdfield
    static public function attrField( _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>, _a:stdgo._internal.debug.dwarf.Dwarf_attr.Attr):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_field.Field> {
        @:recv var _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = _e;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L396"
        for (_i => _f in (@:checkr _e ?? throw "null pointer dereference").field) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L397"
            if (_f.attr == (_a)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L398"
                return (stdgo.Go.setRef((@:checkr _e ?? throw "null pointer dereference").field[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_field.Field>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L401"
        return null;
    }
    @:keep
    @:tdfield
    static public function val( _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>, _a:stdgo._internal.debug.dwarf.Dwarf_attr.Attr):stdgo.AnyInterface {
        @:recv var _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = _e;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L387"
        {
            var _f = _e.attrField(_a);
            if (({
                final value = _f;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L388"
                return (@:checkr _f ?? throw "null pointer dereference").val;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L390"
        return (null : stdgo.AnyInterface);
    }
}
