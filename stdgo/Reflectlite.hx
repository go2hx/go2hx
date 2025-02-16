package stdgo;
final ptr : stdgo._internal.internal.abi.Abi_kind.Kind = stdgo._internal.internal.reflectlite.Reflectlite_ptr.ptr;
final interface_ : stdgo._internal.internal.abi.Abi_kind.Kind = stdgo._internal.internal.reflectlite.Reflectlite_interface_.interface_;
final slice : stdgo._internal.internal.abi.Abi_kind.Kind = stdgo._internal.internal.reflectlite.Reflectlite_slice.slice;
final string : stdgo._internal.internal.abi.Abi_kind.Kind = stdgo._internal.internal.reflectlite.Reflectlite_string.string;
final struct_ : stdgo._internal.internal.abi.Abi_kind.Kind = stdgo._internal.internal.reflectlite.Reflectlite_struct_.struct_;
typedef Type_ = stdgo._internal.internal.reflectlite.Reflectlite_type_.Type_;
@:structInit @:using(stdgo.internal.reflectlite.Reflectlite.T_rtype_static_extension) @:dox(hide) abstract T_rtype(stdgo._internal.internal.reflectlite.Reflectlite_t_rtype.T_rtype) from stdgo._internal.internal.reflectlite.Reflectlite_t_rtype.T_rtype to stdgo._internal.internal.reflectlite.Reflectlite_t_rtype.T_rtype {
    public var type(get, set) : stdgo._internal.internal.abi.Abi_type_.Type_;
    function get_type():stdgo._internal.internal.abi.Abi_type_.Type_ return this.type;
    function set_type(v:stdgo._internal.internal.abi.Abi_type_.Type_):stdgo._internal.internal.abi.Abi_type_.Type_ {
        this.type = (v : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return v;
    }
    public function new(?type:stdgo._internal.internal.abi.Abi_type_.Type_) this = new stdgo._internal.internal.reflectlite.Reflectlite_t_rtype.T_rtype((type : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.reflectlite.Reflectlite.T_mapType_static_extension) @:dox(hide) abstract T_mapType(stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType) from stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType to stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType {
    public var key(get, set) : stdgo._internal.internal.abi.Abi_type_.Type_;
    function get_key():stdgo._internal.internal.abi.Abi_type_.Type_ return this.key;
    function set_key(v:stdgo._internal.internal.abi.Abi_type_.Type_):stdgo._internal.internal.abi.Abi_type_.Type_ {
        this.key = (v : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return v;
    }
    public var elem(get, set) : stdgo._internal.internal.abi.Abi_type_.Type_;
    function get_elem():stdgo._internal.internal.abi.Abi_type_.Type_ return this.elem;
    function set_elem(v:stdgo._internal.internal.abi.Abi_type_.Type_):stdgo._internal.internal.abi.Abi_type_.Type_ {
        this.elem = (v : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return v;
    }
    public var bucket(get, set) : stdgo._internal.internal.abi.Abi_type_.Type_;
    function get_bucket():stdgo._internal.internal.abi.Abi_type_.Type_ return this.bucket;
    function set_bucket(v:stdgo._internal.internal.abi.Abi_type_.Type_):stdgo._internal.internal.abi.Abi_type_.Type_ {
        this.bucket = (v : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return v;
    }
    public var hasher(get, set) : (stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
    function get_hasher():(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr return (_0, _1) -> this.hasher(_0, _1);
    function set_hasher(v:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        this.hasher = v;
        return v;
    }
    public var keySize(get, set) : std.UInt;
    function get_keySize():std.UInt return this.keySize;
    function set_keySize(v:std.UInt):std.UInt {
        this.keySize = (v : stdgo.GoUInt8);
        return v;
    }
    public var valueSize(get, set) : std.UInt;
    function get_valueSize():std.UInt return this.valueSize;
    function set_valueSize(v:std.UInt):std.UInt {
        this.valueSize = (v : stdgo.GoUInt8);
        return v;
    }
    public var bucketSize(get, set) : std.UInt;
    function get_bucketSize():std.UInt return this.bucketSize;
    function set_bucketSize(v:std.UInt):std.UInt {
        this.bucketSize = (v : stdgo.GoUInt16);
        return v;
    }
    public var flags(get, set) : std.UInt;
    function get_flags():std.UInt return this.flags;
    function set_flags(v:std.UInt):std.UInt {
        this.flags = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?key:stdgo._internal.internal.abi.Abi_type_.Type_, ?elem:stdgo._internal.internal.abi.Abi_type_.Type_, ?bucket:stdgo._internal.internal.abi.Abi_type_.Type_, ?hasher:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr, ?keySize:std.UInt, ?valueSize:std.UInt, ?bucketSize:std.UInt, ?flags:std.UInt) this = new stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType((key : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>), (elem : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>), (bucket : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>), hasher, (keySize : stdgo.GoUInt8), (valueSize : stdgo.GoUInt8), (bucketSize : stdgo.GoUInt16), (flags : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.reflectlite.Reflectlite.T_name_static_extension) @:dox(hide) abstract T_name(stdgo._internal.internal.reflectlite.Reflectlite_t_name.T_name) from stdgo._internal.internal.reflectlite.Reflectlite_t_name.T_name to stdgo._internal.internal.reflectlite.Reflectlite_t_name.T_name {
    public function new() this = new stdgo._internal.internal.reflectlite.Reflectlite_t_name.T_name();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Value = stdgo._internal.internal.reflectlite.Reflectlite_value.Value;
@:structInit @:using(stdgo.internal.reflectlite.Reflectlite.ValueError_static_extension) abstract ValueError(stdgo._internal.internal.reflectlite.Reflectlite_valueerror.ValueError) from stdgo._internal.internal.reflectlite.Reflectlite_valueerror.ValueError to stdgo._internal.internal.reflectlite.Reflectlite_valueerror.ValueError {
    public var method(get, set) : String;
    function get_method():String return this.method;
    function set_method(v:String):String {
        this.method = (v : stdgo.GoString);
        return v;
    }
    public var kind(get, set) : stdgo._internal.internal.abi.Abi_kind.Kind;
    function get_kind():stdgo._internal.internal.abi.Abi_kind.Kind return this.kind;
    function set_kind(v:stdgo._internal.internal.abi.Abi_kind.Kind):stdgo._internal.internal.abi.Abi_kind.Kind {
        this.kind = v;
        return v;
    }
    public function new(?method:String, ?kind:stdgo._internal.internal.abi.Abi_kind.Kind) this = new stdgo._internal.internal.reflectlite.Reflectlite_valueerror.ValueError((method : stdgo.GoString), kind);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.reflectlite.Reflectlite.T_emptyInterface_static_extension) @:dox(hide) abstract T_emptyInterface(stdgo._internal.internal.reflectlite.Reflectlite_t_emptyinterface.T_emptyInterface) from stdgo._internal.internal.reflectlite.Reflectlite_t_emptyinterface.T_emptyInterface to stdgo._internal.internal.reflectlite.Reflectlite_t_emptyinterface.T_emptyInterface {
    public function new() this = new stdgo._internal.internal.reflectlite.Reflectlite_t_emptyinterface.T_emptyInterface();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Kind = stdgo._internal.internal.reflectlite.Reflectlite_kind.Kind;
@:dox(hide) typedef T_nameOff = stdgo._internal.internal.reflectlite.Reflectlite_t_nameoff.T_nameOff;
@:dox(hide) typedef T_typeOff = stdgo._internal.internal.reflectlite.Reflectlite_t_typeoff.T_typeOff;
@:dox(hide) typedef T_textOff = stdgo._internal.internal.reflectlite.Reflectlite_t_textoff.T_textOff;
@:dox(hide) typedef T_uncommonType = stdgo._internal.internal.reflectlite.Reflectlite_t_uncommontype.T_uncommonType;
@:dox(hide) typedef T_arrayType = stdgo._internal.internal.reflectlite.Reflectlite_t_arraytype.T_arrayType;
@:dox(hide) typedef T_chanType = stdgo._internal.internal.reflectlite.Reflectlite_t_chantype.T_chanType;
@:dox(hide) typedef T_funcType = stdgo._internal.internal.reflectlite.Reflectlite_t_functype.T_funcType;
@:dox(hide) typedef T_interfaceType = stdgo._internal.internal.reflectlite.Reflectlite_t_interfacetype.T_interfaceType;
@:dox(hide) typedef T_ptrType = stdgo._internal.internal.reflectlite.Reflectlite_t_ptrtype.T_ptrType;
@:dox(hide) typedef T_sliceType = stdgo._internal.internal.reflectlite.Reflectlite_t_slicetype.T_sliceType;
@:dox(hide) typedef T_structType = stdgo._internal.internal.reflectlite.Reflectlite_t_structtype.T_structType;
@:dox(hide) typedef T_flag = stdgo._internal.internal.reflectlite.Reflectlite_t_flag.T_flag;
typedef Type_Pointer = stdgo._internal.internal.reflectlite.Reflectlite_type_pointer.Type_Pointer;
class Type__static_extension {

}
@:dox(hide) typedef T_rtypePointer = stdgo._internal.internal.reflectlite.Reflectlite_t_rtypepointer.T_rtypePointer;
@:dox(hide) class T_rtype_static_extension {
    static public function comparable_(_t:T_rtype):Bool {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.comparable_(_t);
    }
    static public function assignableTo(_t:T_rtype, _u:Type_):Bool {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.assignableTo(_t, _u);
    }
    static public function implements_(_t:T_rtype, _u:Type_):Bool {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.implements_(_t, _u);
    }
    static public function out(_t:T_rtype, _i:StdTypes.Int):Type_ {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.out(_t, _i);
    }
    static public function numOut(_t:T_rtype):StdTypes.Int {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.numOut(_t);
    }
    static public function numIn(_t:T_rtype):StdTypes.Int {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.numIn(_t);
    }
    static public function numField(_t:T_rtype):StdTypes.Int {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.numField(_t);
    }
    static public function len(_t:T_rtype):StdTypes.Int {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.len(_t);
    }
    static public function key(_t:T_rtype):Type_ {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.key(_t);
    }
    static public function in_(_t:T_rtype, _i:StdTypes.Int):Type_ {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.in_(_t, _i);
    }
    static public function elem(_t:T_rtype):Type_ {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.elem(_t);
    }
    static public function name(_t:T_rtype):String {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.name(_t);
    }
    static public function pkgPath(_t:T_rtype):String {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.pkgPath(_t);
    }
    static public function numMethod(_t:T_rtype):StdTypes.Int {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.numMethod(_t);
    }
    static public function string(_t:T_rtype):String {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.string(_t);
    }
    public static function uncommon(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_rtype.T_rtype):stdgo._internal.internal.abi.Abi_uncommontype.UncommonType {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.uncommon(__self__);
    }
    public static function structType(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_rtype.T_rtype):stdgo._internal.internal.abi.Abi_structtype.StructType {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.structType(__self__);
    }
    public static function size(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_rtype.T_rtype):stdgo.GoUIntptr {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.size(__self__);
    }
    public static function pointers(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_rtype.T_rtype):Bool {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.pointers(__self__);
    }
    public static function mapType(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_rtype.T_rtype):stdgo._internal.internal.abi.Abi_maptype.MapType {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.mapType(__self__);
    }
    public static function kind(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_rtype.T_rtype):stdgo._internal.internal.abi.Abi_kind.Kind {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.kind(__self__);
    }
    public static function isDirectIface(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_rtype.T_rtype):Bool {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.isDirectIface(__self__);
    }
    public static function interfaceType(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_rtype.T_rtype):stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.interfaceType(__self__);
    }
    public static function ifaceIndir(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_rtype.T_rtype):Bool {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.ifaceIndir(__self__);
    }
    public static function hasName(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_rtype.T_rtype):Bool {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.hasName(__self__);
    }
    public static function gcSlice(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_rtype.T_rtype, _0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):Array<std.UInt> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUIntptr);
        return [for (i in stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.gcSlice(__self__, _0, _1)) i];
    }
    public static function funcType(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_rtype.T_rtype):stdgo._internal.internal.abi.Abi_functype.FuncType {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.funcType(__self__);
    }
    public static function fieldAlign(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_rtype.T_rtype):StdTypes.Int {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.fieldAlign(__self__);
    }
    public static function exportedMethods(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_rtype.T_rtype):Array<stdgo._internal.internal.abi.Abi_method.Method> {
        return [for (i in stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.exportedMethods(__self__)) i];
    }
    public static function common(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_rtype.T_rtype):stdgo._internal.internal.abi.Abi_type_.Type_ {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.common(__self__);
    }
    public static function chanDir(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_rtype.T_rtype):stdgo._internal.internal.abi.Abi_chandir.ChanDir {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.chanDir(__self__);
    }
    public static function arrayType(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_rtype.T_rtype):stdgo._internal.internal.abi.Abi_arraytype.ArrayType {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.arrayType(__self__);
    }
    public static function align(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_rtype.T_rtype):StdTypes.Int {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_rtype_static_extension.T_rtype_static_extension.align(__self__);
    }
}
@:dox(hide) typedef T_mapTypePointer = stdgo._internal.internal.reflectlite.Reflectlite_t_maptypepointer.T_mapTypePointer;
@:dox(hide) class T_mapType_static_extension {
    public static function _uncommon(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType):stdgo._internal.internal.abi.Abi_uncommontype.UncommonType {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension._uncommon(__self__);
    }
    public static function _typeOff(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType, _0:stdgo._internal.internal.abi.Abi_typeoff.TypeOff):stdgo._internal.internal.abi.Abi_type_.Type_ {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension._typeOff(__self__, _0);
    }
    public static function _nameOff(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType, _0:stdgo._internal.internal.abi.Abi_nameoff.NameOff):stdgo._internal.internal.abi.Abi_name.Name {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension._nameOff(__self__, _0);
    }
    public static function _exportedMethods(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType):Array<stdgo._internal.internal.abi.Abi_method.Method> {
        return [for (i in stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension._exportedMethods(__self__)) i];
    }
    public static function _common(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType):stdgo._internal.internal.abi.Abi_type_.Type_ {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension._common(__self__);
    }
    public static function uncommon(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType):stdgo._internal.internal.abi.Abi_uncommontype.UncommonType {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.uncommon(__self__);
    }
    public static function structType(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType):stdgo._internal.internal.abi.Abi_structtype.StructType {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.structType(__self__);
    }
    public static function string(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType):String {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.string(__self__);
    }
    public static function size(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType):stdgo.GoUIntptr {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.size(__self__);
    }
    public static function pointers(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType):Bool {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.pointers(__self__);
    }
    public static function pkgPath(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType):String {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.pkgPath(__self__);
    }
    public static function out(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType, _0:StdTypes.Int):Type_ {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.out(__self__, _0);
    }
    public static function numOut(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType):StdTypes.Int {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.numOut(__self__);
    }
    public static function numMethod(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType):StdTypes.Int {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.numMethod(__self__);
    }
    public static function numIn(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType):StdTypes.Int {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.numIn(__self__);
    }
    public static function numField(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType):StdTypes.Int {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.numField(__self__);
    }
    public static function name(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType):String {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.name(__self__);
    }
    public static function mapType(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType):stdgo._internal.internal.abi.Abi_maptype.MapType {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.mapType(__self__);
    }
    public static function len(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType):StdTypes.Int {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.len(__self__);
    }
    public static function kind(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType):stdgo._internal.internal.abi.Abi_kind.Kind {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.kind(__self__);
    }
    public static function isDirectIface(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType):Bool {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.isDirectIface(__self__);
    }
    public static function interfaceType(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType):stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.interfaceType(__self__);
    }
    public static function in_(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType, _0:StdTypes.Int):Type_ {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.in_(__self__, _0);
    }
    public static function implements_(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType, _0:Type_):Bool {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.implements_(__self__, _0);
    }
    public static function ifaceIndir(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType):Bool {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.ifaceIndir(__self__);
    }
    public static function hasName(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType):Bool {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.hasName(__self__);
    }
    public static function gcSlice(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType, _0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):Array<std.UInt> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUIntptr);
        return [for (i in stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.gcSlice(__self__, _0, _1)) i];
    }
    public static function funcType(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType):stdgo._internal.internal.abi.Abi_functype.FuncType {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.funcType(__self__);
    }
    public static function fieldAlign(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType):StdTypes.Int {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.fieldAlign(__self__);
    }
    public static function exportedMethods(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType):Array<stdgo._internal.internal.abi.Abi_method.Method> {
        return [for (i in stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.exportedMethods(__self__)) i];
    }
    public static function comparable_(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType):Bool {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.comparable_(__self__);
    }
    public static function common(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType):stdgo._internal.internal.abi.Abi_type_.Type_ {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.common(__self__);
    }
    public static function chanDir(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType):stdgo._internal.internal.abi.Abi_chandir.ChanDir {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.chanDir(__self__);
    }
    public static function assignableTo(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType, _0:Type_):Bool {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.assignableTo(__self__, _0);
    }
    public static function arrayType(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType):stdgo._internal.internal.abi.Abi_arraytype.ArrayType {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.arrayType(__self__);
    }
    public static function align(__self__:stdgo._internal.internal.reflectlite.Reflectlite_t_maptype.T_mapType):StdTypes.Int {
        return stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension.align(__self__);
    }
}
@:dox(hide) typedef T_namePointer = stdgo._internal.internal.reflectlite.Reflectlite_t_namepointer.T_namePointer;
@:dox(hide) class T_name_static_extension {

}
typedef ValuePointer = stdgo._internal.internal.reflectlite.Reflectlite_valuepointer.ValuePointer;
class Value_static_extension {
    static public function type(_v:Value):Type_ {
        return stdgo._internal.internal.reflectlite.Reflectlite_value_static_extension.Value_static_extension.type(_v);
    }
    static public function set(_v:Value, _x:Value):Void {
        stdgo._internal.internal.reflectlite.Reflectlite_value_static_extension.Value_static_extension.set(_v, _x);
    }
    static public function len(_v:Value):StdTypes.Int {
        return stdgo._internal.internal.reflectlite.Reflectlite_value_static_extension.Value_static_extension.len(_v);
    }
    static public function kind(_v:Value):stdgo._internal.internal.abi.Abi_kind.Kind {
        return stdgo._internal.internal.reflectlite.Reflectlite_value_static_extension.Value_static_extension.kind(_v);
    }
    static public function isValid(_v:Value):Bool {
        return stdgo._internal.internal.reflectlite.Reflectlite_value_static_extension.Value_static_extension.isValid(_v);
    }
    static public function isNil(_v:Value):Bool {
        return stdgo._internal.internal.reflectlite.Reflectlite_value_static_extension.Value_static_extension.isNil(_v);
    }
    static public function elem(_v:Value):Value {
        return stdgo._internal.internal.reflectlite.Reflectlite_value_static_extension.Value_static_extension.elem(_v);
    }
    static public function canSet(_v:Value):Bool {
        return stdgo._internal.internal.reflectlite.Reflectlite_value_static_extension.Value_static_extension.canSet(_v);
    }
}
typedef ValueErrorPointer = stdgo._internal.internal.reflectlite.Reflectlite_valueerrorpointer.ValueErrorPointer;
class ValueError_static_extension {
    static public function error(_e:ValueError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.internal.reflectlite.Reflectlite_valueerror.ValueError>);
        return stdgo._internal.internal.reflectlite.Reflectlite_valueerror_static_extension.ValueError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_emptyInterfacePointer = stdgo._internal.internal.reflectlite.Reflectlite_t_emptyinterfacepointer.T_emptyInterfacePointer;
@:dox(hide) class T_emptyInterface_static_extension {

}
typedef KindPointer = stdgo._internal.internal.reflectlite.Reflectlite_kindpointer.KindPointer;
class Kind_static_extension {

}
@:dox(hide) typedef T_nameOffPointer = stdgo._internal.internal.reflectlite.Reflectlite_t_nameoffpointer.T_nameOffPointer;
@:dox(hide) class T_nameOff_static_extension {

}
@:dox(hide) typedef T_typeOffPointer = stdgo._internal.internal.reflectlite.Reflectlite_t_typeoffpointer.T_typeOffPointer;
@:dox(hide) class T_typeOff_static_extension {

}
@:dox(hide) typedef T_textOffPointer = stdgo._internal.internal.reflectlite.Reflectlite_t_textoffpointer.T_textOffPointer;
@:dox(hide) class T_textOff_static_extension {

}
@:dox(hide) typedef T_uncommonTypePointer = stdgo._internal.internal.reflectlite.Reflectlite_t_uncommontypepointer.T_uncommonTypePointer;
@:dox(hide) class T_uncommonType_static_extension {

}
@:dox(hide) typedef T_arrayTypePointer = stdgo._internal.internal.reflectlite.Reflectlite_t_arraytypepointer.T_arrayTypePointer;
@:dox(hide) class T_arrayType_static_extension {

}
@:dox(hide) typedef T_chanTypePointer = stdgo._internal.internal.reflectlite.Reflectlite_t_chantypepointer.T_chanTypePointer;
@:dox(hide) class T_chanType_static_extension {

}
@:dox(hide) typedef T_funcTypePointer = stdgo._internal.internal.reflectlite.Reflectlite_t_functypepointer.T_funcTypePointer;
@:dox(hide) class T_funcType_static_extension {

}
@:dox(hide) typedef T_interfaceTypePointer = stdgo._internal.internal.reflectlite.Reflectlite_t_interfacetypepointer.T_interfaceTypePointer;
@:dox(hide) class T_interfaceType_static_extension {

}
@:dox(hide) typedef T_ptrTypePointer = stdgo._internal.internal.reflectlite.Reflectlite_t_ptrtypepointer.T_ptrTypePointer;
@:dox(hide) class T_ptrType_static_extension {

}
@:dox(hide) typedef T_sliceTypePointer = stdgo._internal.internal.reflectlite.Reflectlite_t_slicetypepointer.T_sliceTypePointer;
@:dox(hide) class T_sliceType_static_extension {

}
@:dox(hide) typedef T_structTypePointer = stdgo._internal.internal.reflectlite.Reflectlite_t_structtypepointer.T_structTypePointer;
@:dox(hide) class T_structType_static_extension {

}
@:dox(hide) typedef T_flagPointer = stdgo._internal.internal.reflectlite.Reflectlite_t_flagpointer.T_flagPointer;
@:dox(hide) class T_flag_static_extension {

}
/**
    * Package reflectlite implements lightweight version of reflect, not using
    * any package except for "runtime", "unsafe", and "internal/abi"
**/
class Reflectlite {
    /**
        * Swapper returns a function that swaps the elements in the provided
        * slice.
        * 
        * Swapper panics if the provided interface is not a slice.
    **/
    static public inline function swapper(_slice:stdgo.AnyInterface):(StdTypes.Int, StdTypes.Int) -> Void {
        final _slice = (_slice : stdgo.AnyInterface);
        return (_0, _1) -> stdgo._internal.internal.reflectlite.Reflectlite_swapper.swapper(_slice)(_0, _1);
    }
    /**
        * TypeOf returns the reflection Type that represents the dynamic type of i.
        * If i is a nil interface value, TypeOf returns nil.
    **/
    static public inline function typeOf(_i:stdgo.AnyInterface):Type_ {
        final _i = (_i : stdgo.AnyInterface);
        return stdgo._internal.internal.reflectlite.Reflectlite_typeof.typeOf(_i);
    }
    /**
        * ValueOf returns a new Value initialized to the concrete value
        * stored in the interface i. ValueOf(nil) returns the zero Value.
    **/
    static public inline function valueOf(_i:stdgo.AnyInterface):Value {
        final _i = (_i : stdgo.AnyInterface);
        return stdgo._internal.internal.reflectlite.Reflectlite_valueof.valueOf(_i);
    }
}
