package stdgo;
final tagBoolean : haxe.UInt64 = stdgo._internal.encoding.asn1.Asn1_tagboolean.tagBoolean;
final tagInteger : haxe.UInt64 = stdgo._internal.encoding.asn1.Asn1_taginteger.tagInteger;
final tagBitString : haxe.UInt64 = stdgo._internal.encoding.asn1.Asn1_tagbitstring.tagBitString;
final tagOctetString : haxe.UInt64 = stdgo._internal.encoding.asn1.Asn1_tagoctetstring.tagOctetString;
final tagNull : haxe.UInt64 = stdgo._internal.encoding.asn1.Asn1_tagnull.tagNull;
final tagOID : haxe.UInt64 = stdgo._internal.encoding.asn1.Asn1_tagoid.tagOID;
final tagEnum : haxe.UInt64 = stdgo._internal.encoding.asn1.Asn1_tagenum.tagEnum;
final tagUTF8String : haxe.UInt64 = stdgo._internal.encoding.asn1.Asn1_tagutf8string.tagUTF8String;
final tagSequence : haxe.UInt64 = stdgo._internal.encoding.asn1.Asn1_tagsequence.tagSequence;
final tagSet : haxe.UInt64 = stdgo._internal.encoding.asn1.Asn1_tagset.tagSet;
final tagNumericString : haxe.UInt64 = stdgo._internal.encoding.asn1.Asn1_tagnumericstring.tagNumericString;
final tagPrintableString : haxe.UInt64 = stdgo._internal.encoding.asn1.Asn1_tagprintablestring.tagPrintableString;
final tagT61String : haxe.UInt64 = stdgo._internal.encoding.asn1.Asn1_tagt61string.tagT61String;
final tagIA5String : haxe.UInt64 = stdgo._internal.encoding.asn1.Asn1_tagia5string.tagIA5String;
final tagUTCTime : haxe.UInt64 = stdgo._internal.encoding.asn1.Asn1_tagutctime.tagUTCTime;
final tagGeneralizedTime : haxe.UInt64 = stdgo._internal.encoding.asn1.Asn1_taggeneralizedtime.tagGeneralizedTime;
final tagGeneralString : haxe.UInt64 = stdgo._internal.encoding.asn1.Asn1_taggeneralstring.tagGeneralString;
final tagBMPString : haxe.UInt64 = stdgo._internal.encoding.asn1.Asn1_tagbmpstring.tagBMPString;
final classUniversal : haxe.UInt64 = stdgo._internal.encoding.asn1.Asn1_classuniversal.classUniversal;
final classApplication : haxe.UInt64 = stdgo._internal.encoding.asn1.Asn1_classapplication.classApplication;
final classContextSpecific : haxe.UInt64 = stdgo._internal.encoding.asn1.Asn1_classcontextspecific.classContextSpecific;
final classPrivate : haxe.UInt64 = stdgo._internal.encoding.asn1.Asn1_classprivate.classPrivate;
var nullRawValue(get, set) : RawValue;
private function get_nullRawValue():RawValue return stdgo._internal.encoding.asn1.Asn1_nullrawvalue.nullRawValue;
private function set_nullRawValue(v:RawValue):RawValue {
        stdgo._internal.encoding.asn1.Asn1_nullrawvalue.nullRawValue = v;
        return v;
    }
