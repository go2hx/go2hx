package stdgo._internal.encoding.json;
@:structInit class All {
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
    public var uintptr : stdgo.GoUIntptr = 0;
    public var float32 : stdgo.GoFloat32 = 0;
    public var float64 : stdgo.GoFloat64 = 0;
    @:tag("`json:\"bar\"`")
    public var foo : stdgo.GoString = "";
    @:tag("`json:\"bar2,dummyopt\"`")
    public var foo2 : stdgo.GoString = "";
    @:tag("`json:\",string\"`")
    public var intStr : stdgo.GoInt64 = 0;
    @:tag("`json:\",string\"`")
    public var uintptrStr : stdgo.GoUIntptr = 0;
    public var pbool : stdgo.Pointer<Bool> = (null : stdgo.Pointer<Bool>);
    public var pint : stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
    public var pint8 : stdgo.Pointer<stdgo.GoInt8> = (null : stdgo.Pointer<stdgo.GoInt8>);
    public var pint16 : stdgo.Pointer<stdgo.GoInt16> = (null : stdgo.Pointer<stdgo.GoInt16>);
    public var pint32 : stdgo.Pointer<stdgo.GoInt32> = (null : stdgo.Pointer<stdgo.GoInt32>);
    public var pint64 : stdgo.Pointer<stdgo.GoInt64> = (null : stdgo.Pointer<stdgo.GoInt64>);
    public var puint : stdgo.Pointer<stdgo.GoUInt> = (null : stdgo.Pointer<stdgo.GoUInt>);
    public var puint8 : stdgo.Pointer<stdgo.GoUInt8> = (null : stdgo.Pointer<stdgo.GoUInt8>);
    public var puint16 : stdgo.Pointer<stdgo.GoUInt16> = (null : stdgo.Pointer<stdgo.GoUInt16>);
    public var puint32 : stdgo.Pointer<stdgo.GoUInt32> = (null : stdgo.Pointer<stdgo.GoUInt32>);
    public var puint64 : stdgo.Pointer<stdgo.GoUInt64> = (null : stdgo.Pointer<stdgo.GoUInt64>);
    public var puintptr : stdgo.Pointer<stdgo.GoUIntptr> = (null : stdgo.Pointer<stdgo.GoUIntptr>);
    public var pfloat32 : stdgo.Pointer<stdgo.GoFloat32> = (null : stdgo.Pointer<stdgo.GoFloat32>);
    public var pfloat64 : stdgo.Pointer<stdgo.GoFloat64> = (null : stdgo.Pointer<stdgo.GoFloat64>);
    public var string : stdgo.GoString = "";
    public var pstring : stdgo.Pointer<stdgo.GoString> = (null : stdgo.Pointer<stdgo.GoString>);
    public var map_ : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small> = (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>);
    public var mapP : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>);
    public var pmap : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>> = (null : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>>);
    public var pmapP : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>> = (null : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>>);
    public var emptyMap : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small> = (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>);
    public var nilMap : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small> = (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>);
    public var slice : stdgo.Slice<stdgo._internal.encoding.json.Json_Small.Small> = (null : stdgo.Slice<stdgo._internal.encoding.json.Json_Small.Small>);
    public var sliceP : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>);
    public var pslice : stdgo.Ref<stdgo.Slice<stdgo._internal.encoding.json.Json_Small.Small>> = (null : stdgo.Ref<stdgo.Slice<stdgo._internal.encoding.json.Json_Small.Small>>);
    public var psliceP : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>> = (null : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>>);
    public var emptySlice : stdgo.Slice<stdgo._internal.encoding.json.Json_Small.Small> = (null : stdgo.Slice<stdgo._internal.encoding.json.Json_Small.Small>);
    public var nilSlice : stdgo.Slice<stdgo._internal.encoding.json.Json_Small.Small> = (null : stdgo.Slice<stdgo._internal.encoding.json.Json_Small.Small>);
    public var stringSlice : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var byteSlice : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var small : stdgo._internal.encoding.json.Json_Small.Small = ({} : stdgo._internal.encoding.json.Json_Small.Small);
    public var psmall : stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>);
    public var ppsmall : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>> = (null : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>);
    public var interface_ : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var pinterface : stdgo.Ref<stdgo.AnyInterface> = (null : stdgo.Ref<stdgo.AnyInterface>);
    public var _unexported : stdgo.GoInt = 0;
    public function new(?bool_:Bool, ?int_:stdgo.GoInt, ?int8:stdgo.GoInt8, ?int16:stdgo.GoInt16, ?int32:stdgo.GoInt32, ?int64:stdgo.GoInt64, ?uint:stdgo.GoUInt, ?uint8:stdgo.GoUInt8, ?uint16:stdgo.GoUInt16, ?uint32:stdgo.GoUInt32, ?uint64:stdgo.GoUInt64, ?uintptr:stdgo.GoUIntptr, ?float32:stdgo.GoFloat32, ?float64:stdgo.GoFloat64, ?foo:stdgo.GoString, ?foo2:stdgo.GoString, ?intStr:stdgo.GoInt64, ?uintptrStr:stdgo.GoUIntptr, ?pbool:stdgo.Pointer<Bool>, ?pint:stdgo.Pointer<stdgo.GoInt>, ?pint8:stdgo.Pointer<stdgo.GoInt8>, ?pint16:stdgo.Pointer<stdgo.GoInt16>, ?pint32:stdgo.Pointer<stdgo.GoInt32>, ?pint64:stdgo.Pointer<stdgo.GoInt64>, ?puint:stdgo.Pointer<stdgo.GoUInt>, ?puint8:stdgo.Pointer<stdgo.GoUInt8>, ?puint16:stdgo.Pointer<stdgo.GoUInt16>, ?puint32:stdgo.Pointer<stdgo.GoUInt32>, ?puint64:stdgo.Pointer<stdgo.GoUInt64>, ?puintptr:stdgo.Pointer<stdgo.GoUIntptr>, ?pfloat32:stdgo.Pointer<stdgo.GoFloat32>, ?pfloat64:stdgo.Pointer<stdgo.GoFloat64>, ?string:stdgo.GoString, ?pstring:stdgo.Pointer<stdgo.GoString>, ?map_:stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>, ?mapP:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>, ?pmap:stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>>, ?pmapP:stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>>, ?emptyMap:stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>, ?nilMap:stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>, ?slice:stdgo.Slice<stdgo._internal.encoding.json.Json_Small.Small>, ?sliceP:stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>, ?pslice:stdgo.Ref<stdgo.Slice<stdgo._internal.encoding.json.Json_Small.Small>>, ?psliceP:stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>>, ?emptySlice:stdgo.Slice<stdgo._internal.encoding.json.Json_Small.Small>, ?nilSlice:stdgo.Slice<stdgo._internal.encoding.json.Json_Small.Small>, ?stringSlice:stdgo.Slice<stdgo.GoString>, ?byteSlice:stdgo.Slice<stdgo.GoUInt8>, ?small:stdgo._internal.encoding.json.Json_Small.Small, ?psmall:stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>, ?ppsmall:stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>, ?interface_:stdgo.AnyInterface, ?pinterface:stdgo.Ref<stdgo.AnyInterface>, ?_unexported:stdgo.GoInt) {
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
        if (pbool != null) this.pbool = pbool;
        if (pint != null) this.pint = pint;
        if (pint8 != null) this.pint8 = pint8;
        if (pint16 != null) this.pint16 = pint16;
        if (pint32 != null) this.pint32 = pint32;
        if (pint64 != null) this.pint64 = pint64;
        if (puint != null) this.puint = puint;
        if (puint8 != null) this.puint8 = puint8;
        if (puint16 != null) this.puint16 = puint16;
        if (puint32 != null) this.puint32 = puint32;
        if (puint64 != null) this.puint64 = puint64;
        if (puintptr != null) this.puintptr = puintptr;
        if (pfloat32 != null) this.pfloat32 = pfloat32;
        if (pfloat64 != null) this.pfloat64 = pfloat64;
        if (string != null) this.string = string;
        if (pstring != null) this.pstring = pstring;
        if (map_ != null) this.map_ = map_;
        if (mapP != null) this.mapP = mapP;
        if (pmap != null) this.pmap = pmap;
        if (pmapP != null) this.pmapP = pmapP;
        if (emptyMap != null) this.emptyMap = emptyMap;
        if (nilMap != null) this.nilMap = nilMap;
        if (slice != null) this.slice = slice;
        if (sliceP != null) this.sliceP = sliceP;
        if (pslice != null) this.pslice = pslice;
        if (psliceP != null) this.psliceP = psliceP;
        if (emptySlice != null) this.emptySlice = emptySlice;
        if (nilSlice != null) this.nilSlice = nilSlice;
        if (stringSlice != null) this.stringSlice = stringSlice;
        if (byteSlice != null) this.byteSlice = byteSlice;
        if (small != null) this.small = small;
        if (psmall != null) this.psmall = psmall;
        if (ppsmall != null) this.ppsmall = ppsmall;
        if (interface_ != null) this.interface_ = interface_;
        if (pinterface != null) this.pinterface = pinterface;
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
pbool,
pint,
pint8,
pint16,
pint32,
pint64,
puint,
puint8,
puint16,
puint32,
puint64,
puintptr,
pfloat32,
pfloat64,
string,
pstring,
map_,
mapP,
pmap,
pmapP,
emptyMap,
nilMap,
slice,
sliceP,
pslice,
psliceP,
emptySlice,
nilSlice,
stringSlice,
byteSlice,
small,
psmall,
ppsmall,
interface_,
pinterface,
_unexported);
    }
}
