package stdgo.hash;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
/**
    // Package hash provides interfaces for hash functions.
**/
private var __go2hxdoc__package : Bool;
/**
    // Hash is the common interface implemented by all hash functions.
    //
    // Hash implementations in the standard library (e.g. hash/crc32 and
    // crypto/sha256) implement the encoding.BinaryMarshaler and
    // encoding.BinaryUnmarshaler interfaces. Marshaling a hash implementation
    // allows its internal state to be saved and used for additional processing
    // later, without having to re-write the data previously written to the hash.
    // The hash state may contain portions of the input in its original form,
    // which users are expected to handle for any possible security implications.
    //
    // Compatibility: Any future changes to hash or crypto packages will endeavor
    // to maintain compatibility with state encoded using previous versions.
    // That is, any released versions of the packages should be able to
    // decode data written with any previously released version,
    // subject to issues such as security fixes.
    // See the Go compatibility document for background: https://golang.org/doc/go1compat
    
    
**/
typedef Hash = StructType & {
    > stdgo.io.Io.Writer,
    /**
        // Sum appends the current hash to b and returns the resulting slice.
        // It does not change the underlying hash state.
        
        
    **/
    public function sum(_b:Slice<GoByte>):Slice<GoByte>;
    /**
        // Reset resets the Hash to its initial state.
        
        
    **/
    public function reset():Void;
    /**
        // Size returns the number of bytes Sum will return.
        
        
    **/
    public function size():GoInt;
    /**
        // BlockSize returns the hash's underlying block size.
        // The Write method must be able to accept any amount
        // of data, but it may operate more efficiently if all writes
        // are a multiple of the block size.
        
        
    **/
    public function blockSize():GoInt;
};
/**
    // Hash32 is the common interface implemented by all 32-bit hash functions.
    
    
**/
typedef Hash32 = StructType & {
    > Hash,
    /**
        
        
        
    **/
    public function sum32():GoUInt32;
};
/**
    // Hash64 is the common interface implemented by all 64-bit hash functions.
    
    
**/
typedef Hash64 = StructType & {
    > Hash,
    /**
        
        
        
    **/
    public function sum64():GoUInt64;
};
