package stdgo._internal.debug.macho;
function newFatFile(_r:stdgo._internal.io.Io_readerat.ReaderAt):{ var _0 : stdgo.Ref<stdgo._internal.debug.macho.Macho_fatfile.FatFile>; var _1 : stdgo.Error; } {
        var _ff:stdgo._internal.debug.macho.Macho_fatfile.FatFile = ({} : stdgo._internal.debug.macho.Macho_fatfile.FatFile);
        var _sr = stdgo._internal.io.Io_newsectionreader.newSectionReader(_r, (0i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64));
        var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_ff.magic))) : stdgo.Error);
        if (_err != null) {
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_formaterror.FormatError((0i64 : stdgo.GoInt64), ("error reading magic number" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_formaterror.FormatError>)) };
        } else if (_ff.magic != ((-889275714u32 : stdgo.GoUInt32))) {
            var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
            stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _ff.magic);
            var _leMagic = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
            if (((_leMagic == (-17958194u32 : stdgo.GoUInt32)) || (_leMagic == (-17958193u32 : stdgo.GoUInt32)) : Bool)) {
                return { _0 : null, _1 : stdgo.Go.asInterface(stdgo._internal.debug.macho.Macho_errnotfat.errNotFat) };
            } else {
                return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_formaterror.FormatError((0i64 : stdgo.GoInt64), ("invalid magic number" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_formaterror.FormatError>)) };
            };
        };
        var _offset = ((4i64 : stdgo.GoInt64) : stdgo.GoInt64);
        var _narch:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _narch__pointer__ = stdgo.Go.pointer(_narch);
        _err = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(_narch__pointer__));
        if (_err != null) {
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_formaterror.FormatError(_offset, ("invalid fat_header" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_formaterror.FormatError>)) };
        };
        _offset = (_offset + ((4i64 : stdgo.GoInt64)) : stdgo.GoInt64);
        if ((_narch < (1u32 : stdgo.GoUInt32) : Bool)) {
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_formaterror.FormatError(_offset, ("file contains no images" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_formaterror.FormatError>)) };
        };
        var _seenArches = (({
            final x = new stdgo.GoMap.GoUInt64Map<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, Bool>) : stdgo.GoMap<stdgo.GoUInt64, Bool>);
        var _machoType:stdgo._internal.debug.macho.Macho_type_.Type_ = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.macho.Macho_type_.Type_);
        var _c = (stdgo._internal.internal.saferio.Saferio_slicecap.sliceCap(stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.debug.macho.Macho_fatarch.FatArch>))), (_narch : stdgo.GoUInt64)) : stdgo.GoInt);
        if ((_c < (0 : stdgo.GoInt) : Bool)) {
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_formaterror.FormatError(_offset, ("too many images" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_formaterror.FormatError>)) };
        };
        _ff.arches = (new stdgo.Slice<stdgo._internal.debug.macho.Macho_fatarch.FatArch>((0 : stdgo.GoInt).toBasic(), _c, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _c ? (0 : stdgo.GoInt).toBasic() : _c : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.macho.Macho_fatarch.FatArch)]) : stdgo.Slice<stdgo._internal.debug.macho.Macho_fatarch.FatArch>);
        {
            var _i = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            while ((_i < _narch : Bool)) {
                var _fa:stdgo._internal.debug.macho.Macho_fatarch.FatArch = ({} : stdgo._internal.debug.macho.Macho_fatarch.FatArch);
_err = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_fa.fatArchHeader) : stdgo.Ref<stdgo._internal.debug.macho.Macho_fatarchheader.FatArchHeader>))));
if (_err != null) {
                    return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_formaterror.FormatError(_offset, ("invalid fat_arch header" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_formaterror.FormatError>)) };
                };
_offset = (_offset + ((20i64 : stdgo.GoInt64)) : stdgo.GoInt64);
var _fr = stdgo._internal.io.Io_newsectionreader.newSectionReader(_r, (_fa.fatArchHeader.offset : stdgo.GoInt64), (_fa.fatArchHeader.size : stdgo.GoInt64));
{
                    var __tmp__ = stdgo._internal.debug.macho.Macho_newfile.newFile(stdgo.Go.asInterface(_fr));
                    _fa.file = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
var _seenArch = ((((_fa.fatArchHeader.cpu : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) | (_fa.fatArchHeader.subCpu : stdgo.GoUInt64) : stdgo.GoUInt64);
{
                    var __tmp__ = (_seenArches != null && _seenArches.__exists__(_seenArch) ? { _0 : _seenArches[_seenArch], _1 : true } : { _0 : false, _1 : false }), _o:Bool = __tmp__._0, _k:Bool = __tmp__._1;
                    if ((_o || _k : Bool)) {
                        return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_formaterror.FormatError(_offset, stdgo._internal.fmt.Fmt_sprintf.sprintf(("duplicate architecture cpu=%v, subcpu=%#x" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fa.fatArchHeader.cpu)), stdgo.Go.toInterface(_fa.fatArchHeader.subCpu)).__copy__(), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_formaterror.FormatError>)) };
                    };
                };
_seenArches[_seenArch] = true;
if (_i == ((0u32 : stdgo.GoUInt32))) {
                    _machoType = _fa.file.fileHeader.type;
                } else {
                    if (_fa.file.fileHeader.type != (_machoType)) {
                        return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.macho.Macho_formaterror.FormatError(_offset, stdgo._internal.fmt.Fmt_sprintf.sprintf(("Mach-O type for architecture #%d (type=%#x) does not match first (type=%#x)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_fa.file.fileHeader.type)), stdgo.Go.toInterface(stdgo.Go.asInterface(_machoType))).__copy__(), (null : stdgo.AnyInterface)) : stdgo._internal.debug.macho.Macho_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.macho.Macho_formaterror.FormatError>)) };
                    };
                };
_ff.arches = (_ff.arches.__append__(_fa.__copy__()));
                _i++;
            };
        };
        return { _0 : (stdgo.Go.setRef(_ff) : stdgo.Ref<stdgo._internal.debug.macho.Macho_fatfile.FatFile>), _1 : (null : stdgo.Error) };
    }
