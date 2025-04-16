package stdgo.encoding;
typedef BinaryMarshaler = stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler;
typedef BinaryUnmarshaler = stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler;
typedef TextMarshaler = stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler;
typedef TextUnmarshaler = stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler;
/**
    * Package encoding defines interfaces shared by other packages that
    * convert data to and from byte-level and textual representations.
    * Packages that check for these interfaces include encoding/gob,
    * encoding/json, and encoding/xml. As a result, implementing an
    * interface once can make a type useful in multiple encodings.
    * Standard types that implement these interfaces include time.Time and net.IP.
    * The interfaces come in pairs that produce and consume encoded data.
    * 
    * Adding encoding/decoding methods to existing types may constitute a breaking change,
    * as they can be used for serialization in communicating with programs
    * written with different library versions.
    * The policy for packages maintained by the Go project is to only allow
    * the addition of marshaling functions if no existing, reasonable marshaling exists.
**/
class Encoding {

}
