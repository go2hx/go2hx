package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.File_asInterface) class File_static_extension {
    @:keep
    @:tdfield
    static public function dynValue( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _tag:stdgo._internal.debug.elf.Elf_dyntag.DynTag):{ var _0 : stdgo.Slice<stdgo.GoUInt64>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        var _ds = _f.sectionByType((6u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType));
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1642"
        if (({
            final value = _ds;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1643"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt64>), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = _ds.data(), _d:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1646"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1647"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt64>), _1 : _err };
        };
        var _vals:stdgo.Slice<stdgo.GoUInt64> = (null : stdgo.Slice<stdgo.GoUInt64>);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1652"
        while (((_d.length) > (0 : stdgo.GoInt) : Bool)) {
            var _t:stdgo._internal.debug.elf.Elf_dyntag.DynTag = ((0 : stdgo.GoInt) : stdgo._internal.debug.elf.Elf_dyntag.DynTag);
            var _v:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1655"
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
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1665"
            if (_t == (_tag)) {
                _vals = (_vals.__append__(_v) : stdgo.Slice<stdgo.GoUInt64>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1669"
        return { _0 : _vals, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function dynString( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _tag:stdgo._internal.debug.elf.Elf_dyntag.DynTag):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1596"
        {
            final __value__ = _tag;
            if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_dyntag.DynTag)) || __value__ == ((14 : stdgo._internal.debug.elf.Elf_dyntag.DynTag)) || __value__ == ((15 : stdgo._internal.debug.elf.Elf_dyntag.DynTag)) || __value__ == ((29 : stdgo._internal.debug.elf.Elf_dyntag.DynTag))) {} else {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1599"
                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("non-string-valued tag %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tag))) };
            };
        };
        var _ds = _f.sectionByType((6u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType));
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1602"
        if (({
            final value = _ds;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1604"
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = _ds.data(), _d:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1607"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1608"
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
        };
        var __tmp__ = _f._stringTable((@:checkr _ds ?? throw "null pointer dereference").sectionHeader.link), _str:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1611"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1612"
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
        };
        var _all:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1615"
        while (((_d.length) > (0 : stdgo.GoInt) : Bool)) {
            var _t:stdgo._internal.debug.elf.Elf_dyntag.DynTag = ((0 : stdgo.GoInt) : stdgo._internal.debug.elf.Elf_dyntag.DynTag);
            var _v:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1618"
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
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1628"
            if (_t == (_tag)) {
                var __tmp__ = stdgo._internal.debug.elf.Elf__getstring._getString(_str, (_v : stdgo.GoInt)), _s:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1630"
                if (_ok) {
                    _all = (_all.__append__(_s?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1635"
        return { _0 : _all, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function importedLibraries( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1587"
        return _f.dynString((1 : stdgo._internal.debug.elf.Elf_dyntag.DynTag));
    }
    @:keep
    @:tdfield
    static public function _gnuVersion( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _i:stdgo.GoInt):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        var _library = ("" : stdgo.GoString), _version = ("" : stdgo.GoString);
        _i = (((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1568"
        if ((_i >= ((@:checkr _f ?? throw "null pointer dereference")._gnuVersym.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1569"
            return { _0 : _library, _1 : _version };
        };
        var _s = ((@:checkr _f ?? throw "null pointer dereference")._gnuVersym.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1572"
        if (((_s.length) < (2 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1573"
            return { _0 : _library, _1 : _version };
        };
        var _j = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.uint16(_s) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1576"
        if (((_j < (2 : stdgo.GoInt) : Bool) || (_j >= ((@:checkr _f ?? throw "null pointer dereference")._gnuNeed.length) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1577"
            return { _0 : _library, _1 : _version };
        };
        var _n = (stdgo.Go.setRef((@:checkr _f ?? throw "null pointer dereference")._gnuNeed[(_j : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_t_verneed.T_verneed>);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1580"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : (@:checkr _n ?? throw "null pointer dereference").file?.__copy__(), _1 : (@:checkr _n ?? throw "null pointer dereference").name?.__copy__() };
            _library = __tmp__._0;
            _version = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _gnuVersionInit( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _str:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1491"
        if ((@:checkr _f ?? throw "null pointer dereference")._gnuNeed != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1493"
            return true;
        };
        var _vn = _f.sectionByType((1879048190u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType));
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1498"
        if (({
            final value = _vn;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1499"
            return false;
        };
        var __tmp__ = _vn.data(), _d:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __2:stdgo.Error = __tmp__._1;
        var _need:stdgo.Slice<stdgo._internal.debug.elf.Elf_t_verneed.T_verneed> = (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_t_verneed.T_verneed>);
        var _i = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1505"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1506"
            if (((_i + (16 : stdgo.GoInt) : stdgo.GoInt) > (_d.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1507"
                break;
            };
            var _vers = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.uint16((_d.__slice__(_i, (_i + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt16);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1510"
            if (_vers != ((1 : stdgo.GoUInt16))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1511"
                break;
            };
            var _cnt = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.uint16((_d.__slice__((_i + (2 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt16);
            var _fileoff = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.uint32((_d.__slice__((_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
            var _aux = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.uint32((_d.__slice__((_i + (8 : stdgo.GoInt) : stdgo.GoInt), (_i + (12 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
            var _next = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.uint32((_d.__slice__((_i + (12 : stdgo.GoInt) : stdgo.GoInt), (_i + (16 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
            var __tmp__ = stdgo._internal.debug.elf.Elf__getstring._getString(_str, (_fileoff : stdgo.GoInt)), _file:stdgo.GoString = __tmp__._0, __3:Bool = __tmp__._1;
            var _name:stdgo.GoString = ("" : stdgo.GoString);
            var _j = (_i + (_aux : stdgo.GoInt) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1521"
            {
                var _c = (0 : stdgo.GoInt);
                while ((_c < (_cnt : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1522"
                    if (((_j + (16 : stdgo.GoInt) : stdgo.GoInt) > (_d.length) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1523"
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
//"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1532"
                    if ((_ndx >= (_need.length) : Bool)) {
                        var _a = (new stdgo.Slice<stdgo._internal.debug.elf.Elf_t_verneed.T_verneed>(((2 : stdgo.GoInt) * ((_ndx + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((2 : stdgo.GoInt) * ((_ndx + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt).toBasic() > 0 ? ((2 : stdgo.GoInt) * ((_ndx + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.elf.Elf_t_verneed.T_verneed)]) : stdgo.Slice<stdgo._internal.debug.elf.Elf_t_verneed.T_verneed>);
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1534"
                        _a.__copyTo__(_need);
                        _need = _a;
                    };
_need[(_ndx : stdgo.GoInt)] = (new stdgo._internal.debug.elf.Elf_t_verneed.T_verneed(_file.__copy__(), _name.__copy__()) : stdgo._internal.debug.elf.Elf_t_verneed.T_verneed);
//"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1539"
                    if (_next == ((0u32 : stdgo.GoUInt32))) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1540"
                        break;
                    };
_j = (_j + ((_next : stdgo.GoInt)) : stdgo.GoInt);
                    _c++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1545"
            if (_next == ((0u32 : stdgo.GoUInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1546"
                break;
            };
            _i = (_i + ((_next : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _vs = _f.sectionByType((1879048191u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType));
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1553"
        if (({
            final value = _vs;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1554"
            return false;
        };
        {
            var __tmp__ = _vs.data();
            _d = @:tmpset0 __tmp__._0;
        };
        (@:checkr _f ?? throw "null pointer dereference")._gnuNeed = _need;
        (@:checkr _f ?? throw "null pointer dereference")._gnuVersym = _d;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1560"
        return true;
    }
    @:keep
    @:tdfield
    static public function importedSymbols( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>):{ var _0 : stdgo.Slice<stdgo._internal.debug.elf.Elf_importedsymbol.ImportedSymbol>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        var __tmp__ = _f._getSymbols((11u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)), _sym:stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol> = __tmp__._0, _str:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1468"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1469"
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_importedsymbol.ImportedSymbol>), _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1471"
        _f._gnuVersionInit(_str);
        var _all:stdgo.Slice<stdgo._internal.debug.elf.Elf_importedsymbol.ImportedSymbol> = (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_importedsymbol.ImportedSymbol>);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1473"
        for (_i => _s in _sym) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1474"
            if (((stdgo._internal.debug.elf.Elf_st_bind.sT_BIND(_s.info) == (1 : stdgo._internal.debug.elf.Elf_symbind.SymBind)) && (_s.section == (0 : stdgo._internal.debug.elf.Elf_sectionindex.SectionIndex)) : Bool)) {
                _all = (_all.__append__(({ name : _s.name?.__copy__() } : stdgo._internal.debug.elf.Elf_importedsymbol.ImportedSymbol)) : stdgo.Slice<stdgo._internal.debug.elf.Elf_importedsymbol.ImportedSymbol>);
                var _sym = (stdgo.Go.setRef(_all[((_all.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_importedsymbol.ImportedSymbol>);
                {
                    var __tmp__ = _f._gnuVersion(_i);
                    (@:checkr _sym ?? throw "null pointer dereference").library = @:tmpset0 __tmp__._0?.__copy__();
                    (@:checkr _sym ?? throw "null pointer dereference").version = @:tmpset0 __tmp__._1?.__copy__();
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1480"
        return { _0 : _all, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function dynamicSymbols( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>):{ var _0 : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        var __tmp__ = _f._getSymbols((11u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)), _sym:stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol> = __tmp__._0, _str:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1445"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1446"
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>), _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1448"
        if (_f._gnuVersionInit(_str)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1449"
            for (_i => _ in _sym) {
                {
                    var __tmp__ = _f._gnuVersion(_i);
                    _sym[(_i : stdgo.GoInt)].library = @:tmpset0 __tmp__._0?.__copy__();
                    _sym[(_i : stdgo.GoInt)].version = @:tmpset0 __tmp__._1?.__copy__();
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1453"
        return { _0 : _sym, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function symbols( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>):{ var _0 : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        var __tmp__ = _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)), _sym:stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1431"
        return { _0 : _sym, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function dWARF( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        var _dwarfSuffix = function(_s:stdgo.Ref<stdgo._internal.debug.elf.Elf_section.Section>):stdgo.GoString {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1326"
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name?.__copy__(), (".debug_" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1328"
                return ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name.__slice__((7 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            } else if (stdgo._internal.strings.Strings_hasprefix.hasPrefix((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name?.__copy__(), (".zdebug_" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1330"
                return ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name.__slice__((8 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            } else {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1332"
                return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            };
        };
        var _sectionData = function(_i:stdgo.GoInt, _s:stdgo.Ref<stdgo._internal.debug.elf.Elf_section.Section>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
            var __tmp__ = _s.data(), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1340"
            if (((_err != null) && ((_b.length : stdgo.GoUInt64) < (@:checkr _s ?? throw "null pointer dereference").sectionHeader.size : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1341"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1344"
            if ((@:checkr _f ?? throw "null pointer dereference").fileHeader.type == ((2 : stdgo._internal.debug.elf.Elf_type_.Type_))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1348"
                return { _0 : _b, _1 : (null : stdgo.Error) };
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1351"
            for (__2 => _r in (@:checkr _f ?? throw "null pointer dereference").sections) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1352"
                if ((((@:checkr _r ?? throw "null pointer dereference").sectionHeader.type != (4u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)) && ((@:checkr _r ?? throw "null pointer dereference").sectionHeader.type != (9u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1353"
                    continue;
                };
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1355"
                if (((@:checkr _r ?? throw "null pointer dereference").sectionHeader.info : stdgo.GoInt) != (_i)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1356"
                    continue;
                };
                var __tmp__ = _r.data(), _rd:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1359"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1360"
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                };
                _err = _f._applyRelocations(_b, _rd);
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1363"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1364"
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1367"
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
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1373"
        for (_i => _s in (@:checkr _f ?? throw "null pointer dereference").sections) {
            var _suffix = (_dwarfSuffix(_s)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1375"
            if (_suffix == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1376"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1378"
            {
                var __tmp__ = (_dat != null && _dat.__exists__(_suffix?.__copy__()) ? { _0 : _dat[_suffix?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : false }), __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1379"
                    continue;
                };
            };
            var __tmp__ = _sectionData(_i, _s), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1382"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1383"
                return { _0 : null, _1 : _err };
            };
            _dat[_suffix] = _b;
        };
        var __tmp__ = stdgo._internal.debug.dwarf.Dwarf_new_.new_((_dat[("abbrev" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoUInt8>)), (null : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Slice<stdgo.GoUInt8>), (_dat[("info" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoUInt8>)), (_dat[("line" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoUInt8>)), (null : stdgo.Slice<stdgo.GoUInt8>), (_dat[("ranges" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoUInt8>)), (_dat[("str" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoUInt8>))), _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1389"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1390"
            return { _0 : null, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1394"
        for (_i => _s in (@:checkr _f ?? throw "null pointer dereference").sections) {
            var _suffix = (_dwarfSuffix(_s)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1396"
            if (_suffix == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1397"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1399"
            {
                var __tmp__ = (_dat != null && _dat.__exists__(_suffix?.__copy__()) ? { _0 : _dat[_suffix?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : false }), __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1401"
                    continue;
                };
            };
            var __tmp__ = _sectionData(_i, _s), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1405"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1406"
                return { _0 : null, _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1409"
            if (_suffix == (("types" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1410"
                {
                    var _err = (_d.addTypes(stdgo._internal.fmt.Fmt_sprintf.sprintf(("types-%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__(), _b) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1411"
                        return { _0 : null, _1 : _err };
                    };
                };
            } else {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1414"
                {
                    var _err = (_d.addSection(((".debug_" : stdgo.GoString) + _suffix?.__copy__() : stdgo.GoString)?.__copy__(), _b) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1415"
                        return { _0 : null, _1 : _err };
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1420"
        return { _0 : _d, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _applyRelocationsSPARC64( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1280"
        if (((_rels.length) % (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1281"
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 24" : stdgo.GoString));
        };
        var __tmp__ = _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1285"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1286"
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_rels);
        var _rela:stdgo._internal.debug.elf.Elf_rela64.Rela64 = ({} : stdgo._internal.debug.elf.Elf_rela64.Rela64);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1292"
        while ((_b.len() > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1293"
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rela) : stdgo.Ref<stdgo._internal.debug.elf.Elf_rela64.Rela64>))));
            var _symNo = (_rela.info >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            var _t = ((_rela.info & (255i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.debug.elf.Elf_r_sparc.R_SPARC);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1297"
            if (((_symNo == (0i64 : stdgo.GoUInt64)) || (_symNo > (_symbols.length : stdgo.GoUInt64) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1298"
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_symbol.Symbol>);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1301"
            if (!stdgo._internal.debug.elf.Elf__canapplyrelocation._canApplyRelocation(_sym)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1302"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1305"
            {
                final __value__ = _t;
                if (__value__ == ((32 : stdgo._internal.debug.elf.Elf_r_sparc.R_SPARC)) || __value__ == ((54 : stdgo._internal.debug.elf.Elf_r_sparc.R_SPARC))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1307"
                    if ((((_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1308"
                        continue;
                    };
                    var _val64 = ((@:checkr _sym ?? throw "null pointer dereference").value + (_rela.addend : stdgo.GoUInt64) : stdgo.GoUInt64);
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1311"
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint64((_dst.__slice__(_rela.off, (_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val64);
                } else if (__value__ == ((3 : stdgo._internal.debug.elf.Elf_r_sparc.R_SPARC)) || __value__ == ((23 : stdgo._internal.debug.elf.Elf_r_sparc.R_SPARC))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1313"
                    if ((((_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1314"
                        continue;
                    };
                    var _val32 = (((@:checkr _sym ?? throw "null pointer dereference").value : stdgo.GoUInt32) + (_rela.addend : stdgo.GoUInt32) : stdgo.GoUInt32);
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1317"
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint32((_dst.__slice__(_rela.off, (_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val32);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1321"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _applyRelocationss390x( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1234"
        if (((_rels.length) % (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1235"
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 24" : stdgo.GoString));
        };
        var __tmp__ = _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1239"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1240"
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_rels);
        var _rela:stdgo._internal.debug.elf.Elf_rela64.Rela64 = ({} : stdgo._internal.debug.elf.Elf_rela64.Rela64);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1246"
        while ((_b.len() > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1247"
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rela) : stdgo.Ref<stdgo._internal.debug.elf.Elf_rela64.Rela64>))));
            var _symNo = (_rela.info >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            var _t = ((_rela.info & (65535i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.debug.elf.Elf_r_390.R_390);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1251"
            if (((_symNo == (0i64 : stdgo.GoUInt64)) || (_symNo > (_symbols.length : stdgo.GoUInt64) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1252"
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_symbol.Symbol>);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1255"
            if (!stdgo._internal.debug.elf.Elf__canapplyrelocation._canApplyRelocation(_sym)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1256"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1259"
            {
                final __value__ = _t;
                if (__value__ == ((22 : stdgo._internal.debug.elf.Elf_r_390.R_390))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1261"
                    if ((((_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1262"
                        continue;
                    };
                    var _val64 = ((@:checkr _sym ?? throw "null pointer dereference").value + (_rela.addend : stdgo.GoUInt64) : stdgo.GoUInt64);
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1265"
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint64((_dst.__slice__(_rela.off, (_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val64);
                } else if (__value__ == ((4 : stdgo._internal.debug.elf.Elf_r_390.R_390))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1267"
                    if ((((_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1268"
                        continue;
                    };
                    var _val32 = (((@:checkr _sym ?? throw "null pointer dereference").value : stdgo.GoUInt32) + (_rela.addend : stdgo.GoUInt32) : stdgo.GoUInt32);
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1271"
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint32((_dst.__slice__(_rela.off, (_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val32);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1275"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _applyRelocationsRISCV64( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1188"
        if (((_rels.length) % (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1189"
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 24" : stdgo.GoString));
        };
        var __tmp__ = _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1193"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1194"
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_rels);
        var _rela:stdgo._internal.debug.elf.Elf_rela64.Rela64 = ({} : stdgo._internal.debug.elf.Elf_rela64.Rela64);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1200"
        while ((_b.len() > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1201"
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rela) : stdgo.Ref<stdgo._internal.debug.elf.Elf_rela64.Rela64>))));
            var _symNo = (_rela.info >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            var _t = ((_rela.info & (65535i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.debug.elf.Elf_r_riscv.R_RISCV);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1205"
            if (((_symNo == (0i64 : stdgo.GoUInt64)) || (_symNo > (_symbols.length : stdgo.GoUInt64) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1206"
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_symbol.Symbol>);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1209"
            if (!stdgo._internal.debug.elf.Elf__canapplyrelocation._canApplyRelocation(_sym)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1210"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1213"
            {
                final __value__ = _t;
                if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_r_riscv.R_RISCV))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1215"
                    if ((((_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1216"
                        continue;
                    };
                    var _val64 = ((@:checkr _sym ?? throw "null pointer dereference").value + (_rela.addend : stdgo.GoUInt64) : stdgo.GoUInt64);
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1219"
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint64((_dst.__slice__(_rela.off, (_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val64);
                } else if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_r_riscv.R_RISCV))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1221"
                    if ((((_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1222"
                        continue;
                    };
                    var _val32 = (((@:checkr _sym ?? throw "null pointer dereference").value : stdgo.GoUInt32) + (_rela.addend : stdgo.GoUInt32) : stdgo.GoUInt32);
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1225"
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint32((_dst.__slice__(_rela.off, (_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val32);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1229"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _applyRelocationsLOONG64( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1140"
        if (((_rels.length) % (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1141"
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 24" : stdgo.GoString));
        };
        var __tmp__ = _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1145"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1146"
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_rels);
        var _rela:stdgo._internal.debug.elf.Elf_rela64.Rela64 = ({} : stdgo._internal.debug.elf.Elf_rela64.Rela64);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1152"
        while ((_b.len() > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1153"
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rela) : stdgo.Ref<stdgo._internal.debug.elf.Elf_rela64.Rela64>))));
            var _symNo:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            var _t:stdgo._internal.debug.elf.Elf_r_larch.R_LARCH = ((0 : stdgo.GoInt) : stdgo._internal.debug.elf.Elf_r_larch.R_LARCH);
            _symNo = (_rela.info >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            _t = ((_rela.info & (65535i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.debug.elf.Elf_r_larch.R_LARCH);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1159"
            if (((_symNo == (0i64 : stdgo.GoUInt64)) || (_symNo > (_symbols.length : stdgo.GoUInt64) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1160"
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_symbol.Symbol>);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1163"
            if (!stdgo._internal.debug.elf.Elf__canapplyrelocation._canApplyRelocation(_sym)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1164"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1167"
            {
                final __value__ = _t;
                if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_r_larch.R_LARCH))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1169"
                    if ((((_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1170"
                        continue;
                    };
                    var _val64 = ((@:checkr _sym ?? throw "null pointer dereference").value + (_rela.addend : stdgo.GoUInt64) : stdgo.GoUInt64);
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1173"
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint64((_dst.__slice__(_rela.off, (_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val64);
                } else if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_r_larch.R_LARCH))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1175"
                    if ((((_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1176"
                        continue;
                    };
                    var _val32 = (((@:checkr _sym ?? throw "null pointer dereference").value : stdgo.GoUInt32) + (_rela.addend : stdgo.GoUInt32) : stdgo.GoUInt32);
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1179"
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint32((_dst.__slice__(_rela.off, (_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val32);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1183"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _applyRelocationsMIPS64( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1087"
        if (((_rels.length) % (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1088"
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 24" : stdgo.GoString));
        };
        var __tmp__ = _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1092"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1093"
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_rels);
        var _rela:stdgo._internal.debug.elf.Elf_rela64.Rela64 = ({} : stdgo._internal.debug.elf.Elf_rela64.Rela64);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1099"
        while ((_b.len() > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1100"
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rela) : stdgo.Ref<stdgo._internal.debug.elf.Elf_rela64.Rela64>))));
            var _symNo:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            var _t:stdgo._internal.debug.elf.Elf_r_mips.R_MIPS = ((0 : stdgo.GoInt) : stdgo._internal.debug.elf.Elf_r_mips.R_MIPS);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1103"
            if (stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder) == (stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian)))) {
                _symNo = (_rela.info >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                _t = ((_rela.info & (255i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.debug.elf.Elf_r_mips.R_MIPS);
            } else {
                _symNo = (_rela.info & (4294967295i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                _t = ((_rela.info >> (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.debug.elf.Elf_r_mips.R_MIPS);
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1111"
            if (((_symNo == (0i64 : stdgo.GoUInt64)) || (_symNo > (_symbols.length : stdgo.GoUInt64) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1112"
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_symbol.Symbol>);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1115"
            if (!stdgo._internal.debug.elf.Elf__canapplyrelocation._canApplyRelocation(_sym)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1116"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1119"
            {
                final __value__ = _t;
                if (__value__ == ((18 : stdgo._internal.debug.elf.Elf_r_mips.R_MIPS))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1121"
                    if ((((_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1122"
                        continue;
                    };
                    var _val64 = ((@:checkr _sym ?? throw "null pointer dereference").value + (_rela.addend : stdgo.GoUInt64) : stdgo.GoUInt64);
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1125"
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint64((_dst.__slice__(_rela.off, (_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val64);
                } else if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_r_mips.R_MIPS))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1127"
                    if ((((_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1128"
                        continue;
                    };
                    var _val32 = (((@:checkr _sym ?? throw "null pointer dereference").value : stdgo.GoUInt32) + (_rela.addend : stdgo.GoUInt32) : stdgo.GoUInt32);
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1131"
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint32((_dst.__slice__(_rela.off, (_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val32);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1135"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _applyRelocationsMIPS( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1049"
        if (((_rels.length) % (8 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1050"
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 8" : stdgo.GoString));
        };
        var __tmp__ = _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1054"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1055"
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_rels);
        var _rel:stdgo._internal.debug.elf.Elf_rel32.Rel32 = ({} : stdgo._internal.debug.elf.Elf_rel32.Rel32);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1061"
        while ((_b.len() > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1062"
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rel) : stdgo.Ref<stdgo._internal.debug.elf.Elf_rel32.Rel32>))));
            var _symNo = (_rel.info >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
            var _t = ((_rel.info & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo._internal.debug.elf.Elf_r_mips.R_MIPS);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1066"
            if (((_symNo == (0u32 : stdgo.GoUInt32)) || (_symNo > (_symbols.length : stdgo.GoUInt32) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1067"
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_symbol.Symbol>);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1071"
            {
                final __value__ = _t;
                if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_r_mips.R_MIPS))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1073"
                    if (((_rel.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32) >= (_dst.length : stdgo.GoUInt32) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1074"
                        continue;
                    };
                    var _val = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.uint32((_dst.__slice__(_rel.off, (_rel.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                    _val = (_val + (((@:checkr _sym ?? throw "null pointer dereference").value : stdgo.GoUInt32)) : stdgo.GoUInt32);
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1078"
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint32((_dst.__slice__(_rel.off, (_rel.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>), _val);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1082"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _applyRelocationsPPC64( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1003"
        if (((_rels.length) % (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1004"
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 24" : stdgo.GoString));
        };
        var __tmp__ = _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1008"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1009"
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_rels);
        var _rela:stdgo._internal.debug.elf.Elf_rela64.Rela64 = ({} : stdgo._internal.debug.elf.Elf_rela64.Rela64);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1015"
        while ((_b.len() > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1016"
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rela) : stdgo.Ref<stdgo._internal.debug.elf.Elf_rela64.Rela64>))));
            var _symNo = (_rela.info >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            var _t = ((_rela.info & (65535i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.debug.elf.Elf_r_ppc64.R_PPC64);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1020"
            if (((_symNo == (0i64 : stdgo.GoUInt64)) || (_symNo > (_symbols.length : stdgo.GoUInt64) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1021"
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_symbol.Symbol>);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1024"
            if (!stdgo._internal.debug.elf.Elf__canapplyrelocation._canApplyRelocation(_sym)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1025"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1028"
            {
                final __value__ = _t;
                if (__value__ == ((38 : stdgo._internal.debug.elf.Elf_r_ppc64.R_PPC64))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1030"
                    if ((((_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1031"
                        continue;
                    };
                    var _val64 = ((@:checkr _sym ?? throw "null pointer dereference").value + (_rela.addend : stdgo.GoUInt64) : stdgo.GoUInt64);
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1034"
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint64((_dst.__slice__(_rela.off, (_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val64);
                } else if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_r_ppc64.R_PPC64))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1036"
                    if ((((_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1037"
                        continue;
                    };
                    var _val32 = (((@:checkr _sym ?? throw "null pointer dereference").value : stdgo.GoUInt32) + (_rela.addend : stdgo.GoUInt32) : stdgo.GoUInt32);
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1040"
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint32((_dst.__slice__(_rela.off, (_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val32);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L1044"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _applyRelocationsPPC( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L963"
        if (((_rels.length) % (12 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L964"
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 12" : stdgo.GoString));
        };
        var __tmp__ = _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L968"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L969"
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_rels);
        var _rela:stdgo._internal.debug.elf.Elf_rela32.Rela32 = ({} : stdgo._internal.debug.elf.Elf_rela32.Rela32);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L975"
        while ((_b.len() > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L976"
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rela) : stdgo.Ref<stdgo._internal.debug.elf.Elf_rela32.Rela32>))));
            var _symNo = (_rela.info >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
            var _t = ((_rela.info & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo._internal.debug.elf.Elf_r_ppc.R_PPC);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L980"
            if (((_symNo == (0u32 : stdgo.GoUInt32)) || (_symNo > (_symbols.length : stdgo.GoUInt32) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L981"
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_symbol.Symbol>);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L984"
            if (!stdgo._internal.debug.elf.Elf__canapplyrelocation._canApplyRelocation(_sym)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L985"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L988"
            {
                final __value__ = _t;
                if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_r_ppc.R_PPC))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L990"
                    if ((((_rela.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32) >= (_dst.length : stdgo.GoUInt32) : Bool) || (_rela.addend < (0 : stdgo.GoInt32) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L991"
                        continue;
                    };
                    var _val32 = (((@:checkr _sym ?? throw "null pointer dereference").value : stdgo.GoUInt32) + (_rela.addend : stdgo.GoUInt32) : stdgo.GoUInt32);
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L994"
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint32((_dst.__slice__(_rela.off, (_rela.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>), _val32);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L998"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _applyRelocationsARM64( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L913"
        if (((_rels.length) % (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L914"
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 24" : stdgo.GoString));
        };
        var __tmp__ = _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L918"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L919"
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_rels);
        var _rela:stdgo._internal.debug.elf.Elf_rela64.Rela64 = ({} : stdgo._internal.debug.elf.Elf_rela64.Rela64);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L925"
        while ((_b.len() > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L926"
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rela) : stdgo.Ref<stdgo._internal.debug.elf.Elf_rela64.Rela64>))));
            var _symNo = (_rela.info >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            var _t = ((_rela.info & (65535i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.debug.elf.Elf_r_aarch64.R_AARCH64);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L930"
            if (((_symNo == (0i64 : stdgo.GoUInt64)) || (_symNo > (_symbols.length : stdgo.GoUInt64) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L931"
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_symbol.Symbol>);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L934"
            if (!stdgo._internal.debug.elf.Elf__canapplyrelocation._canApplyRelocation(_sym)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L935"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L942"
            {
                final __value__ = _t;
                if (__value__ == ((257 : stdgo._internal.debug.elf.Elf_r_aarch64.R_AARCH64))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L944"
                    if ((((_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L945"
                        continue;
                    };
                    var _val64 = ((@:checkr _sym ?? throw "null pointer dereference").value + (_rela.addend : stdgo.GoUInt64) : stdgo.GoUInt64);
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L948"
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint64((_dst.__slice__(_rela.off, (_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val64);
                } else if (__value__ == ((258 : stdgo._internal.debug.elf.Elf_r_aarch64.R_AARCH64))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L950"
                    if ((((_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L951"
                        continue;
                    };
                    var _val32 = (((@:checkr _sym ?? throw "null pointer dereference").value : stdgo.GoUInt32) + (_rela.addend : stdgo.GoUInt32) : stdgo.GoUInt32);
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L954"
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint32((_dst.__slice__(_rela.off, (_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val32);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L958"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _applyRelocationsARM( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L875"
        if (((_rels.length) % (8 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L876"
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 8" : stdgo.GoString));
        };
        var __tmp__ = _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L880"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L881"
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_rels);
        var _rel:stdgo._internal.debug.elf.Elf_rel32.Rel32 = ({} : stdgo._internal.debug.elf.Elf_rel32.Rel32);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L887"
        while ((_b.len() > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L888"
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rel) : stdgo.Ref<stdgo._internal.debug.elf.Elf_rel32.Rel32>))));
            var _symNo = (_rel.info >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
            var _t = ((_rel.info & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo._internal.debug.elf.Elf_r_arm.R_ARM);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L892"
            if (((_symNo == (0u32 : stdgo.GoUInt32)) || (_symNo > (_symbols.length : stdgo.GoUInt32) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L893"
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_symbol.Symbol>);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L897"
            {
                final __value__ = _t;
                if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_r_arm.R_ARM))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L899"
                    if (((_rel.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32) >= (_dst.length : stdgo.GoUInt32) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L900"
                        continue;
                    };
                    var _val = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.uint32((_dst.__slice__(_rel.off, (_rel.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                    _val = (_val + (((@:checkr _sym ?? throw "null pointer dereference").value : stdgo.GoUInt32)) : stdgo.GoUInt32);
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L904"
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint32((_dst.__slice__(_rel.off, (_rel.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>), _val);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L908"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _applyRelocations386( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L838"
        if (((_rels.length) % (8 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L839"
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 8" : stdgo.GoString));
        };
        var __tmp__ = _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L843"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L844"
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_rels);
        var _rel:stdgo._internal.debug.elf.Elf_rel32.Rel32 = ({} : stdgo._internal.debug.elf.Elf_rel32.Rel32);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L850"
        while ((_b.len() > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L851"
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rel) : stdgo.Ref<stdgo._internal.debug.elf.Elf_rel32.Rel32>))));
            var _symNo = (_rel.info >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
            var _t = ((_rel.info & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo._internal.debug.elf.Elf_r_386.R_386);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L855"
            if (((_symNo == (0u32 : stdgo.GoUInt32)) || (_symNo > (_symbols.length : stdgo.GoUInt32) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L856"
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_symbol.Symbol>);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L860"
            if (_t == ((1 : stdgo._internal.debug.elf.Elf_r_386.R_386))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L861"
                if (((_rel.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32) >= (_dst.length : stdgo.GoUInt32) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L862"
                    continue;
                };
                var _val = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.uint32((_dst.__slice__(_rel.off, (_rel.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                _val = (_val + (((@:checkr _sym ?? throw "null pointer dereference").value : stdgo.GoUInt32)) : stdgo.GoUInt32);
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L866"
                (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint32((_dst.__slice__(_rel.off, (_rel.off + (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>), _val);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L870"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _applyRelocationsAMD64( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L788"
        if (((_rels.length) % (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L789"
            return stdgo._internal.errors.Errors_new_.new_(("length of relocation section is not a multiple of 24" : stdgo.GoString));
        };
        var __tmp__ = _f._getSymbols((2u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)), _symbols:stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol> = __tmp__._0, __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L793"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L794"
            return _err;
        };
        var _b = stdgo._internal.bytes.Bytes_newreader.newReader(_rels);
        var _rela:stdgo._internal.debug.elf.Elf_rela64.Rela64 = ({} : stdgo._internal.debug.elf.Elf_rela64.Rela64);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L800"
        while ((_b.len() > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L801"
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_b), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rela) : stdgo.Ref<stdgo._internal.debug.elf.Elf_rela64.Rela64>))));
            var _symNo = (_rela.info >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            var _t = ((_rela.info & (65535i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.debug.elf.Elf_r_x86_64.R_X86_64);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L805"
            if (((_symNo == (0i64 : stdgo.GoUInt64)) || (_symNo > (_symbols.length : stdgo.GoUInt64) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L806"
                continue;
            };
            var _sym = (stdgo.Go.setRef(_symbols[((_symNo - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.elf.Elf_symbol.Symbol>);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L809"
            if (!stdgo._internal.debug.elf.Elf__canapplyrelocation._canApplyRelocation(_sym)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L810"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L817"
            {
                final __value__ = _t;
                if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_r_x86_64.R_X86_64))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L819"
                    if ((((_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L820"
                        continue;
                    };
                    var _val64 = ((@:checkr _sym ?? throw "null pointer dereference").value + (_rela.addend : stdgo.GoUInt64) : stdgo.GoUInt64);
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L823"
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint64((_dst.__slice__(_rela.off, (_rela.off + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val64);
                } else if (__value__ == ((10 : stdgo._internal.debug.elf.Elf_r_x86_64.R_X86_64))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L825"
                    if ((((_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (_dst.length : stdgo.GoUInt64) : Bool) || (_rela.addend < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L826"
                        continue;
                    };
                    var _val32 = (((@:checkr _sym ?? throw "null pointer dereference").value : stdgo.GoUInt32) + (_rela.addend : stdgo.GoUInt32) : stdgo.GoUInt32);
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L829"
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder.putUint32((_dst.__slice__(_rela.off, (_rela.off + (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _val32);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L833"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _applyRelocations( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L746"
        if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.class_ == (2 : stdgo._internal.debug.elf.Elf_class_.Class_)) && ((@:checkr _f ?? throw "null pointer dereference").fileHeader.machine == (62 : stdgo._internal.debug.elf.Elf_machine.Machine)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L748"
            return _f._applyRelocationsAMD64(_dst, _rels);
        } else if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.class_ == (1 : stdgo._internal.debug.elf.Elf_class_.Class_)) && ((@:checkr _f ?? throw "null pointer dereference").fileHeader.machine == (3 : stdgo._internal.debug.elf.Elf_machine.Machine)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L750"
            return _f._applyRelocations386(_dst, _rels);
        } else if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.class_ == (1 : stdgo._internal.debug.elf.Elf_class_.Class_)) && ((@:checkr _f ?? throw "null pointer dereference").fileHeader.machine == (40 : stdgo._internal.debug.elf.Elf_machine.Machine)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L752"
            return _f._applyRelocationsARM(_dst, _rels);
        } else if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.class_ == (2 : stdgo._internal.debug.elf.Elf_class_.Class_)) && ((@:checkr _f ?? throw "null pointer dereference").fileHeader.machine == (183 : stdgo._internal.debug.elf.Elf_machine.Machine)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L754"
            return _f._applyRelocationsARM64(_dst, _rels);
        } else if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.class_ == (1 : stdgo._internal.debug.elf.Elf_class_.Class_)) && ((@:checkr _f ?? throw "null pointer dereference").fileHeader.machine == (20 : stdgo._internal.debug.elf.Elf_machine.Machine)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L756"
            return _f._applyRelocationsPPC(_dst, _rels);
        } else if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.class_ == (2 : stdgo._internal.debug.elf.Elf_class_.Class_)) && ((@:checkr _f ?? throw "null pointer dereference").fileHeader.machine == (21 : stdgo._internal.debug.elf.Elf_machine.Machine)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L758"
            return _f._applyRelocationsPPC64(_dst, _rels);
        } else if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.class_ == (1 : stdgo._internal.debug.elf.Elf_class_.Class_)) && ((@:checkr _f ?? throw "null pointer dereference").fileHeader.machine == (8 : stdgo._internal.debug.elf.Elf_machine.Machine)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L760"
            return _f._applyRelocationsMIPS(_dst, _rels);
        } else if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.class_ == (2 : stdgo._internal.debug.elf.Elf_class_.Class_)) && ((@:checkr _f ?? throw "null pointer dereference").fileHeader.machine == (8 : stdgo._internal.debug.elf.Elf_machine.Machine)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L762"
            return _f._applyRelocationsMIPS64(_dst, _rels);
        } else if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.class_ == (2 : stdgo._internal.debug.elf.Elf_class_.Class_)) && ((@:checkr _f ?? throw "null pointer dereference").fileHeader.machine == (258 : stdgo._internal.debug.elf.Elf_machine.Machine)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L764"
            return _f._applyRelocationsLOONG64(_dst, _rels);
        } else if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.class_ == (2 : stdgo._internal.debug.elf.Elf_class_.Class_)) && ((@:checkr _f ?? throw "null pointer dereference").fileHeader.machine == (243 : stdgo._internal.debug.elf.Elf_machine.Machine)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L766"
            return _f._applyRelocationsRISCV64(_dst, _rels);
        } else if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.class_ == (2 : stdgo._internal.debug.elf.Elf_class_.Class_)) && ((@:checkr _f ?? throw "null pointer dereference").fileHeader.machine == (22 : stdgo._internal.debug.elf.Elf_machine.Machine)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L768"
            return _f._applyRelocationss390x(_dst, _rels);
        } else if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.class_ == (2 : stdgo._internal.debug.elf.Elf_class_.Class_)) && ((@:checkr _f ?? throw "null pointer dereference").fileHeader.machine == (43 : stdgo._internal.debug.elf.Elf_machine.Machine)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L770"
            return _f._applyRelocationsSPARC64(_dst, _rels);
        } else {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L772"
            return stdgo._internal.errors.Errors_new_.new_(("applyRelocations: not implemented" : stdgo.GoString));
        };
    }
    @:keep
    @:tdfield
    static public function section( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.elf.Elf_section.Section> {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L735"
        for (__2 => _s in (@:checkr _f ?? throw "null pointer dereference").sections) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L736"
            if ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name == (_name)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L737"
                return _s;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L740"
        return null;
    }
    @:keep
    @:tdfield
    static public function _getSymbols64( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _typ:stdgo._internal.debug.elf.Elf_sectiontype.SectionType):{ var _0 : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        var _symtabSection = _f.sectionByType(_typ);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L677"
        if (({
            final value = _symtabSection;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L678"
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.debug.elf.Elf_errnosymbols.errNoSymbols };
        };
        var __tmp__ = _symtabSection.data(), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L682"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L683"
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("cannot load symbol section: %w" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
        };
        var _symtab = stdgo._internal.bytes.Bytes_newreader.newReader(_data);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L686"
        if ((_symtab.len() % (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L687"
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.errors.Errors_new_.new_(("length of symbol section is not a multiple of Sym64Size" : stdgo.GoString)) };
        };
        var __tmp__ = _f._stringTable((@:checkr _symtabSection ?? throw "null pointer dereference").sectionHeader.link), _strdata:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L691"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L692"
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("cannot load string table section: %w" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
        };
        var _skip:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(24, 24).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L697"
        _symtab.read((_skip.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        var _symbols = (new stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>((_symtab.len() / (24 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_symtab.len() / (24 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? (_symtab.len() / (24 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.elf.Elf_symbol.Symbol)]) : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>);
        var _i = (0 : stdgo.GoInt);
        var _sym:stdgo._internal.debug.elf.Elf_sym64.Sym64 = ({} : stdgo._internal.debug.elf.Elf_sym64.Sym64);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L703"
        while ((_symtab.len() > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L704"
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_symtab), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_sym) : stdgo.Ref<stdgo._internal.debug.elf.Elf_sym64.Sym64>))));
            var __tmp__ = stdgo._internal.debug.elf.Elf__getstring._getString(_strdata, (_sym.name : stdgo.GoInt)), _str:stdgo.GoString = __tmp__._0, __2:Bool = __tmp__._1;
            _symbols[(_i : stdgo.GoInt)].name = _str?.__copy__();
            _symbols[(_i : stdgo.GoInt)].info = _sym.info;
            _symbols[(_i : stdgo.GoInt)].other = _sym.other;
            _symbols[(_i : stdgo.GoInt)].section = (_sym.shndx : stdgo._internal.debug.elf.Elf_sectionindex.SectionIndex);
            _symbols[(_i : stdgo.GoInt)].value = _sym.value;
            _symbols[(_i : stdgo.GoInt)].size = _sym.size;
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L712"
            _i++;
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L715"
        return { _0 : _symbols, _1 : _strdata, _2 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _getSymbols32( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _typ:stdgo._internal.debug.elf.Elf_sectiontype.SectionType):{ var _0 : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        var _symtabSection = _f.sectionByType(_typ);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L634"
        if (({
            final value = _symtabSection;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L635"
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.debug.elf.Elf_errnosymbols.errNoSymbols };
        };
        var __tmp__ = _symtabSection.data(), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L639"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L640"
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("cannot load symbol section: %w" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
        };
        var _symtab = stdgo._internal.bytes.Bytes_newreader.newReader(_data);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L643"
        if ((_symtab.len() % (16 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L644"
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.errors.Errors_new_.new_(("length of symbol section is not a multiple of SymSize" : stdgo.GoString)) };
        };
        var __tmp__ = _f._stringTable((@:checkr _symtabSection ?? throw "null pointer dereference").sectionHeader.link), _strdata:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L648"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L649"
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("cannot load string table section: %w" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
        };
        var _skip:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L654"
        _symtab.read((_skip.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        var _symbols = (new stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>((_symtab.len() / (16 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_symtab.len() / (16 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? (_symtab.len() / (16 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.elf.Elf_symbol.Symbol)]) : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>);
        var _i = (0 : stdgo.GoInt);
        var _sym:stdgo._internal.debug.elf.Elf_sym32.Sym32 = ({} : stdgo._internal.debug.elf.Elf_sym32.Sym32);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L660"
        while ((_symtab.len() > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L661"
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_symtab), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_sym) : stdgo.Ref<stdgo._internal.debug.elf.Elf_sym32.Sym32>))));
            var __tmp__ = stdgo._internal.debug.elf.Elf__getstring._getString(_strdata, (_sym.name : stdgo.GoInt)), _str:stdgo.GoString = __tmp__._0, __2:Bool = __tmp__._1;
            _symbols[(_i : stdgo.GoInt)].name = _str?.__copy__();
            _symbols[(_i : stdgo.GoInt)].info = _sym.info;
            _symbols[(_i : stdgo.GoInt)].other = _sym.other;
            _symbols[(_i : stdgo.GoInt)].section = (_sym.shndx : stdgo._internal.debug.elf.Elf_sectionindex.SectionIndex);
            _symbols[(_i : stdgo.GoInt)].value = (_sym.value : stdgo.GoUInt64);
            _symbols[(_i : stdgo.GoInt)].size = (_sym.size : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L669"
            _i++;
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L672"
        return { _0 : _symbols, _1 : _strdata, _2 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _getSymbols( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _typ:stdgo._internal.debug.elf.Elf_sectiontype.SectionType):{ var _0 : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L617"
        {
            final __value__ = (@:checkr _f ?? throw "null pointer dereference").fileHeader.class_;
            if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_class_.Class_))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L619"
                return _f._getSymbols64(_typ);
            } else if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_class_.Class_))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L622"
                return _f._getSymbols32(_typ);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L625"
        return { _0 : (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.errors.Errors_new_.new_(("not implemented" : stdgo.GoString)) };
    }
    @:keep
    @:tdfield
    static public function sectionByType( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _typ:stdgo._internal.debug.elf.Elf_sectiontype.SectionType):stdgo.Ref<stdgo._internal.debug.elf.Elf_section.Section> {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L278"
        for (__2 => _s in (@:checkr _f ?? throw "null pointer dereference").sections) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L279"
            if ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.type == (_typ)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L280"
                return _s;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L283"
        return null;
    }
    @:keep
    @:tdfield
    static public function close( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L268"
        if ((@:checkr _f ?? throw "null pointer dereference")._closer != null) {
            _err = (@:checkr _f ?? throw "null pointer dereference")._closer.close();
            (@:checkr _f ?? throw "null pointer dereference")._closer = (null : stdgo._internal.io.Io_closer.Closer);
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L272"
        return _err;
    }
    @:keep
    @:tdfield
    static public function _stringTable( _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>, _link:stdgo.GoUInt32):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = _f;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L125"
        if (((_link <= (0u32 : stdgo.GoUInt32) : Bool) || (_link >= ((@:checkr _f ?? throw "null pointer dereference").sections.length : stdgo.GoUInt32) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L126"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("section has invalid string table link" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L128"
        return (@:checkr _f ?? throw "null pointer dereference").sections[(_link : stdgo.GoInt)].data();
    }
}
