package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.All_static_extension) abstract All(stdgo._internal.encoding.json.Json_All.All) from stdgo._internal.encoding.json.Json_All.All to stdgo._internal.encoding.json.Json_All.All {
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
    public var uintptr(get, set) : stdgo.GoUIntptr;
    function get_uintptr():stdgo.GoUIntptr return this.uintptr;
    function set_uintptr(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.uintptr = (v : stdgo.GoUIntptr);
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
    public var foo(get, set) : String;
    function get_foo():String return this.foo;
    function set_foo(v:String):String {
        this.foo = (v : stdgo.GoString);
        return v;
    }
    public var foo2(get, set) : String;
    function get_foo2():String return this.foo2;
    function set_foo2(v:String):String {
        this.foo2 = (v : stdgo.GoString);
        return v;
    }
    public var intStr(get, set) : haxe.Int64;
    function get_intStr():haxe.Int64 return this.intStr;
    function set_intStr(v:haxe.Int64):haxe.Int64 {
        this.intStr = (v : stdgo.GoInt64);
        return v;
    }
    public var uintptrStr(get, set) : stdgo.GoUIntptr;
    function get_uintptrStr():stdgo.GoUIntptr return this.uintptrStr;
    function set_uintptrStr(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.uintptrStr = (v : stdgo.GoUIntptr);
        return v;
    }
    public var pBool(get, set) : stdgo.Pointer<Bool>;
    function get_pBool():stdgo.Pointer<Bool> return this.pBool;
    function set_pBool(v:stdgo.Pointer<Bool>):stdgo.Pointer<Bool> {
        this.pBool = v;
        return v;
    }
    public var pInt(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_pInt():stdgo.Pointer<StdTypes.Int> return this.pInt;
    function set_pInt(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.pInt = v;
        return v;
    }
    public var pInt8(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_pInt8():stdgo.Pointer<StdTypes.Int> return this.pInt8;
    function set_pInt8(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.pInt8 = v;
        return v;
    }
    public var pInt16(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_pInt16():stdgo.Pointer<StdTypes.Int> return this.pInt16;
    function set_pInt16(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.pInt16 = v;
        return v;
    }
    public var pInt32(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_pInt32():stdgo.Pointer<StdTypes.Int> return this.pInt32;
    function set_pInt32(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.pInt32 = v;
        return v;
    }
    public var pInt64(get, set) : stdgo.Pointer<haxe.Int64>;
    function get_pInt64():stdgo.Pointer<haxe.Int64> return this.pInt64;
    function set_pInt64(v:stdgo.Pointer<haxe.Int64>):stdgo.Pointer<haxe.Int64> {
        this.pInt64 = v;
        return v;
    }
    public var pUint(get, set) : stdgo.Pointer<std.UInt>;
    function get_pUint():stdgo.Pointer<std.UInt> return this.pUint;
    function set_pUint(v:stdgo.Pointer<std.UInt>):stdgo.Pointer<std.UInt> {
        this.pUint = v;
        return v;
    }
    public var pUint8(get, set) : stdgo.Pointer<std.UInt>;
    function get_pUint8():stdgo.Pointer<std.UInt> return this.pUint8;
    function set_pUint8(v:stdgo.Pointer<std.UInt>):stdgo.Pointer<std.UInt> {
        this.pUint8 = v;
        return v;
    }
    public var pUint16(get, set) : stdgo.Pointer<std.UInt>;
    function get_pUint16():stdgo.Pointer<std.UInt> return this.pUint16;
    function set_pUint16(v:stdgo.Pointer<std.UInt>):stdgo.Pointer<std.UInt> {
        this.pUint16 = v;
        return v;
    }
    public var pUint32(get, set) : stdgo.Pointer<std.UInt>;
    function get_pUint32():stdgo.Pointer<std.UInt> return this.pUint32;
    function set_pUint32(v:stdgo.Pointer<std.UInt>):stdgo.Pointer<std.UInt> {
        this.pUint32 = v;
        return v;
    }
    public var pUint64(get, set) : stdgo.Pointer<haxe.UInt64>;
    function get_pUint64():stdgo.Pointer<haxe.UInt64> return this.pUint64;
    function set_pUint64(v:stdgo.Pointer<haxe.UInt64>):stdgo.Pointer<haxe.UInt64> {
        this.pUint64 = v;
        return v;
    }
    public var pUintptr(get, set) : stdgo.Pointer<stdgo.GoUIntptr>;
    function get_pUintptr():stdgo.Pointer<stdgo.GoUIntptr> return this.pUintptr;
    function set_pUintptr(v:stdgo.Pointer<stdgo.GoUIntptr>):stdgo.Pointer<stdgo.GoUIntptr> {
        this.pUintptr = v;
        return v;
    }
    public var pFloat32(get, set) : stdgo.Pointer<StdTypes.Float>;
    function get_pFloat32():stdgo.Pointer<StdTypes.Float> return this.pFloat32;
    function set_pFloat32(v:stdgo.Pointer<StdTypes.Float>):stdgo.Pointer<StdTypes.Float> {
        this.pFloat32 = v;
        return v;
    }
    public var pFloat64(get, set) : stdgo.Pointer<StdTypes.Float>;
    function get_pFloat64():stdgo.Pointer<StdTypes.Float> return this.pFloat64;
    function set_pFloat64(v:stdgo.Pointer<StdTypes.Float>):stdgo.Pointer<StdTypes.Float> {
        this.pFloat64 = v;
        return v;
    }
    public var string(get, set) : String;
    function get_string():String return this.string;
    function set_string(v:String):String {
        this.string = (v : stdgo.GoString);
        return v;
    }
    public var pString(get, set) : stdgo.Pointer<String>;
    function get_pString():stdgo.Pointer<String> return this.pString;
    function set_pString(v:stdgo.Pointer<String>):stdgo.Pointer<String> {
        this.pString = v;
        return v;
    }
    public var map_(get, set) : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>;
    function get_map_():stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small> return this.map_;
    function set_map_(v:stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>):stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small> {
        this.map_ = (v : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>);
        return v;
    }
    public var mapP(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>;
    function get_mapP():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>> return this.mapP;
    function set_mapP(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>> {
        this.mapP = (v : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>);
        return v;
    }
    public var pMap(get, set) : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>;
    function get_pMap():stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small> return this.pMap;
    function set_pMap(v:stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>):stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small> {
        this.pMap = (v : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>>);
        return v;
    }
    public var pMapP(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>;
    function get_pMapP():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>> return this.pMapP;
    function set_pMapP(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>> {
        this.pMapP = (v : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>>);
        return v;
    }
    public var emptyMap(get, set) : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>;
    function get_emptyMap():stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small> return this.emptyMap;
    function set_emptyMap(v:stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>):stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small> {
        this.emptyMap = (v : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>);
        return v;
    }
    public var nilMap(get, set) : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>;
    function get_nilMap():stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small> return this.nilMap;
    function set_nilMap(v:stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>):stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small> {
        this.nilMap = (v : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>);
        return v;
    }
    public var slice(get, set) : Array<Small>;
    function get_slice():Array<Small> return [for (i in this.slice) i];
    function set_slice(v:Array<Small>):Array<Small> {
        this.slice = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.json.Json_Small.Small>);
        return v;
    }
    public var sliceP(get, set) : Array<Small>;
    function get_sliceP():Array<Small> return [for (i in this.sliceP) i];
    function set_sliceP(v:Array<Small>):Array<Small> {
        this.sliceP = ([for (i in v) (i : stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>);
        return v;
    }
    public var pSlice(get, set) : Array<Small>;
    function get_pSlice():Array<Small> return this.pSlice;
    function set_pSlice(v:Array<Small>):Array<Small> {
        this.pSlice = (v : stdgo.Ref<stdgo.Slice<stdgo._internal.encoding.json.Json_Small.Small>>);
        return v;
    }
    public var pSliceP(get, set) : Array<Small>;
    function get_pSliceP():Array<Small> return this.pSliceP;
    function set_pSliceP(v:Array<Small>):Array<Small> {
        this.pSliceP = (v : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>>);
        return v;
    }
    public var emptySlice(get, set) : Array<Small>;
    function get_emptySlice():Array<Small> return [for (i in this.emptySlice) i];
    function set_emptySlice(v:Array<Small>):Array<Small> {
        this.emptySlice = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.json.Json_Small.Small>);
        return v;
    }
    public var nilSlice(get, set) : Array<Small>;
    function get_nilSlice():Array<Small> return [for (i in this.nilSlice) i];
    function set_nilSlice(v:Array<Small>):Array<Small> {
        this.nilSlice = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.json.Json_Small.Small>);
        return v;
    }
    public var stringSlice(get, set) : Array<String>;
    function get_stringSlice():Array<String> return [for (i in this.stringSlice) i];
    function set_stringSlice(v:Array<String>):Array<String> {
        this.stringSlice = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var byteSlice(get, set) : Array<std.UInt>;
    function get_byteSlice():Array<std.UInt> return [for (i in this.byteSlice) i];
    function set_byteSlice(v:Array<std.UInt>):Array<std.UInt> {
        this.byteSlice = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var small(get, set) : Small;
    function get_small():Small return this.small;
    function set_small(v:Small):Small {
        this.small = v;
        return v;
    }
    public var pSmall(get, set) : Small;
    function get_pSmall():Small return this.pSmall;
    function set_pSmall(v:Small):Small {
        this.pSmall = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>);
        return v;
    }
    public var pPSmall(get, set) : Small;
    function get_pPSmall():Small return this.pPSmall;
    function set_pPSmall(v:Small):Small {
        this.pPSmall = (v : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>);
        return v;
    }
    public var interface_(get, set) : stdgo.AnyInterface;
    function get_interface_():stdgo.AnyInterface return this.interface_;
    function set_interface_(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.interface_ = (v : stdgo.AnyInterface);
        return v;
    }
    public var pInterface(get, set) : stdgo.AnyInterface;
    function get_pInterface():stdgo.AnyInterface return this.pInterface;
    function set_pInterface(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.pInterface = (v : stdgo.Ref<stdgo.AnyInterface>);
        return v;
    }
    public var _unexported(get, set) : StdTypes.Int;
    function get__unexported():StdTypes.Int return this._unexported;
    function set__unexported(v:StdTypes.Int):StdTypes.Int {
        this._unexported = (v : stdgo.GoInt);
        return v;
    }
    public function new(?bool_:Bool, ?int_:StdTypes.Int, ?int8:StdTypes.Int, ?int16:StdTypes.Int, ?int32:StdTypes.Int, ?int64:haxe.Int64, ?uint:std.UInt, ?uint8:std.UInt, ?uint16:std.UInt, ?uint32:std.UInt, ?uint64:haxe.UInt64, ?uintptr:stdgo.GoUIntptr, ?float32:StdTypes.Float, ?float64:StdTypes.Float, ?foo:String, ?foo2:String, ?intStr:haxe.Int64, ?uintptrStr:stdgo.GoUIntptr, ?pBool:stdgo.Pointer<Bool>, ?pInt:stdgo.Pointer<StdTypes.Int>, ?pInt8:stdgo.Pointer<StdTypes.Int>, ?pInt16:stdgo.Pointer<StdTypes.Int>, ?pInt32:stdgo.Pointer<StdTypes.Int>, ?pInt64:stdgo.Pointer<haxe.Int64>, ?pUint:stdgo.Pointer<std.UInt>, ?pUint8:stdgo.Pointer<std.UInt>, ?pUint16:stdgo.Pointer<std.UInt>, ?pUint32:stdgo.Pointer<std.UInt>, ?pUint64:stdgo.Pointer<haxe.UInt64>, ?pUintptr:stdgo.Pointer<stdgo.GoUIntptr>, ?pFloat32:stdgo.Pointer<StdTypes.Float>, ?pFloat64:stdgo.Pointer<StdTypes.Float>, ?string:String, ?pString:stdgo.Pointer<String>, ?map_:stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>, ?mapP:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>, ?pMap:stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>, ?pMapP:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>, ?emptyMap:stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>, ?nilMap:stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>, ?slice:Array<Small>, ?sliceP:Array<Small>, ?pSlice:Array<Small>, ?pSliceP:Array<Small>, ?emptySlice:Array<Small>, ?nilSlice:Array<Small>, ?stringSlice:Array<String>, ?byteSlice:Array<std.UInt>, ?small:Small, ?pSmall:Small, ?pPSmall:Small, ?interface_:stdgo.AnyInterface, ?pInterface:stdgo.AnyInterface, ?_unexported:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_All.All(
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
(uintptr : stdgo.GoUIntptr),
(float32 : stdgo.GoFloat32),
(float64 : stdgo.GoFloat64),
(foo : stdgo.GoString),
(foo2 : stdgo.GoString),
(intStr : stdgo.GoInt64),
(uintptrStr : stdgo.GoUIntptr),
pBool,
pInt,
pInt8,
pInt16,
pInt32,
pInt64,
pUint,
pUint8,
pUint16,
pUint32,
pUint64,
pUintptr,
pFloat32,
pFloat64,
(string : stdgo.GoString),
pString,
(map_ : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>),
(mapP : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>),
(pMap : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>>),
(pMapP : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>>),
(emptyMap : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>),
(nilMap : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>),
([for (i in slice) i] : stdgo.Slice<stdgo._internal.encoding.json.Json_Small.Small>),
([for (i in sliceP) (i : stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>),
(pSlice : stdgo.Ref<stdgo.Slice<stdgo._internal.encoding.json.Json_Small.Small>>),
(pSliceP : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>>),
([for (i in emptySlice) i] : stdgo.Slice<stdgo._internal.encoding.json.Json_Small.Small>),
([for (i in nilSlice) i] : stdgo.Slice<stdgo._internal.encoding.json.Json_Small.Small>),
([for (i in stringSlice) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in byteSlice) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
small,
(pSmall : stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>),
(pPSmall : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>),
(interface_ : stdgo.AnyInterface),
(pInterface : stdgo.Ref<stdgo.AnyInterface>),
(_unexported : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
