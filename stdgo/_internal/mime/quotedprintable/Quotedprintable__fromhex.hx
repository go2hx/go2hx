package stdgo._internal.mime.quotedprintable;
function _fromHex(_b:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/mime/quotedprintable/reader.go#L31"
        if (((_b >= (48 : stdgo.GoUInt8) : Bool) && (_b <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/mime/quotedprintable/reader.go#L33"
            return { _0 : (_b - (48 : stdgo.GoUInt8) : stdgo.GoUInt8), _1 : (null : stdgo.Error) };
        } else if (((_b >= (65 : stdgo.GoUInt8) : Bool) && (_b <= (70 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/mime/quotedprintable/reader.go#L35"
            return { _0 : ((_b - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8), _1 : (null : stdgo.Error) };
        } else if (((_b >= (97 : stdgo.GoUInt8) : Bool) && (_b <= (102 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/mime/quotedprintable/reader.go#L38"
            return { _0 : ((_b - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8), _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/quotedprintable/reader.go#L40"
        return { _0 : (0 : stdgo.GoUInt8), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("quotedprintable: invalid hex byte 0x%02x" : stdgo.GoString), stdgo.Go.toInterface(_b)) };
    }
