package stdgo._internal.mime.multipart;
function _scanUntilBoundary(_buf:stdgo.Slice<stdgo.GoUInt8>, _dashBoundary:stdgo.Slice<stdgo.GoUInt8>, _nlDashBoundary:stdgo.Slice<stdgo.GoUInt8>, _total:stdgo.GoInt64, _readErr:stdgo.Error):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L240"
        if (_total == ((0i64 : stdgo.GoInt64))) {
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L242"
            if (stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_buf, _dashBoundary)) {
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L243"
                {
                    final __value__ = stdgo._internal.mime.multipart.Multipart__matchafterprefix._matchAfterPrefix(_buf, _dashBoundary, _readErr);
                    if (__value__ == ((-1 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L245"
                        return { _0 : (_dashBoundary.length), _1 : (null : stdgo.Error) };
                    } else if (__value__ == ((0 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L247"
                        return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                    } else if (__value__ == ((1 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L249"
                        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L252"
            if (stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_dashBoundary, _buf)) {
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L253"
                return { _0 : (0 : stdgo.GoInt), _1 : _readErr };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L258"
        {
            var _i = (stdgo._internal.bytes.Bytes_index.index(_buf, _nlDashBoundary) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L259"
                {
                    final __value__ = stdgo._internal.mime.multipart.Multipart__matchafterprefix._matchAfterPrefix((_buf.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), _nlDashBoundary, _readErr);
                    if (__value__ == ((-1 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L261"
                        return { _0 : (_i + (_nlDashBoundary.length) : stdgo.GoInt), _1 : (null : stdgo.Error) };
                    } else if (__value__ == ((0 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L263"
                        return { _0 : _i, _1 : (null : stdgo.Error) };
                    } else if (__value__ == ((1 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L265"
                        return { _0 : _i, _1 : stdgo._internal.io.Io_eof.eOF };
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L268"
        if (stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_nlDashBoundary, _buf)) {
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L269"
            return { _0 : (0 : stdgo.GoInt), _1 : _readErr };
        };
        var _i = (stdgo._internal.bytes.Bytes_lastindexbyte.lastIndexByte(_buf, _nlDashBoundary[(0 : stdgo.GoInt)]) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L277"
        if (((_i >= (0 : stdgo.GoInt) : Bool) && stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_nlDashBoundary, (_buf.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L278"
            return { _0 : _i, _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L280"
        return { _0 : (_buf.length), _1 : _readErr };
    }
