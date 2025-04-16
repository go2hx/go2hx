package stdgo.encoding.asn1;
var tagBoolean : stdgo.GoUInt64 = 1i32;
var tagInteger : stdgo.GoUInt64 = 2i32;
var tagBitString : stdgo.GoUInt64 = 3i32;
var tagOctetString : stdgo.GoUInt64 = 4i32;
var tagNull : stdgo.GoUInt64 = 5i32;
var tagOID : stdgo.GoUInt64 = 6i32;
var tagEnum : stdgo.GoUInt64 = 10i32;
var tagUTF8String : stdgo.GoUInt64 = 12i32;
var tagSequence : stdgo.GoUInt64 = 16i32;
var tagSet : stdgo.GoUInt64 = 17i32;
var tagNumericString : stdgo.GoUInt64 = 18i32;
var tagPrintableString : stdgo.GoUInt64 = 19i32;
var tagT61String : stdgo.GoUInt64 = 20i32;
var tagIA5String : stdgo.GoUInt64 = 22i32;
var tagUTCTime : stdgo.GoUInt64 = 23i32;
var tagGeneralizedTime : stdgo.GoUInt64 = 24i32;
var tagGeneralString : stdgo.GoUInt64 = 27i32;
var tagBMPString : stdgo.GoUInt64 = 30i32;
var classUniversal : stdgo.GoUInt64 = 0i32;
var classApplication : stdgo.GoUInt64 = 1i32;
var classContextSpecific : stdgo.GoUInt64 = 2i32;
var classPrivate : stdgo.GoUInt64 = 3i32;
var nullRawValue(get, set) : RawValue;
private function get_nullRawValue():RawValue return stdgo._internal.encoding.asn1.Asn1_nullrawvalue.nullRawValue;
private function set_nullRawValue(v:RawValue):stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue {
        stdgo._internal.encoding.asn1.Asn1_nullrawvalue.nullRawValue = v;
        return v;
    }
var nullBytes(get, set) : stdgo.Slice<stdgo.GoUInt8>;
private function get_nullBytes():stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.encoding.asn1.Asn1_nullbytes.nullBytes;
private function set_nullBytes(v:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        stdgo._internal.encoding.asn1.Asn1_nullbytes.nullBytes = v;
        return v;
    }
