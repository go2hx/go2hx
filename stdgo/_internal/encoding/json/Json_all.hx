package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_all_static_extension.All_static_extension) class All {
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
    public var uintptr : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    public var float32 : stdgo.GoFloat32 = 0;
    public var float64 : stdgo.GoFloat64 = 0;
    @:tag("`json:\"bar\"`")
    public var foo : stdgo.GoString = "";
    @:tag("`json:\"bar2,dummyopt\"`")
    public var foo2 : stdgo.GoString = "";
    @:tag("`json:\",string\"`")
    public var intStr : stdgo.GoInt64 = 0;
    @:tag("`json:\",string\"`")
    public var uintptrStr : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    public var pBool : stdgo.Pointer<Bool> = (null : stdgo.Pointer<Bool>);
    public var pInt : stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
    public var pInt8 : stdgo.Pointer<stdgo.GoInt8> = (null : stdgo.Pointer<stdgo.GoInt8>);
    public var pInt16 : stdgo.Pointer<stdgo.GoInt16> = (null : stdgo.Pointer<stdgo.GoInt16>);
    public var pInt32 : stdgo.Pointer<stdgo.GoInt32> = (null : stdgo.Pointer<stdgo.GoInt32>);
    public var pInt64 : stdgo.Pointer<stdgo.GoInt64> = (null : stdgo.Pointer<stdgo.GoInt64>);
    public var pUint : stdgo.Pointer<stdgo.GoUInt> = (null : stdgo.Pointer<stdgo.GoUInt>);
    public var pUint8 : stdgo.Pointer<stdgo.GoUInt8> = (null : stdgo.Pointer<stdgo.GoUInt8>);
    public var pUint16 : stdgo.Pointer<stdgo.GoUInt16> = (null : stdgo.Pointer<stdgo.GoUInt16>);
    public var pUint32 : stdgo.Pointer<stdgo.GoUInt32> = (null : stdgo.Pointer<stdgo.GoUInt32>);
    public var pUint64 : stdgo.Pointer<stdgo.GoUInt64> = (null : stdgo.Pointer<stdgo.GoUInt64>);
    public var pUintptr : stdgo.Pointer<stdgo.GoUIntptr> = (null : stdgo.Pointer<stdgo.GoUIntptr>);
    public var pFloat32 : stdgo.Pointer<stdgo.GoFloat32> = (null : stdgo.Pointer<stdgo.GoFloat32>);
    public var pFloat64 : stdgo.Pointer<stdgo.GoFloat64> = (null : stdgo.Pointer<stdgo.GoFloat64>);
    public var string : stdgo.GoString = "";
    public var pString : stdgo.Pointer<stdgo.GoString> = (null : stdgo.Pointer<stdgo.GoString>);
    public var map_ : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_small.Small> = (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_small.Small>);
    public var mapP : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>>);
    public var pMap : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_small.Small>> = (null : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_small.Small>>);
    public var pMapP : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>>> = (null : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>>>);
    public var emptyMap : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_small.Small> = (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_small.Small>);
    public var nilMap : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_small.Small> = (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_small.Small>);
    public var slice : stdgo.Slice<stdgo._internal.encoding.json.Json_small.Small> = (null : stdgo.Slice<stdgo._internal.encoding.json.Json_small.Small>);
    public var sliceP : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>>);
    public var pSlice : stdgo.Ref<stdgo.Slice<stdgo._internal.encoding.json.Json_small.Small>> = (null : stdgo.Ref<stdgo.Slice<stdgo._internal.encoding.json.Json_small.Small>>);
    public var pSliceP : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>>> = (null : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>>>);
    public var emptySlice : stdgo.Slice<stdgo._internal.encoding.json.Json_small.Small> = (null : stdgo.Slice<stdgo._internal.encoding.json.Json_small.Small>);
    public var nilSlice : stdgo.Slice<stdgo._internal.encoding.json.Json_small.Small> = (null : stdgo.Slice<stdgo._internal.encoding.json.Json_small.Small>);
    public var stringSlice : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var byteSlice : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var small : stdgo._internal.encoding.json.Json_small.Small = ({} : stdgo._internal.encoding.json.Json_small.Small);
    public var pSmall : stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>);
    public var pPSmall : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>> = (null : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>>);
    public var interface_ : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var pInterface : stdgo.Ref<stdgo.AnyInterface> = (null : stdgo.Ref<stdgo.AnyInterface>);
    public var _unexported : stdgo.GoInt = 0;
    public function new(?bool_:Bool, ?int_:stdgo.GoInt, ?int8:stdgo.GoInt8, ?int16:stdgo.GoInt16, ?int32:stdgo.GoInt32, ?int64:stdgo.GoInt64, ?uint:stdgo.GoUInt, ?uint8:stdgo.GoUInt8, ?uint16:stdgo.GoUInt16, ?uint32:stdgo.GoUInt32, ?uint64:stdgo.GoUInt64, ?uintptr:stdgo.GoUIntptr, ?float32:stdgo.GoFloat32, ?float64:stdgo.GoFloat64, ?foo:stdgo.GoString, ?foo2:stdgo.GoString, ?intStr:stdgo.GoInt64, ?uintptrStr:stdgo.GoUIntptr, ?pBool:stdgo.Pointer<Bool>, ?pInt:stdgo.Pointer<stdgo.GoInt>, ?pInt8:stdgo.Pointer<stdgo.GoInt8>, ?pInt16:stdgo.Pointer<stdgo.GoInt16>, ?pInt32:stdgo.Pointer<stdgo.GoInt32>, ?pInt64:stdgo.Pointer<stdgo.GoInt64>, ?pUint:stdgo.Pointer<stdgo.GoUInt>, ?pUint8:stdgo.Pointer<stdgo.GoUInt8>, ?pUint16:stdgo.Pointer<stdgo.GoUInt16>, ?pUint32:stdgo.Pointer<stdgo.GoUInt32>, ?pUint64:stdgo.Pointer<stdgo.GoUInt64>, ?pUintptr:stdgo.Pointer<stdgo.GoUIntptr>, ?pFloat32:stdgo.Pointer<stdgo.GoFloat32>, ?pFloat64:stdgo.Pointer<stdgo.GoFloat64>, ?string:stdgo.GoString, ?pString:stdgo.Pointer<stdgo.GoString>, ?map_:stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_small.Small>, ?mapP:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>>, ?pMap:stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_small.Small>>, ?pMapP:stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>>>, ?emptyMap:stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_small.Small>, ?nilMap:stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_small.Small>, ?slice:stdgo.Slice<stdgo._internal.encoding.json.Json_small.Small>, ?sliceP:stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>>, ?pSlice:stdgo.Ref<stdgo.Slice<stdgo._internal.encoding.json.Json_small.Small>>, ?pSliceP:stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>>>, ?emptySlice:stdgo.Slice<stdgo._internal.encoding.json.Json_small.Small>, ?nilSlice:stdgo.Slice<stdgo._internal.encoding.json.Json_small.Small>, ?stringSlice:stdgo.Slice<stdgo.GoString>, ?byteSlice:stdgo.Slice<stdgo.GoUInt8>, ?small:stdgo._internal.encoding.json.Json_small.Small, ?pSmall:stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>, ?pPSmall:stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>>, ?interface_:stdgo.AnyInterface, ?pInterface:stdgo.Ref<stdgo.AnyInterface>, ?_unexported:stdgo.GoInt) {
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
        if (uintptr != null) this.uintptr = uintptr;
        if (float32 != null) this.float32 = float32;
        if (float64 != null) this.float64 = float64;
        if (foo != null) this.foo = foo;
        if (foo2 != null) this.foo2 = foo2;
        if (intStr != null) this.intStr = intStr;
        if (uintptrStr != null) this.uintptrStr = uintptrStr;
        if (pBool != null) this.pBool = pBool;
        if (pInt != null) this.pInt = pInt;
        if (pInt8 != null) this.pInt8 = pInt8;
        if (pInt16 != null) this.pInt16 = pInt16;
        if (pInt32 != null) this.pInt32 = pInt32;
        if (pInt64 != null) this.pInt64 = pInt64;
        if (pUint != null) this.pUint = pUint;
        if (pUint8 != null) this.pUint8 = pUint8;
        if (pUint16 != null) this.pUint16 = pUint16;
        if (pUint32 != null) this.pUint32 = pUint32;
        if (pUint64 != null) this.pUint64 = pUint64;
        if (pUintptr != null) this.pUintptr = pUintptr;
        if (pFloat32 != null) this.pFloat32 = pFloat32;
        if (pFloat64 != null) this.pFloat64 = pFloat64;
        if (string != null) this.string = string;
        if (pString != null) this.pString = pString;
        if (map_ != null) this.map_ = map_;
        if (mapP != null) this.mapP = mapP;
        if (pMap != null) this.pMap = pMap;
        if (pMapP != null) this.pMapP = pMapP;
        if (emptyMap != null) this.emptyMap = emptyMap;
        if (nilMap != null) this.nilMap = nilMap;
        if (slice != null) this.slice = slice;
        if (sliceP != null) this.sliceP = sliceP;
        if (pSlice != null) this.pSlice = pSlice;
        if (pSliceP != null) this.pSliceP = pSliceP;
        if (emptySlice != null) this.emptySlice = emptySlice;
        if (nilSlice != null) this.nilSlice = nilSlice;
        if (stringSlice != null) this.stringSlice = stringSlice;
        if (byteSlice != null) this.byteSlice = byteSlice;
        if (small != null) this.small = small;
        if (pSmall != null) this.pSmall = pSmall;
        if (pPSmall != null) this.pPSmall = pPSmall;
        if (interface_ != null) this.interface_ = interface_;
        if (pInterface != null) this.pInterface = pInterface;
        if (_unexported != null) this._unexported = _unexported;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new All(
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
uintptr,
float32,
float64,
foo,
foo2,
intStr,
uintptrStr,
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
string,
pString,
map_,
mapP,
pMap,
pMapP,
emptyMap,
nilMap,
slice,
sliceP,
pSlice,
pSliceP,
emptySlice,
nilSlice,
stringSlice,
byteSlice,
small,
pSmall,
pPSmall,
interface_,
pInterface,
_unexported);
    }
}
