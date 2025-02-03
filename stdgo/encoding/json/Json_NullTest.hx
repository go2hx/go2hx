package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.NullTest_static_extension) abstract NullTest(stdgo._internal.encoding.json.Json_NullTest.NullTest) from stdgo._internal.encoding.json.Json_NullTest.NullTest to stdgo._internal.encoding.json.Json_NullTest.NullTest {
    public var bool_(get, set) : Bool;
    function get_bool_():Bool return this.bool_;
    function set_bool_(v:Bool):Bool {
        this.bool_ = v;
        return v;
    }
    public var int_(get, set) : StdTypes.Int;
    function get_int_():StdTypes.Int return this.int_;
    function set_int_(v:StdTypes.Int):StdTypes.Int {
        this.int_ = (v : stdgo.GoInt);
        return v;
    }
    public var int8(get, set) : StdTypes.Int;
    function get_int8():StdTypes.Int return this.int8;
    function set_int8(v:StdTypes.Int):StdTypes.Int {
        this.int8 = (v : stdgo.GoInt8);
        return v;
    }
    public var int16(get, set) : StdTypes.Int;
    function get_int16():StdTypes.Int return this.int16;
    function set_int16(v:StdTypes.Int):StdTypes.Int {
        this.int16 = (v : stdgo.GoInt16);
        return v;
    }
    public var int32(get, set) : StdTypes.Int;
    function get_int32():StdTypes.Int return this.int32;
    function set_int32(v:StdTypes.Int):StdTypes.Int {
        this.int32 = (v : stdgo.GoInt32);
        return v;
    }
    public var int64(get, set) : haxe.Int64;
    function get_int64():haxe.Int64 return this.int64;
    function set_int64(v:haxe.Int64):haxe.Int64 {
        this.int64 = (v : stdgo.GoInt64);
        return v;
    }
    public var uint(get, set) : std.UInt;
    function get_uint():std.UInt return this.uint;
    function set_uint(v:std.UInt):std.UInt {
        this.uint = (v : stdgo.GoUInt);
        return v;
    }
    public var uint8(get, set) : std.UInt;
    function get_uint8():std.UInt return this.uint8;
    function set_uint8(v:std.UInt):std.UInt {
        this.uint8 = (v : stdgo.GoUInt8);
        return v;
    }
    public var uint16(get, set) : std.UInt;
    function get_uint16():std.UInt return this.uint16;
    function set_uint16(v:std.UInt):std.UInt {
        this.uint16 = (v : stdgo.GoUInt16);
        return v;
    }
    public var uint32(get, set) : std.UInt;
    function get_uint32():std.UInt return this.uint32;
    function set_uint32(v:std.UInt):std.UInt {
        this.uint32 = (v : stdgo.GoUInt32);
        return v;
    }
    public var uint64(get, set) : haxe.UInt64;
    function get_uint64():haxe.UInt64 return this.uint64;
    function set_uint64(v:haxe.UInt64):haxe.UInt64 {
        this.uint64 = (v : stdgo.GoUInt64);
        return v;
    }
    public var float32(get, set) : StdTypes.Float;
    function get_float32():StdTypes.Float return this.float32;
    function set_float32(v:StdTypes.Float):StdTypes.Float {
        this.float32 = (v : stdgo.GoFloat32);
        return v;
    }
    public var float64(get, set) : StdTypes.Float;
    function get_float64():StdTypes.Float return this.float64;
    function set_float64(v:StdTypes.Float):StdTypes.Float {
        this.float64 = (v : stdgo.GoFloat64);
        return v;
    }
    public var string(get, set) : String;
    function get_string():String return this.string;
    function set_string(v:String):String {
        this.string = (v : stdgo.GoString);
        return v;
    }
    public var pBool(get, set) : stdgo.Pointer<Bool>;
    function get_pBool():stdgo.Pointer<Bool> return this.pBool;
    function set_pBool(v:stdgo.Pointer<Bool>):stdgo.Pointer<Bool> {
        this.pBool = v;
        return v;
    }
    public var map_(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    function get_map_():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return this.map_;
    function set_map_(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        this.map_ = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        return v;
    }
    public var slice(get, set) : Array<String>;
    function get_slice():Array<String> return [for (i in this.slice) i];
    function set_slice(v:Array<String>):Array<String> {
        this.slice = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var interface_(get, set) : stdgo.AnyInterface;
    function get_interface_():stdgo.AnyInterface return this.interface_;
    function set_interface_(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.interface_ = (v : stdgo.AnyInterface);
        return v;
    }
    public var pRaw(get, set) : RawMessage;
    function get_pRaw():RawMessage return this.pRaw;
    function set_pRaw(v:RawMessage):RawMessage {
        this.pRaw = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>);
        return v;
    }
    public var pTime(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_pTime():stdgo._internal.time.Time_Time.Time return this.pTime;
    function set_pTime(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.pTime = (v : stdgo.Ref<stdgo._internal.time.Time_Time.Time>);
        return v;
    }
    public var pBigInt(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_pBigInt():stdgo._internal.math.big.Big_Int_.Int_ return this.pBigInt;
    function set_pBigInt(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.pBigInt = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public var pText(get, set) : MustNotUnmarshalText;
    function get_pText():MustNotUnmarshalText return this.pText;
    function set_pText(v:MustNotUnmarshalText):MustNotUnmarshalText {
        this.pText = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_MustNotUnmarshalText.MustNotUnmarshalText>);
        return v;
    }
    public var pBuffer(get, set) : stdgo._internal.bytes.Bytes_Buffer.Buffer;
    function get_pBuffer():stdgo._internal.bytes.Bytes_Buffer.Buffer return this.pBuffer;
    function set_pBuffer(v:stdgo._internal.bytes.Bytes_Buffer.Buffer):stdgo._internal.bytes.Bytes_Buffer.Buffer {
        this.pBuffer = (v : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        return v;
    }
    public var pStruct(get, set) : stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue;
    function get_pStruct():stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue return this.pStruct;
    function set_pStruct(v:stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue):stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue {
        this.pStruct = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue>);
        return v;
    }
    public var raw(get, set) : RawMessage;
    function get_raw():RawMessage return this.raw;
    function set_raw(v:RawMessage):RawMessage {
        this.raw = v;
        return v;
    }
    public var time(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_time():stdgo._internal.time.Time_Time.Time return this.time;
    function set_time(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.time = v;
        return v;
    }
    public var bigInt(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_bigInt():stdgo._internal.math.big.Big_Int_.Int_ return this.bigInt;
    function set_bigInt(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.bigInt = v;
        return v;
    }
    public var text(get, set) : MustNotUnmarshalText;
    function get_text():MustNotUnmarshalText return this.text;
    function set_text(v:MustNotUnmarshalText):MustNotUnmarshalText {
        this.text = v;
        return v;
    }
    public var buffer(get, set) : stdgo._internal.bytes.Bytes_Buffer.Buffer;
    function get_buffer():stdgo._internal.bytes.Bytes_Buffer.Buffer return this.buffer;
    function set_buffer(v:stdgo._internal.bytes.Bytes_Buffer.Buffer):stdgo._internal.bytes.Bytes_Buffer.Buffer {
        this.buffer = v;
        return v;
    }
    public var struct_(get, set) : stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue;
    function get_struct_():stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue return this.struct_;
    function set_struct_(v:stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue):stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue {
        this.struct_ = v;
        return v;
    }
    public function new(?bool_:Bool, ?int_:StdTypes.Int, ?int8:StdTypes.Int, ?int16:StdTypes.Int, ?int32:StdTypes.Int, ?int64:haxe.Int64, ?uint:std.UInt, ?uint8:std.UInt, ?uint16:std.UInt, ?uint32:std.UInt, ?uint64:haxe.UInt64, ?float32:StdTypes.Float, ?float64:StdTypes.Float, ?string:String, ?pBool:stdgo.Pointer<Bool>, ?map_:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?slice:Array<String>, ?interface_:stdgo.AnyInterface, ?pRaw:RawMessage, ?pTime:stdgo._internal.time.Time_Time.Time, ?pBigInt:stdgo._internal.math.big.Big_Int_.Int_, ?pText:MustNotUnmarshalText, ?pBuffer:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?pStruct:stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue, ?raw:RawMessage, ?time:stdgo._internal.time.Time_Time.Time, ?bigInt:stdgo._internal.math.big.Big_Int_.Int_, ?text:MustNotUnmarshalText, ?buffer:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?struct_:stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue) this = new stdgo._internal.encoding.json.Json_NullTest.NullTest(
bool_,
(int_ : stdgo.GoInt),
(int8 : stdgo.GoInt8),
(int16 : stdgo.GoInt16),
(int32 : stdgo.GoInt32),
(int64 : stdgo.GoInt64),
(uint : stdgo.GoUInt),
(uint8 : stdgo.GoUInt8),
(uint16 : stdgo.GoUInt16),
(uint32 : stdgo.GoUInt32),
(uint64 : stdgo.GoUInt64),
(float32 : stdgo.GoFloat32),
(float64 : stdgo.GoFloat64),
(string : stdgo.GoString),
pBool,
(map_ : stdgo.GoMap<stdgo.GoString, stdgo.GoString>),
([for (i in slice) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
(interface_ : stdgo.AnyInterface),
(pRaw : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>),
(pTime : stdgo.Ref<stdgo._internal.time.Time_Time.Time>),
(pBigInt : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>),
(pText : stdgo.Ref<stdgo._internal.encoding.json.Json_MustNotUnmarshalText.MustNotUnmarshalText>),
(pBuffer : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>),
(pStruct : stdgo.Ref<stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue>),
raw,
time,
bigInt,
text,
buffer,
struct_);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
