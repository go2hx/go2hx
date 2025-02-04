package stdgo._internal.debug.pe;
function newFile(_r:stdgo._internal.io.Io_readerat.ReaderAt):{ var _0 : stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File>; var _1 : stdgo.Error; } {
        var _f = (stdgo.Go.setRef(({} : stdgo._internal.debug.pe.Pe_file.File)) : stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File>);
        var _sr = stdgo._internal.io.Io_newsectionreader.newSectionReader(_r, (0i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64));
        var _dosheader:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(96, 96).__setNumber32__();
        {
            var __tmp__ = _r.readAt((_dosheader.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (0i64 : stdgo.GoInt64)), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var _base:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        if (((_dosheader[(0 : stdgo.GoInt)] == (77 : stdgo.GoUInt8)) && (_dosheader[(1 : stdgo.GoInt)] == (90 : stdgo.GoUInt8)) : Bool)) {
            var _signoff = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((_dosheader.__slice__((60 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt64);
            var _sign:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
            _r.readAt((_sign.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _signoff);
            if (!((((_sign[(0 : stdgo.GoInt)] == ((80 : stdgo.GoUInt8)) && _sign[(1 : stdgo.GoInt)] == ((69 : stdgo.GoUInt8)) : Bool) && _sign[(2 : stdgo.GoInt)] == ((0 : stdgo.GoUInt8)) : Bool) && (_sign[(3 : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool))) {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid PE file signature: % x" : stdgo.GoString), stdgo.Go.toInterface(_sign)) };
            };
            _base = (_signoff + (4i64 : stdgo.GoInt64) : stdgo.GoInt64);
        } else {
            _base = (0i64 : stdgo.GoInt64);
        };
        @:check2r _sr.seek(_base, (0 : stdgo.GoInt));
        {
            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _f ?? throw "null pointer dereference").fileHeader) : stdgo.Ref<stdgo._internal.debug.pe.Pe_fileheader.FileHeader>)))) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        {
            final __value__ = (@:checkr _f ?? throw "null pointer dereference").fileHeader.machine;
            if (__value__ == ((34404 : stdgo.GoUInt16)) || __value__ == ((43620 : stdgo.GoUInt16)) || __value__ == ((452 : stdgo.GoUInt16)) || __value__ == ((332 : stdgo.GoUInt16)) || __value__ == ((20530 : stdgo.GoUInt16)) || __value__ == ((20580 : stdgo.GoUInt16)) || __value__ == ((20776 : stdgo.GoUInt16)) || __value__ == ((0 : stdgo.GoUInt16))) {} else {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unrecognized PE machine: %#x" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference").fileHeader.machine)) };
            };
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.debug.pe.Pe__readstringtable._readStringTable((stdgo.Go.setRef((@:checkr _f ?? throw "null pointer dereference").fileHeader) : stdgo.Ref<stdgo._internal.debug.pe.Pe_fileheader.FileHeader>), stdgo.Go.asInterface(_sr));
            (@:checkr _f ?? throw "null pointer dereference").stringTable = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        {
            var __tmp__ = stdgo._internal.debug.pe.Pe__readcoffsymbols._readCOFFSymbols((stdgo.Go.setRef((@:checkr _f ?? throw "null pointer dereference").fileHeader) : stdgo.Ref<stdgo._internal.debug.pe.Pe_fileheader.FileHeader>), stdgo.Go.asInterface(_sr));
            (@:checkr _f ?? throw "null pointer dereference").cOFFSymbols = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        {
            var __tmp__ = stdgo._internal.debug.pe.Pe__removeauxsymbols._removeAuxSymbols((@:checkr _f ?? throw "null pointer dereference").cOFFSymbols, (@:checkr _f ?? throw "null pointer dereference").stringTable);
            (@:checkr _f ?? throw "null pointer dereference").symbols = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        {
            var __tmp__ = @:check2r _sr.seek((_base + (stdgo._internal.encoding.binary.Binary_size.size(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _f ?? throw "null pointer dereference").fileHeader))) : stdgo.GoInt64) : stdgo.GoInt64), (0 : stdgo.GoInt));
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        {
            var __tmp__ = stdgo._internal.debug.pe.Pe__readoptionalheader._readOptionalHeader(stdgo.Go.asInterface(_sr), (@:checkr _f ?? throw "null pointer dereference").fileHeader.sizeOfOptionalHeader);
            (@:checkr _f ?? throw "null pointer dereference").optionalHeader = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        (@:checkr _f ?? throw "null pointer dereference").sections = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_section.Section>>(((@:checkr _f ?? throw "null pointer dereference").fileHeader.numberOfSections : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_section.Section>>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < ((@:checkr _f ?? throw "null pointer dereference").fileHeader.numberOfSections : stdgo.GoInt) : Bool)) {
                var _sh = (stdgo.Go.setRef(({} : stdgo._internal.debug.pe.Pe_sectionheader32.SectionHeader32)) : stdgo.Ref<stdgo._internal.debug.pe.Pe_sectionheader32.SectionHeader32>);
{
                    var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_sh))) : stdgo.Error);
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                };
var __tmp__ = @:check2r _sh._fullName((@:checkr _f ?? throw "null pointer dereference").stringTable), _name:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
var _s = (stdgo.Go.setRef(({} : stdgo._internal.debug.pe.Pe_section.Section)) : stdgo.Ref<stdgo._internal.debug.pe.Pe_section.Section>);
(@:checkr _s ?? throw "null pointer dereference").sectionHeader = ({ name : _name.__copy__(), virtualSize : (@:checkr _sh ?? throw "null pointer dereference").virtualSize, virtualAddress : (@:checkr _sh ?? throw "null pointer dereference").virtualAddress, size : (@:checkr _sh ?? throw "null pointer dereference").sizeOfRawData, offset : (@:checkr _sh ?? throw "null pointer dereference").pointerToRawData, pointerToRelocations : (@:checkr _sh ?? throw "null pointer dereference").pointerToRelocations, pointerToLineNumbers : (@:checkr _sh ?? throw "null pointer dereference").pointerToLineNumbers, numberOfRelocations : (@:checkr _sh ?? throw "null pointer dereference").numberOfRelocations, numberOfLineNumbers : (@:checkr _sh ?? throw "null pointer dereference").numberOfLineNumbers, characteristics : (@:checkr _sh ?? throw "null pointer dereference").characteristics } : stdgo._internal.debug.pe.Pe_sectionheader.SectionHeader);
var _r2 = (_r : stdgo._internal.io.Io_readerat.ReaderAt);
if ((@:checkr _sh ?? throw "null pointer dereference").pointerToRawData == ((0u32 : stdgo.GoUInt32))) {
                    _r2 = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.pe.Pe_t_nobitssectionreader.T_nobitsSectionReader() : stdgo._internal.debug.pe.Pe_t_nobitssectionreader.T_nobitsSectionReader)) : stdgo.Ref<stdgo._internal.debug.pe.Pe_t_nobitssectionreader.T_nobitsSectionReader>));
                };
(@:checkr _s ?? throw "null pointer dereference")._sr = stdgo._internal.io.Io_newsectionreader.newSectionReader(_r2, ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.offset : stdgo.GoInt64), ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.size : stdgo.GoInt64));
(@:checkr _s ?? throw "null pointer dereference").readerAt = stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference")._sr);
(@:checkr _f ?? throw "null pointer dereference").sections[(_i : stdgo.GoInt)] = _s;
                _i++;
            };
        };
        for (_i => _ in (@:checkr _f ?? throw "null pointer dereference").sections) {
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = stdgo._internal.debug.pe.Pe__readrelocs._readRelocs((stdgo.Go.setRef((@:checkr (@:checkr _f ?? throw "null pointer dereference").sections[(_i : stdgo.GoInt)] ?? throw "null pointer dereference").sectionHeader) : stdgo.Ref<stdgo._internal.debug.pe.Pe_sectionheader.SectionHeader>), stdgo.Go.asInterface(_sr));
                (@:checkr (@:checkr _f ?? throw "null pointer dereference").sections[(_i : stdgo.GoInt)] ?? throw "null pointer dereference").relocs = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : _f, _1 : (null : stdgo.Error) };
    }
