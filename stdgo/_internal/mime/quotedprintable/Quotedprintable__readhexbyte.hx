package stdgo._internal.mime.quotedprintable;
function _readHexByte(_v:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        var _b = (0 : stdgo.GoUInt8), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/mime/quotedprintable/reader.go#L44"
        if (((_v.length) < (2 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/mime/quotedprintable/reader.go#L45"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoUInt8), _1 : stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF };
                _b = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _hb:stdgo.GoUInt8 = (0 : stdgo.GoUInt8), _lb:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/mime/quotedprintable/reader.go#L48"
        {
            {
                var __tmp__ = stdgo._internal.mime.quotedprintable.Quotedprintable__fromhex._fromHex(_v[(0 : stdgo.GoInt)]);
                _hb = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/mime/quotedprintable/reader.go#L49"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoUInt8), _1 : _err };
                    _b = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/quotedprintable/reader.go#L51"
        {
            {
                var __tmp__ = stdgo._internal.mime.quotedprintable.Quotedprintable__fromhex._fromHex(_v[(1 : stdgo.GoInt)]);
                _lb = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/mime/quotedprintable/reader.go#L52"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoUInt8), _1 : _err };
                    _b = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/quotedprintable/reader.go#L54"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } = { _0 : ((_hb << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) | _lb : stdgo.GoUInt8), _1 : (null : stdgo.Error) };
            _b = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
