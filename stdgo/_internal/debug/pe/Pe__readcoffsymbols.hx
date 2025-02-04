package stdgo._internal.debug.pe;
function _readCOFFSymbols(_fh:stdgo.Ref<stdgo._internal.debug.pe.Pe_fileheader.FileHeader>, _r:stdgo._internal.io.Io_readseeker.ReadSeeker):{ var _0 : stdgo.Slice<stdgo._internal.debug.pe.Pe_coffsymbol.COFFSymbol>; var _1 : stdgo.Error; } {
        if ((@:checkr _fh ?? throw "null pointer dereference").pointerToSymbolTable == ((0u32 : stdgo.GoUInt32))) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.pe.Pe_coffsymbol.COFFSymbol>), _1 : (null : stdgo.Error) };
        };
        if (((@:checkr _fh ?? throw "null pointer dereference").numberOfSymbols <= (0u32 : stdgo.GoUInt32) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.pe.Pe_coffsymbol.COFFSymbol>), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = _r.seek(((@:checkr _fh ?? throw "null pointer dereference").pointerToSymbolTable : stdgo.GoInt64), (0 : stdgo.GoInt)), __2:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.pe.Pe_coffsymbol.COFFSymbol>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("fail to seek to symbol table: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
        };
        var _c = (stdgo._internal.internal.saferio.Saferio_slicecap.sliceCap(stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.debug.pe.Pe_coffsymbol.COFFSymbol>))), ((@:checkr _fh ?? throw "null pointer dereference").numberOfSymbols : stdgo.GoUInt64)) : stdgo.GoInt);
        if ((_c < (0 : stdgo.GoInt) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.pe.Pe_coffsymbol.COFFSymbol>), _1 : stdgo._internal.errors.Errors_new_.new_(("too many symbols; file may be corrupt" : stdgo.GoString)) };
        };
        var _syms = (new stdgo.Slice<stdgo._internal.debug.pe.Pe_coffsymbol.COFFSymbol>((0 : stdgo.GoInt).toBasic(), _c, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _c ? (0 : stdgo.GoInt).toBasic() : _c : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.pe.Pe_coffsymbol.COFFSymbol)]) : stdgo.Slice<stdgo._internal.debug.pe.Pe_coffsymbol.COFFSymbol>);
        var _naux = (0 : stdgo.GoInt);
        {
            var _k = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            while ((_k < (@:checkr _fh ?? throw "null pointer dereference").numberOfSymbols : Bool)) {
                var _sym:stdgo._internal.debug.pe.Pe_coffsymbol.COFFSymbol = ({} : stdgo._internal.debug.pe.Pe_coffsymbol.COFFSymbol);
if (_naux == ((0 : stdgo.GoInt))) {
                    _err = stdgo._internal.encoding.binary.Binary_read.read(_r, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_sym) : stdgo.Ref<stdgo._internal.debug.pe.Pe_coffsymbol.COFFSymbol>))));
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo._internal.debug.pe.Pe_coffsymbol.COFFSymbol>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("fail to read symbol table: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
                    };
                    _naux = (_sym.numberOfAuxSymbols : stdgo.GoInt);
                } else {
                    _naux--;
                    var _aux = ((stdgo.Go.toInterface((stdgo.Go.setRef(_sym) : stdgo.Ref<stdgo._internal.debug.pe.Pe_coffsymbol.COFFSymbol>)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.debug.pe.Pe_coffsymbolauxformat5.COFFSymbolAuxFormat5", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "size", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "numRelocs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "numLineNumbers", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "checksum", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "secNum", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "selection", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "__5", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, 3) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.debug.pe.Pe_coffsymbolauxformat5.COFFSymbolAuxFormat5>);
                    _err = stdgo._internal.encoding.binary.Binary_read.read(_r, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_aux)));
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo._internal.debug.pe.Pe_coffsymbol.COFFSymbol>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("fail to read symbol table: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
                    };
                };
_syms = (_syms.__append__(_sym.__copy__()));
                _k++;
            };
        };
        if (_naux != ((0 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.pe.Pe_coffsymbol.COFFSymbol>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("fail to read symbol table: %d aux symbols unread" : stdgo.GoString), stdgo.Go.toInterface(_naux)) };
        };
        return { _0 : _syms, _1 : (null : stdgo.Error) };
    }
