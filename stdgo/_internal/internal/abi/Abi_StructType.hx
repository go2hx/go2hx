package stdgo._internal.internal.abi;
@:structInit @:using(stdgo._internal.internal.abi.Abi_StructType_static_extension.StructType_static_extension) class StructType {
    @:embedded
    public var type : stdgo._internal.internal.abi.Abi_Type_.Type_ = ({} : stdgo._internal.internal.abi.Abi_Type_.Type_);
    public var pkgPath : stdgo._internal.internal.abi.Abi_Name.Name = ({} : stdgo._internal.internal.abi.Abi_Name.Name);
    public var fields : stdgo.Slice<stdgo._internal.internal.abi.Abi_StructField.StructField> = (null : stdgo.Slice<stdgo._internal.internal.abi.Abi_StructField.StructField>);
    public function new(?type:stdgo._internal.internal.abi.Abi_Type_.Type_, ?pkgPath:stdgo._internal.internal.abi.Abi_Name.Name, ?fields:stdgo.Slice<stdgo._internal.internal.abi.Abi_StructField.StructField>) {
        if (type != null) this.type = type;
        if (pkgPath != null) this.pkgPath = pkgPath;
        if (fields != null) this.fields = fields;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.GoInt return this.type.align();
    @:embedded
    public function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi_ArrayType.ArrayType> return this.type.arrayType();
    @:embedded
    public function chanDir():stdgo._internal.internal.abi.Abi_ChanDir.ChanDir return this.type.chanDir();
    @:embedded
    public function common():stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return this.type.common();
    @:embedded
    public function elem():stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return this.type.elem();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi_Method.Method> return this.type.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.GoInt return this.type.fieldAlign();
    @:embedded
    public function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType> return this.type.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return this.type.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return this.type.hasName();
    @:embedded
    public function ifaceIndir():Bool return this.type.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType> return this.type.interfaceType();
    @:embedded
    public function isDirectIface():Bool return this.type.isDirectIface();
    @:embedded
    public function key():stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return this.type.key();
    @:embedded
    public function kind():stdgo._internal.internal.abi.Abi_Kind.Kind return this.type.kind();
    @:embedded
    public function len():stdgo.GoInt return this.type.len();
    @:embedded
    public function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi_MapType.MapType> return this.type.mapType();
    @:embedded
    public function numMethod():stdgo.GoInt return this.type.numMethod();
    @:embedded
    public function pointers():Bool return this.type.pointers();
    @:embedded
    public function size():stdgo.GoUIntptr return this.type.size();
    @:embedded
    public function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi_StructType.StructType> return this.type.structType();
    @:embedded
    public function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi_UncommonType.UncommonType> return this.type.uncommon();
    public function __copy__() {
        return new StructType(type, pkgPath, fields);
    }
}
