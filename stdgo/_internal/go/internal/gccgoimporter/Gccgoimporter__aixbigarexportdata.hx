package stdgo._internal.go.internal.gccgoimporter;
function _aixBigArExportData(_archive:stdgo._internal.io.Io_readseeker.ReadSeeker):{ var _0 : stdgo._internal.io.Io_readseeker.ReadSeeker; var _1 : stdgo.Error; } {
        var _archiveAt = (stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__readeratfromseeker._readerAtFromSeeker(_archive) : stdgo._internal.io.Io_readerat.ReaderAt);
        var __tmp__ = stdgo._internal.internal.xcoff.Xcoff_newarchive.newArchive(_archiveAt), _arch:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_archive.Archive> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L134"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L135"
            return { _0 : (null : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L138"
        for (__0 => _mem in (@:checkr _arch ?? throw "null pointer dereference").members) {
            var __tmp__ = _arch.getFile((@:checkr _mem ?? throw "null pointer dereference").memberHeader.name?.__copy__()), _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L140"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L141"
                return { _0 : (null : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : _err };
            };
            var _sdat = _f.cSect((".go_export" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L144"
            if (_sdat != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L145"
                return { _0 : stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_sdat)), _1 : (null : stdgo.Error) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L149"
        return { _0 : (null : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : stdgo._internal.fmt.Fmt_errorf.errorf((".go_export not found in this archive" : stdgo.GoString)) };
    }
