package stdgo._internal.internal.reflectlite;
@:structInit @:using(stdgo._internal.internal.reflectlite.Reflectlite_t_maptype_static_extension.T_mapType_static_extension) class T_mapType {
    public var key : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> = (null : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
    public var elem : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> = (null : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
    public var bucket : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> = (null : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
    public var hasher : (stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr = null;
    public var keySize : stdgo.GoUInt8 = 0;
    public var valueSize : stdgo.GoUInt8 = 0;
    public var bucketSize : stdgo.GoUInt16 = 0;
    public var flags : stdgo.GoUInt32 = 0;
    public function new(?key:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>, ?elem:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>, ?bucket:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>, ?hasher:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr, ?keySize:stdgo.GoUInt8, ?valueSize:stdgo.GoUInt8, ?bucketSize:stdgo.GoUInt16, ?flags:stdgo.GoUInt32) {
        if (key != null) this.key = key;
        if (elem != null) this.elem = elem;
        if (bucket != null) this.bucket = bucket;
        if (hasher != null) this.hasher = hasher;
        if (keySize != null) this.keySize = keySize;
        if (valueSize != null) this.valueSize = valueSize;
        if (bucketSize != null) this.bucketSize = bucketSize;
        if (flags != null) this.flags = flags;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var align(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_align():() -> stdgo.GoInt return @:check32 this.key.align;
    public var arrayType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_arraytype.ArrayType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_arrayType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_arraytype.ArrayType> return @:check32 this.key.arrayType;
    public var assignableTo(get, never) : stdgo._internal.internal.reflectlite.Reflectlite_type_.Type_ -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_assignableTo():stdgo._internal.internal.reflectlite.Reflectlite_type_.Type_ -> Bool return @:check31 (this.key ?? throw "null pointer dereference").assignableTo;
    public var chanDir(get, never) : () -> stdgo._internal.internal.abi.Abi_chandir.ChanDir;
    @:embedded
    @:embeddededffieldsffun
    public function get_chanDir():() -> stdgo._internal.internal.abi.Abi_chandir.ChanDir return @:check32 this.key.chanDir;
    public var common(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>;
    @:embedded
    @:embeddededffieldsffun
    public function get_common():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:check32 this.key.common;
    public var comparable_(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_comparable_():() -> Bool return @:check31 (this.key ?? throw "null pointer dereference").comparable_;
    public var exportedMethods(get, never) : () -> stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method>;
    @:embedded
    @:embeddededffieldsffun
    public function get_exportedMethods():() -> stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method> return @:check32 this.key.exportedMethods;
    public var fieldAlign(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_fieldAlign():() -> stdgo.GoInt return @:check32 this.key.fieldAlign;
    public var funcType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_funcType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType> return @:check32 this.key.funcType;
    public var gcSlice(get, never) : (stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    @:embeddededffieldsffun
    public function get_gcSlice():(stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.Slice<stdgo.GoUInt8> return @:check32 this.key.gcSlice;
    public var hasName(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_hasName():() -> Bool return @:check32 this.key.hasName;
    public var ifaceIndir(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_ifaceIndir():() -> Bool return @:check32 this.key.ifaceIndir;
    public var implements_(get, never) : stdgo._internal.internal.reflectlite.Reflectlite_type_.Type_ -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_implements_():stdgo._internal.internal.reflectlite.Reflectlite_type_.Type_ -> Bool return @:check31 (this.key ?? throw "null pointer dereference").implements_;
    public var in_(get, never) : stdgo.GoInt -> stdgo._internal.internal.reflectlite.Reflectlite_type_.Type_;
    @:embedded
    @:embeddededffieldsffun
    public function get_in_():stdgo.GoInt -> stdgo._internal.internal.reflectlite.Reflectlite_type_.Type_ return @:check31 (this.key ?? throw "null pointer dereference").in_;
    public var interfaceType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_interfaceType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType> return @:check32 this.key.interfaceType;
    public var isDirectIface(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_isDirectIface():() -> Bool return @:check32 this.key.isDirectIface;
    public var kind(get, never) : () -> stdgo._internal.internal.abi.Abi_kind.Kind;
    @:embedded
    @:embeddededffieldsffun
    public function get_kind():() -> stdgo._internal.internal.abi.Abi_kind.Kind return @:check32 this.key.kind;
    public var len(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_len():() -> stdgo.GoInt return @:check31 (this.key ?? throw "null pointer dereference").len;
    public var mapType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_mapType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType> return @:check32 this.key.mapType;
    public var name(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_name():() -> stdgo.GoString return @:check31 (this.key ?? throw "null pointer dereference").name;
    public var numField(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_numField():() -> stdgo.GoInt return @:check31 (this.key ?? throw "null pointer dereference").numField;
    public var numIn(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_numIn():() -> stdgo.GoInt return @:check31 (this.key ?? throw "null pointer dereference").numIn;
    public var numMethod(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_numMethod():() -> stdgo.GoInt return @:check31 (this.key ?? throw "null pointer dereference").numMethod;
    public var numOut(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_numOut():() -> stdgo.GoInt return @:check31 (this.key ?? throw "null pointer dereference").numOut;
    public var out(get, never) : stdgo.GoInt -> stdgo._internal.internal.reflectlite.Reflectlite_type_.Type_;
    @:embedded
    @:embeddededffieldsffun
    public function get_out():stdgo.GoInt -> stdgo._internal.internal.reflectlite.Reflectlite_type_.Type_ return @:check31 (this.key ?? throw "null pointer dereference").out;
    public var pkgPath(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_pkgPath():() -> stdgo.GoString return @:check31 (this.key ?? throw "null pointer dereference").pkgPath;
    public var pointers(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_pointers():() -> Bool return @:check32 this.key.pointers;
    public var size(get, never) : () -> stdgo.GoUIntptr;
    @:embedded
    @:embeddededffieldsffun
    public function get_size():() -> stdgo.GoUIntptr return @:check32 this.key.size;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check31 (this.key ?? throw "null pointer dereference").string;
    public var structType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_structtype.StructType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_structType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_structtype.StructType> return @:check32 this.key.structType;
    public var uncommon(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_uncommon():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType> return @:check32 this.key.uncommon;
    public var _common(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>;
    @:embedded
    @:embeddededffieldsffun
    public function get__common():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:check31 (this.key ?? throw "null pointer dereference")._common;
    public var _exportedMethods(get, never) : () -> stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method>;
    @:embedded
    @:embeddededffieldsffun
    public function get__exportedMethods():() -> stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method> return @:check31 (this.key ?? throw "null pointer dereference")._exportedMethods;
    public var _nameOff(get, never) : stdgo._internal.internal.abi.Abi_nameoff.NameOff -> stdgo._internal.internal.abi.Abi_name.Name;
    @:embedded
    @:embeddededffieldsffun
    public function get__nameOff():stdgo._internal.internal.abi.Abi_nameoff.NameOff -> stdgo._internal.internal.abi.Abi_name.Name return @:check31 (this.key ?? throw "null pointer dereference")._nameOff;
    public var _typeOff(get, never) : stdgo._internal.internal.abi.Abi_typeoff.TypeOff -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>;
    @:embedded
    @:embeddededffieldsffun
    public function get__typeOff():stdgo._internal.internal.abi.Abi_typeoff.TypeOff -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:check31 (this.key ?? throw "null pointer dereference")._typeOff;
    public var _uncommon(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType>;
    @:embedded
    @:embeddededffieldsffun
    public function get__uncommon():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType> return @:check31 (this.key ?? throw "null pointer dereference")._uncommon;
    public function __copy__() {
        return new T_mapType(key, elem, bucket, hasher, keySize, valueSize, bucketSize, flags);
    }
}
