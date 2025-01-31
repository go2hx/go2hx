package stdgo._internal.debug.dwarf;
import stdgo._internal.errors.Errors;
import stdgo._internal.path.Path;
import stdgo._internal.strings.Strings;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.Entry_asInterface) class Entry_static_extension {
    @:keep
    @:tdfield
    static public function attrField( _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>, _a:stdgo._internal.debug.dwarf.Dwarf_Attr.Attr):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Field.Field> {
        @:recv var _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = _e;
        for (_i => _f in (@:checkr _e ?? throw "null pointer dereference").field) {
            if (_f.attr == (_a)) {
                return (stdgo.Go.setRef((@:checkr _e ?? throw "null pointer dereference").field[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Field.Field>);
            };
        };
        return null;
    }
    @:keep
    @:tdfield
    static public function val( _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>, _a:stdgo._internal.debug.dwarf.Dwarf_Attr.Attr):stdgo.AnyInterface {
        @:recv var _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = _e;
        {
            var _f = @:check2r _e.attrField(_a);
            if ((_f != null && ((_f : Dynamic).__nil__ == null || !(_f : Dynamic).__nil__))) {
                return (@:checkr _f ?? throw "null pointer dereference").val;
            };
        };
        return (null : stdgo.AnyInterface);
    }
}
