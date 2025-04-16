package stdgo.encoding.pem;
typedef Block = stdgo._internal.encoding.pem.Pem_block.Block;
typedef BlockPointer = stdgo._internal.encoding.pem.Pem_blockpointer.BlockPointer;
/**
    * Package pem implements the PEM data encoding, which originated in Privacy
    * Enhanced Mail. The most common use of PEM encoding today is in TLS keys and
    * certificates. See RFC 1421.
**/
class Pem {
    /**
        * Decode will find the next PEM formatted block (certificate, private key
        * etc) in the input. It returns that block and the remainder of the input. If
        * no PEM data is found, p is nil and the whole of the input is returned in
        * rest.
    **/
    static public inline function decode(_data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block>; var _1 : stdgo.Slice<stdgo.GoUInt8>; } return stdgo._internal.encoding.pem.Pem_decode.decode(_data);
    /**
        * Encode writes the PEM encoding of b to out.
    **/
    static public inline function encode(_out:stdgo._internal.io.Io_writer.Writer, _b:stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block>):stdgo.Error return stdgo._internal.encoding.pem.Pem_encode.encode(_out, _b);
    /**
        * EncodeToMemory returns the PEM encoding of b.
        * 
        * If b has invalid headers and cannot be encoded,
        * EncodeToMemory returns nil. If it is important to
        * report details about this error case, use Encode instead.
    **/
    static public inline function encodeToMemory(_b:stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block>):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.encoding.pem.Pem_encodetomemory.encodeToMemory(_b);
}
