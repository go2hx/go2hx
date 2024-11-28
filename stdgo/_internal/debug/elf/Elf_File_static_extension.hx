package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.File_asInterface) class File_static_extension {
    @:keep
    static public function dynValue( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>, _tag:stdgo._internal.debug.elf.Elf_DynTag.DynTag):{ var _0 : stdgo.Slice<stdgo.GoUInt64>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File> = _f;
        var _ds = _f.sectionByType((6u32 : stdgo._internal.debug.elf.Elf_SectionType.SectionType));
        if ((_ds == null || (_ds : Dynamic).__nil__)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt64>), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = _ds.data(), _d:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt64>), _1 : _err };
        };
        var _vals:stdgo.Slice<stdgo.GoUInt64> = (null : stdgo.Slice<stdgo.GoUInt64>);
        while (((_d.length) > (0 : stdgo.GoInt) : Bool)) {
            var _t:stdgo._internal.debug.elf.Elf_DynTag.DynTag = ((0 : stdgo.GoInt) : stdgo._internal.debug.elf.Elf_DynTag.DynTag);
            var _v:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            {
                final __value__ = _f.fileHeader.class_;
                if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_Class_.Class_))) {
                    _t = (_f.fileHeader.byteOrder.uint32((_d.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.debug.elf.Elf_DynTag.DynTag);
                    _v = (_f.fileHeader.byteOrder.uint32((_d.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
                    _d = (_d.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                } else if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_Class_.Class_))) {
                    _t = (_f.fileHeader.byteOrder.uint64((_d.__slice__((0 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.debug.elf.Elf_DynTag.DynTag);
                    _v = _f.fileHeader.byteOrder.uint64((_d.__slice__((8 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
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
    static public function dynString( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>, _tag:stdgo._internal.debug.elf.Elf_DynTag.DynTag):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File> = _f;
        {
            final __value__ = _tag;
            if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_DynTag.DynTag)) || __value__ == ((14 : stdgo._internal.debug.elf.Elf_DynTag.DynTag)) || __value__ == ((15 : stdgo._internal.debug.elf.Elf_DynTag.DynTag)) || __value__ == ((29 : stdgo._internal.debug.elf.Elf_DynTag.DynTag))) {} else {
                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("non-string-valued tag %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tag))) };
            };
        };
        var _ds = _f.sectionByType((6u32 : stdgo._internal.debug.elf.Elf_SectionType.SectionType));
        if ((_ds == null || (_ds : Dynamic).__nil__)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = _ds.data(), _d:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
        };
        var __tmp__ = _f._stringTable(_ds.sectionHeader.link), _str:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
        };
        var _all:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        while (((_d.length) > (0 : stdgo.GoInt) : Bool)) {
            var _t:stdgo._internal.debug.elf.Elf_DynTag.DynTag = ((0 : stdgo.GoInt) : stdgo._internal.debug.elf.Elf_DynTag.DynTag);
            var _v:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            {
                final __value__ = _f.fileHeader.class_;
                if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_Class_.Class_))) {
                    _t = (_f.fileHeader.byteOrder.uint32((_d.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.debug.elf.Elf_DynTag.DynTag);
                    _v = (_f.fileHeader.byteOrder.uint32((_d.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
                    _d = (_d.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                } else if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_Class_.Class_))) {
                    _t = (_f.fileHeader.byteOrder.uint64((_d.__slice__((0 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.debug.elf.Elf_DynTag.DynTag);
                    _v = _f.fileHeader.byteOrder.uint64((_d.__slice__((8 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _d = (_d.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                };
            };
            if (_t == (_tag)) {
                var __tmp__ = stdgo._internal.debug.elf.Elf__getString._getString(_str, (_v : stdgo.GoInt)), _s:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _all = (_all.__append__(_s?.__copy__()));
                };
            };
        };
        return { _0 : _all, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function importedLibraries( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File> = _f;
        return _f.dynString((1 : stdgo._internal.debug.elf.Elf_DynTag.DynTag));
    }
    @:keep
    static public function _gnuVersion( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>, _i:stdgo.GoInt):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File> = _f;
        var _library = ("" : stdgo.GoString), _version = ("" : stdgo.GoString);
        _i = (((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt);
        if ((_i >= (_f._gnuVersym.length) : Bool)) {
            return { _0 : _library, _1 : _version };
        };
        var _s = (_f._gnuVersym.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
        if (((_s.length) < (2 : stdgo.GoInt) : Bool)) {
            return { _0 : _library, _1 : _version };
        };
        var _j = (_f.fileHeader.byteOrder.uint16(_s) : stdgo.GoInt);
        if (((_j < (2 : stdgo.GoInt) : Bool) || (_j >= (_f._gnuNeed.length) : Bool) : Bool)) {
            return { _0 : _library, _1 : _version };
        };
        var _n = (stdgo.Go.setRef(_f._gnuNeed[(_j : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_T_verneed.T_verneed>);
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : _n.file?.__copy__(), _1 : _n.name?.__copy__() };
            _library = __tmp__._0;
            _version = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    static public function _gnuVersionInit( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>, _str:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File> = _f;
        if (_f._gnuNeed != null) {
            return true;
        };
        var _vn = _f.sectionByType((1879048190u32 : stdgo._internal.debug.elf.Elf_SectionType.SectionType));
        if ((_vn == null || (_vn : Dynamic).__nil__)) {
            return false;
        };
        var __tmp__ = _vn.data(), _d:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __2:stdgo.Error = __tmp__._1;
        var _need:stdgo.Slice<stdgo._internal.debug.elf.Elf_T_verneed.T_verneed> = (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_T_verneed.T_verneed>);
        var _i = (0 : stdgo.GoInt);
        while (true) {
            if (((_i + (16 : stdgo.GoInt) : stdgo.GoInt) > (_d.length) : Bool)) {
                break;
            };
            var _vers = (_f.fileHeader.byteOrder.uint16((_d.__slice__(_i, (_i + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt16);
            if (_vers != ((1 : stdgo.GoUInt16))) {
                break;
            };
            var _cnt = (_f.fileHeader.byteOrder.uint16((_d.__slice__((_i + (2 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt16);
            var _fileoff = (_f.fileHeader.byteOrder.uint32((_d.__slice__((_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
            var _aux = (_f.fileHeader.byteOrder.uint32((_d.__slice__((_i + (8 : stdgo.GoInt) : stdgo.GoInt), (_i + (12 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
            var _next = (_f.fileHeader.byteOrder.uint32((_d.__slice__((_i + (12 : stdgo.GoInt) : stdgo.GoInt), (_i + (16 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
            var __tmp__ = stdgo._internal.debug.elf.Elf__getString._getString(_str, (_fileoff : stdgo.GoInt)), _file:stdgo.GoString = __tmp__._0, __3:Bool = __tmp__._1;
            var _name:stdgo.GoString = ("" : stdgo.GoString);
            var _j = (_i + (_aux : stdgo.GoInt) : stdgo.GoInt);
            {
                var _c = (0 : stdgo.GoInt);
                while ((_c < (_cnt : stdgo.GoInt) : Bool)) {
                    if (((_j + (16 : stdgo.GoInt) : stdgo.GoInt) > (_d.length) : Bool)) {
                        break;
                    };
var _other = (_f.fileHeader.byteOrder.uint16((_d.__slice__((_j + (6 : stdgo.GoInt) : stdgo.GoInt), (_j + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt16);
var _nameoff = (_f.fileHeader.byteOrder.uint32((_d.__slice__((_j + (8 : stdgo.GoInt) : stdgo.GoInt), (_j + (12 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
var _next = (_f.fileHeader.byteOrder.uint32((_d.__slice__((_j + (12 : stdgo.GoInt) : stdgo.GoInt), (_j + (16 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
{
                        var __tmp__ = stdgo._internal.debug.elf.Elf__getString._getString(_str, (_nameoff : stdgo.GoInt));
                        _name = __tmp__._0.__copy__();
                    };
var _ndx = (_other : stdgo.GoInt);
if ((_ndx >= (_need.length) : Bool)) {
                        var _a = (new stdgo.Slice<stdgo._internal.debug.elf.Elf_T_verneed.T_verneed>(((2 : stdgo.GoInt) * ((_ndx + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((2 : stdgo.GoInt) * ((_ndx + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt).toBasic() > 0 ? ((2 : stdgo.GoInt) * ((_ndx + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.elf.Elf_T_verneed.T_verneed)]) : stdgo.Slice<stdgo._internal.debug.elf.Elf_T_verneed.T_verneed>);
                        stdgo.Go.copySlice(_a, _need);
                        _need = _a;
                    };
_need[(_ndx : stdgo.GoInt)] = (new stdgo._internal.debug.elf.Elf_T_verneed.T_verneed(_file.__copy__(), _name.__copy__()) : stdgo._internal.debug.elf.Elf_T_verneed.T_verneed);
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
        var _vs = _f.sectionByType((1879048191u32 : stdgo._internal.debug.elf.Elf_SectionType.SectionType));
        if ((_vs == null || (_vs : Dynamic).__nil__)) {
            return false;
        };
        {
            var __tmp__ = _vs.data();
            _d = __tmp__._0;
        };
        _f._gnuNeed = _need;
        _f._gnuVersym = _d;
        return true;
    }
    @:keep
    static public function importedSymbols( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>):{ var _0 : stdgo.Slice<stdgo._internal.debug.elf.Elf_ImportedSymbol.ImportedSymbol>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File> = _f;
        var __tmp__ = _f._getSymbols((11u32 : stdgo._internal.debug.elf.Elf_SectionType.SectionType)), _sym:stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol> = __tmp__._0, _str:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_ImportedSymbol.ImportedSymbol>), _1 : _err };
        };
        _f._gnuVersionInit(_str);
        var _all:stdgo.Slice<stdgo._internal.debug.elf.Elf_ImportedSymbol.ImportedSymbol> = (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_ImportedSymbol.ImportedSymbol>);
        for (_i => _s in _sym) {
            if (((stdgo._internal.debug.elf.Elf_st_BIND.st_BIND(_s.info) == (1 : stdgo._internal.debug.elf.Elf_SymBind.SymBind)) && (_s.section == (0 : stdgo._internal.debug.elf.Elf_SectionIndex.SectionIndex)) : Bool)) {
                _all = (_all.__append__(({ name : _s.name?.__copy__() } : stdgo._internal.debug.elf.Elf_ImportedSymbol.ImportedSymbol)));
                var _sym = (stdgo.Go.setRef(_all[((_all.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_ImportedSymbol.ImportedSymbol>);
                {
                    var __tmp__ = _f._gnuVersion(_i);
                    _sym.library = __tmp__._0?.__copy__();
                    _sym.version = __tmp__._1?.__copy__();
                };
            };
        };
        return { _0 : _all, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function dynamicSymbols( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>):{ var _0 : stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File> = _f;
        var __tmp__ = _f._getSymbols((11u32 : stdgo._internal.debug.elf.Elf_SectionType.SectionType)), _sym:stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol> = __tmp__._0, _str:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol>), _1 : _err };
        };
        if (_f._gnuVersionInit(_str)) {
            for (_i => _ in _sym) {
                {
                    var __tmp__ = _f._gnuVersion(_i);
                    _sym[(_i : stdgo.GoInt)].library = __tmp__._0?.__copy__();
                    _sym[(_i : stdgo.GoInt)].version = __tmp__._1?.__copy__();
                };
            };
        };
        return { _0 : _sym, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function symbols( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>):{ var _0 : stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File> = _f;
        var __tmp__ = _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_SectionType.SectionType)), _sym:stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        return { _0 : _sym, _1 : _err };
    }
    @:keep
    static public function dwarf( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File> = _f;
        var _dwarfSuffix = function(_s:stdgo.Ref<stdgo._internal.debug.elf.Elf_Section.Section>):stdgo.GoString {
            if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_s.sectionHeader.name?.__copy__(), (".debug_" : stdgo.GoString))) {
                return (_s.sectionHeader.name.__slice__((7 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            } else if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_s.sectionHeader.name?.__copy__(), (".zdebug_" : stdgo.GoString))) {
                return (_s.sectionHeader.name.__slice__((8 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            } else {
                return stdgo.Go.str()?.__copy__();
            };
        };
        var _sectionData = function(_i:stdgo.GoInt, _s:stdgo.Ref<stdgo._internal.debug.elf.Elf_Section.Section>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
            var __tmp__ = _s.data(), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) && ((_b.length : stdgo.GoUInt64) < _s.sectionHeader.size : Bool) : Bool)) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            if (_f.fileHeader.type == ((2 : stdgo._internal.debug.elf.Elf_Type_.Type_))) {
                return { _0 : _b, _1 : (null : stdgo.Error) };
            };
            for (__2 => _r in _f.sections) {
                if (((_r.sectionHeader.type != (4u32 : stdgo._internal.debug.elf.Elf_SectionType.SectionType)) && (_r.sectionHeader.type != (9u32 : stdgo._internal.debug.elf.Elf_SectionType.SectionType)) : Bool)) {
                    continue;
                };
                if ((_r.sectionHeader.info : stdgo.GoInt) != (_i)) {
                    continue;
                };
                var __tmp__ = _r.data(), _rd:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                };
                _err = _f._applyRelocations(_b, _rd);
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
        for (_i => _s in _f.sections) {
            var _suffix = (_dwarfSuffix(_s)?.__copy__() : stdgo.GoString);
            if (_suffix == (stdgo.Go.str())) {
                continue;
            };
            {
                var __tmp__ = (_dat != null && _dat.exists(_suffix?.__copy__()) ? { _0 : _dat[_suffix?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : false }), __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
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
        var __tmp__ = stdgo._internal.debug.dwarf.Dwarf_new_.new_((_dat[("abbrev" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoUInt8>)), (null : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Slice<stdgo.GoUInt8>), (_dat[("info" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoUInt8>)), (_dat[("line" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoUInt8>)), (null : stdgo.Slice<stdgo.GoUInt8>), (_dat[("ranges" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoUInt8>)), (_dat[("str" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoUInt8>))), _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        for (_i => _s in _f.sections) {
            var _suffix = (_dwarfSuffix(_s)?.__copy__() : stdgo.GoString);
            if (_suffix == (stdgo.Go.str())) {
                continue;
            };
            {
                var __tmp__ = (_dat != null && _dat.exists(_suffix?.__copy__()) ? { _0 : _dat[_suffix?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : false }), __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
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
                    var _err = (_d.addTypes(stdgo._internal.fmt.Fmt_sprintf.sprintf(("types-%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__(), _b) : stdgo.Error);
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                };
            } else {
                {
                    var _err = (_d.addSection(((".debug_" : stdgo.GoString) + _suffix?.__copy__() : stdgo.GoString)?.__copy__(), _b) : stdgo.Error);
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                };
            };
        };
        return { _0 : _d, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _applyRelocationsSPARC64( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File> = _f;
        if (((_rels.length) % (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 24" : stdgo.GoString));
        };
        var __tmp__ = _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_SectionType.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newReader.newReader(_rels);
        var _rela:stdgo._internal.debug.elf.Elf_Rela64.Rela64 = ({} : stdgo._internal.debug.elf.Elf_Rela64.Rela64);
        while ((_b.len() > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _f.fileHeader.byteOrder, stdgo.Go.toInterface((stdgo.Go.setRef(_rela) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Rela64.Rela64>)));
            var _symNo = (_rela.info >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            var _t = ((_rela.info & (255i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.debug.elf.Elf_R_SPARC.R_SPARC);
            if (((_symNo == (0i64 : stdgo.GoUInt64)) || (_symNo > (_symbols.length : stdgo.GoUInt64) : Bool) : Bool)) {
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Symbol.Symbol>);
            if (!stdgo._internal.debug.elf.Elf__canApplyRelocation._canApplyRelocation(_sym)) {
                continue;
            };
            {
                final __value__ = _t;
                if (__value__ == ((32 : stdgo._internal.debug.elf.Elf_R_SPARC.R_SPARC)) || __value__ == ((54 : stdgo._internal.debug.elf.Elf_R_SPARC.R_SPARC))) {
                    if ((((_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val64 = (_sym.value + (_rela.addend : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _f.fileHeader.byteOrder.putUint64((_dst.__slice__(_rela.off, (_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val64);
                } else if (__value__ == ((3 : stdgo._internal.debug.elf.Elf_R_SPARC.R_SPARC)) || __value__ == ((23 : stdgo._internal.debug.elf.Elf_R_SPARC.R_SPARC))) {
                    if ((((_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val32 = ((_sym.value : stdgo.GoUInt32) + (_rela.addend : stdgo.GoUInt32) : stdgo.GoUInt32);
                    _f.fileHeader.byteOrder.putUint32((_dst.__slice__(_rela.off, (_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val32);
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _applyRelocationss390x( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File> = _f;
        if (((_rels.length) % (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 24" : stdgo.GoString));
        };
        var __tmp__ = _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_SectionType.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newReader.newReader(_rels);
        var _rela:stdgo._internal.debug.elf.Elf_Rela64.Rela64 = ({} : stdgo._internal.debug.elf.Elf_Rela64.Rela64);
        while ((_b.len() > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _f.fileHeader.byteOrder, stdgo.Go.toInterface((stdgo.Go.setRef(_rela) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Rela64.Rela64>)));
            var _symNo = (_rela.info >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            var _t = ((_rela.info & (65535i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.debug.elf.Elf_R_390.R_390);
            if (((_symNo == (0i64 : stdgo.GoUInt64)) || (_symNo > (_symbols.length : stdgo.GoUInt64) : Bool) : Bool)) {
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Symbol.Symbol>);
            if (!stdgo._internal.debug.elf.Elf__canApplyRelocation._canApplyRelocation(_sym)) {
                continue;
            };
            {
                final __value__ = _t;
                if (__value__ == ((22 : stdgo._internal.debug.elf.Elf_R_390.R_390))) {
                    if ((((_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val64 = (_sym.value + (_rela.addend : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _f.fileHeader.byteOrder.putUint64((_dst.__slice__(_rela.off, (_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val64);
                } else if (__value__ == ((4 : stdgo._internal.debug.elf.Elf_R_390.R_390))) {
                    if ((((_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val32 = ((_sym.value : stdgo.GoUInt32) + (_rela.addend : stdgo.GoUInt32) : stdgo.GoUInt32);
                    _f.fileHeader.byteOrder.putUint32((_dst.__slice__(_rela.off, (_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val32);
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _applyRelocationsRISCV64( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File> = _f;
        if (((_rels.length) % (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 24" : stdgo.GoString));
        };
        var __tmp__ = _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_SectionType.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newReader.newReader(_rels);
        var _rela:stdgo._internal.debug.elf.Elf_Rela64.Rela64 = ({} : stdgo._internal.debug.elf.Elf_Rela64.Rela64);
        while ((_b.len() > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _f.fileHeader.byteOrder, stdgo.Go.toInterface((stdgo.Go.setRef(_rela) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Rela64.Rela64>)));
            var _symNo = (_rela.info >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            var _t = ((_rela.info & (65535i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.debug.elf.Elf_R_RISCV.R_RISCV);
            if (((_symNo == (0i64 : stdgo.GoUInt64)) || (_symNo > (_symbols.length : stdgo.GoUInt64) : Bool) : Bool)) {
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Symbol.Symbol>);
            if (!stdgo._internal.debug.elf.Elf__canApplyRelocation._canApplyRelocation(_sym)) {
                continue;
            };
            {
                final __value__ = _t;
                if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_R_RISCV.R_RISCV))) {
                    if ((((_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val64 = (_sym.value + (_rela.addend : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _f.fileHeader.byteOrder.putUint64((_dst.__slice__(_rela.off, (_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val64);
                } else if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_R_RISCV.R_RISCV))) {
                    if ((((_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val32 = ((_sym.value : stdgo.GoUInt32) + (_rela.addend : stdgo.GoUInt32) : stdgo.GoUInt32);
                    _f.fileHeader.byteOrder.putUint32((_dst.__slice__(_rela.off, (_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val32);
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _applyRelocationsLOONG64( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File> = _f;
        if (((_rels.length) % (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 24" : stdgo.GoString));
        };
        var __tmp__ = _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_SectionType.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newReader.newReader(_rels);
        var _rela:stdgo._internal.debug.elf.Elf_Rela64.Rela64 = ({} : stdgo._internal.debug.elf.Elf_Rela64.Rela64);
        while ((_b.len() > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _f.fileHeader.byteOrder, stdgo.Go.toInterface((stdgo.Go.setRef(_rela) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Rela64.Rela64>)));
            var _symNo:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            var _t:stdgo._internal.debug.elf.Elf_R_LARCH.R_LARCH = ((0 : stdgo.GoInt) : stdgo._internal.debug.elf.Elf_R_LARCH.R_LARCH);
            _symNo = (_rela.info >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            _t = ((_rela.info & (65535i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.debug.elf.Elf_R_LARCH.R_LARCH);
            if (((_symNo == (0i64 : stdgo.GoUInt64)) || (_symNo > (_symbols.length : stdgo.GoUInt64) : Bool) : Bool)) {
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Symbol.Symbol>);
            if (!stdgo._internal.debug.elf.Elf__canApplyRelocation._canApplyRelocation(_sym)) {
                continue;
            };
            {
                final __value__ = _t;
                if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_R_LARCH.R_LARCH))) {
                    if ((((_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val64 = (_sym.value + (_rela.addend : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _f.fileHeader.byteOrder.putUint64((_dst.__slice__(_rela.off, (_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val64);
                } else if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_R_LARCH.R_LARCH))) {
                    if ((((_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val32 = ((_sym.value : stdgo.GoUInt32) + (_rela.addend : stdgo.GoUInt32) : stdgo.GoUInt32);
                    _f.fileHeader.byteOrder.putUint32((_dst.__slice__(_rela.off, (_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val32);
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _applyRelocationsMIPS64( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File> = _f;
        if (((_rels.length) % (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 24" : stdgo.GoString));
        };
        var __tmp__ = _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_SectionType.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newReader.newReader(_rels);
        var _rela:stdgo._internal.debug.elf.Elf_Rela64.Rela64 = ({} : stdgo._internal.debug.elf.Elf_Rela64.Rela64);
        while ((_b.len() > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _f.fileHeader.byteOrder, stdgo.Go.toInterface((stdgo.Go.setRef(_rela) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Rela64.Rela64>)));
            var _symNo:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            var _t:stdgo._internal.debug.elf.Elf_R_MIPS.R_MIPS = ((0 : stdgo.GoInt) : stdgo._internal.debug.elf.Elf_R_MIPS.R_MIPS);
            if (stdgo.Go.toInterface(_f.fileHeader.byteOrder) == (stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian)))) {
                _symNo = (_rela.info >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                _t = ((_rela.info & (255i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.debug.elf.Elf_R_MIPS.R_MIPS);
            } else {
                _symNo = (_rela.info & (4294967295i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                _t = ((_rela.info >> (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.debug.elf.Elf_R_MIPS.R_MIPS);
            };
            if (((_symNo == (0i64 : stdgo.GoUInt64)) || (_symNo > (_symbols.length : stdgo.GoUInt64) : Bool) : Bool)) {
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Symbol.Symbol>);
            if (!stdgo._internal.debug.elf.Elf__canApplyRelocation._canApplyRelocation(_sym)) {
                continue;
            };
            {
                final __value__ = _t;
                if (__value__ == ((18 : stdgo._internal.debug.elf.Elf_R_MIPS.R_MIPS))) {
                    if ((((_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val64 = (_sym.value + (_rela.addend : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _f.fileHeader.byteOrder.putUint64((_dst.__slice__(_rela.off, (_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val64);
                } else if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_R_MIPS.R_MIPS))) {
                    if ((((_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val32 = ((_sym.value : stdgo.GoUInt32) + (_rela.addend : stdgo.GoUInt32) : stdgo.GoUInt32);
                    _f.fileHeader.byteOrder.putUint32((_dst.__slice__(_rela.off, (_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val32);
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _applyRelocationsMIPS( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File> = _f;
        if (((_rels.length) % (8 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 8" : stdgo.GoString));
        };
        var __tmp__ = _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_SectionType.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newReader.newReader(_rels);
        var _rel:stdgo._internal.debug.elf.Elf_Rel32.Rel32 = ({} : stdgo._internal.debug.elf.Elf_Rel32.Rel32);
        while ((_b.len() > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _f.fileHeader.byteOrder, stdgo.Go.toInterface((stdgo.Go.setRef(_rel) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Rel32.Rel32>)));
            var _symNo = (_rel.info >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
            var _t = ((_rel.info & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo._internal.debug.elf.Elf_R_MIPS.R_MIPS);
            if (((_symNo == (0u32 : stdgo.GoUInt32)) || (_symNo > (_symbols.length : stdgo.GoUInt32) : Bool) : Bool)) {
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Symbol.Symbol>);
            {
                final __value__ = _t;
                if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_R_MIPS.R_MIPS))) {
                    if (((_rel.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32) >= (_dst.length : stdgo.GoUInt32) : Bool)) {
                        continue;
                    };
                    var _val = (_f.fileHeader.byteOrder.uint32((_dst.__slice__(_rel.off, (_rel.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                    _val = (_val + ((_sym.value : stdgo.GoUInt32)) : stdgo.GoUInt32);
                    _f.fileHeader.byteOrder.putUint32((_dst.__slice__(_rel.off, (_rel.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>), _val);
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _applyRelocationsPPC64( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File> = _f;
        if (((_rels.length) % (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 24" : stdgo.GoString));
        };
        var __tmp__ = _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_SectionType.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newReader.newReader(_rels);
        var _rela:stdgo._internal.debug.elf.Elf_Rela64.Rela64 = ({} : stdgo._internal.debug.elf.Elf_Rela64.Rela64);
        while ((_b.len() > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _f.fileHeader.byteOrder, stdgo.Go.toInterface((stdgo.Go.setRef(_rela) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Rela64.Rela64>)));
            var _symNo = (_rela.info >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            var _t = ((_rela.info & (65535i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.debug.elf.Elf_R_PPC64.R_PPC64);
            if (((_symNo == (0i64 : stdgo.GoUInt64)) || (_symNo > (_symbols.length : stdgo.GoUInt64) : Bool) : Bool)) {
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Symbol.Symbol>);
            if (!stdgo._internal.debug.elf.Elf__canApplyRelocation._canApplyRelocation(_sym)) {
                continue;
            };
            {
                final __value__ = _t;
                if (__value__ == ((38 : stdgo._internal.debug.elf.Elf_R_PPC64.R_PPC64))) {
                    if ((((_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val64 = (_sym.value + (_rela.addend : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _f.fileHeader.byteOrder.putUint64((_dst.__slice__(_rela.off, (_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val64);
                } else if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_R_PPC64.R_PPC64))) {
                    if ((((_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val32 = ((_sym.value : stdgo.GoUInt32) + (_rela.addend : stdgo.GoUInt32) : stdgo.GoUInt32);
                    _f.fileHeader.byteOrder.putUint32((_dst.__slice__(_rela.off, (_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val32);
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _applyRelocationsPPC( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File> = _f;
        if (((_rels.length) % (12 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 12" : stdgo.GoString));
        };
        var __tmp__ = _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_SectionType.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newReader.newReader(_rels);
        var _rela:stdgo._internal.debug.elf.Elf_Rela32.Rela32 = ({} : stdgo._internal.debug.elf.Elf_Rela32.Rela32);
        while ((_b.len() > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _f.fileHeader.byteOrder, stdgo.Go.toInterface((stdgo.Go.setRef(_rela) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Rela32.Rela32>)));
            var _symNo = (_rela.info >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
            var _t = ((_rela.info & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo._internal.debug.elf.Elf_R_PPC.R_PPC);
            if (((_symNo == (0u32 : stdgo.GoUInt32)) || (_symNo > (_symbols.length : stdgo.GoUInt32) : Bool) : Bool)) {
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Symbol.Symbol>);
            if (!stdgo._internal.debug.elf.Elf__canApplyRelocation._canApplyRelocation(_sym)) {
                continue;
            };
            {
                final __value__ = _t;
                if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_R_PPC.R_PPC))) {
                    if ((((_rela.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32) >= (_dst.length : stdgo.GoUInt32) : Bool) || (_rela.addend < (0 : stdgo.GoInt32) : Bool) : Bool)) {
                        continue;
                    };
                    var _val32 = ((_sym.value : stdgo.GoUInt32) + (_rela.addend : stdgo.GoUInt32) : stdgo.GoUInt32);
                    _f.fileHeader.byteOrder.putUint32((_dst.__slice__(_rela.off, (_rela.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>), _val32);
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _applyRelocationsARM64( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File> = _f;
        if (((_rels.length) % (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 24" : stdgo.GoString));
        };
        var __tmp__ = _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_SectionType.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newReader.newReader(_rels);
        var _rela:stdgo._internal.debug.elf.Elf_Rela64.Rela64 = ({} : stdgo._internal.debug.elf.Elf_Rela64.Rela64);
        while ((_b.len() > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _f.fileHeader.byteOrder, stdgo.Go.toInterface((stdgo.Go.setRef(_rela) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Rela64.Rela64>)));
            var _symNo = (_rela.info >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            var _t = ((_rela.info & (65535i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.debug.elf.Elf_R_AARCH64.R_AARCH64);
            if (((_symNo == (0i64 : stdgo.GoUInt64)) || (_symNo > (_symbols.length : stdgo.GoUInt64) : Bool) : Bool)) {
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Symbol.Symbol>);
            if (!stdgo._internal.debug.elf.Elf__canApplyRelocation._canApplyRelocation(_sym)) {
                continue;
            };
            {
                final __value__ = _t;
                if (__value__ == ((257 : stdgo._internal.debug.elf.Elf_R_AARCH64.R_AARCH64))) {
                    if ((((_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val64 = (_sym.value + (_rela.addend : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _f.fileHeader.byteOrder.putUint64((_dst.__slice__(_rela.off, (_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val64);
                } else if (__value__ == ((258 : stdgo._internal.debug.elf.Elf_R_AARCH64.R_AARCH64))) {
                    if ((((_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val32 = ((_sym.value : stdgo.GoUInt32) + (_rela.addend : stdgo.GoUInt32) : stdgo.GoUInt32);
                    _f.fileHeader.byteOrder.putUint32((_dst.__slice__(_rela.off, (_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val32);
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _applyRelocationsARM( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File> = _f;
        if (((_rels.length) % (8 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 8" : stdgo.GoString));
        };
        var __tmp__ = _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_SectionType.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newReader.newReader(_rels);
        var _rel:stdgo._internal.debug.elf.Elf_Rel32.Rel32 = ({} : stdgo._internal.debug.elf.Elf_Rel32.Rel32);
        while ((_b.len() > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _f.fileHeader.byteOrder, stdgo.Go.toInterface((stdgo.Go.setRef(_rel) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Rel32.Rel32>)));
            var _symNo = (_rel.info >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
            var _t = ((_rel.info & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo._internal.debug.elf.Elf_R_ARM.R_ARM);
            if (((_symNo == (0u32 : stdgo.GoUInt32)) || (_symNo > (_symbols.length : stdgo.GoUInt32) : Bool) : Bool)) {
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Symbol.Symbol>);
            {
                final __value__ = _t;
                if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_R_ARM.R_ARM))) {
                    if (((_rel.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32) >= (_dst.length : stdgo.GoUInt32) : Bool)) {
                        continue;
                    };
                    var _val = (_f.fileHeader.byteOrder.uint32((_dst.__slice__(_rel.off, (_rel.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                    _val = (_val + ((_sym.value : stdgo.GoUInt32)) : stdgo.GoUInt32);
                    _f.fileHeader.byteOrder.putUint32((_dst.__slice__(_rel.off, (_rel.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>), _val);
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _applyRelocations386( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File> = _f;
        if (((_rels.length) % (8 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 8" : stdgo.GoString));
        };
        var __tmp__ = _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_SectionType.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newReader.newReader(_rels);
        var _rel:stdgo._internal.debug.elf.Elf_Rel32.Rel32 = ({} : stdgo._internal.debug.elf.Elf_Rel32.Rel32);
        while ((_b.len() > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _f.fileHeader.byteOrder, stdgo.Go.toInterface((stdgo.Go.setRef(_rel) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Rel32.Rel32>)));
            var _symNo = (_rel.info >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
            var _t = ((_rel.info & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo._internal.debug.elf.Elf_R_386.R_386);
            if (((_symNo == (0u32 : stdgo.GoUInt32)) || (_symNo > (_symbols.length : stdgo.GoUInt32) : Bool) : Bool)) {
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Symbol.Symbol>);
            if (_t == ((1 : stdgo._internal.debug.elf.Elf_R_386.R_386))) {
                if (((_rel.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32) >= (_dst.length : stdgo.GoUInt32) : Bool)) {
                    continue;
                };
                var _val = (_f.fileHeader.byteOrder.uint32((_dst.__slice__(_rel.off, (_rel.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                _val = (_val + ((_sym.value : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _f.fileHeader.byteOrder.putUint32((_dst.__slice__(_rel.off, (_rel.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>), _val);
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _applyRelocationsAMD64( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File> = _f;
        if (((_rels.length) % (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 24" : stdgo.GoString));
        };
        var __tmp__ = _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_SectionType.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newReader.newReader(_rels);
        var _rela:stdgo._internal.debug.elf.Elf_Rela64.Rela64 = ({} : stdgo._internal.debug.elf.Elf_Rela64.Rela64);
        while ((_b.len() > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), _f.fileHeader.byteOrder, stdgo.Go.toInterface((stdgo.Go.setRef(_rela) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Rela64.Rela64>)));
            var _symNo = (_rela.info >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            var _t = ((_rela.info & (65535i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.debug.elf.Elf_R_X86_64.R_X86_64);
            if (((_symNo == (0i64 : stdgo.GoUInt64)) || (_symNo > (_symbols.length : stdgo.GoUInt64) : Bool) : Bool)) {
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Symbol.Symbol>);
            if (!stdgo._internal.debug.elf.Elf__canApplyRelocation._canApplyRelocation(_sym)) {
                continue;
            };
            {
                final __value__ = _t;
                if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_R_X86_64.R_X86_64))) {
                    if ((((_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val64 = (_sym.value + (_rela.addend : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _f.fileHeader.byteOrder.putUint64((_dst.__slice__(_rela.off, (_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val64);
                } else if (__value__ == ((10 : stdgo._internal.debug.elf.Elf_R_X86_64.R_X86_64))) {
                    if ((((_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        continue;
                    };
                    var _val32 = ((_sym.value : stdgo.GoUInt32) + (_rela.addend : stdgo.GoUInt32) : stdgo.GoUInt32);
                    _f.fileHeader.byteOrder.putUint32((_dst.__slice__(_rela.off, (_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val32);
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _applyRelocations( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File> = _f;
        if (((_f.fileHeader.class_ == (2 : stdgo._internal.debug.elf.Elf_Class_.Class_)) && (_f.fileHeader.machine == (62 : stdgo._internal.debug.elf.Elf_Machine.Machine)) : Bool)) {
            return _f._applyRelocationsAMD64(_dst, _rels);
        } else if (((_f.fileHeader.class_ == (1 : stdgo._internal.debug.elf.Elf_Class_.Class_)) && (_f.fileHeader.machine == (3 : stdgo._internal.debug.elf.Elf_Machine.Machine)) : Bool)) {
            return _f._applyRelocations386(_dst, _rels);
        } else if (((_f.fileHeader.class_ == (1 : stdgo._internal.debug.elf.Elf_Class_.Class_)) && (_f.fileHeader.machine == (40 : stdgo._internal.debug.elf.Elf_Machine.Machine)) : Bool)) {
            return _f._applyRelocationsARM(_dst, _rels);
        } else if (((_f.fileHeader.class_ == (2 : stdgo._internal.debug.elf.Elf_Class_.Class_)) && (_f.fileHeader.machine == (183 : stdgo._internal.debug.elf.Elf_Machine.Machine)) : Bool)) {
            return _f._applyRelocationsARM64(_dst, _rels);
        } else if (((_f.fileHeader.class_ == (1 : stdgo._internal.debug.elf.Elf_Class_.Class_)) && (_f.fileHeader.machine == (20 : stdgo._internal.debug.elf.Elf_Machine.Machine)) : Bool)) {
            return _f._applyRelocationsPPC(_dst, _rels);
        } else if (((_f.fileHeader.class_ == (2 : stdgo._internal.debug.elf.Elf_Class_.Class_)) && (_f.fileHeader.machine == (21 : stdgo._internal.debug.elf.Elf_Machine.Machine)) : Bool)) {
            return _f._applyRelocationsPPC64(_dst, _rels);
        } else if (((_f.fileHeader.class_ == (1 : stdgo._internal.debug.elf.Elf_Class_.Class_)) && (_f.fileHeader.machine == (8 : stdgo._internal.debug.elf.Elf_Machine.Machine)) : Bool)) {
            return _f._applyRelocationsMIPS(_dst, _rels);
        } else if (((_f.fileHeader.class_ == (2 : stdgo._internal.debug.elf.Elf_Class_.Class_)) && (_f.fileHeader.machine == (8 : stdgo._internal.debug.elf.Elf_Machine.Machine)) : Bool)) {
            return _f._applyRelocationsMIPS64(_dst, _rels);
        } else if (((_f.fileHeader.class_ == (2 : stdgo._internal.debug.elf.Elf_Class_.Class_)) && (_f.fileHeader.machine == (258 : stdgo._internal.debug.elf.Elf_Machine.Machine)) : Bool)) {
            return _f._applyRelocationsLOONG64(_dst, _rels);
        } else if (((_f.fileHeader.class_ == (2 : stdgo._internal.debug.elf.Elf_Class_.Class_)) && (_f.fileHeader.machine == (243 : stdgo._internal.debug.elf.Elf_Machine.Machine)) : Bool)) {
            return _f._applyRelocationsRISCV64(_dst, _rels);
        } else if (((_f.fileHeader.class_ == (2 : stdgo._internal.debug.elf.Elf_Class_.Class_)) && (_f.fileHeader.machine == (22 : stdgo._internal.debug.elf.Elf_Machine.Machine)) : Bool)) {
            return _f._applyRelocationss390x(_dst, _rels);
        } else if (((_f.fileHeader.class_ == (2 : stdgo._internal.debug.elf.Elf_Class_.Class_)) && (_f.fileHeader.machine == (43 : stdgo._internal.debug.elf.Elf_Machine.Machine)) : Bool)) {
            return _f._applyRelocationsSPARC64(_dst, _rels);
        } else {
            return stdgo._internal.errors.Errors_new_.new_(("applyRelocations: not implemented" : stdgo.GoString));
        };
    }
    @:keep
    static public function section( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.elf.Elf_Section.Section> {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File> = _f;
        for (__2 => _s in _f.sections) {
            if (_s.sectionHeader.name == (_name)) {
                return _s;
            };
        };
        return null;
    }
    @:keep
    static public function _getSymbols64( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>, _typ:stdgo._internal.debug.elf.Elf_SectionType.SectionType):{ var _0 : stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File> = _f;
        var _symtabSection = _f.sectionByType(_typ);
        if ((_symtabSection == null || (_symtabSection : Dynamic).__nil__)) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.debug.elf.Elf_errNoSymbols.errNoSymbols };
        };
        var __tmp__ = _symtabSection.data(), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("cannot load symbol section: %w" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
        };
        var _symtab = stdgo._internal.bytes.Bytes_newReader.newReader(_data);
        if ((_symtab.len() % (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.errors.Errors_new_.new_(("length of symbol section is not a multiple of Sym64Size" : stdgo.GoString)) };
        };
        var __tmp__ = _f._stringTable(_symtabSection.sectionHeader.link), _strdata:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("cannot load string table section: %w" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
        };
        var _skip:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(24, 24, ...[for (i in 0 ... 24) (0 : stdgo.GoUInt8)]);
        _symtab.read((_skip.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        var _symbols = (new stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol>((_symtab.len() / (24 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_symtab.len() / (24 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? (_symtab.len() / (24 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.elf.Elf_Symbol.Symbol)]) : stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol>);
        var _i = (0 : stdgo.GoInt);
        var _sym:stdgo._internal.debug.elf.Elf_Sym64.Sym64 = ({} : stdgo._internal.debug.elf.Elf_Sym64.Sym64);
        while ((_symtab.len() > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_symtab), _f.fileHeader.byteOrder, stdgo.Go.toInterface((stdgo.Go.setRef(_sym) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Sym64.Sym64>)));
            var __tmp__ = stdgo._internal.debug.elf.Elf__getString._getString(_strdata, (_sym.name : stdgo.GoInt)), _str:stdgo.GoString = __tmp__._0, __2:Bool = __tmp__._1;
            _symbols[(_i : stdgo.GoInt)].name = _str?.__copy__();
            _symbols[(_i : stdgo.GoInt)].info = _sym.info;
            _symbols[(_i : stdgo.GoInt)].other = _sym.other;
            _symbols[(_i : stdgo.GoInt)].section = (_sym.shndx : stdgo._internal.debug.elf.Elf_SectionIndex.SectionIndex);
            _symbols[(_i : stdgo.GoInt)].value = _sym.value;
            _symbols[(_i : stdgo.GoInt)].size = _sym.size;
            _i++;
        };
        return { _0 : _symbols, _1 : _strdata, _2 : (null : stdgo.Error) };
    }
    @:keep
    static public function _getSymbols32( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>, _typ:stdgo._internal.debug.elf.Elf_SectionType.SectionType):{ var _0 : stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File> = _f;
        var _symtabSection = _f.sectionByType(_typ);
        if ((_symtabSection == null || (_symtabSection : Dynamic).__nil__)) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.debug.elf.Elf_errNoSymbols.errNoSymbols };
        };
        var __tmp__ = _symtabSection.data(), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("cannot load symbol section: %w" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
        };
        var _symtab = stdgo._internal.bytes.Bytes_newReader.newReader(_data);
        if ((_symtab.len() % (16 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.errors.Errors_new_.new_(("length of symbol section is not a multiple of SymSize" : stdgo.GoString)) };
        };
        var __tmp__ = _f._stringTable(_symtabSection.sectionHeader.link), _strdata:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("cannot load string table section: %w" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
        };
        var _skip:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)]);
        _symtab.read((_skip.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        var _symbols = (new stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol>((_symtab.len() / (16 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_symtab.len() / (16 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? (_symtab.len() / (16 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.elf.Elf_Symbol.Symbol)]) : stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol>);
        var _i = (0 : stdgo.GoInt);
        var _sym:stdgo._internal.debug.elf.Elf_Sym32.Sym32 = ({} : stdgo._internal.debug.elf.Elf_Sym32.Sym32);
        while ((_symtab.len() > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_symtab), _f.fileHeader.byteOrder, stdgo.Go.toInterface((stdgo.Go.setRef(_sym) : stdgo.Ref<stdgo._internal.debug.elf.Elf_Sym32.Sym32>)));
            var __tmp__ = stdgo._internal.debug.elf.Elf__getString._getString(_strdata, (_sym.name : stdgo.GoInt)), _str:stdgo.GoString = __tmp__._0, __2:Bool = __tmp__._1;
            _symbols[(_i : stdgo.GoInt)].name = _str?.__copy__();
            _symbols[(_i : stdgo.GoInt)].info = _sym.info;
            _symbols[(_i : stdgo.GoInt)].other = _sym.other;
            _symbols[(_i : stdgo.GoInt)].section = (_sym.shndx : stdgo._internal.debug.elf.Elf_SectionIndex.SectionIndex);
            _symbols[(_i : stdgo.GoInt)].value = (_sym.value : stdgo.GoUInt64);
            _symbols[(_i : stdgo.GoInt)].size = (_sym.size : stdgo.GoUInt64);
            _i++;
        };
        return { _0 : _symbols, _1 : _strdata, _2 : (null : stdgo.Error) };
    }
    @:keep
    static public function _getSymbols( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>, _typ:stdgo._internal.debug.elf.Elf_SectionType.SectionType):{ var _0 : stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File> = _f;
        {
            final __value__ = _f.fileHeader.class_;
            if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_Class_.Class_))) {
                return _f._getSymbols64(_typ);
            } else if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_Class_.Class_))) {
                return _f._getSymbols32(_typ);
            };
        };
        return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_Symbol.Symbol>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.errors.Errors_new_.new_(("not implemented" : stdgo.GoString)) };
    }
    @:keep
    static public function sectionByType( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>, _typ:stdgo._internal.debug.elf.Elf_SectionType.SectionType):stdgo.Ref<stdgo._internal.debug.elf.Elf_Section.Section> {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File> = _f;
        for (__2 => _s in _f.sections) {
            if (_s.sectionHeader.type == (_typ)) {
                return _s;
            };
        };
        return null;
    }
    @:keep
    static public function close( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File> = _f;
        var _err:stdgo.Error = (null : stdgo.Error);
        if (_f._closer != null) {
            _err = _f._closer.close();
            _f._closer = (null : stdgo._internal.io.Io_Closer.Closer);
        };
        return _err;
    }
    @:keep
    static public function _stringTable( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>, _link:stdgo.GoUInt32):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File> = _f;
        if (((_link <= (0u32 : stdgo.GoUInt32) : Bool) || (_link >= (_f.sections.length : stdgo.GoUInt32) : Bool) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("section has invalid string table link" : stdgo.GoString)) };
        };
        return _f.sections[(_link : stdgo.GoInt)].data();
    }
}
