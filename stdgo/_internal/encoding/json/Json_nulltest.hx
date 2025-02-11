package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_nulltest_static_extension.NullTest_static_extension) class NullTest {
    public var bool_ : Bool = false;
    public var int_ : stdgo.GoInt = 0;
    public var int8 : stdgo.GoInt8 = 0;
    public var int16 : stdgo.GoInt16 = 0;
    public var int32 : stdgo.GoInt32 = 0;
    public var int64 : stdgo.GoInt64 = 0;
    public var uint : stdgo.GoUInt = 0;
    public var uint8 : stdgo.GoUInt8 = 0;
    public var uint16 : stdgo.GoUInt16 = 0;
    public var uint32 : stdgo.GoUInt32 = 0;
    public var uint64 : stdgo.GoUInt64 = 0;
    public var float32 : stdgo.GoFloat32 = 0;
    public var float64 : stdgo.GoFloat64 = 0;
    public var string : stdgo.GoString = "";
    public var pBool : stdgo.Pointer<Bool> = (null : stdgo.Pointer<Bool>);
    public var map_ : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public var slice : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var interface_ : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var pRaw : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>);
    public var pTime : stdgo.Ref<stdgo._internal.time.Time_time.Time> = (null : stdgo.Ref<stdgo._internal.time.Time_time.Time>);
    public var pBigInt : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public var pText : stdgo.Ref<stdgo._internal.encoding.json.Json_mustnotunmarshaltext.MustNotUnmarshalText> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_mustnotunmarshaltext.MustNotUnmarshalText>);
    public var pBuffer : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = (null : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
    public var pStruct : stdgo.Ref<stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue>);
    public var raw : stdgo._internal.encoding.json.Json_rawmessage.RawMessage = (new stdgo._internal.encoding.json.Json_rawmessage.RawMessage(0, 0) : stdgo._internal.encoding.json.Json_rawmessage.RawMessage);
    public var time : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var bigInt : stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
    public var text : stdgo._internal.encoding.json.Json_mustnotunmarshaltext.MustNotUnmarshalText = ({} : stdgo._internal.encoding.json.Json_mustnotunmarshaltext.MustNotUnmarshalText);
    public var buffer : stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
    public var struct_ : stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue = ({} : stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue);
    public function new(?bool_:Bool, ?int_:stdgo.GoInt, ?int8:stdgo.GoInt8, ?int16:stdgo.GoInt16, ?int32:stdgo.GoInt32, ?int64:stdgo.GoInt64, ?uint:stdgo.GoUInt, ?uint8:stdgo.GoUInt8, ?uint16:stdgo.GoUInt16, ?uint32:stdgo.GoUInt32, ?uint64:stdgo.GoUInt64, ?float32:stdgo.GoFloat32, ?float64:stdgo.GoFloat64, ?string:stdgo.GoString, ?pBool:stdgo.Pointer<Bool>, ?map_:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?slice:stdgo.Slice<stdgo.GoString>, ?interface_:stdgo.AnyInterface, ?pRaw:stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>, ?pTime:stdgo.Ref<stdgo._internal.time.Time_time.Time>, ?pBigInt:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, ?pText:stdgo.Ref<stdgo._internal.encoding.json.Json_mustnotunmarshaltext.MustNotUnmarshalText>, ?pBuffer:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, ?pStruct:stdgo.Ref<stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue>, ?raw:stdgo._internal.encoding.json.Json_rawmessage.RawMessage, ?time:stdgo._internal.time.Time_time.Time, ?bigInt:stdgo._internal.math.big.Big_int_.Int_, ?text:stdgo._internal.encoding.json.Json_mustnotunmarshaltext.MustNotUnmarshalText, ?buffer:stdgo._internal.bytes.Bytes_buffer.Buffer, ?struct_:stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue) {
        if (bool_ != null) this.bool_ = bool_;
        if (int_ != null) this.int_ = int_;
        if (int8 != null) this.int8 = int8;
        if (int16 != null) this.int16 = int16;
        if (int32 != null) this.int32 = int32;
        if (int64 != null) this.int64 = int64;
        if (uint != null) this.uint = uint;
        if (uint8 != null) this.uint8 = uint8;
        if (uint16 != null) this.uint16 = uint16;
        if (uint32 != null) this.uint32 = uint32;
        if (uint64 != null) this.uint64 = uint64;
        if (float32 != null) this.float32 = float32;
        if (float64 != null) this.float64 = float64;
        if (string != null) this.string = string;
        if (pBool != null) this.pBool = pBool;
        if (map_ != null) this.map_ = map_;
        if (slice != null) this.slice = slice;
        if (interface_ != null) this.interface_ = interface_;
        if (pRaw != null) this.pRaw = pRaw;
        if (pTime != null) this.pTime = pTime;
        if (pBigInt != null) this.pBigInt = pBigInt;
        if (pText != null) this.pText = pText;
        if (pBuffer != null) this.pBuffer = pBuffer;
        if (pStruct != null) this.pStruct = pStruct;
        if (raw != null) this.raw = raw;
        if (time != null) this.time = time;
        if (bigInt != null) this.bigInt = bigInt;
        if (text != null) this.text = text;
        if (buffer != null) this.buffer = buffer;
        if (struct_ != null) this.struct_ = struct_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NullTest(
bool_,
int_,
int8,
int16,
int32,
int64,
uint,
uint8,
uint16,
uint32,
uint64,
float32,
float64,
string,
pBool,
map_,
slice,
interface_,
pRaw,
pTime,
pBigInt,
pText,
pBuffer,
pStruct,
raw,
time,
bigInt,
text,
buffer,
struct_);
    }
}
