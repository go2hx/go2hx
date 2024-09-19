package stdgo._internal.mime;
function _decode(_encoding:stdgo.GoUInt8, _text:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        {
            final __value__ = _encoding;
            if (__value__ == ((66 : stdgo.GoUInt8)) || __value__ == ((98 : stdgo.GoUInt8))) {
                return stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding.decodeString(_text?.__copy__());
            } else if (__value__ == ((81 : stdgo.GoUInt8)) || __value__ == ((113 : stdgo.GoUInt8))) {
                return stdgo._internal.mime.Mime__qDecode._qDecode(_text?.__copy__());
            } else {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.mime.Mime__errInvalidWord._errInvalidWord };
            };
        };
    }