var nullBytes(get, set) : Array<std.UInt>;
private function get_nullBytes():Array<std.UInt> return [for (i in stdgo._internal.encoding.asn1.Asn1_nullbytes.nullBytes) i];
private function set_nullBytes(v:Array<std.UInt>):Array<std.UInt> {
        stdgo._internal.encoding.asn1.Asn1_nullbytes.nullBytes = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
@:dox(hide) class T_encoder_static_extension {
    static public function encode(t:stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder, _dst:Array<std.UInt>):Void {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.asn1.Asn1_t_encoder_static_extension.T_encoder_static_extension.encode(t, _dst);
    }
    static public function len(t:stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder):StdTypes.Int {
        return stdgo._internal.encoding.asn1.Asn1_t_encoder_static_extension.T_encoder_static_extension.len(t);
    }
}
@:dox(hide) @:forward abstract T_encoder(stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder) from stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder to stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder {
    @:from
    static function fromHaxeInterface(x:{ function len():StdTypes.Int; function encode(_dst:Array<std.UInt>):Void; }):T_encoder {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_encoder = { len : () -> x.len(), encode : _0 -> x.encode([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.encoding.asn1.Asn1.StructuralError_static_extension) abstract StructuralError(stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError) from stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError to stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError {
    public var msg(get, set) : String;
    function get_msg():String return this.msg;
    function set_msg(v:String):String {
        this.msg = (v : stdgo.GoString);
        return v;
    }
    public function new(?msg:String) this = new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError((msg : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.asn1.Asn1.SyntaxError_static_extension) abstract SyntaxError(stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError) from stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError to stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError {
    public var msg(get, set) : String;
    function get_msg():String return this.msg;
    function set_msg(v:String):String {
        this.msg = (v : stdgo.GoString);
        return v;
    }
    public function new(?msg:String) this = new stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError((msg : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.asn1.Asn1.BitString_static_extension) abstract BitString(stdgo._internal.encoding.asn1.Asn1_bitstring.BitString) from stdgo._internal.encoding.asn1.Asn1_bitstring.BitString to stdgo._internal.encoding.asn1.Asn1_bitstring.BitString {
    public var bytes(get, set) : Array<std.UInt>;
    function get_bytes():Array<std.UInt> return [for (i in this.bytes) i];
    function set_bytes(v:Array<std.UInt>):Array<std.UInt> {
        this.bytes = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var bitLength(get, set) : StdTypes.Int;
    function get_bitLength():StdTypes.Int return this.bitLength;
    function set_bitLength(v:StdTypes.Int):StdTypes.Int {
        this.bitLength = (v : stdgo.GoInt);
        return v;
    }
    public function new(?bytes:Array<std.UInt>, ?bitLength:StdTypes.Int) this = new stdgo._internal.encoding.asn1.Asn1_bitstring.BitString(([for (i in bytes) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (bitLength : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.asn1.Asn1.RawValue_static_extension) abstract RawValue(stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue) from stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue to stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue {
    public var class_(get, set) : StdTypes.Int;
    function get_class_():StdTypes.Int return this.class_;
    function set_class_(v:StdTypes.Int):StdTypes.Int {
        this.class_ = (v : stdgo.GoInt);
        return v;
    }
    public var tag(get, set) : StdTypes.Int;
    function get_tag():StdTypes.Int return this.tag;
    function set_tag(v:StdTypes.Int):StdTypes.Int {
        this.tag = (v : stdgo.GoInt);
        return v;
    }
    public var isCompound(get, set) : Bool;
    function get_isCompound():Bool return this.isCompound;
    function set_isCompound(v:Bool):Bool {
        this.isCompound = v;
        return v;
    }
    public var bytes(get, set) : Array<std.UInt>;
    function get_bytes():Array<std.UInt> return [for (i in this.bytes) i];
    function set_bytes(v:Array<std.UInt>):Array<std.UInt> {
        this.bytes = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var fullBytes(get, set) : Array<std.UInt>;
    function get_fullBytes():Array<std.UInt> return [for (i in this.fullBytes) i];
    function set_fullBytes(v:Array<std.UInt>):Array<std.UInt> {
        this.fullBytes = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?class_:StdTypes.Int, ?tag:StdTypes.Int, ?isCompound:Bool, ?bytes:Array<std.UInt>, ?fullBytes:Array<std.UInt>) this = new stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue((class_ : stdgo.GoInt), (tag : stdgo.GoInt), isCompound, ([for (i in bytes) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in fullBytes) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.asn1.Asn1.T_invalidUnmarshalError_static_extension) @:dox(hide) abstract T_invalidUnmarshalError(stdgo._internal.encoding.asn1.Asn1_t_invalidunmarshalerror.T_invalidUnmarshalError) from stdgo._internal.encoding.asn1.Asn1_t_invalidunmarshalerror.T_invalidUnmarshalError to stdgo._internal.encoding.asn1.Asn1_t_invalidunmarshalerror.T_invalidUnmarshalError {
    public var type(get, set) : stdgo._internal.reflect.Reflect_type_.Type_;
    function get_type():stdgo._internal.reflect.Reflect_type_.Type_ return this.type;
    function set_type(v:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.reflect.Reflect_type_.Type_ {
        this.type = v;
        return v;
    }
    public function new(?type:stdgo._internal.reflect.Reflect_type_.Type_) this = new stdgo._internal.encoding.asn1.Asn1_t_invalidunmarshalerror.T_invalidUnmarshalError(type);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.asn1.Asn1.T_tagAndLength_static_extension) @:dox(hide) abstract T_tagAndLength(stdgo._internal.encoding.asn1.Asn1_t_tagandlength.T_tagAndLength) from stdgo._internal.encoding.asn1.Asn1_t_tagandlength.T_tagAndLength to stdgo._internal.encoding.asn1.Asn1_t_tagandlength.T_tagAndLength {
    public var _class(get, set) : StdTypes.Int;
    function get__class():StdTypes.Int return this._class;
    function set__class(v:StdTypes.Int):StdTypes.Int {
        this._class = (v : stdgo.GoInt);
        return v;
    }
    public var _tag(get, set) : StdTypes.Int;
    function get__tag():StdTypes.Int return this._tag;
    function set__tag(v:StdTypes.Int):StdTypes.Int {
        this._tag = (v : stdgo.GoInt);
        return v;
    }
    public var _length(get, set) : StdTypes.Int;
    function get__length():StdTypes.Int return this._length;
    function set__length(v:StdTypes.Int):StdTypes.Int {
        this._length = (v : stdgo.GoInt);
        return v;
    }
    public var _isCompound(get, set) : Bool;
    function get__isCompound():Bool return this._isCompound;
    function set__isCompound(v:Bool):Bool {
        this._isCompound = v;
        return v;
    }
    public function new(?_class:StdTypes.Int, ?_tag:StdTypes.Int, ?_length:StdTypes.Int, ?_isCompound:Bool) this = new stdgo._internal.encoding.asn1.Asn1_t_tagandlength.T_tagAndLength((_class : stdgo.GoInt), (_tag : stdgo.GoInt), (_length : stdgo.GoInt), _isCompound);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.asn1.Asn1.T_fieldParameters_static_extension) @:dox(hide) abstract T_fieldParameters(stdgo._internal.encoding.asn1.Asn1_t_fieldparameters.T_fieldParameters) from stdgo._internal.encoding.asn1.Asn1_t_fieldparameters.T_fieldParameters to stdgo._internal.encoding.asn1.Asn1_t_fieldparameters.T_fieldParameters {
    public var _optional(get, set) : Bool;
    function get__optional():Bool return this._optional;
    function set__optional(v:Bool):Bool {
        this._optional = v;
        return v;
    }
    public var _explicit(get, set) : Bool;
    function get__explicit():Bool return this._explicit;
    function set__explicit(v:Bool):Bool {
        this._explicit = v;
        return v;
    }
    public var _application(get, set) : Bool;
    function get__application():Bool return this._application;
    function set__application(v:Bool):Bool {
        this._application = v;
        return v;
    }
    public var _private(get, set) : Bool;
    function get__private():Bool return this._private;
    function set__private(v:Bool):Bool {
        this._private = v;
        return v;
    }
    public var _defaultValue(get, set) : stdgo.Pointer<haxe.Int64>;
    function get__defaultValue():stdgo.Pointer<haxe.Int64> return this._defaultValue;
    function set__defaultValue(v:stdgo.Pointer<haxe.Int64>):stdgo.Pointer<haxe.Int64> {
        this._defaultValue = v;
        return v;
    }
    public var _tag(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get__tag():stdgo.Pointer<StdTypes.Int> return this._tag;
    function set__tag(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this._tag = v;
        return v;
    }
    public var _stringType(get, set) : StdTypes.Int;
    function get__stringType():StdTypes.Int return this._stringType;
    function set__stringType(v:StdTypes.Int):StdTypes.Int {
        this._stringType = (v : stdgo.GoInt);
        return v;
    }
    public var _timeType(get, set) : StdTypes.Int;
    function get__timeType():StdTypes.Int return this._timeType;
    function set__timeType(v:StdTypes.Int):StdTypes.Int {
        this._timeType = (v : stdgo.GoInt);
        return v;
    }
    public var _set(get, set) : Bool;
    function get__set():Bool return this._set;
    function set__set(v:Bool):Bool {
        this._set = v;
        return v;
    }
    public var _omitEmpty(get, set) : Bool;
    function get__omitEmpty():Bool return this._omitEmpty;
    function set__omitEmpty(v:Bool):Bool {
        this._omitEmpty = v;
        return v;
    }
    public function new(?_optional:Bool, ?_explicit:Bool, ?_application:Bool, ?_private:Bool, ?_defaultValue:stdgo.Pointer<haxe.Int64>, ?_tag:stdgo.Pointer<StdTypes.Int>, ?_stringType:StdTypes.Int, ?_timeType:StdTypes.Int, ?_set:Bool, ?_omitEmpty:Bool) this = new stdgo._internal.encoding.asn1.Asn1_t_fieldparameters.T_fieldParameters(_optional, _explicit, _application, _private, _defaultValue, _tag, (_stringType : stdgo.GoInt), (_timeType : stdgo.GoInt), _set, _omitEmpty);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.asn1.Asn1.T_taggedEncoder_static_extension) @:dox(hide) abstract T_taggedEncoder(stdgo._internal.encoding.asn1.Asn1_t_taggedencoder.T_taggedEncoder) from stdgo._internal.encoding.asn1.Asn1_t_taggedencoder.T_taggedEncoder to stdgo._internal.encoding.asn1.Asn1_t_taggedencoder.T_taggedEncoder {
    public var _scratch(get, set) : haxe.ds.Vector<std.UInt>;
    function get__scratch():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._scratch) i]);
    function set__scratch(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._scratch = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _tag(get, set) : T_encoder;
    function get__tag():T_encoder return this._tag;
    function set__tag(v:T_encoder):T_encoder {
        this._tag = v;
        return v;
    }
    public var _body(get, set) : T_encoder;
    function get__body():T_encoder return this._body;
    function set__body(v:T_encoder):T_encoder {
        this._body = v;
        return v;
    }
    public function new(?_scratch:haxe.ds.Vector<std.UInt>, ?_tag:T_encoder, ?_body:T_encoder) this = new stdgo._internal.encoding.asn1.Asn1_t_taggedencoder.T_taggedEncoder(([for (i in _scratch) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), _tag, _body);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef ObjectIdentifier = stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier;
typedef Enumerated = stdgo._internal.encoding.asn1.Asn1_enumerated.Enumerated;
typedef Flag = stdgo._internal.encoding.asn1.Asn1_flag.Flag;
@:dox(hide) typedef T_asteriskFlag = stdgo._internal.encoding.asn1.Asn1_t_asteriskflag.T_asteriskFlag;
@:dox(hide) typedef T_ampersandFlag = stdgo._internal.encoding.asn1.Asn1_t_ampersandflag.T_ampersandFlag;
typedef RawContent = stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent;
@:dox(hide) typedef T_byteEncoder = stdgo._internal.encoding.asn1.Asn1_t_byteencoder.T_byteEncoder;
@:dox(hide) typedef T_bytesEncoder = stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder;
@:dox(hide) typedef T_stringEncoder = stdgo._internal.encoding.asn1.Asn1_t_stringencoder.T_stringEncoder;
@:dox(hide) typedef T_multiEncoder = stdgo._internal.encoding.asn1.Asn1_t_multiencoder.T_multiEncoder;
@:dox(hide) typedef T_setEncoder = stdgo._internal.encoding.asn1.Asn1_t_setencoder.T_setEncoder;
@:dox(hide) typedef T_int64Encoder = stdgo._internal.encoding.asn1.Asn1_t_int64encoder.T_int64Encoder;
@:dox(hide) typedef T_bitStringEncoder = stdgo._internal.encoding.asn1.Asn1_t_bitstringencoder.T_bitStringEncoder;
@:dox(hide) typedef T_oidEncoder = stdgo._internal.encoding.asn1.Asn1_t_oidencoder.T_oidEncoder;
typedef StructuralErrorPointer = stdgo._internal.encoding.asn1.Asn1_structuralerrorpointer.StructuralErrorPointer;
class StructuralError_static_extension {
    static public function error(_e:StructuralError):String {
        return stdgo._internal.encoding.asn1.Asn1_structuralerror_static_extension.StructuralError_static_extension.error(_e);
    }
}
typedef SyntaxErrorPointer = stdgo._internal.encoding.asn1.Asn1_syntaxerrorpointer.SyntaxErrorPointer;
class SyntaxError_static_extension {
    static public function error(_e:SyntaxError):String {
        return stdgo._internal.encoding.asn1.Asn1_syntaxerror_static_extension.SyntaxError_static_extension.error(_e);
    }
}
typedef BitStringPointer = stdgo._internal.encoding.asn1.Asn1_bitstringpointer.BitStringPointer;
class BitString_static_extension {
    static public function rightAlign(_b:BitString):Array<std.UInt> {
        return [for (i in stdgo._internal.encoding.asn1.Asn1_bitstring_static_extension.BitString_static_extension.rightAlign(_b)) i];
    }
    static public function at(_b:BitString, _i:StdTypes.Int):StdTypes.Int {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.encoding.asn1.Asn1_bitstring_static_extension.BitString_static_extension.at(_b, _i);
    }
}
typedef RawValuePointer = stdgo._internal.encoding.asn1.Asn1_rawvaluepointer.RawValuePointer;
class RawValue_static_extension {

}
@:dox(hide) typedef T_invalidUnmarshalErrorPointer = stdgo._internal.encoding.asn1.Asn1_t_invalidunmarshalerrorpointer.T_invalidUnmarshalErrorPointer;
@:dox(hide) class T_invalidUnmarshalError_static_extension {
    static public function error(_e:T_invalidUnmarshalError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_t_invalidunmarshalerror.T_invalidUnmarshalError>);
        return stdgo._internal.encoding.asn1.Asn1_t_invalidunmarshalerror_static_extension.T_invalidUnmarshalError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_tagAndLengthPointer = stdgo._internal.encoding.asn1.Asn1_t_tagandlengthpointer.T_tagAndLengthPointer;
@:dox(hide) class T_tagAndLength_static_extension {

}
@:dox(hide) typedef T_fieldParametersPointer = stdgo._internal.encoding.asn1.Asn1_t_fieldparameterspointer.T_fieldParametersPointer;
@:dox(hide) class T_fieldParameters_static_extension {

}
@:dox(hide) typedef T_taggedEncoderPointer = stdgo._internal.encoding.asn1.Asn1_t_taggedencoderpointer.T_taggedEncoderPointer;
@:dox(hide) class T_taggedEncoder_static_extension {
    static public function encode(_t:T_taggedEncoder, _dst:Array<std.UInt>):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_t_taggedencoder.T_taggedEncoder>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.asn1.Asn1_t_taggedencoder_static_extension.T_taggedEncoder_static_extension.encode(_t, _dst);
    }
    static public function len(_t:T_taggedEncoder):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_t_taggedencoder.T_taggedEncoder>);
        return stdgo._internal.encoding.asn1.Asn1_t_taggedencoder_static_extension.T_taggedEncoder_static_extension.len(_t);
    }
}
typedef ObjectIdentifierPointer = stdgo._internal.encoding.asn1.Asn1_objectidentifierpointer.ObjectIdentifierPointer;
class ObjectIdentifier_static_extension {
    static public function string(_oi:ObjectIdentifier):String {
        return stdgo._internal.encoding.asn1.Asn1_objectidentifier_static_extension.ObjectIdentifier_static_extension.string(_oi);
    }
    static public function equal(_oi:ObjectIdentifier, _other:ObjectIdentifier):Bool {
        return stdgo._internal.encoding.asn1.Asn1_objectidentifier_static_extension.ObjectIdentifier_static_extension.equal(_oi, _other);
    }
}
typedef EnumeratedPointer = stdgo._internal.encoding.asn1.Asn1_enumeratedpointer.EnumeratedPointer;
class Enumerated_static_extension {

}
typedef FlagPointer = stdgo._internal.encoding.asn1.Asn1_flagpointer.FlagPointer;
class Flag_static_extension {

}
@:dox(hide) typedef T_asteriskFlagPointer = stdgo._internal.encoding.asn1.Asn1_t_asteriskflagpointer.T_asteriskFlagPointer;
@:dox(hide) class T_asteriskFlag_static_extension {

}
@:dox(hide) typedef T_ampersandFlagPointer = stdgo._internal.encoding.asn1.Asn1_t_ampersandflagpointer.T_ampersandFlagPointer;
@:dox(hide) class T_ampersandFlag_static_extension {

}
typedef RawContentPointer = stdgo._internal.encoding.asn1.Asn1_rawcontentpointer.RawContentPointer;
class RawContent_static_extension {

}
@:dox(hide) typedef T_byteEncoderPointer = stdgo._internal.encoding.asn1.Asn1_t_byteencoderpointer.T_byteEncoderPointer;
@:dox(hide) class T_byteEncoder_static_extension {
    static public function encode(_c:T_byteEncoder, _dst:Array<std.UInt>):Void {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.asn1.Asn1_t_byteencoder_static_extension.T_byteEncoder_static_extension.encode(_c, _dst);
    }
    static public function len(_c:T_byteEncoder):StdTypes.Int {
        return stdgo._internal.encoding.asn1.Asn1_t_byteencoder_static_extension.T_byteEncoder_static_extension.len(_c);
    }
}
@:dox(hide) typedef T_bytesEncoderPointer = stdgo._internal.encoding.asn1.Asn1_t_bytesencoderpointer.T_bytesEncoderPointer;
@:dox(hide) class T_bytesEncoder_static_extension {
    static public function encode(_b:T_bytesEncoder, _dst:Array<std.UInt>):Void {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.asn1.Asn1_t_bytesencoder_static_extension.T_bytesEncoder_static_extension.encode(_b, _dst);
    }
    static public function len(_b:T_bytesEncoder):StdTypes.Int {
        return stdgo._internal.encoding.asn1.Asn1_t_bytesencoder_static_extension.T_bytesEncoder_static_extension.len(_b);
    }
}
@:dox(hide) typedef T_stringEncoderPointer = stdgo._internal.encoding.asn1.Asn1_t_stringencoderpointer.T_stringEncoderPointer;
@:dox(hide) class T_stringEncoder_static_extension {
    static public function encode(_s:T_stringEncoder, _dst:Array<std.UInt>):Void {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.asn1.Asn1_t_stringencoder_static_extension.T_stringEncoder_static_extension.encode(_s, _dst);
    }
    static public function len(_s:T_stringEncoder):StdTypes.Int {
        return stdgo._internal.encoding.asn1.Asn1_t_stringencoder_static_extension.T_stringEncoder_static_extension.len(_s);
    }
}
@:dox(hide) typedef T_multiEncoderPointer = stdgo._internal.encoding.asn1.Asn1_t_multiencoderpointer.T_multiEncoderPointer;
@:dox(hide) class T_multiEncoder_static_extension {
    static public function encode(_m:T_multiEncoder, _dst:Array<std.UInt>):Void {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.asn1.Asn1_t_multiencoder_static_extension.T_multiEncoder_static_extension.encode(_m, _dst);
    }
    static public function len(_m:T_multiEncoder):StdTypes.Int {
        return stdgo._internal.encoding.asn1.Asn1_t_multiencoder_static_extension.T_multiEncoder_static_extension.len(_m);
    }
}
@:dox(hide) typedef T_setEncoderPointer = stdgo._internal.encoding.asn1.Asn1_t_setencoderpointer.T_setEncoderPointer;
@:dox(hide) class T_setEncoder_static_extension {
    static public function encode(_s:T_setEncoder, _dst:Array<std.UInt>):Void {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.asn1.Asn1_t_setencoder_static_extension.T_setEncoder_static_extension.encode(_s, _dst);
    }
    static public function len(_s:T_setEncoder):StdTypes.Int {
        return stdgo._internal.encoding.asn1.Asn1_t_setencoder_static_extension.T_setEncoder_static_extension.len(_s);
    }
}
@:dox(hide) typedef T_int64EncoderPointer = stdgo._internal.encoding.asn1.Asn1_t_int64encoderpointer.T_int64EncoderPointer;
@:dox(hide) class T_int64Encoder_static_extension {
    static public function encode(_i:T_int64Encoder, _dst:Array<std.UInt>):Void {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.asn1.Asn1_t_int64encoder_static_extension.T_int64Encoder_static_extension.encode(_i, _dst);
    }
    static public function len(_i:T_int64Encoder):StdTypes.Int {
        return stdgo._internal.encoding.asn1.Asn1_t_int64encoder_static_extension.T_int64Encoder_static_extension.len(_i);
    }
}
@:dox(hide) typedef T_bitStringEncoderPointer = stdgo._internal.encoding.asn1.Asn1_t_bitstringencoderpointer.T_bitStringEncoderPointer;
@:dox(hide) class T_bitStringEncoder_static_extension {
    static public function encode(_b:T_bitStringEncoder, _dst:Array<std.UInt>):Void {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.asn1.Asn1_t_bitstringencoder_static_extension.T_bitStringEncoder_static_extension.encode(_b, _dst);
    }
    static public function len(_b:T_bitStringEncoder):StdTypes.Int {
        return stdgo._internal.encoding.asn1.Asn1_t_bitstringencoder_static_extension.T_bitStringEncoder_static_extension.len(_b);
    }
}
@:dox(hide) typedef T_oidEncoderPointer = stdgo._internal.encoding.asn1.Asn1_t_oidencoderpointer.T_oidEncoderPointer;
@:dox(hide) class T_oidEncoder_static_extension {
    static public function encode(_oid:T_oidEncoder, _dst:Array<std.UInt>):Void {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.asn1.Asn1_t_oidencoder_static_extension.T_oidEncoder_static_extension.encode(_oid, _dst);
    }
    static public function len(_oid:T_oidEncoder):StdTypes.Int {
        return stdgo._internal.encoding.asn1.Asn1_t_oidencoder_static_extension.T_oidEncoder_static_extension.len(_oid);
    }
}
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
    static public inline function unmarshal(_b:Array<std.UInt>, _val:stdgo.AnyInterface):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _val = (_val : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_b, _val);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * UnmarshalWithParams allows field parameters to be specified for the
        * top-level element. The form of the params is the same as the field tags.
    **/
    static public inline function unmarshalWithParams(_b:Array<std.UInt>, _val:stdgo.AnyInterface, _params:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _val = (_val : stdgo.AnyInterface);
        final _params = (_params : stdgo.GoString);
        return {
            final obj = stdgo._internal.encoding.asn1.Asn1_unmarshalwithparams.unmarshalWithParams(_b, _val, _params);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
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
    static public inline function marshal(_val:stdgo.AnyInterface):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _val = (_val : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(_val);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * MarshalWithParams allows field parameters to be specified for the
        * top-level element. The form of the params is the same as the field tags.
    **/
    static public inline function marshalWithParams(_val:stdgo.AnyInterface, _params:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _val = (_val : stdgo.AnyInterface);
        final _params = (_params : stdgo.GoString);
        return {
            final obj = stdgo._internal.encoding.asn1.Asn1_marshalwithparams.marshalWithParams(_val, _params);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
