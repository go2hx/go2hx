package stdgo._internal.encoding.json;
@:structInit class NullTest {
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
    public var pbool : stdgo.Pointer<Bool> = (null : stdgo.Pointer<Bool>);
    public var map_ : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public var slice : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var interface_ : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var praw : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>);
    public var ptime : stdgo.Ref<stdgo._internal.time.Time_Time.Time> = (null : stdgo.Ref<stdgo._internal.time.Time_Time.Time>);
    public var pbigInt : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public var ptext : stdgo.Ref<stdgo._internal.encoding.json.Json_MustNotUnmarshalText.MustNotUnmarshalText> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_MustNotUnmarshalText.MustNotUnmarshalText>);
    public var pbuffer : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = (null : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
    public var pstruct : stdgo.Ref<stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue>);
    public var raw : stdgo._internal.encoding.json.Json_RawMessage.RawMessage = new stdgo._internal.encoding.json.Json_RawMessage.RawMessage(0, 0);
    public var time : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public var bigInt : stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
    public var text : stdgo._internal.encoding.json.Json_MustNotUnmarshalText.MustNotUnmarshalText = ({} : stdgo._internal.encoding.json.Json_MustNotUnmarshalText.MustNotUnmarshalText);
    public var buffer : stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
    public var struct_ : stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue = ({} : stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue);
    public function new(?bool_:Bool, ?int_:stdgo.GoInt, ?int8:stdgo.GoInt8, ?int16:stdgo.GoInt16, ?int32:stdgo.GoInt32, ?int64:stdgo.GoInt64, ?uint:stdgo.GoUInt, ?uint8:stdgo.GoUInt8, ?uint16:stdgo.GoUInt16, ?uint32:stdgo.GoUInt32, ?uint64:stdgo.GoUInt64, ?float32:stdgo.GoFloat32, ?float64:stdgo.GoFloat64, ?string:stdgo.GoString, ?pbool:stdgo.Pointer<Bool>, ?map_:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?slice:stdgo.Slice<stdgo.GoString>, ?interface_:stdgo.AnyInterface, ?praw:stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>, ?ptime:stdgo.Ref<stdgo._internal.time.Time_Time.Time>, ?pbigInt:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?ptext:stdgo.Ref<stdgo._internal.encoding.json.Json_MustNotUnmarshalText.MustNotUnmarshalText>, ?pbuffer:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>, ?pstruct:stdgo.Ref<stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue>, ?raw:stdgo._internal.encoding.json.Json_RawMessage.RawMessage, ?time:stdgo._internal.time.Time_Time.Time, ?bigInt:stdgo._internal.math.big.Big_Int_.Int_, ?text:stdgo._internal.encoding.json.Json_MustNotUnmarshalText.MustNotUnmarshalText, ?buffer:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?struct_:stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue) {
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
        if (pbool != null) this.pbool = pbool;
        if (map_ != null) this.map_ = map_;
        if (slice != null) this.slice = slice;
        if (interface_ != null) this.interface_ = interface_;
        if (praw != null) this.praw = praw;
        if (ptime != null) this.ptime = ptime;
        if (pbigInt != null) this.pbigInt = pbigInt;
        if (ptext != null) this.ptext = ptext;
        if (pbuffer != null) this.pbuffer = pbuffer;
        if (pstruct != null) this.pstruct = pstruct;
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
pbool,
map_,
slice,
interface_,
praw,
ptime,
pbigInt,
ptext,
pbuffer,
pstruct,
raw,
time,
bigInt,
text,
buffer,
struct_);
    }
}
