package stdgo._internal.internal.xcoff;
function newArchive(_r:stdgo._internal.io.Io_ReaderAt.ReaderAt):{ var _0 : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Archive.Archive>; var _1 : stdgo.Error; } {
        var _parseDecimalBytes = function(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
            return stdgo._internal.strconv.Strconv_parseInt.parseInt(stdgo._internal.strings.Strings_trimSpace.trimSpace((_b : stdgo.GoString)?.__copy__())?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt));
        };
        var _sr = stdgo._internal.io.Io_newSectionReader.newSectionReader(_r, (0i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64));
        var _magic:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8, ...[for (i in 0 ... 8) (0 : stdgo.GoUInt8)]);
        {
            var __tmp__ = _sr.readAt((_magic.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (0i64 : stdgo.GoInt64)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var _arch = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_Archive.Archive)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Archive.Archive>);
        {
            final __value__ = ((_magic.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString);
            if (__value__ == (("<bigaf>\n" : stdgo.GoString))) {
                _arch.archiveHeader._magic = ((_magic.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
            } else if (__value__ == (("<aiaff>\n" : stdgo.GoString))) {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("small AIX archive not supported" : stdgo.GoString)) };
            } else {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unrecognised archive magic: 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_magic)) };
            };
        };
        var _fhdr:stdgo._internal.internal.xcoff.Xcoff_T_bigarFileHeader.T_bigarFileHeader = ({} : stdgo._internal.internal.xcoff.Xcoff_T_bigarFileHeader.T_bigarFileHeader);
        {
            var __tmp__ = _sr.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        {
            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_fhdr) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_T_bigarFileHeader.T_bigarFileHeader>))) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var __tmp__ = _parseDecimalBytes((_fhdr.flfstmoff.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("error parsing offset of first member in archive header(%q); %v" : stdgo.GoString), stdgo.Go.toInterface(_fhdr), stdgo.Go.toInterface(_err)) };
        };
        if (_off == ((0i64 : stdgo.GoInt64))) {
            return { _0 : _arch, _1 : (null : stdgo.Error) };
        };
        var __tmp__ = _parseDecimalBytes((_fhdr.fllstmoff.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _lastoff:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("error parsing offset of first member in archive header(%q); %v" : stdgo.GoString), stdgo.Go.toInterface(_fhdr), stdgo.Go.toInterface(_err)) };
        };
        while (true) {
            {
                var __tmp__ = _sr.seek(_off, (0 : stdgo.GoInt)), __2:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            var _mhdr:stdgo._internal.internal.xcoff.Xcoff_T_bigarMemberHeader.T_bigarMemberHeader = ({} : stdgo._internal.internal.xcoff.Xcoff_T_bigarMemberHeader.T_bigarMemberHeader);
            {
                var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_mhdr) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_T_bigarMemberHeader.T_bigarMemberHeader>))) : stdgo.Error);
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            var _member = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_Member.Member)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Member.Member>);
            _arch.members = (_arch.members.__append__(_member));
            var __tmp__ = _parseDecimalBytes((_mhdr.arsize.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _size:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("error parsing size in member header(%q); %v" : stdgo.GoString), stdgo.Go.toInterface(_mhdr), stdgo.Go.toInterface(_err)) };
            };
            _member.memberHeader.size = (_size : stdgo.GoUInt64);
            var __tmp__ = _parseDecimalBytes((_mhdr.arnamlen.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _namlen:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("error parsing name length in member header(%q); %v" : stdgo.GoString), stdgo.Go.toInterface(_mhdr), stdgo.Go.toInterface(_err)) };
            };
            var _name = (new stdgo.Slice<stdgo.GoUInt8>((_namlen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_name)) : stdgo.Error);
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            _member.memberHeader.name = (_name : stdgo.GoString)?.__copy__();
            var _fileoff = ((_off + (112i64 : stdgo.GoInt64) : stdgo.GoInt64) + _namlen : stdgo.GoInt64);
            if ((_fileoff & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) != ((0i64 : stdgo.GoInt64))) {
                _fileoff++;
                {
                    var __tmp__ = _sr.seek((1i64 : stdgo.GoInt64), (1 : stdgo.GoInt)), __3:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                };
            };
            var _fmag:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoUInt8)]);
            {
                var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_fmag) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>))) : stdgo.Error);
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            if (((_fmag.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != (("`\n" : stdgo.GoString))) {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("AIAFMAG not found after member header" : stdgo.GoString)) };
            };
            _fileoff = (_fileoff + ((2i64 : stdgo.GoInt64)) : stdgo.GoInt64);
            _member._sr = stdgo._internal.io.Io_newSectionReader.newSectionReader(stdgo.Go.asInterface(_sr), _fileoff, _size);
            if (_off == (_lastoff)) {
                break;
            };
            {
                var __tmp__ = _parseDecimalBytes((_mhdr.arnxtmem.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                _off = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("error parsing offset of first member in archive header(%q); %v" : stdgo.GoString), stdgo.Go.toInterface(_fhdr), stdgo.Go.toInterface(_err)) };
            };
        };
        return { _0 : _arch, _1 : (null : stdgo.Error) };
    }