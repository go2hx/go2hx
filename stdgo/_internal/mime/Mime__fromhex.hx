package stdgo._internal.mime;
function _fromHex(_b:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L404"
        if (((_b >= (48 : stdgo.GoUInt8) : Bool) && (_b <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L406"
            return { _0 : (_b - (48 : stdgo.GoUInt8) : stdgo.GoUInt8), _1 : (null : stdgo.Error) };
        } else if (((_b >= (65 : stdgo.GoUInt8) : Bool) && (_b <= (70 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L408"
            return { _0 : ((_b - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8), _1 : (null : stdgo.Error) };
        } else if (((_b >= (97 : stdgo.GoUInt8) : Bool) && (_b <= (102 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L411"
            return { _0 : ((_b - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8), _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L413"
        return { _0 : (0 : stdgo.GoUInt8), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("mime: invalid hex byte %#02x" : stdgo.GoString), stdgo.Go.toInterface(_b)) };
    }
