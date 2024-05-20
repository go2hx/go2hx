package stdgo.encoding;
class BinaryMarshaler_static_extension {
    static public function marshalBinary(t:BinaryMarshaler):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.Encoding.BinaryMarshaler_static_extension.marshalBinary(t);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef BinaryMarshaler = stdgo._internal.encoding.Encoding.BinaryMarshaler;
class BinaryUnmarshaler_static_extension {
    static public function unmarshalBinary(t:BinaryUnmarshaler, _data:Array<StdTypes.Int>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.Encoding.BinaryUnmarshaler_static_extension.unmarshalBinary(t, _data);
    }
}
typedef BinaryUnmarshaler = stdgo._internal.encoding.Encoding.BinaryUnmarshaler;
class TextMarshaler_static_extension {
    static public function marshalText(t:TextMarshaler):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.Encoding.TextMarshaler_static_extension.marshalText(t);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef TextMarshaler = stdgo._internal.encoding.Encoding.TextMarshaler;
class TextUnmarshaler_static_extension {
    static public function unmarshalText(t:TextUnmarshaler, _text:Array<StdTypes.Int>):stdgo.Error {
        final _text = ([for (i in _text) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.Encoding.TextUnmarshaler_static_extension.unmarshalText(t, _text);
    }
}
typedef TextUnmarshaler = stdgo._internal.encoding.Encoding.TextUnmarshaler;
/**
    Package encoding defines interfaces shared by other packages that
    convert data to and from byte-level and textual representations.
    Packages that check for these interfaces include encoding/gob,
    encoding/json, and encoding/xml. As a result, implementing an
    interface once can make a type useful in multiple encodings.
    Standard types that implement these interfaces include time.Time and net.IP.
    The interfaces come in pairs that produce and consume encoded data.
    
    Adding encoding/decoding methods to existing types may constitute a breaking change,
    as they can be used for serialization in communicating with programs
    written with different library versions.
    The policy for packages maintained by the Go project is to only allow
    the addition of marshaling functions if no existing, reasonable marshaling exists.
**/
class Encoding {

}
