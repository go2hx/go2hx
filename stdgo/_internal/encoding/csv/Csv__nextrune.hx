package stdgo._internal.encoding.csv;
function _nextRune(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt32 {
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_b), _r:stdgo.GoInt32 = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L293"
        return _r;
    }
