package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.File_asInterface) class File_static_extension {
    @:keep
    @:tdfield
    static public function dynValue( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _tag:stdgo._internal.debug.elf.Elf_dyntag.DynTag):{ var _0 : stdgo.Slice<stdgo.GoUInt64>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        var _ds = @:check2r _f.sectionByType((6u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType));
        if ((_ds == null || (_ds : Dynamic).__nil__)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt64>), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = @:check2r _ds.data(), _d:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt64>), _1 : _err };
        };
        var _vals:stdgo.Slice<stdgo.GoUInt64> = (null : stdgo.Slice<stdgo.GoUInt64>);
        while (((_d.length) > (0 : stdgo.GoInt) : Bool)) {
            var _t:stdgo._internal.debug.elf.Elf_dyntag.DynTag = ((0 : stdgo.GoInt) : stdgo._internal.debug.elf.Elf_dyntag.DynTag);
            var _v:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            {
                final __value__ = (@:checkr _f ?? throw "null pointer dereference").fileHeader.class_;
                if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_class_.Class_))) {
                    _t = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.uint32((_d.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.debug.elf.Elf_dyntag.DynTag);
                    _v = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.uint32((_d.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
                    _d = (_d.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                } else if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_class_.Class_))) {
                    _t = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.uint64((_d.__slice__((0 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.debug.elf.Elf_dyntag.DynTag);
                    _v = (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.uint64((_d.__slice__((8 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _d = (_d.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                };
            };
            if (_t == (_tag)) {
                _vals = (_vals.__append__(_v));
            };
        };
        return { _0 : _vals, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function dynString( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _tag:stdgo._internal.debug.elf.Elf_dyntag.DynTag):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        {
            final __value__ = _tag;
            if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_dyntag.DynTag)) || __value__ == ((14 : stdgo._internal.debug.elf.Elf_dyntag.DynTag)) || __value__ == ((15 : stdgo._internal.debug.elf.Elf_dyntag.DynTag)) || __value__ == ((29 : stdgo._internal.debug.elf.Elf_dyntag.DynTag))) {} else {
                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("non-string-valued tag %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tag))) };
            };
        };
        var _ds = @:check2r _f.sectionByType((6u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType));
        if ((_ds == null || (_ds : Dynamic).__nil__)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = @:check2r _ds.data(), _d:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
        };
        var __tmp__ = @:check2r _f._stringTable((@:checkr _ds ?? throw "null pointer dereference").sectionHeader.link), _str:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
        };
        var _all:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        while (((_d.length) > (0 : stdgo.GoInt) : Bool)) {
            var _t:stdgo._internal.debug.elf.Elf_dyntag.DynTag = ((0 : stdgo.GoInt) : stdgo._internal.debug.elf.Elf_dyntag.DynTag);
            var _v:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            {
                final __value__ = (@:checkr _f ?? throw "null pointer dereference").fileHeader.class_;
                if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_class_.Class_))) {
                    _t = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.uint32((_d.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.debug.elf.Elf_dyntag.DynTag);
                    _v = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.uint32((_d.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
                    _d = (_d.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                } else if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_class_.Class_))) {
                    _t = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.uint64((_d.__slice__((0 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.debug.elf.Elf_dyntag.DynTag);
                    _v = (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.uint64((_d.__slice__((8 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _d = (_d.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                };
            };
            if (_t == (_tag)) {
                var __tmp__ = stdgo._internal.debug.elf.Elf__getstring._getString(_str, (_v : stdgo.GoInt)), _s:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _all = (_all.__append__(_s?.__copy__()));
                };
            };
        };
        return { _0 : _all, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function importedLibraries( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        return @:check2r _f.dynString((1 : stdgo._internal.debug.elf.Elf_dyntag.DynTag));
    }
    @:keep
    @:tdfield
    static public function _gnuVersion( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _i:stdgo.GoInt):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        var _library = ("" : stdgo.GoString), _version = ("" : stdgo.GoString);
        _i = (((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt);
        if ((_i >= ((@:checkr _f ?? throw "null pointer dereference")._gnuVersym.length) : Bool)) {
            return { _0 : _library, _1 : _version };
        };
        var _s = ((@:checkr _f ?? throw "null pointer dereference")._gnuVersym.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
        if (((_s.length) < (2 : stdgo.GoInt) : Bool)) {
            return { _0 : _library, _1 : _version };
        };
        var _j = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.uint16(_s) : stdgo.GoInt);
        if (((_j < (2 : stdgo.GoInt) : Bool) || (_j >= ((@:checkr _f ?? throw "null pointer dereference")._gnuNeed.length) : Bool) : Bool)) {
            return { _0 : _library, _1 : _version };
        };
        var _n = (stdgo.Go.setRef((@:checkr _f ?? throw "null pointer dereference")._gnuNeed[(_j : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_t_verneed.T_verneed>);
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : (@:checkr _n ?? throw "null pointer dereference").file?.__copy__(), _1 : (@:checkr _n ?? throw "null pointer dereference").name?.__copy__() };
            _library = __tmp__._0;
            _version = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _gnuVersionInit( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _str:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        if ((@:checkr _f ?? throw "null pointer dereference")._gnuNeed != null) {
            return true;
        };
        var _vn = @:check2r _f.sectionByType((1879048190u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType));
        if ((_vn == null || (_vn : Dynamic).__nil__)) {
            return false;
        };
        var __tmp__ = @:check2r _vn.data(), _d:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __2:stdgo.Error = __tmp__._1;
        var _need:stdgo.Slice<stdgo._internal.debug.elf.Elf_t_verneed.T_verneed> = (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_t_verneed.T_verneed>);
        var _i = (0 : stdgo.GoInt);
        while (true) {
            if (((_i + (16 : stdgo.GoInt) : stdgo.GoInt) > (_d.length) : Bool)) {
                break;
            };
            var _vers = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.uint16((_d.__slice__(_i, (_i + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt16);
            if (_vers != ((1 : stdgo.GoUInt16))) {
                break;
            };
            var _cnt = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.uint16((_d.__slice__((_i + (2 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt16);
            var _fileoff = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.uint32((_d.__slice__((_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
            var _aux = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.uint32((_d.__slice__((_i + (8 : stdgo.GoInt) : stdgo.GoInt), (_i + (12 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
            var _next = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.uint32((_d.__slice__((_i + (12 : stdgo.GoInt) : stdgo.GoInt), (_i + (16 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
            var __tmp__ = stdgo._internal.debug.elf.Elf__getstring._getString(_str, (_fileoff : stdgo.GoInt)), _file:stdgo.GoString = __tmp__._0, __3:Bool = __tmp__._1;
            var _name:stdgo.GoString = ("" : stdgo.GoString);
            var _j = (_i + (_aux : stdgo.GoInt) : stdgo.GoInt);
            {
                var _c = (0 : stdgo.GoInt);
                while ((_c < (_cnt : stdgo.GoInt) : Bool)) {
                    if (((_j + (16 : stdgo.GoInt) : stdgo.GoInt) > (_d.length) : Bool)) {
                        break;
                    };
var _other = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.uint16((_d.__slice__((_j + (6 : stdgo.GoInt) : stdgo.GoInt), (_j + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt16);
var _nameoff = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.uint32((_d.__slice__((_j + (8 : stdgo.GoInt) : stdgo.GoInt), (_j + (12 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
var _next = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.uint32((_d.__slice__((_j + (12 : stdgo.GoInt) : stdgo.GoInt), (_j + (16 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
{
                        var __tmp__ = stdgo._internal.debug.elf.Elf__getstring._getString(_str, (_nameoff : stdgo.GoInt));
                        _name = @:tmpset0 __tmp__._0.__copy__();
                    };
var _ndx = (_other : stdgo.GoInt);
if ((_ndx >= (_need.length) : Bool)) {
                        var _a = (new stdgo.Slice<stdgo._internal.debug.elf.Elf_t_verneed.T_verneed>(((2 : stdgo.GoInt) * ((_ndx + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((2 : stdgo.GoInt) * ((_ndx + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt).toBasic() > 0 ? ((2 : stdgo.GoInt) * ((_ndx + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.elf.Elf_t_verneed.T_verneed)]) : stdgo.Slice<stdgo._internal.debug.elf.Elf_t_verneed.T_verneed>);
                        _a.__copyTo__(_need);
                        _need = _a;
                    };
_need[(_ndx : stdgo.GoInt)] = (new stdgo._internal.debug.elf.Elf_t_verneed.T_verneed(_file.__copy__(), _name.__copy__()) : stdgo._internal.debug.elf.Elf_t_verneed.T_verneed);
if (_next == ((0u32 : stdgo.GoUInt32))) {
                        break;
                    };
_j = (_j + ((_next : stdgo.GoInt)) : stdgo.GoInt);
                    _c++;
                };
            };
            if (_next == ((0u32 : stdgo.GoUInt32))) {
                break;
            };
            _i = (_i + ((_next : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _vs = @:check2r _f.sectionByType((1879048191u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType));
        if ((_vs == null || (_vs : Dynamic).__nil__)) {
            return false;
        };
        {
            var __tmp__ = @:check2r _vs.data();
            _d = @:tmpset0 __tmp__._0;
        };
        (@:checkr _f ?? throw "null pointer dereference")._gnuNeed = _need;
        (@:checkr _f ?? throw "null pointer dereference")._gnuVersym = _d;
        return true;
    }
    @:keep
    @:tdfield
    static public function importedSymbols( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>):{ var _0 : stdgo.Slice<stdgo._internal.debug.elf.Elf_importedsymbol.ImportedSymbol>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        var __tmp__ = @:check2r _f._getSymbols((11u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)), _sym:stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol> = __tmp__._0, _str:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_importedsymbol.ImportedSymbol>), _1 : _err };
        };
        @:check2r _f._gnuVersionInit(_str);
        var _all:stdgo.Slice<stdgo._internal.debug.elf.Elf_importedsymbol.ImportedSymbol> = (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_importedsymbol.ImportedSymbol>);
        for (_i => _s in _sym) {
            if (((stdgo._internal.debug.elf.Elf_st_bind.sT_BIND(_s.info) == (1 : stdgo._internal.debug.elf.Elf_symbind.SymBind)) && (_s.section == (0 : stdgo._internal.debug.elf.Elf_sectionindex.SectionIndex)) : Bool)) {
                _all = (_all.__append__(({ name : _s.name?.__copy__() } : stdgo._internal.debug.elf.Elf_importedsymbol.ImportedSymbol)));
                var _sym = (stdgo.Go.setRef(_all[((_all.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_importedsymbol.ImportedSymbol>);
                {
                    var __tmp__ = @:check2r _f._gnuVersion(_i);
                    (@:checkr _sym ?? throw "null pointer dereference").library = @:tmpset0 __tmp__._0?.__copy__();
                    (@:checkr _sym ?? throw "null pointer dereference").version = @:tmpset0 __tmp__._1?.__copy__();
                };
            };
        };
        return { _0 : _all, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function dynamicSymbols( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>):{ var _0 : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        var __tmp__ = @:check2r _f._getSymbols((11u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)), _sym:stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol> = __tmp__._0, _str:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>), _1 : _err };
        };
        if (@:check2r _f._gnuVersionInit(_str)) {
            for (_i => _ in _sym) {
                {
                    var __tmp__ = @:check2r _f._gnuVersion(_i);
                    _sym[(_i : stdgo.GoInt)].library = @:tmpset0 __tmp__._0?.__copy__();
                    _sym[(_i : stdgo.GoInt)].version = @:tmpset0 __tmp__._1?.__copy__();
                };
            };
        };
        return { _0 : _sym, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function symbols( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>):{ var _0 : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        var __tmp__ = @:check2r _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)), _sym:stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        return { _0 : _sym, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function dWARF( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        var _dwarfSuffix = function(_s:stdgo.Ref<stdgo._internal.debug.elf.Elf_section.Section>):stdgo.GoString {
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name?.__copy__(), (".debug_" : stdgo.GoString))) {
                return ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name.__slice__((7 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            } else if (stdgo._internal.strings.Strings_hasprefix.hasPrefix((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name?.__copy__(), (".zdebug_" : stdgo.GoString))) {
                return ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name.__slice__((8 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            } else {
                return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            };
        };
        var _sectionData = function(_i:stdgo.GoInt, _s:stdgo.Ref<stdgo._internal.debug.elf.Elf_section.Section>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
            var __tmp__ = @:check2r _s.data(), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) && ((_b.length : stdgo.GoUInt64) < (@:checkr _s ?? throw "null pointer dereference").sectionHeader.size : Bool) : Bool)) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            if ((@:checkr _f ?? throw "null pointer dereference").fileHeader.type == ((2 : stdgo._internal.debug.elf.Elf_type_.Type_))) {
                return { _0 : _b, _1 : (null : stdgo.Error) };
            };
            for (__2 => _r in (@:checkr _f ?? throw "null pointer dereference").sections) {
                if ((((@:checkr _r ?? throw "null pointer dereference").sectionHeader.type != (4u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)) && ((@:checkr _r ?? throw "null pointer dereference").sectionHeader.type != (9u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)) : Bool)) {
                    continue;
                };
                if (((@:checkr _r ?? throw "null pointer dereference").sectionHeader.info : stdgo.GoInt) != (_i)) {
                    continue;
                };
                var __tmp__ = @:check2r _r.data(), _rd:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                };
                _err = @:check2r _f._applyRelocations(_b, _rd);
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                };
            };
            return { _0 : _b, _1 : (null : stdgo.Error) };
        };
        var _dat = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoUInt8>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoUInt8>);
            x.set(("abbrev" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>));
x.set(("info" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>));
x.set(("str" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>));
x.set(("line" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>));
x.set(("ranges" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoUInt8>>);
        for (_i => _s in (@:checkr _f ?? throw "null pointer dereference").sections) {
            var _suffix = (_dwarfSuffix(_s)?.__copy__() : stdgo.GoString);
            if (_suffix == ((stdgo.Go.str() : stdgo.GoString))) {
                continue;
            };
            {
                var __tmp__ = (_dat != null && _dat.__exists__(_suffix?.__copy__()) ? { _0 : _dat[_suffix?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : false }), __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    continue;
                };
            };
            var __tmp__ = _sectionData(_i, _s), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            _dat[_suffix] = _b;
        };
        var __tmp__ = stdgo._internal.debug.dwarf.Dwarf_new_.new_((_dat[("abbrev" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoUInt8>)), (null : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Slice<stdgo.GoUInt8>), (_dat[("info" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoUInt8>)), (_dat[("line" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoUInt8>)), (null : stdgo.Slice<stdgo.GoUInt8>), (_dat[("ranges" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoUInt8>)), (_dat[("str" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoUInt8>))), _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        for (_i => _s in (@:checkr _f ?? throw "null pointer dereference").sections) {
            var _suffix = (_dwarfSuffix(_s)?.__copy__() : stdgo.GoString);
            if (_suffix == ((stdgo.Go.str() : stdgo.GoString))) {
                continue;
            };
            {
                var __tmp__ = (_dat != null && _dat.__exists__(_suffix?.__copy__()) ? { _0 : _dat[_suffix?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : false }), __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    continue;
                };
            };
            var __tmp__ = _sectionData(_i, _s), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            if (_suffix == (("types" : stdgo.GoString))) {
                {
                    var _err = (@:check2r _d.addTypes(stdgo._internal.fmt.Fmt_sprintf.sprintf(("types-%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__(), _b) : stdgo.Error);
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                };
            } else {
                {
                    var _err = (@:check2r _d.addSection(((".debug_" : stdgo.GoString) + _suffix?.__copy__() : stdgo.GoString)?.__copy__(), _b) : stdgo.Error);
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                };
            };
        };
        return { _0 : _d, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _applyRelocationsSPARC64( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        if (((_rels.length) % (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 24" : stdgo.GoString));
        };
        var __tmp__ = @:check2r _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_rels);
        var _rela:stdgo._internal.debug.elf.Elf_rela64.Rela64 = ({} : stdgo._internal.debug.elf.Elf_rela64.Rela64);
        while ((@:check2r _b.len() > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rela) : stdgo.Ref<stdgo._internal.debug.elf.Elf_rela64.Rela64>))));
            var _symNo = (_rela.info >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            var _t = ((_rela.info & (255i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.debug.elf.Elf_r_sparc.R_SPARC);
            if (((_symNo == (0i64 : stdgo.GoUInt64)) || (_symNo > (_symbols.length : stdgo.GoUInt64) : Bool) : Bool)) {
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_symbol.Symbol>);
            if (!stdgo._internal.debug.elf.Elf__canapplyrelocation._canApplyRelocation(_sym)) {
                continue;
            };
            {
                final __value__ = _t;
                if (__value__ == ((32 : stdgo._internal.debug.elf.Elf_r_sparc.R_SPARC)) || __value__ == ((54 : stdgo._internal.debug.elf.Elf_r_sparc.R_SPARC))) {
                    if ((((_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val64 = ((@:checkr _sym ?? throw "null pointer dereference").value + (_rela.addend : stdgo.GoUInt64) : stdgo.GoUInt64);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint64((_dst.__slice__(_rela.off, (_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val64);
                } else if (__value__ == ((3 : stdgo._internal.debug.elf.Elf_r_sparc.R_SPARC)) || __value__ == ((23 : stdgo._internal.debug.elf.Elf_r_sparc.R_SPARC))) {
                    if ((((_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val32 = (((@:checkr _sym ?? throw "null pointer dereference").value : stdgo.GoUInt32) + (_rela.addend : stdgo.GoUInt32) : stdgo.GoUInt32);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint32((_dst.__slice__(_rela.off, (_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val32);
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _applyRelocationss390x( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        if (((_rels.length) % (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 24" : stdgo.GoString));
        };
        var __tmp__ = @:check2r _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_rels);
        var _rela:stdgo._internal.debug.elf.Elf_rela64.Rela64 = ({} : stdgo._internal.debug.elf.Elf_rela64.Rela64);
        while ((@:check2r _b.len() > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rela) : stdgo.Ref<stdgo._internal.debug.elf.Elf_rela64.Rela64>))));
            var _symNo = (_rela.info >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            var _t = ((_rela.info & (65535i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.debug.elf.Elf_r_390.R_390);
            if (((_symNo == (0i64 : stdgo.GoUInt64)) || (_symNo > (_symbols.length : stdgo.GoUInt64) : Bool) : Bool)) {
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_symbol.Symbol>);
            if (!stdgo._internal.debug.elf.Elf__canapplyrelocation._canApplyRelocation(_sym)) {
                continue;
            };
            {
                final __value__ = _t;
                if (__value__ == ((22 : stdgo._internal.debug.elf.Elf_r_390.R_390))) {
                    if ((((_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val64 = ((@:checkr _sym ?? throw "null pointer dereference").value + (_rela.addend : stdgo.GoUInt64) : stdgo.GoUInt64);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint64((_dst.__slice__(_rela.off, (_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val64);
                } else if (__value__ == ((4 : stdgo._internal.debug.elf.Elf_r_390.R_390))) {
                    if ((((_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val32 = (((@:checkr _sym ?? throw "null pointer dereference").value : stdgo.GoUInt32) + (_rela.addend : stdgo.GoUInt32) : stdgo.GoUInt32);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint32((_dst.__slice__(_rela.off, (_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val32);
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _applyRelocationsRISCV64( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        if (((_rels.length) % (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 24" : stdgo.GoString));
        };
        var __tmp__ = @:check2r _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_rels);
        var _rela:stdgo._internal.debug.elf.Elf_rela64.Rela64 = ({} : stdgo._internal.debug.elf.Elf_rela64.Rela64);
        while ((@:check2r _b.len() > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rela) : stdgo.Ref<stdgo._internal.debug.elf.Elf_rela64.Rela64>))));
            var _symNo = (_rela.info >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            var _t = ((_rela.info & (65535i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.debug.elf.Elf_r_riscv.R_RISCV);
            if (((_symNo == (0i64 : stdgo.GoUInt64)) || (_symNo > (_symbols.length : stdgo.GoUInt64) : Bool) : Bool)) {
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_symbol.Symbol>);
            if (!stdgo._internal.debug.elf.Elf__canapplyrelocation._canApplyRelocation(_sym)) {
                continue;
            };
            {
                final __value__ = _t;
                if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_r_riscv.R_RISCV))) {
                    if ((((_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val64 = ((@:checkr _sym ?? throw "null pointer dereference").value + (_rela.addend : stdgo.GoUInt64) : stdgo.GoUInt64);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint64((_dst.__slice__(_rela.off, (_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val64);
                } else if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_r_riscv.R_RISCV))) {
                    if ((((_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val32 = (((@:checkr _sym ?? throw "null pointer dereference").value : stdgo.GoUInt32) + (_rela.addend : stdgo.GoUInt32) : stdgo.GoUInt32);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint32((_dst.__slice__(_rela.off, (_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val32);
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _applyRelocationsLOONG64( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        if (((_rels.length) % (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 24" : stdgo.GoString));
        };
        var __tmp__ = @:check2r _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_rels);
        var _rela:stdgo._internal.debug.elf.Elf_rela64.Rela64 = ({} : stdgo._internal.debug.elf.Elf_rela64.Rela64);
        while ((@:check2r _b.len() > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rela) : stdgo.Ref<stdgo._internal.debug.elf.Elf_rela64.Rela64>))));
            var _symNo:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            var _t:stdgo._internal.debug.elf.Elf_r_larch.R_LARCH = ((0 : stdgo.GoInt) : stdgo._internal.debug.elf.Elf_r_larch.R_LARCH);
            _symNo = (_rela.info >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            _t = ((_rela.info & (65535i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.debug.elf.Elf_r_larch.R_LARCH);
            if (((_symNo == (0i64 : stdgo.GoUInt64)) || (_symNo > (_symbols.length : stdgo.GoUInt64) : Bool) : Bool)) {
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_symbol.Symbol>);
            if (!stdgo._internal.debug.elf.Elf__canapplyrelocation._canApplyRelocation(_sym)) {
                continue;
            };
            {
                final __value__ = _t;
                if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_r_larch.R_LARCH))) {
                    if ((((_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val64 = ((@:checkr _sym ?? throw "null pointer dereference").value + (_rela.addend : stdgo.GoUInt64) : stdgo.GoUInt64);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint64((_dst.__slice__(_rela.off, (_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val64);
                } else if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_r_larch.R_LARCH))) {
                    if ((((_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val32 = (((@:checkr _sym ?? throw "null pointer dereference").value : stdgo.GoUInt32) + (_rela.addend : stdgo.GoUInt32) : stdgo.GoUInt32);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint32((_dst.__slice__(_rela.off, (_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val32);
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _applyRelocationsMIPS64( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        if (((_rels.length) % (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 24" : stdgo.GoString));
        };
        var __tmp__ = @:check2r _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_rels);
        var _rela:stdgo._internal.debug.elf.Elf_rela64.Rela64 = ({} : stdgo._internal.debug.elf.Elf_rela64.Rela64);
        while ((@:check2r _b.len() > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rela) : stdgo.Ref<stdgo._internal.debug.elf.Elf_rela64.Rela64>))));
            var _symNo:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            var _t:stdgo._internal.debug.elf.Elf_r_mips.R_MIPS = ((0 : stdgo.GoInt) : stdgo._internal.debug.elf.Elf_r_mips.R_MIPS);
            if (stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder) == (stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian)))) {
                _symNo = (_rela.info >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                _t = ((_rela.info & (255i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.debug.elf.Elf_r_mips.R_MIPS);
            } else {
                _symNo = (_rela.info & (4294967295i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                _t = ((_rela.info >> (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.debug.elf.Elf_r_mips.R_MIPS);
            };
            if (((_symNo == (0i64 : stdgo.GoUInt64)) || (_symNo > (_symbols.length : stdgo.GoUInt64) : Bool) : Bool)) {
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_symbol.Symbol>);
            if (!stdgo._internal.debug.elf.Elf__canapplyrelocation._canApplyRelocation(_sym)) {
                continue;
            };
            {
                final __value__ = _t;
                if (__value__ == ((18 : stdgo._internal.debug.elf.Elf_r_mips.R_MIPS))) {
                    if ((((_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val64 = ((@:checkr _sym ?? throw "null pointer dereference").value + (_rela.addend : stdgo.GoUInt64) : stdgo.GoUInt64);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint64((_dst.__slice__(_rela.off, (_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val64);
                } else if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_r_mips.R_MIPS))) {
                    if ((((_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val32 = (((@:checkr _sym ?? throw "null pointer dereference").value : stdgo.GoUInt32) + (_rela.addend : stdgo.GoUInt32) : stdgo.GoUInt32);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint32((_dst.__slice__(_rela.off, (_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val32);
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _applyRelocationsMIPS( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        if (((_rels.length) % (8 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 8" : stdgo.GoString));
        };
        var __tmp__ = @:check2r _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_rels);
        var _rel:stdgo._internal.debug.elf.Elf_rel32.Rel32 = ({} : stdgo._internal.debug.elf.Elf_rel32.Rel32);
        while ((@:check2r _b.len() > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rel) : stdgo.Ref<stdgo._internal.debug.elf.Elf_rel32.Rel32>))));
            var _symNo = (_rel.info >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
            var _t = ((_rel.info & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo._internal.debug.elf.Elf_r_mips.R_MIPS);
            if (((_symNo == (0u32 : stdgo.GoUInt32)) || (_symNo > (_symbols.length : stdgo.GoUInt32) : Bool) : Bool)) {
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_symbol.Symbol>);
            {
                final __value__ = _t;
                if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_r_mips.R_MIPS))) {
                    if (((_rel.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32) >= (_dst.length : stdgo.GoUInt32) : Bool)) {
                        continue;
                    };
                    var _val = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.uint32((_dst.__slice__(_rel.off, (_rel.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                    _val = (_val + (((@:checkr _sym ?? throw "null pointer dereference").value : stdgo.GoUInt32)) : stdgo.GoUInt32);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint32((_dst.__slice__(_rel.off, (_rel.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>), _val);
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _applyRelocationsPPC64( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        if (((_rels.length) % (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 24" : stdgo.GoString));
        };
        var __tmp__ = @:check2r _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_rels);
        var _rela:stdgo._internal.debug.elf.Elf_rela64.Rela64 = ({} : stdgo._internal.debug.elf.Elf_rela64.Rela64);
        while ((@:check2r _b.len() > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rela) : stdgo.Ref<stdgo._internal.debug.elf.Elf_rela64.Rela64>))));
            var _symNo = (_rela.info >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            var _t = ((_rela.info & (65535i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.debug.elf.Elf_r_ppc64.R_PPC64);
            if (((_symNo == (0i64 : stdgo.GoUInt64)) || (_symNo > (_symbols.length : stdgo.GoUInt64) : Bool) : Bool)) {
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_symbol.Symbol>);
            if (!stdgo._internal.debug.elf.Elf__canapplyrelocation._canApplyRelocation(_sym)) {
                continue;
            };
            {
                final __value__ = _t;
                if (__value__ == ((38 : stdgo._internal.debug.elf.Elf_r_ppc64.R_PPC64))) {
                    if ((((_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val64 = ((@:checkr _sym ?? throw "null pointer dereference").value + (_rela.addend : stdgo.GoUInt64) : stdgo.GoUInt64);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint64((_dst.__slice__(_rela.off, (_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val64);
                } else if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_r_ppc64.R_PPC64))) {
                    if ((((_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val32 = (((@:checkr _sym ?? throw "null pointer dereference").value : stdgo.GoUInt32) + (_rela.addend : stdgo.GoUInt32) : stdgo.GoUInt32);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint32((_dst.__slice__(_rela.off, (_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val32);
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _applyRelocationsPPC( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        if (((_rels.length) % (12 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 12" : stdgo.GoString));
        };
        var __tmp__ = @:check2r _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_rels);
        var _rela:stdgo._internal.debug.elf.Elf_rela32.Rela32 = ({} : stdgo._internal.debug.elf.Elf_rela32.Rela32);
        while ((@:check2r _b.len() > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rela) : stdgo.Ref<stdgo._internal.debug.elf.Elf_rela32.Rela32>))));
            var _symNo = (_rela.info >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
            var _t = ((_rela.info & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo._internal.debug.elf.Elf_r_ppc.R_PPC);
            if (((_symNo == (0u32 : stdgo.GoUInt32)) || (_symNo > (_symbols.length : stdgo.GoUInt32) : Bool) : Bool)) {
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_symbol.Symbol>);
            if (!stdgo._internal.debug.elf.Elf__canapplyrelocation._canApplyRelocation(_sym)) {
                continue;
            };
            {
                final __value__ = _t;
                if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_r_ppc.R_PPC))) {
                    if ((((_rela.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32) >= (_dst.length : stdgo.GoUInt32) : Bool) || (_rela.addend < (0 : stdgo.GoInt32) : Bool) : Bool)) {
                        continue;
                    };
                    var _val32 = (((@:checkr _sym ?? throw "null pointer dereference").value : stdgo.GoUInt32) + (_rela.addend : stdgo.GoUInt32) : stdgo.GoUInt32);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint32((_dst.__slice__(_rela.off, (_rela.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>), _val32);
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _applyRelocationsARM64( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        if (((_rels.length) % (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 24" : stdgo.GoString));
        };
        var __tmp__ = @:check2r _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_rels);
        var _rela:stdgo._internal.debug.elf.Elf_rela64.Rela64 = ({} : stdgo._internal.debug.elf.Elf_rela64.Rela64);
        while ((@:check2r _b.len() > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rela) : stdgo.Ref<stdgo._internal.debug.elf.Elf_rela64.Rela64>))));
            var _symNo = (_rela.info >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            var _t = ((_rela.info & (65535i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.debug.elf.Elf_r_aarch64.R_AARCH64);
            if (((_symNo == (0i64 : stdgo.GoUInt64)) || (_symNo > (_symbols.length : stdgo.GoUInt64) : Bool) : Bool)) {
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_symbol.Symbol>);
            if (!stdgo._internal.debug.elf.Elf__canapplyrelocation._canApplyRelocation(_sym)) {
                continue;
            };
            {
                final __value__ = _t;
                if (__value__ == ((257 : stdgo._internal.debug.elf.Elf_r_aarch64.R_AARCH64))) {
                    if ((((_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val64 = ((@:checkr _sym ?? throw "null pointer dereference").value + (_rela.addend : stdgo.GoUInt64) : stdgo.GoUInt64);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint64((_dst.__slice__(_rela.off, (_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val64);
                } else if (__value__ == ((258 : stdgo._internal.debug.elf.Elf_r_aarch64.R_AARCH64))) {
                    if ((((_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val32 = (((@:checkr _sym ?? throw "null pointer dereference").value : stdgo.GoUInt32) + (_rela.addend : stdgo.GoUInt32) : stdgo.GoUInt32);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint32((_dst.__slice__(_rela.off, (_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val32);
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _applyRelocationsARM( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        if (((_rels.length) % (8 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 8" : stdgo.GoString));
        };
        var __tmp__ = @:check2r _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_rels);
        var _rel:stdgo._internal.debug.elf.Elf_rel32.Rel32 = ({} : stdgo._internal.debug.elf.Elf_rel32.Rel32);
        while ((@:check2r _b.len() > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rel) : stdgo.Ref<stdgo._internal.debug.elf.Elf_rel32.Rel32>))));
            var _symNo = (_rel.info >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
            var _t = ((_rel.info & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo._internal.debug.elf.Elf_r_arm.R_ARM);
            if (((_symNo == (0u32 : stdgo.GoUInt32)) || (_symNo > (_symbols.length : stdgo.GoUInt32) : Bool) : Bool)) {
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_symbol.Symbol>);
            {
                final __value__ = _t;
                if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_r_arm.R_ARM))) {
                    if (((_rel.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32) >= (_dst.length : stdgo.GoUInt32) : Bool)) {
                        continue;
                    };
                    var _val = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.uint32((_dst.__slice__(_rel.off, (_rel.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                    _val = (_val + (((@:checkr _sym ?? throw "null pointer dereference").value : stdgo.GoUInt32)) : stdgo.GoUInt32);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint32((_dst.__slice__(_rel.off, (_rel.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>), _val);
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _applyRelocations386( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        if (((_rels.length) % (8 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 8" : stdgo.GoString));
        };
        var __tmp__ = @:check2r _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_rels);
        var _rel:stdgo._internal.debug.elf.Elf_rel32.Rel32 = ({} : stdgo._internal.debug.elf.Elf_rel32.Rel32);
        while ((@:check2r _b.len() > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rel) : stdgo.Ref<stdgo._internal.debug.elf.Elf_rel32.Rel32>))));
            var _symNo = (_rel.info >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
            var _t = ((_rel.info & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo._internal.debug.elf.Elf_r_386.R_386);
            if (((_symNo == (0u32 : stdgo.GoUInt32)) || (_symNo > (_symbols.length : stdgo.GoUInt32) : Bool) : Bool)) {
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_symbol.Symbol>);
            if (_t == ((1 : stdgo._internal.debug.elf.Elf_r_386.R_386))) {
                if (((_rel.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32) >= (_dst.length : stdgo.GoUInt32) : Bool)) {
                    continue;
                };
                var _val = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.uint32((_dst.__slice__(_rel.off, (_rel.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                _val = (_val + (((@:checkr _sym ?? throw "null pointer dereference").value : stdgo.GoUInt32)) : stdgo.GoUInt32);
                (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint32((_dst.__slice__(_rel.off, (_rel.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>), _val);
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _applyRelocationsAMD64( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        if (((_rels.length) % (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 24" : stdgo.GoString));
        };
        var __tmp__ = @:check2r _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_rels);
        var _rela:stdgo._internal.debug.elf.Elf_rela64.Rela64 = ({} : stdgo._internal.debug.elf.Elf_rela64.Rela64);
        while ((@:check2r _b.len() > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rela) : stdgo.Ref<stdgo._internal.debug.elf.Elf_rela64.Rela64>))));
            var _symNo = (_rela.info >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            var _t = ((_rela.info & (65535i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.debug.elf.Elf_r_x86_64.R_X86_64);
            if (((_symNo == (0i64 : stdgo.GoUInt64)) || (_symNo > (_symbols.length : stdgo.GoUInt64) : Bool) : Bool)) {
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_symbol.Symbol>);
            if (!stdgo._internal.debug.elf.Elf__canapplyrelocation._canApplyRelocation(_sym)) {
                continue;
            };
            {
                final __value__ = _t;
                if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_r_x86_64.R_X86_64))) {
                    if ((((_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val64 = ((@:checkr _sym ?? throw "null pointer dereference").value + (_rela.addend : stdgo.GoUInt64) : stdgo.GoUInt64);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint64((_dst.__slice__(_rela.off, (_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val64);
                } else if (__value__ == ((10 : stdgo._internal.debug.elf.Elf_r_x86_64.R_X86_64))) {
                    if ((((_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val32 = (((@:checkr _sym ?? throw "null pointer dereference").value : stdgo.GoUInt32) + (_rela.addend : stdgo.GoUInt32) : stdgo.GoUInt32);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint32((_dst.__slice__(_rela.off, (_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val32);
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _applyRelocations( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.class_ == (2 : stdgo._internal.debug.elf.Elf_class_.Class_)) && ((@:checkr _f ?? throw "null pointer dereference").fileHeader.machine == (62 : stdgo._internal.debug.elf.Elf_machine.Machine)) : Bool)) {
            return @:check2r _f._applyRelocationsAMD64(_dst, _rels);
        } else if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.class_ == (1 : stdgo._internal.debug.elf.Elf_class_.Class_)) && ((@:checkr _f ?? throw "null pointer dereference").fileHeader.machine == (3 : stdgo._internal.debug.elf.Elf_machine.Machine)) : Bool)) {
            return @:check2r _f._applyRelocations386(_dst, _rels);
        } else if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.class_ == (1 : stdgo._internal.debug.elf.Elf_class_.Class_)) && ((@:checkr _f ?? throw "null pointer dereference").fileHeader.machine == (40 : stdgo._internal.debug.elf.Elf_machine.Machine)) : Bool)) {
            return @:check2r _f._applyRelocationsARM(_dst, _rels);
        } else if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.class_ == (2 : stdgo._internal.debug.elf.Elf_class_.Class_)) && ((@:checkr _f ?? throw "null pointer dereference").fileHeader.machine == (183 : stdgo._internal.debug.elf.Elf_machine.Machine)) : Bool)) {
            return @:check2r _f._applyRelocationsARM64(_dst, _rels);
        } else if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.class_ == (1 : stdgo._internal.debug.elf.Elf_class_.Class_)) && ((@:checkr _f ?? throw "null pointer dereference").fileHeader.machine == (20 : stdgo._internal.debug.elf.Elf_machine.Machine)) : Bool)) {
            return @:check2r _f._applyRelocationsPPC(_dst, _rels);
        } else if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.class_ == (2 : stdgo._internal.debug.elf.Elf_class_.Class_)) && ((@:checkr _f ?? throw "null pointer dereference").fileHeader.machine == (21 : stdgo._internal.debug.elf.Elf_machine.Machine)) : Bool)) {
            return @:check2r _f._applyRelocationsPPC64(_dst, _rels);
        } else if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.class_ == (1 : stdgo._internal.debug.elf.Elf_class_.Class_)) && ((@:checkr _f ?? throw "null pointer dereference").fileHeader.machine == (8 : stdgo._internal.debug.elf.Elf_machine.Machine)) : Bool)) {
            return @:check2r _f._applyRelocationsMIPS(_dst, _rels);
        } else if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.class_ == (2 : stdgo._internal.debug.elf.Elf_class_.Class_)) && ((@:checkr _f ?? throw "null pointer dereference").fileHeader.machine == (8 : stdgo._internal.debug.elf.Elf_machine.Machine)) : Bool)) {
            return @:check2r _f._applyRelocationsMIPS64(_dst, _rels);
        } else if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.class_ == (2 : stdgo._internal.debug.elf.Elf_class_.Class_)) && ((@:checkr _f ?? throw "null pointer dereference").fileHeader.machine == (258 : stdgo._internal.debug.elf.Elf_machine.Machine)) : Bool)) {
            return @:check2r _f._applyRelocationsLOONG64(_dst, _rels);
        } else if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.class_ == (2 : stdgo._internal.debug.elf.Elf_class_.Class_)) && ((@:checkr _f ?? throw "null pointer dereference").fileHeader.machine == (243 : stdgo._internal.debug.elf.Elf_machine.Machine)) : Bool)) {
            return @:check2r _f._applyRelocationsRISCV64(_dst, _rels);
        } else if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.class_ == (2 : stdgo._internal.debug.elf.Elf_class_.Class_)) && ((@:checkr _f ?? throw "null pointer dereference").fileHeader.machine == (22 : stdgo._internal.debug.elf.Elf_machine.Machine)) : Bool)) {
            return @:check2r _f._applyRelocationss390x(_dst, _rels);
        } else if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.class_ == (2 : stdgo._internal.debug.elf.Elf_class_.Class_)) && ((@:checkr _f ?? throw "null pointer dereference").fileHeader.machine == (43 : stdgo._internal.debug.elf.Elf_machine.Machine)) : Bool)) {
            return @:check2r _f._applyRelocationsSPARC64(_dst, _rels);
        } else {
            return stdgo._internal.errors.Errors_new_.new_(("applyRelocations: not implemented" : stdgo.GoString));
        };
    }
    @:keep
    @:tdfield
    static public function section( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.elf.Elf_section.Section> {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        for (__2 => _s in (@:checkr _f ?? throw "null pointer dereference").sections) {
            if ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name == (_name)) {
                return _s;
            };
        };
        return null;
    }
    @:keep
    @:tdfield
    static public function _getSymbols64( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _typ:stdgo._internal.debug.elf.Elf_sectiontype.SectionType):{ var _0 : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        var _symtabSection = @:check2r _f.sectionByType(_typ);
        if ((_symtabSection == null || (_symtabSection : Dynamic).__nil__)) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.debug.elf.Elf_errnosymbols.errNoSymbols };
        };
        var __tmp__ = @:check2r _symtabSection.data(), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("cannot load symbol section: %w" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
        };
        var _symtab = stdgo._internal.bytes.Bytes_newreader.newReader(_data);
        if ((@:check2r _symtab.len() % (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.errors.Errors_new_.new_(("length of symbol section is not a multiple of Sym64Size" : stdgo.GoString)) };
        };
        var __tmp__ = @:check2r _f._stringTable((@:checkr _symtabSection ?? throw "null pointer dereference").sectionHeader.link), _strdata:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("cannot load string table section: %w" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
        };
        var _skip:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(24, 24).__setNumber32__();
        @:check2r _symtab.read((_skip.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        var _symbols = (new stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>((@:check2r _symtab.len() / (24 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((@:check2r _symtab.len() / (24 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? (@:check2r _symtab.len() / (24 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.elf.Elf_symbol.Symbol)]) : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>);
        var _i = (0 : stdgo.GoInt);
        var _sym:stdgo._internal.debug.elf.Elf_sym64.Sym64 = ({} : stdgo._internal.debug.elf.Elf_sym64.Sym64);
        while ((@:check2r _symtab.len() > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_symtab), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_sym) : stdgo.Ref<stdgo._internal.debug.elf.Elf_sym64.Sym64>))));
            var __tmp__ = stdgo._internal.debug.elf.Elf__getstring._getString(_strdata, (_sym.name : stdgo.GoInt)), _str:stdgo.GoString = __tmp__._0, __2:Bool = __tmp__._1;
            _symbols[(_i : stdgo.GoInt)].name = _str?.__copy__();
            _symbols[(_i : stdgo.GoInt)].info = _sym.info;
            _symbols[(_i : stdgo.GoInt)].other = _sym.other;
            _symbols[(_i : stdgo.GoInt)].section = (_sym.shndx : stdgo._internal.debug.elf.Elf_sectionindex.SectionIndex);
            _symbols[(_i : stdgo.GoInt)].value = _sym.value;
            _symbols[(_i : stdgo.GoInt)].size = _sym.size;
            _i++;
        };
        return { _0 : _symbols, _1 : _strdata, _2 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _getSymbols32( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _typ:stdgo._internal.debug.elf.Elf_sectiontype.SectionType):{ var _0 : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        var _symtabSection = @:check2r _f.sectionByType(_typ);
        if ((_symtabSection == null || (_symtabSection : Dynamic).__nil__)) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.debug.elf.Elf_errnosymbols.errNoSymbols };
        };
        var __tmp__ = @:check2r _symtabSection.data(), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("cannot load symbol section: %w" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
        };
        var _symtab = stdgo._internal.bytes.Bytes_newreader.newReader(_data);
        if ((@:check2r _symtab.len() % (16 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.errors.Errors_new_.new_(("length of symbol section is not a multiple of SymSize" : stdgo.GoString)) };
        };
        var __tmp__ = @:check2r _f._stringTable((@:checkr _symtabSection ?? throw "null pointer dereference").sectionHeader.link), _strdata:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("cannot load string table section: %w" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
        };
        var _skip:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
        @:check2r _symtab.read((_skip.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        var _symbols = (new stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>((@:check2r _symtab.len() / (16 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((@:check2r _symtab.len() / (16 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? (@:check2r _symtab.len() / (16 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.elf.Elf_symbol.Symbol)]) : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>);
        var _i = (0 : stdgo.GoInt);
        var _sym:stdgo._internal.debug.elf.Elf_sym32.Sym32 = ({} : stdgo._internal.debug.elf.Elf_sym32.Sym32);
        while ((@:check2r _symtab.len() > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_symtab), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_sym) : stdgo.Ref<stdgo._internal.debug.elf.Elf_sym32.Sym32>))));
            var __tmp__ = stdgo._internal.debug.elf.Elf__getstring._getString(_strdata, (_sym.name : stdgo.GoInt)), _str:stdgo.GoString = __tmp__._0, __2:Bool = __tmp__._1;
            _symbols[(_i : stdgo.GoInt)].name = _str?.__copy__();
            _symbols[(_i : stdgo.GoInt)].info = _sym.info;
            _symbols[(_i : stdgo.GoInt)].other = _sym.other;
            _symbols[(_i : stdgo.GoInt)].section = (_sym.shndx : stdgo._internal.debug.elf.Elf_sectionindex.SectionIndex);
            _symbols[(_i : stdgo.GoInt)].value = (_sym.value : stdgo.GoUInt64);
            _symbols[(_i : stdgo.GoInt)].size = (_sym.size : stdgo.GoUInt64);
            _i++;
        };
        return { _0 : _symbols, _1 : _strdata, _2 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _getSymbols( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _typ:stdgo._internal.debug.elf.Elf_sectiontype.SectionType):{ var _0 : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        {
            final __value__ = (@:checkr _f ?? throw "null pointer dereference").fileHeader.class_;
            if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_class_.Class_))) {
                return @:check2r _f._getSymbols64(_typ);
            } else if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_class_.Class_))) {
                return @:check2r _f._getSymbols32(_typ);
            };
        };
        return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.errors.Errors_new_.new_(("not implemented" : stdgo.GoString)) };
    }
    @:keep
    @:tdfield
    static public function sectionByType( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _typ:stdgo._internal.debug.elf.Elf_sectiontype.SectionType):stdgo.Ref<stdgo._internal.debug.elf.Elf_section.Section> {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        for (__2 => _s in (@:checkr _f ?? throw "null pointer dereference").sections) {
            if ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.type == (_typ)) {
                return _s;
            };
        };
        return null;
    }
    @:keep
    @:tdfield
    static public function close( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        var _err:stdgo.Error = (null : stdgo.Error);
        if ((@:checkr _f ?? throw "null pointer dereference")._closer != null) {
            _err = (@:checkr _f ?? throw "null pointer dereference")._closer.close();
            (@:checkr _f ?? throw "null pointer dereference")._closer = (null : stdgo._internal.io.Io_closer.Closer);
        };
        return _err;
    }
    @:keep
    @:tdfield
    static public function _stringTable( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _link:stdgo.GoUInt32):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        if (((_link <= (0u32 : stdgo.GoUInt32) : Bool) || (_link >= ((@:checkr _f ?? throw "null pointer dereference").sections.length : stdgo.GoUInt32) : Bool) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("section has invalid string table link" : stdgo.GoString)) };
        };
        return @:check2r (@:checkr _f ?? throw "null pointer dereference").sections[(_link : stdgo.GoInt)].data();
    }
}
