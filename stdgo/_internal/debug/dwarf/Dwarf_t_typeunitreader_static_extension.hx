package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.T_typeUnitReader_asInterface) class T_typeUnitReader_static_extension {
    @:keep
    @:tdfield
    static public function _offset( _tur:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typeunitreader.T_typeUnitReader>):stdgo._internal.debug.dwarf.Dwarf_offset.Offset {
        @:recv var _tur:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typeunitreader.T_typeUnitReader> = _tur;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L159"
        return (@:checkr _tur ?? throw "null pointer dereference")._b._off;
    }
    @:keep
    @:tdfield
    static public function _clone( _tur:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typeunitreader.T_typeUnitReader>):stdgo._internal.debug.dwarf.Dwarf_t_typereader.T_typeReader {
        @:recv var _tur:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typeunitreader.T_typeUnitReader> = _tur;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L150"
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _d : (@:checkr _tur ?? throw "null pointer dereference")._d, _tu : (@:checkr _tur ?? throw "null pointer dereference")._tu, _b : stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf((@:checkr _tur ?? throw "null pointer dereference")._d, stdgo.Go.asInterface((@:checkr _tur ?? throw "null pointer dereference")._tu), (@:checkr (@:checkr _tur ?? throw "null pointer dereference")._tu ?? throw "null pointer dereference")._name?.__copy__(), (@:checkr (@:checkr _tur ?? throw "null pointer dereference")._tu ?? throw "null pointer dereference")._unit._off, (@:checkr (@:checkr _tur ?? throw "null pointer dereference")._tu ?? throw "null pointer dereference")._unit._data)?.__copy__() } : stdgo._internal.debug.dwarf.Dwarf_t_typeunitreader.T_typeUnitReader)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typeunitreader.T_typeUnitReader>));
    }
    @:keep
    @:tdfield
    static public function next( _tur:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typeunitreader.T_typeUnitReader>):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>; var _1 : stdgo.Error; } {
        @:recv var _tur:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typeunitreader.T_typeUnitReader> = _tur;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L134"
        if ((@:checkr _tur ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L135"
            return { _0 : null, _1 : (@:checkr _tur ?? throw "null pointer dereference")._err };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L137"
        if (((@:checkr (@:checkr _tur ?? throw "null pointer dereference")._tu ?? throw "null pointer dereference")._unit._data.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L138"
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        var _e = (@:checkr _tur ?? throw "null pointer dereference")._b._entry(null, (@:checkr (@:checkr _tur ?? throw "null pointer dereference")._tu ?? throw "null pointer dereference")._unit._atable, (@:checkr (@:checkr _tur ?? throw "null pointer dereference")._tu ?? throw "null pointer dereference")._unit._base, (@:checkr (@:checkr _tur ?? throw "null pointer dereference")._tu ?? throw "null pointer dereference")._unit._vers);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L141"
        if ((@:checkr _tur ?? throw "null pointer dereference")._b._err != null) {
            (@:checkr _tur ?? throw "null pointer dereference")._err = (@:checkr _tur ?? throw "null pointer dereference")._b._err;
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L143"
            return { _0 : null, _1 : (@:checkr _tur ?? throw "null pointer dereference")._err };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L145"
        return { _0 : _e, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function addressSize( _tur:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typeunitreader.T_typeUnitReader>):stdgo.GoInt {
        @:recv var _tur:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typeunitreader.T_typeUnitReader> = _tur;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L129"
        return (@:checkr (@:checkr _tur ?? throw "null pointer dereference")._tu ?? throw "null pointer dereference")._unit._asize;
    }
    @:keep
    @:tdfield
    static public function seek( _tur:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typeunitreader.T_typeUnitReader>, _off:stdgo._internal.debug.dwarf.Dwarf_offset.Offset):Void {
        @:recv var _tur:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typeunitreader.T_typeUnitReader> = _tur;
        (@:checkr _tur ?? throw "null pointer dereference")._err = (null : stdgo.Error);
        var _doff = (_off - (@:checkr (@:checkr _tur ?? throw "null pointer dereference")._tu ?? throw "null pointer dereference")._unit._off : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L120"
        if (((_doff < (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) : Bool) || (_doff >= ((@:checkr (@:checkr _tur ?? throw "null pointer dereference")._tu ?? throw "null pointer dereference")._unit._data.length : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) : Bool) : Bool)) {
            (@:checkr _tur ?? throw "null pointer dereference")._err = stdgo._internal.fmt.Fmt_errorf.errorf(("%s: offset %d out of range; max %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr (@:checkr _tur ?? throw "null pointer dereference")._tu ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(_doff), stdgo.Go.toInterface(((@:checkr (@:checkr _tur ?? throw "null pointer dereference")._tu ?? throw "null pointer dereference")._unit._data.length)));
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/typeunit.go#L122"
            return;
        };
        (@:checkr _tur ?? throw "null pointer dereference")._b = stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf((@:checkr _tur ?? throw "null pointer dereference")._d, stdgo.Go.asInterface((@:checkr _tur ?? throw "null pointer dereference")._tu), (@:checkr (@:checkr _tur ?? throw "null pointer dereference")._tu ?? throw "null pointer dereference")._name?.__copy__(), _off, ((@:checkr (@:checkr _tur ?? throw "null pointer dereference")._tu ?? throw "null pointer dereference")._unit._data.__slice__(_doff) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
    }
}
