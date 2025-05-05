package stdgo._internal.net.textproto;
function _mustHaveFieldNameColon(_line:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/reader.go#L590"
        if ((stdgo._internal.bytes.Bytes_indexbyte.indexByte(_line, (58 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/textproto/reader.go#L591"
            return stdgo.Go.asInterface((stdgo._internal.fmt.Fmt_sprintf.sprintf(("malformed MIME header: missing colon: %q" : stdgo.GoString), stdgo.Go.toInterface(_line)) : stdgo._internal.net.textproto.Textproto_protocolerror.ProtocolError));
        };
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/reader.go#L593"
        return (null : stdgo.Error);
    }
