package stdgo.encoding;
class BinaryMarshaler_static_extension {
    static public function marshalBinary(t:stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.Encoding_binarymarshaler_static_extension.BinaryMarshaler_static_extension.marshalBinary(t);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract BinaryMarshaler(stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler) from stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler to stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler {
    @:from
    static function fromHaxeInterface(x:{ function marshalBinary():stdgo.Tuple<Array<std.UInt>, stdgo.Error>; }):BinaryMarshaler {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:BinaryMarshaler = { marshalBinary : () -> {
            final obj = x.marshalBinary();
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        }, __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class BinaryUnmarshaler_static_extension {
    static public function unmarshalBinary(t:stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.Encoding_binaryunmarshaler_static_extension.BinaryUnmarshaler_static_extension.unmarshalBinary(t, _data);
    }
}
@:interface @:forward abstract BinaryUnmarshaler(stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler) from stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler to stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler {
    @:from
    static function fromHaxeInterface(x:{ function unmarshalBinary(_data:Array<std.UInt>):stdgo.Error; }):BinaryUnmarshaler {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:BinaryUnmarshaler = { unmarshalBinary : _0 -> x.unmarshalBinary([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class TextMarshaler_static_extension {
    static public function marshalText(t:stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.Encoding_textmarshaler_static_extension.TextMarshaler_static_extension.marshalText(t);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract TextMarshaler(stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler) from stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler to stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler {
    @:from
    static function fromHaxeInterface(x:{ function marshalText():stdgo.Tuple<Array<std.UInt>, stdgo.Error>; }):TextMarshaler {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:TextMarshaler = { marshalText : () -> {
            final obj = x.marshalText();
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        }, __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class TextUnmarshaler_static_extension {
    static public function unmarshalText(t:stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler, _text:Array<std.UInt>):stdgo.Error {
        final _text = ([for (i in _text) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.Encoding_textunmarshaler_static_extension.TextUnmarshaler_static_extension.unmarshalText(t, _text);
    }
}
@:interface @:forward abstract TextUnmarshaler(stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler) from stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler to stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler {
    @:from
    static function fromHaxeInterface(x:{ function unmarshalText(_text:Array<std.UInt>):stdgo.Error; }):TextUnmarshaler {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:TextUnmarshaler = { unmarshalText : _0 -> x.unmarshalText([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
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
