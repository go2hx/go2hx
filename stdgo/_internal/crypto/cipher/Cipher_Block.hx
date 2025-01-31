package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
@:interface typedef Block = stdgo.StructType & {
    /**
        BlockSize returns the cipher's block size.
        
        
    **/
    @:interfacetypeffun
    public dynamic function blockSize():stdgo.GoInt;
    /**
        Encrypt encrypts the first block in src into dst.
        Dst and src must overlap entirely or not at all.
        
        
    **/
    @:interfacetypeffun
    public dynamic function encrypt(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void;
    /**
        Decrypt decrypts the first block in src into dst.
        Dst and src must overlap entirely or not at all.
        
        
    **/
    @:interfacetypeffun
    public dynamic function decrypt(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void;
};
