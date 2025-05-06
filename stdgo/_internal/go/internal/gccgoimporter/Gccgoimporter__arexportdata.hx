package stdgo._internal.go.internal.gccgoimporter;
function _arExportData(_archive:stdgo._internal.io.Io_readseeker.ReadSeeker):{ var _0 : stdgo._internal.io.Io_readseeker.ReadSeeker; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L54"
        {
            var __tmp__ = _archive.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L55"
                return { _0 : (null : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : _err };
            };
        };
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L59"
        {
            var __tmp__ = _archive.read((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L60"
                return { _0 : (null : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L63"
        {
            final __value__ = ((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString);
            if (__value__ == (("!<arch>\n" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L65"
                return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__standardarexportdata._standardArExportData(_archive);
            } else if (__value__ == (("!<thin>\n" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L67"
                return { _0 : (null : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : stdgo._internal.errors.Errors_new_.new_(("unsupported thin archive" : stdgo.GoString)) };
            } else if (__value__ == (("<bigaf>\n" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L69"
                return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__aixbigarexportdata._aixBigArExportData(_archive);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L71"
                return { _0 : (null : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unrecognized archive file format %q" : stdgo.GoString), stdgo.Go.toInterface((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))) };
            };
        };
    }