typedef StructuralError = stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError;
typedef SyntaxError = stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError;
typedef BitString = stdgo._internal.encoding.asn1.Asn1_bitstring.BitString;
typedef RawValue = stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue;
typedef ObjectIdentifier = stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier;
typedef Enumerated = stdgo._internal.encoding.asn1.Asn1_enumerated.Enumerated;
typedef Flag = stdgo._internal.encoding.asn1.Asn1_flag.Flag;
typedef RawContent = stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent;
typedef StructuralErrorPointer = stdgo._internal.encoding.asn1.Asn1_structuralerrorpointer.StructuralErrorPointer;
typedef SyntaxErrorPointer = stdgo._internal.encoding.asn1.Asn1_syntaxerrorpointer.SyntaxErrorPointer;
typedef BitStringPointer = stdgo._internal.encoding.asn1.Asn1_bitstringpointer.BitStringPointer;
typedef RawValuePointer = stdgo._internal.encoding.asn1.Asn1_rawvaluepointer.RawValuePointer;
typedef ObjectIdentifierPointer = stdgo._internal.encoding.asn1.Asn1_objectidentifierpointer.ObjectIdentifierPointer;
typedef EnumeratedPointer = stdgo._internal.encoding.asn1.Asn1_enumeratedpointer.EnumeratedPointer;
typedef FlagPointer = stdgo._internal.encoding.asn1.Asn1_flagpointer.FlagPointer;
typedef RawContentPointer = stdgo._internal.encoding.asn1.Asn1_rawcontentpointer.RawContentPointer;
/**
    * Package asn1 implements parsing of DER-encoded ASN.1 data structures,
    * as defined in ITU-T Rec X.690.
    * 
    * See also “A Layman's Guide to a Subset of ASN.1, BER, and DER,”
    * http://luca.ntop.org/Teaching/Appunti/asn1.html.
**/
class Asn1 {
    /**
        * Unmarshal parses the DER-encoded ASN.1 data structure b
        * and uses the reflect package to fill in an arbitrary value pointed at by val.
        * Because Unmarshal uses the reflect package, the structs
        * being written to must use upper case field names. If val
        * is nil or not a pointer, Unmarshal returns an error.
        * 
        * After parsing b, any bytes that were leftover and not used to fill
        * val will be returned in rest. When parsing a SEQUENCE into a struct,
        * any trailing elements of the SEQUENCE that do not have matching
        * fields in val will not be included in rest, as these are considered
        * valid elements of the SEQUENCE and not trailing data.
        * 
        * An ASN.1 INTEGER can be written to an int, int32, int64,
        * or *big.Int (from the math/big package).
        * If the encoded value does not fit in the Go type,
        * Unmarshal returns a parse error.
        * 
        * An ASN.1 BIT STRING can be written to a BitString.
        * 
        * An ASN.1 OCTET STRING can be written to a []byte.
        * 
        * An ASN.1 OBJECT IDENTIFIER can be written to an
        * ObjectIdentifier.
        * 
        * An ASN.1 ENUMERATED can be written to an Enumerated.
        * 
        * An ASN.1 UTCTIME or GENERALIZEDTIME can be written to a time.Time.
        * 
        * An ASN.1 PrintableString, IA5String, or NumericString can be written to a string.
        * 
        * Any of the above ASN.1 values can be written to an interface{}.
        * The value stored in the interface has the corresponding Go type.
        * For integers, that type is int64.
        * 
        * An ASN.1 SEQUENCE OF x or SET OF x can be written
        * to a slice if an x can be written to the slice's element type.
        * 
        * An ASN.1 SEQUENCE or SET can be written to a struct
        * if each of the elements in the sequence can be
        * written to the corresponding element in the struct.
        * 
        * The following tags on struct fields have special meaning to Unmarshal:
        * 
        * 	application specifies that an APPLICATION tag is used
        * 	private     specifies that a PRIVATE tag is used
        * 	default:x   sets the default value for optional integer fields (only used if optional is also present)
        * 	explicit    specifies that an additional, explicit tag wraps the implicit one
        * 	optional    marks the field as ASN.1 OPTIONAL
        * 	set         causes a SET, rather than a SEQUENCE type to be expected
        * 	tag:x       specifies the ASN.1 tag number; implies ASN.1 CONTEXT SPECIFIC
        * 
        * When decoding an ASN.1 value with an IMPLICIT tag into a string field,
        * Unmarshal will default to a PrintableString, which doesn't support
        * characters such as '@' and '&'. To force other encodings, use the following
        * tags:
        * 
        * 	ia5     causes strings to be unmarshaled as ASN.1 IA5String values
        * 	numeric causes strings to be unmarshaled as ASN.1 NumericString values
        * 	utf8    causes strings to be unmarshaled as ASN.1 UTF8String values
        * 
        * If the type of the first field of a structure is RawContent then the raw
        * ASN1 contents of the struct will be stored in it.
        * 
        * If the name of a slice type ends with "SET" then it's treated as if
        * the "set" tag was set on it. This results in interpreting the type as a
        * SET OF x rather than a SEQUENCE OF x. This can be used with nested slices
        * where a struct tag cannot be given.
        * 
        * Other ASN.1 types are not supported; if it encounters them,
        * Unmarshal returns a parse error.
    **/
    static public inline function unmarshal(_b:stdgo.Slice<stdgo.GoUInt8>, _val:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_b, _val);
    /**
        * UnmarshalWithParams allows field parameters to be specified for the
        * top-level element. The form of the params is the same as the field tags.
    **/
    static public inline function unmarshalWithParams(_b:stdgo.Slice<stdgo.GoUInt8>, _val:stdgo.AnyInterface, _params:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.encoding.asn1.Asn1_unmarshalwithparams.unmarshalWithParams(_b, _val, _params);
    /**
        * Marshal returns the ASN.1 encoding of val.
        * 
        * In addition to the struct tags recognised by Unmarshal, the following can be
        * used:
        * 
        * 	ia5:         causes strings to be marshaled as ASN.1, IA5String values
        * 	omitempty:   causes empty slices to be skipped
        * 	printable:   causes strings to be marshaled as ASN.1, PrintableString values
        * 	utf8:        causes strings to be marshaled as ASN.1, UTF8String values
        * 	utc:         causes time.Time to be marshaled as ASN.1, UTCTime values
        * 	generalized: causes time.Time to be marshaled as ASN.1, GeneralizedTime values
    **/
    static public inline function marshal(_val:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.encoding.asn1.Asn1_marshal.marshal(_val);
    /**
        * MarshalWithParams allows field parameters to be specified for the
        * top-level element. The form of the params is the same as the field tags.
    **/
    static public inline function marshalWithParams(_val:stdgo.AnyInterface, _params:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.encoding.asn1.Asn1_marshalwithparams.marshalWithParams(_val, _params);
}
