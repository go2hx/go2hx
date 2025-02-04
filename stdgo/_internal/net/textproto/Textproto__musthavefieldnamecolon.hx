package stdgo._internal.net.textproto;
function _mustHaveFieldNameColon(_line:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        if ((stdgo._internal.bytes.Bytes_indexbyte.indexByte(_line, (58 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool)) {
            return stdgo.Go.asInterface((stdgo._internal.fmt.Fmt_sprintf.sprintf(("malformed MIME header: missing colon: %q" : stdgo.GoString), stdgo.Go.toInterface(_line)) : stdgo._internal.net.textproto.Textproto_protocolerror.ProtocolError));
        };
        return (null : stdgo.Error);
    }
