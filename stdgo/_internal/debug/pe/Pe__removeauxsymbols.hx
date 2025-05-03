package stdgo._internal.debug.pe;
function _removeAuxSymbols(_allsyms:stdgo.Slice<stdgo._internal.debug.pe.Pe_coffsymbol.COFFSymbol>, _st:stdgo._internal.debug.pe.Pe_stringtable.StringTable):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_symbol.Symbol>>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/symbol.go#L117"
        if ((_allsyms.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/symbol.go#L118"
            return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_symbol.Symbol>>), _1 : (null : stdgo.Error) };
        };
        var _syms = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_symbol.Symbol>>((0 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_symbol.Symbol>>);
        var _aux = ((0 : stdgo.GoUInt8) : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/symbol.go#L122"
        for (__2 => _sym in _allsyms) {
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/symbol.go#L123"
            if ((_aux > (0 : stdgo.GoUInt8) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/pe/symbol.go#L124"
                _aux--;
                //"file:///home/runner/.go/go1.21.3/src/debug/pe/symbol.go#L125"
                continue;
            };
            var __tmp__ = _sym.fullName(_st), _name:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/symbol.go#L128"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/debug/pe/symbol.go#L129"
                return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_symbol.Symbol>>), _1 : _err };
            };
            _aux = _sym.numberOfAuxSymbols;
            var _s = (stdgo.Go.setRef(({ name : _name?.__copy__(), value : _sym.value, sectionNumber : _sym.sectionNumber, type : _sym.type, storageClass : _sym.storageClass } : stdgo._internal.debug.pe.Pe_symbol.Symbol)) : stdgo.Ref<stdgo._internal.debug.pe.Pe_symbol.Symbol>);
            _syms = (_syms.__append__(_s) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_symbol.Symbol>>);
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/symbol.go#L141"
        return { _0 : _syms, _1 : (null : stdgo.Error) };
    }
