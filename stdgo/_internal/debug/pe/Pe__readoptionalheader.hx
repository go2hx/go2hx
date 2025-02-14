package stdgo._internal.debug.pe;
function _readOptionalHeader(_r:stdgo._internal.io.Io_readseeker.ReadSeeker, _sz:stdgo.GoUInt16):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } {
        if (_sz == ((0 : stdgo.GoUInt16))) {
            return { _0 : (null : stdgo.AnyInterface), _1 : (null : stdgo.Error) };
        };
        var __0:stdgo.GoUInt16 = (0 : stdgo.GoUInt16), __1 = stdgo._internal.encoding.binary.Binary_size.size(stdgo.Go.toInterface(__0));
var _ohMagicSz = __1, _ohMagic = __0;
        var _ohMagic__pointer__ = stdgo.Go.pointer(_ohMagic);
        if ((_sz < (_ohMagicSz : stdgo.GoUInt16) : Bool)) {
            return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("optional header size is less than optional header magic size" : stdgo.GoString)) };
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        var _read = (function(_data:stdgo.AnyInterface):Bool {
            _err = stdgo._internal.encoding.binary.Binary_read.read(_r, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), _data);
            return _err == null;
        } : stdgo.AnyInterface -> Bool);
        if (!_read(stdgo.Go.toInterface(_ohMagic__pointer__))) {
            return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("failure to read optional header magic: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
        };
        {
            final __value__ = _ohMagic;
            if (__value__ == ((267 : stdgo.GoUInt16))) {
                var __0:stdgo._internal.debug.pe.Pe_optionalheader32.OptionalHeader32 = ({} : stdgo._internal.debug.pe.Pe_optionalheader32.OptionalHeader32), __1 = (stdgo._internal.encoding.binary.Binary_size.size(stdgo.Go.toInterface(stdgo.Go.asInterface(__0))) - stdgo._internal.encoding.binary.Binary_size.size(stdgo.Go.toInterface(__0.dataDirectory)) : stdgo.GoInt);
var _oh32MinSz = __1, _oh32 = __0;
                if ((_sz < (_oh32MinSz : stdgo.GoUInt16) : Bool)) {
                    return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("optional header size(%d) is less minimum size (%d) of PE32 optional header" : stdgo.GoString), stdgo.Go.toInterface(_sz), stdgo.Go.toInterface(_oh32MinSz)) };
                };
                _oh32.magic = _ohMagic;
                if (((((((((((((((((((((((((((((!_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh32.majorLinkerVersion))) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh32.minorLinkerVersion))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh32.sizeOfCode))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh32.sizeOfInitializedData))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh32.sizeOfUninitializedData))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh32.addressOfEntryPoint))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh32.baseOfCode))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh32.baseOfData))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh32.imageBase))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh32.sectionAlignment))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh32.fileAlignment))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh32.majorOperatingSystemVersion))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh32.minorOperatingSystemVersion))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh32.majorImageVersion))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh32.minorImageVersion))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh32.majorSubsystemVersion))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh32.minorSubsystemVersion))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh32.win32VersionValue))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh32.sizeOfImage))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh32.sizeOfHeaders))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh32.checkSum))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh32.subsystem))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh32.dllCharacteristics))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh32.sizeOfStackReserve))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh32.sizeOfStackCommit))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh32.sizeOfHeapReserve))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh32.sizeOfHeapCommit))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh32.loaderFlags))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh32.numberOfRvaAndSizes))) : Bool)) {
                    return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("failure to read PE32 optional header: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
                };
                var __tmp__ = stdgo._internal.debug.pe.Pe__readdatadirectories._readDataDirectories(_r, (_sz - (_oh32MinSz : stdgo.GoUInt16) : stdgo.GoUInt16), _oh32.numberOfRvaAndSizes), _dd:stdgo.Slice<stdgo._internal.debug.pe.Pe_datadirectory.DataDirectory> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (null : stdgo.AnyInterface), _1 : _err };
                };
                (_oh32.dataDirectory.__slice__(0) : stdgo.Slice<stdgo._internal.debug.pe.Pe_datadirectory.DataDirectory>).__copyTo__(_dd);
                return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_oh32) : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader32.OptionalHeader32>))), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((523 : stdgo.GoUInt16))) {
                var __0:stdgo._internal.debug.pe.Pe_optionalheader64.OptionalHeader64 = ({} : stdgo._internal.debug.pe.Pe_optionalheader64.OptionalHeader64), __1 = (stdgo._internal.encoding.binary.Binary_size.size(stdgo.Go.toInterface(stdgo.Go.asInterface(__0))) - stdgo._internal.encoding.binary.Binary_size.size(stdgo.Go.toInterface(__0.dataDirectory)) : stdgo.GoInt);
var _oh64MinSz = __1, _oh64 = __0;
                if ((_sz < (_oh64MinSz : stdgo.GoUInt16) : Bool)) {
                    return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("optional header size(%d) is less minimum size (%d) for PE32+ optional header" : stdgo.GoString), stdgo.Go.toInterface(_sz), stdgo.Go.toInterface(_oh64MinSz)) };
                };
                _oh64.magic = _ohMagic;
                if ((((((((((((((((((((((((((((!_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh64.majorLinkerVersion))) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh64.minorLinkerVersion))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh64.sizeOfCode))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh64.sizeOfInitializedData))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh64.sizeOfUninitializedData))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh64.addressOfEntryPoint))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh64.baseOfCode))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh64.imageBase))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh64.sectionAlignment))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh64.fileAlignment))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh64.majorOperatingSystemVersion))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh64.minorOperatingSystemVersion))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh64.majorImageVersion))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh64.minorImageVersion))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh64.majorSubsystemVersion))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh64.minorSubsystemVersion))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh64.win32VersionValue))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh64.sizeOfImage))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh64.sizeOfHeaders))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh64.checkSum))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh64.subsystem))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh64.dllCharacteristics))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh64.sizeOfStackReserve))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh64.sizeOfStackCommit))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh64.sizeOfHeapReserve))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh64.sizeOfHeapCommit))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh64.loaderFlags))) : Bool) || !_read(stdgo.Go.toInterface(stdgo.Go.pointer(_oh64.numberOfRvaAndSizes))) : Bool)) {
                    return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("failure to read PE32+ optional header: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
                };
                var __tmp__ = stdgo._internal.debug.pe.Pe__readdatadirectories._readDataDirectories(_r, (_sz - (_oh64MinSz : stdgo.GoUInt16) : stdgo.GoUInt16), _oh64.numberOfRvaAndSizes), _dd:stdgo.Slice<stdgo._internal.debug.pe.Pe_datadirectory.DataDirectory> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (null : stdgo.AnyInterface), _1 : _err };
                };
                (_oh64.dataDirectory.__slice__(0) : stdgo.Slice<stdgo._internal.debug.pe.Pe_datadirectory.DataDirectory>).__copyTo__(_dd);
                return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_oh64) : stdgo.Ref<stdgo._internal.debug.pe.Pe_optionalheader64.OptionalHeader64>))), _1 : (null : stdgo.Error) };
            } else {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("optional header has unexpected Magic of 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_ohMagic)) };
            };
        };
    }
