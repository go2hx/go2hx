package stdgo._internal.internal.xcoff;
function newArchive(_r:stdgo._internal.io.Io_readerat.ReaderAt):{ var _0 : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_archive.Archive>; var _1 : stdgo.Error; } {
        var _parseDecimalBytes = function(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L105"
            return stdgo._internal.strconv.Strconv_parseint.parseInt(stdgo._internal.strings.Strings_trimspace.trimSpace((_b : stdgo.GoString)?.__copy__())?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt));
        };
        var _sr = stdgo._internal.io.Io_newsectionreader.newSectionReader(_r, (0i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64));
        var _magic:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L111"
        {
            var __tmp__ = _sr.readAt((_magic.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (0i64 : stdgo.GoInt64)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L112"
                return { _0 : null, _1 : _err };
            };
        };
        var _arch = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_archive.Archive)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_archive.Archive>);
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L116"
        {
            final __value__ = ((_magic.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString);
            if (__value__ == (("<bigaf>\n" : stdgo.GoString))) {
                (@:checkr _arch ?? throw "null pointer dereference").archiveHeader._magic = ((_magic.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
            } else if (__value__ == (("<aiaff>\n" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L120"
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("small AIX archive not supported" : stdgo.GoString)) };
            } else {
                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L122"
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unrecognised archive magic: 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_magic)) };
            };
        };
        var _fhdr:stdgo._internal.internal.xcoff.Xcoff_t_bigarfileheader.T_bigarFileHeader = ({} : stdgo._internal.internal.xcoff.Xcoff_t_bigarfileheader.T_bigarFileHeader);
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L126"
        {
            var __tmp__ = _sr.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L127"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L129"
        {
            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_fhdr) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_t_bigarfileheader.T_bigarFileHeader>)))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L130"
                return { _0 : null, _1 : _err };
            };
        };
        var __tmp__ = _parseDecimalBytes((_fhdr.flfstmoff.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L134"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L135"
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("error parsing offset of first member in archive header(%q); %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fhdr)), stdgo.Go.toInterface(_err)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L138"
        if (_off == ((0i64 : stdgo.GoInt64))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L140"
            return { _0 : _arch, _1 : (null : stdgo.Error) };
        };
        var __tmp__ = _parseDecimalBytes((_fhdr.fllstmoff.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _lastoff:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L144"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L145"
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("error parsing offset of first member in archive header(%q); %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fhdr)), stdgo.Go.toInterface(_err)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L149"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L154"
            {
                var __tmp__ = _sr.seek(_off, (0 : stdgo.GoInt)), __2:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L155"
                    return { _0 : null, _1 : _err };
                };
            };
            var _mhdr:stdgo._internal.internal.xcoff.Xcoff_t_bigarmemberheader.T_bigarMemberHeader = ({} : stdgo._internal.internal.xcoff.Xcoff_t_bigarmemberheader.T_bigarMemberHeader);
            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L159"
            {
                var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_mhdr) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_t_bigarmemberheader.T_bigarMemberHeader>)))) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L160"
                    return { _0 : null, _1 : _err };
                };
            };
            var _member = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_member.Member)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_member.Member>);
            (@:checkr _arch ?? throw "null pointer dereference").members = ((@:checkr _arch ?? throw "null pointer dereference").members.__append__(_member) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_member.Member>>);
            var __tmp__ = _parseDecimalBytes((_mhdr.arsize.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _size:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L167"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L168"
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("error parsing size in member header(%q); %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_mhdr)), stdgo.Go.toInterface(_err)) };
            };
            (@:checkr _member ?? throw "null pointer dereference").memberHeader.size = (_size : stdgo.GoUInt64);
            var __tmp__ = _parseDecimalBytes((_mhdr.arnamlen.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _namlen:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L174"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L175"
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("error parsing name length in member header(%q); %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_mhdr)), stdgo.Go.toInterface(_err)) };
            };
            var _name = (new stdgo.Slice<stdgo.GoUInt8>((_namlen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L178"
            {
                var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(_name)) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L179"
                    return { _0 : null, _1 : _err };
                };
            };
            (@:checkr _member ?? throw "null pointer dereference").memberHeader.name = (_name : stdgo.GoString)?.__copy__();
            var _fileoff = ((_off + (112i64 : stdgo.GoInt64) : stdgo.GoInt64) + _namlen : stdgo.GoInt64);
            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L184"
            if ((_fileoff & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) != ((0i64 : stdgo.GoInt64))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L185"
                _fileoff++;
                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L186"
                {
                    var __tmp__ = _sr.seek((1i64 : stdgo.GoInt64), (1 : stdgo.GoInt)), __3:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L187"
                        return { _0 : null, _1 : _err };
                    };
                };
            };
            var _fmag:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(2, 2).__setNumber32__();
            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L193"
            {
                var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_fmag) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>))) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L194"
                    return { _0 : null, _1 : _err };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L196"
            if (((_fmag.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != (("`\n" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L197"
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("AIAFMAG not found after member header" : stdgo.GoString)) };
            };
            _fileoff = (_fileoff + ((2i64 : stdgo.GoInt64)) : stdgo.GoInt64);
            (@:checkr _member ?? throw "null pointer dereference")._sr = stdgo._internal.io.Io_newsectionreader.newSectionReader(stdgo.Go.asInterface(_sr), _fileoff, _size);
            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L203"
            if (_off == (_lastoff)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L204"
                break;
            };
            {
                var __tmp__ = _parseDecimalBytes((_mhdr.arnxtmem.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                _off = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L207"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L208"
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("error parsing offset of first member in archive header(%q); %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fhdr)), stdgo.Go.toInterface(_err)) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L213"
        return { _0 : _arch, _1 : (null : stdgo.Error) };
    }
