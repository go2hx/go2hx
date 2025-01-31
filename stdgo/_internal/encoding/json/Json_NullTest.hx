package stdgo._internal.encoding.json;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.Math;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.os.Os;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.math.big.Big;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.testing.Testing;
import stdgo._internal.log.Log;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.net.Net;
import stdgo._internal.net.http.httptest.Httptest;
import stdgo._internal.net.http.Http;
@:structInit @:using(stdgo._internal.encoding.json.Json_NullTest_static_extension.NullTest_static_extension) class NullTest {
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
    public var pRaw : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>);
    public var pTime : stdgo.Ref<stdgo._internal.time.Time_Time.Time> = (null : stdgo.Ref<stdgo._internal.time.Time_Time.Time>);
    public var pBigInt : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public var pText : stdgo.Ref<stdgo._internal.encoding.json.Json_MustNotUnmarshalText.MustNotUnmarshalText> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_MustNotUnmarshalText.MustNotUnmarshalText>);
    public var pBuffer : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = (null : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
    public var pStruct : stdgo.Ref<stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue>);
    public var raw : stdgo._internal.encoding.json.Json_RawMessage.RawMessage = new stdgo._internal.encoding.json.Json_RawMessage.RawMessage(0, 0);
    public var time : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public var bigInt : stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
    public var text : stdgo._internal.encoding.json.Json_MustNotUnmarshalText.MustNotUnmarshalText = ({} : stdgo._internal.encoding.json.Json_MustNotUnmarshalText.MustNotUnmarshalText);
    public var buffer : stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
    public var struct_ : stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue = ({} : stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue);
    public function new(?bool_:Bool, ?int_:stdgo.GoInt, ?int8:stdgo.GoInt8, ?int16:stdgo.GoInt16, ?int32:stdgo.GoInt32, ?int64:stdgo.GoInt64, ?uint:stdgo.GoUInt, ?uint8:stdgo.GoUInt8, ?uint16:stdgo.GoUInt16, ?uint32:stdgo.GoUInt32, ?uint64:stdgo.GoUInt64, ?float32:stdgo.GoFloat32, ?float64:stdgo.GoFloat64, ?string:stdgo.GoString, ?pBool:stdgo.Pointer<Bool>, ?map_:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?slice:stdgo.Slice<stdgo.GoString>, ?interface_:stdgo.AnyInterface, ?pRaw:stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>, ?pTime:stdgo.Ref<stdgo._internal.time.Time_Time.Time>, ?pBigInt:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?pText:stdgo.Ref<stdgo._internal.encoding.json.Json_MustNotUnmarshalText.MustNotUnmarshalText>, ?pBuffer:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>, ?pStruct:stdgo.Ref<stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue>, ?raw:stdgo._internal.encoding.json.Json_RawMessage.RawMessage, ?time:stdgo._internal.time.Time_Time.Time, ?bigInt:stdgo._internal.math.big.Big_Int_.Int_, ?text:stdgo._internal.encoding.json.Json_MustNotUnmarshalText.MustNotUnmarshalText, ?buffer:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?struct_:stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue) {
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
