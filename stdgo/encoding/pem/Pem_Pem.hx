package stdgo.encoding.pem;
/**
    Package pem implements the PEM data encoding, which originated in Privacy
    Enhanced Mail. The most common use of PEM encoding today is in TLS keys and
    certificates. See RFC 1421.
**/
class Pem {
    /**
        Decode will find the next PEM formatted block (certificate, private key
        etc) in the input. It returns that block and the remainder of the input. If
        no PEM data is found, p is nil and the whole of the input is returned in
        rest.
    **/
    static public inline function decode(_data:Array<std.UInt>):stdgo.Tuple<Block, Array<std.UInt>> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.pem.Pem_decode.decode(_data);
            { _0 : obj._0, _1 : [for (i in obj._1) i] };
        };
    }
    /**
        Encode writes the PEM encoding of b to out.
    **/
    static public inline function encode(_out:stdgo._internal.io.Io_Writer.Writer, _b:Block):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.pem.Pem_Block.Block>);
        return stdgo._internal.encoding.pem.Pem_encode.encode(_out, _b);
    }
    /**
        EncodeToMemory returns the PEM encoding of b.
        
        If b has invalid headers and cannot be encoded,
        EncodeToMemory returns nil. If it is important to
        report details about this error case, use Encode instead.
    **/
    static public inline function encodeToMemory(_b:Block):Array<std.UInt> {
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.pem.Pem_Block.Block>);
        return [for (i in stdgo._internal.encoding.pem.Pem_encodeToMemory.encodeToMemory(_b)) i];
    }
}
