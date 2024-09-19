package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.Section_asInterface) class Section_static_extension {
    @:keep
    static public function open( _s:stdgo.Ref<stdgo._internal.debug.elf.Elf_Section.Section>):stdgo._internal.io.Io_ReadSeeker.ReadSeeker {
        @:recv var _s:stdgo.Ref<stdgo._internal.debug.elf.Elf_Section.Section> = _s;
        if (_s.sectionHeader.type == ((8u32 : stdgo._internal.debug.elf.Elf_SectionType.SectionType))) {
            return stdgo.Go.asInterface(stdgo._internal.io.Io_newSectionReader.newSectionReader(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_T_nobitsSectionReader.T_nobitsSectionReader() : stdgo._internal.debug.elf.Elf_T_nobitsSectionReader.T_nobitsSectionReader)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_T_nobitsSectionReader.T_nobitsSectionReader>)), (0i64 : stdgo.GoInt64), (_s.sectionHeader.size : stdgo.GoInt64)));
        };
        var _zrd:stdgo._internal.io.Io_Reader.Reader -> { var _0 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _1 : stdgo.Error; } = null;
        if ((_s.sectionHeader.flags & (2048u32 : stdgo._internal.debug.elf.Elf_SectionFlag.SectionFlag) : stdgo._internal.debug.elf.Elf_SectionFlag.SectionFlag) == ((0u32 : stdgo._internal.debug.elf.Elf_SectionFlag.SectionFlag))) {
            if (!stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_s.sectionHeader.name?.__copy__(), (".zdebug" : stdgo.GoString))) {
                return stdgo.Go.asInterface(stdgo._internal.io.Io_newSectionReader.newSectionReader(stdgo.Go.asInterface(_s._sr), (0i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64)));
            };
            var _b = (new stdgo.Slice<stdgo.GoUInt8>((12 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = _s._sr.readAt(_b, (0i64 : stdgo.GoInt64)), _n:stdgo.GoInt = __tmp__._0, __2:stdgo.Error = __tmp__._1;
            if (((_n != (12 : stdgo.GoInt)) || (((_b.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != ("ZLIB" : stdgo.GoString)) : Bool)) {
                return stdgo.Go.asInterface(stdgo._internal.io.Io_newSectionReader.newSectionReader(stdgo.Go.asInterface(_s._sr), (0i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64)));
            };
            _s._compressionOffset = (12i64 : stdgo.GoInt64);
            _s._compressionType = (1 : stdgo._internal.debug.elf.Elf_CompressionType.CompressionType);
            _s.sectionHeader.size = stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint64((_b.__slice__((4 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _zrd = stdgo._internal.compress.zlib.Zlib_newReader.newReader;
        } else if ((_s.sectionHeader.flags & (2u32 : stdgo._internal.debug.elf.Elf_SectionFlag.SectionFlag) : stdgo._internal.debug.elf.Elf_SectionFlag.SectionFlag) != ((0u32 : stdgo._internal.debug.elf.Elf_SectionFlag.SectionFlag))) {
            return stdgo.Go.asInterface((new stdgo._internal.debug.elf.Elf_T_errorReader.T_errorReader(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_FormatError.FormatError((_s.sectionHeader.offset : stdgo.GoInt64), ("SHF_COMPRESSED applies only to non-allocable sections" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_s._compressionType))) : stdgo._internal.debug.elf.Elf_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_FormatError.FormatError>))) : stdgo._internal.debug.elf.Elf_T_errorReader.T_errorReader));
        };
        {
            final __value__ = _s._compressionType;
            if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_CompressionType.CompressionType))) {
                _zrd = stdgo._internal.compress.zlib.Zlib_newReader.newReader;
            } else if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_CompressionType.CompressionType))) {
                _zrd = function(_r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _1 : stdgo.Error; } {
                    return { _0 : stdgo._internal.io.Io_nopCloser.nopCloser(stdgo.Go.asInterface(_internal.internal.zstd.Zstd_newReader.newReader(_r))), _1 : (null : stdgo.Error) };
                };
            };
        };
        if (_zrd == null) {
            return stdgo.Go.asInterface((new stdgo._internal.debug.elf.Elf_T_errorReader.T_errorReader(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_FormatError.FormatError((_s.sectionHeader.offset : stdgo.GoInt64), ("unknown compression type" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_s._compressionType))) : stdgo._internal.debug.elf.Elf_FormatError.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_FormatError.FormatError>))) : stdgo._internal.debug.elf.Elf_T_errorReader.T_errorReader));
        };
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _reset : function():{ var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; } {
            var _fr = stdgo._internal.io.Io_newSectionReader.newSectionReader(stdgo.Go.asInterface(_s._sr), _s._compressionOffset, ((_s.sectionHeader.fileSize : stdgo.GoInt64) - _s._compressionOffset : stdgo.GoInt64));
            return _zrd(stdgo.Go.asInterface(_fr));
        }, _size : (_s.sectionHeader.size : stdgo.GoInt64) } : stdgo._internal.debug.elf.Elf_T_readSeekerFromReader.T_readSeekerFromReader)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_T_readSeekerFromReader.T_readSeekerFromReader>));
    }
    @:keep
    static public function data( _s:stdgo.Ref<stdgo._internal.debug.elf.Elf_Section.Section>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.debug.elf.Elf_Section.Section> = _s;
        return stdgo._internal.internal.saferio.Saferio_readData.readData(_s.open(), _s.sectionHeader.size);
    }
    @:embedded
    public static function readAt( __self__:stdgo._internal.debug.elf.Elf_Section.Section, _p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.readAt(_p, _off);
}
