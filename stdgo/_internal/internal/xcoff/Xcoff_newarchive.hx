package stdgo._internal.internal.xcoff;
function newArchive(_r:stdgo._internal.io.Io_readerat.ReaderAt):{ var _0 : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_archive.Archive>; var _1 : stdgo.Error; } {
        var _parseDecimalBytes = function(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
            return stdgo._internal.strconv.Strconv_parseint.parseInt(stdgo._internal.strings.Strings_trimspace.trimSpace((_b : stdgo.GoString)?.__copy__())?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt));
        };
        var _sr = stdgo._internal.io.Io_newsectionreader.newSectionReader(_r, (0i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64));
        var _magic:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8).__setNumber32__();
        {
            var __tmp__ = @:check2r _sr.readAt((_magic.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (0i64 : stdgo.GoInt64)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var _arch = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_archive.Archive)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_archive.Archive>);
        {
            final __value__ = ((_magic.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString);
            if (__value__ == (("<bigaf>\n" : stdgo.GoString))) {
                (@:checkr _arch ?? throw "null pointer dereference").archiveHeader._magic = ((_magic.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
            } else if (__value__ == (("<aiaff>\n" : stdgo.GoString))) {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("small AIX archive not supported" : stdgo.GoString)) };
            } else {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unrecognised archive magic: 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_magic)) };
            };
        };
        var _fhdr:stdgo._internal.internal.xcoff.Xcoff_t_bigarfileheader.T_bigarFileHeader = ({} : stdgo._internal.internal.xcoff.Xcoff_t_bigarfileheader.T_bigarFileHeader);
        {
            var __tmp__ = @:check2r _sr.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        {
            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_fhdr) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_t_bigarfileheader.T_bigarFileHeader>)))) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var __tmp__ = _parseDecimalBytes((_fhdr.flfstmoff.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("error parsing offset of first member in archive header(%q); %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fhdr)), stdgo.Go.toInterface(_err)) };
        };
        if (_off == ((0i64 : stdgo.GoInt64))) {
            return { _0 : _arch, _1 : (null : stdgo.Error) };
        };
        var __tmp__ = _parseDecimalBytes((_fhdr.fllstmoff.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _lastoff:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("error parsing offset of first member in archive header(%q); %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fhdr)), stdgo.Go.toInterface(_err)) };
        };
        while (true) {
            {
                var __tmp__ = @:check2r _sr.seek(_off, (0 : stdgo.GoInt)), __2:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            var _mhdr:stdgo._internal.internal.xcoff.Xcoff_t_bigarmemberheader.T_bigarMemberHeader = ({} : stdgo._internal.internal.xcoff.Xcoff_t_bigarmemberheader.T_bigarMemberHeader);
            {
                var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_mhdr) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_t_bigarmemberheader.T_bigarMemberHeader>)))) : stdgo.Error);
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            var _member = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_member.Member)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_member.Member>);
            (@:checkr _arch ?? throw "null pointer dereference").members = ((@:checkr _arch ?? throw "null pointer dereference").members.__append__(_member));
            var __tmp__ = _parseDecimalBytes((_mhdr.arsize.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _size:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("error parsing size in member header(%q); %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_mhdr)), stdgo.Go.toInterface(_err)) };
            };
            (@:checkr _member ?? throw "null pointer dereference").memberHeader.size = (_size : stdgo.GoUInt64);
            var __tmp__ = _parseDecimalBytes((_mhdr.arnamlen.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _namlen:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("error parsing name length in member header(%q); %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_mhdr)), stdgo.Go.toInterface(_err)) };
            };
            var _name = (new stdgo.Slice<stdgo.GoUInt8>((_namlen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(_name)) : stdgo.Error);
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            (@:checkr _member ?? throw "null pointer dereference").memberHeader.name = (_name : stdgo.GoString)?.__copy__();
            var _fileoff = ((_off + (112i64 : stdgo.GoInt64) : stdgo.GoInt64) + _namlen : stdgo.GoInt64);
            if ((_fileoff & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) != ((0i64 : stdgo.GoInt64))) {
                _fileoff++;
                {
                    var __tmp__ = @:check2r _sr.seek((1i64 : stdgo.GoInt64), (1 : stdgo.GoInt)), __3:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                };
            };
            var _fmag:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(2, 2).__setNumber32__();
            {
                var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_fmag) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>))) : stdgo.Error);
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            if (((_fmag.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != (("`\n" : stdgo.GoString))) {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("AIAFMAG not found after member header" : stdgo.GoString)) };
            };
            _fileoff = (_fileoff + ((2i64 : stdgo.GoInt64)) : stdgo.GoInt64);
            (@:checkr _member ?? throw "null pointer dereference")._sr = stdgo._internal.io.Io_newsectionreader.newSectionReader(stdgo.Go.asInterface(_sr), _fileoff, _size);
            if (_off == (_lastoff)) {
                break;
            };
            {
                var __tmp__ = _parseDecimalBytes((_mhdr.arnxtmem.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                _off = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("error parsing offset of first member in archive header(%q); %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fhdr)), stdgo.Go.toInterface(_err)) };
            };
        };
        return { _0 : _arch, _1 : (null : stdgo.Error) };
    }
