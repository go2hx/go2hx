package stdgo._internal.debug.pe;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.compress.zlib.Zlib;
import stdgo._internal.debug.dwarf.Dwarf;
import stdgo._internal.strconv.Strconv;
function _removeAuxSymbols(_allsyms:stdgo.Slice<stdgo._internal.debug.pe.Pe_COFFSymbol.COFFSymbol>, _st:stdgo._internal.debug.pe.Pe_StringTable.StringTable):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_Symbol.Symbol>>; var _1 : stdgo.Error; } {
        if ((_allsyms.length) == ((0 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_Symbol.Symbol>>), _1 : (null : stdgo.Error) };
        };
        var _syms = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_Symbol.Symbol>>((0 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_Symbol.Symbol>>);
        var _aux = ((0 : stdgo.GoUInt8) : stdgo.GoUInt8);
        for (__2 => _sym in _allsyms) {
            if ((_aux > (0 : stdgo.GoUInt8) : Bool)) {
                _aux--;
                continue;
            };
            var __tmp__ = @:check2 _sym.fullName(_st), _name:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_Symbol.Symbol>>), _1 : _err };
            };
            _aux = _sym.numberOfAuxSymbols;
            var _s = (stdgo.Go.setRef(({ name : _name?.__copy__(), value : _sym.value, sectionNumber : _sym.sectionNumber, type : _sym.type, storageClass : _sym.storageClass } : stdgo._internal.debug.pe.Pe_Symbol.Symbol)) : stdgo.Ref<stdgo._internal.debug.pe.Pe_Symbol.Symbol>);
            _syms = (_syms.__append__(_s));
        };
        return { _0 : _syms, _1 : (null : stdgo.Error) };
    }
