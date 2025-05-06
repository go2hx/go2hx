package stdgo._internal.go.internal.gccgoimporter;
function _standardArExportData(_archive:stdgo._internal.io.Io_readseeker.ReadSeeker):{ var _0 : stdgo._internal.io.Io_readseeker.ReadSeeker; var _1 : stdgo.Error; } {
        var _off = (("!<arch>\n" : stdgo.GoString).length : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L78"
        while (true) {
            var _hdrBuf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(60, 60).__setNumber32__();
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L80"
            {
                var __tmp__ = _archive.read((_hdrBuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L81"
                    return { _0 : (null : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : _err };
                };
            };
            _off = (_off + ((60i64 : stdgo.GoInt64)) : stdgo.GoInt64);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L85"
            if (!stdgo._internal.bytes.Bytes_equal.equal((_hdrBuf.__slice__((58 : stdgo.GoInt), (60 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((("`\n" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L86"
                return { _0 : (null : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("archive header format header (%q)" : stdgo.GoString), stdgo.Go.toInterface((_hdrBuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))) };
            };
            var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(stdgo._internal.strings.Strings_trimspace.trimSpace(((_hdrBuf.__slice__((48 : stdgo.GoInt), (58 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__())?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _size:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L90"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L91"
                return { _0 : (null : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("error parsing size in archive header (%q): %v" : stdgo.GoString), stdgo.Go.toInterface((_hdrBuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_err)) };
            };
            var _fn = (_hdrBuf.__slice__((0 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L95"
            if (((_fn[(0 : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) && (((_fn[(1 : stdgo.GoInt)] == ((32 : stdgo.GoUInt8)) || _fn[(1 : stdgo.GoInt)] == ((47 : stdgo.GoUInt8)) : Bool) || (((_fn.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) == ("/SYM64/ " : stdgo.GoString)) : Bool)) : Bool)) {} else {
                var _archiveAt = (stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__readeratfromseeker._readerAtFromSeeker(_archive) : stdgo._internal.io.Io_readerat.ReaderAt);
                var __tmp__ = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__elffromar._elfFromAr(stdgo._internal.io.Io_newsectionreader.newSectionReader(_archiveAt, _off, _size)), _ret:stdgo._internal.io.Io_readseeker.ReadSeeker = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L101"
                if (((_ret != null) || (_err != null) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L102"
                    return { _0 : _ret, _1 : _err };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L106"
            if ((_size & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) != ((0i64 : stdgo.GoInt64))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L107"
                _size++;
            };
            _off = (_off + (_size) : stdgo.GoInt64);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L110"
            {
                var __tmp__ = _archive.seek(_off, (0 : stdgo.GoInt)), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L111"
                    return { _0 : (null : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : _err };
                };
            };
        };
    }
