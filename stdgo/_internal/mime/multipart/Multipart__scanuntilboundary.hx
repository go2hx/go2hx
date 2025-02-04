package stdgo._internal.mime.multipart;
function _scanUntilBoundary(_buf:stdgo.Slice<stdgo.GoUInt8>, _dashBoundary:stdgo.Slice<stdgo.GoUInt8>, _nlDashBoundary:stdgo.Slice<stdgo.GoUInt8>, _total:stdgo.GoInt64, _readErr:stdgo.Error):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        if (_total == ((0i64 : stdgo.GoInt64))) {
            if (stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_buf, _dashBoundary)) {
                {
                    final __value__ = stdgo._internal.mime.multipart.Multipart__matchafterprefix._matchAfterPrefix(_buf, _dashBoundary, _readErr);
                    if (__value__ == ((-1 : stdgo.GoInt))) {
                        return { _0 : (_dashBoundary.length), _1 : (null : stdgo.Error) };
                    } else if (__value__ == ((0 : stdgo.GoInt))) {
                        return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                    } else if (__value__ == ((1 : stdgo.GoInt))) {
                        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
                    };
                };
            };
            if (stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_dashBoundary, _buf)) {
                return { _0 : (0 : stdgo.GoInt), _1 : _readErr };
            };
        };
        {
            var _i = (stdgo._internal.bytes.Bytes_index.index(_buf, _nlDashBoundary) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                {
                    final __value__ = stdgo._internal.mime.multipart.Multipart__matchafterprefix._matchAfterPrefix((_buf.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), _nlDashBoundary, _readErr);
                    if (__value__ == ((-1 : stdgo.GoInt))) {
                        return { _0 : (_i + (_nlDashBoundary.length) : stdgo.GoInt), _1 : (null : stdgo.Error) };
                    } else if (__value__ == ((0 : stdgo.GoInt))) {
                        return { _0 : _i, _1 : (null : stdgo.Error) };
                    } else if (__value__ == ((1 : stdgo.GoInt))) {
                        return { _0 : _i, _1 : stdgo._internal.io.Io_eof.eOF };
                    };
                };
            };
        };
        if (stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_nlDashBoundary, _buf)) {
            return { _0 : (0 : stdgo.GoInt), _1 : _readErr };
        };
        var _i = (stdgo._internal.bytes.Bytes_lastindexbyte.lastIndexByte(_buf, _nlDashBoundary[(0 : stdgo.GoInt)]) : stdgo.GoInt);
        if (((_i >= (0 : stdgo.GoInt) : Bool) && stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_nlDashBoundary, (_buf.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)) : Bool)) {
            return { _0 : _i, _1 : (null : stdgo.Error) };
        };
        return { _0 : (_buf.length), _1 : _readErr };
    }
