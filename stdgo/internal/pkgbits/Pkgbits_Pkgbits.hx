package stdgo.internal.pkgbits;
/**
    Package pkgbits implements low-level coding abstractions for
    Unified IR's export data format.
    
    At a low-level, a package is a collection of bitstream elements.
    Each element has a "kind" and a dense, non-negative index.
    Elements can be randomly accessed given their kind and index.
    
    Individual elements are sequences of variable-length values (e.g.,
    integers, booleans, strings, go/constant values, cross-references
    to other elements). Package pkgbits provides APIs for encoding and
    decoding these low-level values, but the details of mapping
    higher-level Go constructs into elements is left to higher-level
    abstractions.
    
    Elements may cross-reference each other with "relocations." For
    example, an element representing a pointer type has a relocation
    referring to the element type.
    
    Go constructs may be composed as a constellation of multiple
    elements. For example, a declared function may have one element to
    describe the object (e.g., its name, type, position), and a
    separate element to describe its function body. This allows readers
    some flexibility in efficiently seeking or re-reading data (e.g.,
    inlining requires re-reading the function body for each inlined
    call, without needing to re-read the object-level details).
**/
class Pkgbits {
    /**
        NewPkgDecoder returns a PkgDecoder initialized to read the Unified
        IR export data from input. pkgPath is the package path for the
        compilation unit that produced the export data.
        
        TODO(mdempsky): Remove pkgPath parameter; unneeded since CL 391014.
    **/
    static public inline function newPkgDecoder(_pkgPath:String, _input:String):PkgDecoder {
        final _pkgPath = (_pkgPath : stdgo.GoString);
        final _input = (_input : stdgo.GoString);
        return stdgo._internal.internal.pkgbits.Pkgbits_newPkgDecoder.newPkgDecoder(_pkgPath, _input);
    }
    /**
        NewPkgEncoder returns an initialized PkgEncoder.
        
        syncFrames is the number of caller frames that should be serialized
        at Sync points. Serializing additional frames results in larger
        export data files, but can help diagnosing desync errors in
        higher-level Unified IR reader/writer code. If syncFrames is
        negative, then sync markers are omitted entirely.
    **/
    static public inline function newPkgEncoder(_syncFrames:StdTypes.Int):PkgEncoder {
        final _syncFrames = (_syncFrames : stdgo.GoInt);
        return stdgo._internal.internal.pkgbits.Pkgbits_newPkgEncoder.newPkgEncoder(_syncFrames);
    }
}
