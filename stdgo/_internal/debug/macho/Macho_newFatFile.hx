package stdgo._internal.debug.macho;
function newFatFile(_r:stdgo._internal.io.Io_ReaderAt.ReaderAt):{ var _0 : stdgo.Ref<stdgo._internal.debug.macho.Macho_FatFile.FatFile>; var _1 : stdgo.Error; } {
        var _ff:stdgo._internal.debug.macho.Macho_FatFile.FatFile = ({} : stdgo._internal.debug.macho.Macho_FatFile.FatFile);
        var _sr = stdgo._internal.io.Io_newSectionReader.newSectionReader(_r, (0i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64));
        var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_ff.magic))) : stdgo.Error);
        if (_err != null) {
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_FormatError.FormatError((0i64 : stdgo.GoInt64), ("error reading magic number" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_FormatError.FormatError>)) };
        } else if (_ff.magic != ((-889275714u32 : stdgo.GoUInt32))) {
            var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt8)]);
            stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.putUint32((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _ff.magic);
            var _leMagic = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
            if (((_leMagic == (-17958194u32 : stdgo.GoUInt32)) || (_leMagic == (-17958193u32 : stdgo.GoUInt32)) : Bool)) {
                return { _0 : null, _1 : stdgo.Go.asInterface(stdgo._internal.debug.macho.Macho_errNotFat.errNotFat) };
            } else {
                return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_FormatError.FormatError((0i64 : stdgo.GoInt64), ("invalid magic number" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_FormatError.FormatError>)) };
            };
        };
        var _offset = ((4i64 : stdgo.GoInt64) : stdgo.GoInt64);
        var _narch:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        _err = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_narch)));
        if (_err != null) {
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_FormatError.FormatError(_offset, ("invalid fat_header" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_FormatError.FormatError>)) };
        };
        _offset = (_offset + ((4i64 : stdgo.GoInt64)) : stdgo.GoInt64);
        if ((_narch < (1u32 : stdgo.GoUInt32) : Bool)) {
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_FormatError.FormatError(_offset, ("file contains no images" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_FormatError.FormatError>)) };
        };
        var _seenArches = ({
            final x = new stdgo.GoMap.GoUInt64Map<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, Bool>);
        var _machoType:stdgo._internal.debug.macho.Macho_Type_.Type_ = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.macho.Macho_Type_.Type_);
        var _c = (stdgo._internal.internal.saferio.Saferio_sliceCap.sliceCap(stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.debug.macho.Macho_FatArch.FatArch>))), (_narch : stdgo.GoUInt64)) : stdgo.GoInt);
        if ((_c < (0 : stdgo.GoInt) : Bool)) {
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_FormatError.FormatError(_offset, ("too many images" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_FormatError.FormatError>)) };
        };
        _ff.arches = (new stdgo.Slice<stdgo._internal.debug.macho.Macho_FatArch.FatArch>((0 : stdgo.GoInt).toBasic(), _c, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _c ? (0 : stdgo.GoInt).toBasic() : _c : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.macho.Macho_FatArch.FatArch)]) : stdgo.Slice<stdgo._internal.debug.macho.Macho_FatArch.FatArch>);
        {
            var _i = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            stdgo.Go.cfor((_i < _narch : Bool), _i++, {
                var _fa:stdgo._internal.debug.macho.Macho_FatArch.FatArch = ({} : stdgo._internal.debug.macho.Macho_FatArch.FatArch);
                _err = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_fa.fatArchHeader) : stdgo.Ref<stdgo._internal.debug.macho.Macho_FatArchHeader.FatArchHeader>)));
                if (_err != null) {
                    return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_FormatError.FormatError(_offset, ("invalid fat_arch header" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_FormatError.FormatError>)) };
                };
                _offset = (_offset + ((20i64 : stdgo.GoInt64)) : stdgo.GoInt64);
                var _fr = stdgo._internal.io.Io_newSectionReader.newSectionReader(_r, (_fa.fatArchHeader.offset : stdgo.GoInt64), (_fa.fatArchHeader.size : stdgo.GoInt64));
                {
                    var __tmp__ = stdgo._internal.debug.macho.Macho_newFile.newFile(stdgo.Go.asInterface(_fr));
                    _fa.file = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
                var _seenArch = ((((_fa.fatArchHeader.cpu : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) | (_fa.fatArchHeader.subCpu : stdgo.GoUInt64) : stdgo.GoUInt64);
                {
                    var __tmp__ = (_seenArches != null && _seenArches.exists(_seenArch) ? { _0 : _seenArches[_seenArch], _1 : true } : { _0 : false, _1 : false }), _o:Bool = __tmp__._0, _k:Bool = __tmp__._1;
                    if ((_o || _k : Bool)) {
                        return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_FormatError.FormatError(_offset, stdgo._internal.fmt.Fmt_sprintf.sprintf(("duplicate architecture cpu=%v, subcpu=%#x" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fa.fatArchHeader.cpu)), stdgo.Go.toInterface(_fa.fatArchHeader.subCpu))?.__copy__(), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_FormatError.FormatError>)) };
                    };
                };
                _seenArches[_seenArch] = true;
                if (_i == ((0u32 : stdgo.GoUInt32))) {
                    _machoType = _fa.file.fileHeader.type;
                } else {
                    if (_fa.file.fileHeader.type != (_machoType)) {
                        return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_FormatError.FormatError(_offset, stdgo._internal.fmt.Fmt_sprintf.sprintf(("Mach-O type for architecture #%d (type=%#x) does not match first (type=%#x)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_fa.file.fileHeader.type)), stdgo.Go.toInterface(stdgo.Go.asInterface(_machoType)))?.__copy__(), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_FormatError.FormatError>)) };
                    };
                };
                _ff.arches = (_ff.arches.__append__(_fa?.__copy__()));
            });
        };
        return { _0 : (stdgo.Go.setRef(_ff) : stdgo.Ref<stdgo._internal.debug.macho.Macho_FatFile.FatFile>), _1 : (null : stdgo.Error) };
    }