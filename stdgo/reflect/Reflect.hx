package stdgo.reflect;
final invalid : Kind = stdgo._internal.reflect.Reflect_invalid.invalid;
final bool_ = stdgo._internal.reflect.Reflect_bool_.bool_;
final int_ = stdgo._internal.reflect.Reflect_int_.int_;
final int8 = stdgo._internal.reflect.Reflect_int8.int8;
final int16 = stdgo._internal.reflect.Reflect_int16.int16;
final int32 = stdgo._internal.reflect.Reflect_int32.int32;
final int64 = stdgo._internal.reflect.Reflect_int64.int64;
final uint = stdgo._internal.reflect.Reflect_uint.uint;
final uint8 = stdgo._internal.reflect.Reflect_uint8.uint8;
final uint16 = stdgo._internal.reflect.Reflect_uint16.uint16;
final uint32 = stdgo._internal.reflect.Reflect_uint32.uint32;
final uint64 = stdgo._internal.reflect.Reflect_uint64.uint64;
final uintptr = stdgo._internal.reflect.Reflect_uintptr.uintptr;
final float32 = stdgo._internal.reflect.Reflect_float32.float32;
final float64 = stdgo._internal.reflect.Reflect_float64.float64;
final complex64 = stdgo._internal.reflect.Reflect_complex64.complex64;
final complex128 = stdgo._internal.reflect.Reflect_complex128.complex128;
final array = stdgo._internal.reflect.Reflect_array.array;
final chan = stdgo._internal.reflect.Reflect_chan.chan;
final func = stdgo._internal.reflect.Reflect_func.func;
final interface_ = stdgo._internal.reflect.Reflect_interface_.interface_;
final map_ = stdgo._internal.reflect.Reflect_map_.map_;
final pointer = stdgo._internal.reflect.Reflect_pointer.pointer;
final slice = stdgo._internal.reflect.Reflect_slice.slice;
final string = stdgo._internal.reflect.Reflect_string.string;
final struct_ = stdgo._internal.reflect.Reflect_struct_.struct_;
final unsafePointer = stdgo._internal.reflect.Reflect_unsafePointer.unsafePointer;
final ptr : Kind = stdgo._internal.reflect.Reflect_ptr.ptr;
final recvDir : ChanDir = stdgo._internal.reflect.Reflect_recvDir.recvDir;
final sendDir = stdgo._internal.reflect.Reflect_sendDir.sendDir;
final bothDir : ChanDir = stdgo._internal.reflect.Reflect_bothDir.bothDir;
final selectSend = stdgo._internal.reflect.Reflect_selectSend.selectSend;
final selectRecv = stdgo._internal.reflect.Reflect_selectRecv.selectRecv;
final selectDefault = stdgo._internal.reflect.Reflect_selectDefault.selectDefault;
var callGC(get, set) : stdgo.Pointer<Bool>;
private function get_callGC():stdgo.Pointer<Bool> return stdgo._internal.reflect.Reflect_callGC.callGC;
private function set_callGC(v:stdgo.Pointer<Bool>):stdgo.Pointer<Bool> {
        stdgo._internal.reflect.Reflect_callGC.callGC = v;
        return v;
    }
var gcbits(get, set) : stdgo.AnyInterface -> stdgo.Slice<stdgo.GoUInt8>;
private function get_gcbits():stdgo.AnyInterface -> stdgo.Slice<stdgo.GoUInt8> return _0 -> stdgo._internal.reflect.Reflect_gcbits.gcbits(_0);
private function set_gcbits(v:stdgo.AnyInterface -> stdgo.Slice<stdgo.GoUInt8>):stdgo.AnyInterface -> stdgo.Slice<stdgo.GoUInt8> {
        stdgo._internal.reflect.Reflect_gcbits.gcbits = v;
        return v;
    }
var methodValueCallCodePtr(get, set) : () -> stdgo.GoUIntptr;
private function get_methodValueCallCodePtr():() -> stdgo.GoUIntptr return () -> stdgo._internal.reflect.Reflect_methodValueCallCodePtr.methodValueCallCodePtr();
private function set_methodValueCallCodePtr(v:() -> stdgo.GoUIntptr):() -> stdgo.GoUIntptr {
        stdgo._internal.reflect.Reflect_methodValueCallCodePtr.methodValueCallCodePtr = v;
        return v;
    }
class Type__static_extension {
    static public function out(t:stdgo._internal.reflect.Reflect_Type_.Type_, _i:StdTypes.Int):Type_ {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.out(t, _i);
    }
    static public function numOut(t:stdgo._internal.reflect.Reflect_Type_.Type_):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.numOut(t);
    }
    static public function numIn(t:stdgo._internal.reflect.Reflect_Type_.Type_):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.numIn(t);
    }
    static public function numField(t:stdgo._internal.reflect.Reflect_Type_.Type_):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.numField(t);
    }
    static public function len(t:stdgo._internal.reflect.Reflect_Type_.Type_):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.len(t);
    }
    static public function key(t:stdgo._internal.reflect.Reflect_Type_.Type_):Type_ {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.key(t);
    }
    static public function in_(t:stdgo._internal.reflect.Reflect_Type_.Type_, _i:StdTypes.Int):Type_ {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.in_(t, _i);
    }
    static public function fieldByNameFunc(t:stdgo._internal.reflect.Reflect_Type_.Type_, _match:stdgo.GoString -> Bool):stdgo.Tuple<StructField, Bool> {
        final _match = _match;
        return {
            final obj = stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.fieldByNameFunc(t, _match);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function fieldByName(t:stdgo._internal.reflect.Reflect_Type_.Type_, _name:String):stdgo.Tuple<StructField, Bool> {
        return {
            final obj = stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.fieldByName(t, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function fieldByIndex(t:stdgo._internal.reflect.Reflect_Type_.Type_, _index:Array<StdTypes.Int>):StructField {
        final _index = ([for (i in _index) i] : stdgo.Slice<stdgo.GoInt>);
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.fieldByIndex(t, _index);
    }
    static public function field(t:stdgo._internal.reflect.Reflect_Type_.Type_, _i:StdTypes.Int):StructField {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.field(t, _i);
    }
    static public function elem(t:stdgo._internal.reflect.Reflect_Type_.Type_):Type_ {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.elem(t);
    }
    static public function isVariadic(t:stdgo._internal.reflect.Reflect_Type_.Type_):Bool {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.isVariadic(t);
    }
    static public function chanDir(t:stdgo._internal.reflect.Reflect_Type_.Type_):ChanDir {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.chanDir(t);
    }
    static public function bits(t:stdgo._internal.reflect.Reflect_Type_.Type_):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.bits(t);
    }
    static public function comparable_(t:stdgo._internal.reflect.Reflect_Type_.Type_):Bool {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.comparable_(t);
    }
    static public function convertibleTo(t:stdgo._internal.reflect.Reflect_Type_.Type_, _u:Type_):Bool {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.convertibleTo(t, _u);
    }
    static public function assignableTo(t:stdgo._internal.reflect.Reflect_Type_.Type_, _u:Type_):Bool {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.assignableTo(t, _u);
    }
    static public function implements_(t:stdgo._internal.reflect.Reflect_Type_.Type_, _u:Type_):Bool {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.implements_(t, _u);
    }
    static public function kind(t:stdgo._internal.reflect.Reflect_Type_.Type_):Kind {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.kind(t);
    }
    static public function string(t:stdgo._internal.reflect.Reflect_Type_.Type_):String {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.string(t);
    }
    static public function size(t:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo.GoUIntptr {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.size(t);
    }
    static public function pkgPath(t:stdgo._internal.reflect.Reflect_Type_.Type_):String {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.pkgPath(t);
    }
    static public function name(t:stdgo._internal.reflect.Reflect_Type_.Type_):String {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.name(t);
    }
    static public function numMethod(t:stdgo._internal.reflect.Reflect_Type_.Type_):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.numMethod(t);
    }
    static public function methodByName(t:stdgo._internal.reflect.Reflect_Type_.Type_, _0:String):stdgo.Tuple<Method, Bool> {
        return {
            final obj = stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.methodByName(t, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function method(t:stdgo._internal.reflect.Reflect_Type_.Type_, _0:StdTypes.Int):Method {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.method(t, _0);
    }
    static public function fieldAlign(t:stdgo._internal.reflect.Reflect_Type_.Type_):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.fieldAlign(t);
    }
    static public function align(t:stdgo._internal.reflect.Reflect_Type_.Type_):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.align(t);
    }
}
typedef Type_ = stdgo._internal.reflect.Reflect_Type_.Type_;
@:structInit abstract EmbedWithUnexpMeth(stdgo._internal.reflect.Reflect_EmbedWithUnexpMeth.EmbedWithUnexpMeth) from stdgo._internal.reflect.Reflect_EmbedWithUnexpMeth.EmbedWithUnexpMeth to stdgo._internal.reflect.Reflect_EmbedWithUnexpMeth.EmbedWithUnexpMeth {
    public function new() this = new stdgo._internal.reflect.Reflect_EmbedWithUnexpMeth.EmbedWithUnexpMeth();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract OtherPkgFields(stdgo._internal.reflect.Reflect_OtherPkgFields.OtherPkgFields) from stdgo._internal.reflect.Reflect_OtherPkgFields.OtherPkgFields to stdgo._internal.reflect.Reflect_OtherPkgFields.OtherPkgFields {
    public var otherExported(get, set) : StdTypes.Int;
    function get_otherExported():StdTypes.Int return this.otherExported;
    function set_otherExported(v:StdTypes.Int):StdTypes.Int {
        this.otherExported = v;
        return v;
    }
    public function new(?otherExported:StdTypes.Int) this = new stdgo._internal.reflect.Reflect_OtherPkgFields.OtherPkgFields(otherExported);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Buffer(stdgo._internal.reflect.Reflect_Buffer.Buffer) from stdgo._internal.reflect.Reflect_Buffer.Buffer to stdgo._internal.reflect.Reflect_Buffer.Buffer {
    public function new() this = new stdgo._internal.reflect.Reflect_Buffer.Buffer();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.Method_static_extension) abstract Method(stdgo._internal.reflect.Reflect_Method.Method) from stdgo._internal.reflect.Reflect_Method.Method to stdgo._internal.reflect.Reflect_Method.Method {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var pkgPath(get, set) : String;
    function get_pkgPath():String return this.pkgPath;
    function set_pkgPath(v:String):String {
        this.pkgPath = v;
        return v;
    }
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public var func(get, set) : Value;
    function get_func():Value return this.func;
    function set_func(v:Value):Value {
        this.func = v;
        return v;
    }
    public var index(get, set) : StdTypes.Int;
    function get_index():StdTypes.Int return this.index;
    function set_index(v:StdTypes.Int):StdTypes.Int {
        this.index = v;
        return v;
    }
    public function new(?name:String, ?pkgPath:String, ?type:Type_, ?func:Value, ?index:StdTypes.Int) this = new stdgo._internal.reflect.Reflect_Method.Method(name, pkgPath, type, func, index);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.StructField_static_extension) abstract StructField(stdgo._internal.reflect.Reflect_StructField.StructField) from stdgo._internal.reflect.Reflect_StructField.StructField to stdgo._internal.reflect.Reflect_StructField.StructField {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var pkgPath(get, set) : String;
    function get_pkgPath():String return this.pkgPath;
    function set_pkgPath(v:String):String {
        this.pkgPath = v;
        return v;
    }
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public var tag(get, set) : StructTag;
    function get_tag():StructTag return this.tag;
    function set_tag(v:StructTag):StructTag {
        this.tag = v;
        return v;
    }
    public var offset(get, set) : stdgo.GoUIntptr;
    function get_offset():stdgo.GoUIntptr return this.offset;
    function set_offset(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.offset = v;
        return v;
    }
    public var index(get, set) : Array<StdTypes.Int>;
    function get_index():Array<StdTypes.Int> return [for (i in this.index) i];
    function set_index(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.index = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var anonymous(get, set) : Bool;
    function get_anonymous():Bool return this.anonymous;
    function set_anonymous(v:Bool):Bool {
        this.anonymous = v;
        return v;
    }
    public function new(?name:String, ?pkgPath:String, ?type:Type_, ?tag:StructTag, ?offset:stdgo.GoUIntptr, ?index:Array<StdTypes.Int>, ?anonymous:Bool) this = new stdgo._internal.reflect.Reflect_StructField.StructField(name, pkgPath, type, tag, offset, ([for (i in index) i] : stdgo.Slice<stdgo.GoInt>), anonymous);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.Value_static_extension) abstract Value(stdgo._internal.reflect.Reflect_Value.Value) from stdgo._internal.reflect.Reflect_Value.Value to stdgo._internal.reflect.Reflect_Value.Value {
    public function new(?value:stdgo.AnyInterface, ?underlyingValue:Dynamic, ?underlyingIndex:StdTypes.Int, ?underlyingKey:Dynamic, ?canAddrBool:Bool, ?notSetBool:Bool, ?string) this = new stdgo._internal.reflect.Reflect_Value.Value(value, underlyingValue, underlyingIndex, underlyingKey, canAddrBool, notSetBool, string);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.ValueError_static_extension) abstract ValueError(stdgo._internal.reflect.Reflect_ValueError.ValueError) from stdgo._internal.reflect.Reflect_ValueError.ValueError to stdgo._internal.reflect.Reflect_ValueError.ValueError {
    public var method(get, set) : String;
    function get_method():String return this.method;
    function set_method(v:String):String {
        this.method = v;
        return v;
    }
    public var kind(get, set) : Kind;
    function get_kind():Kind return this.kind;
    function set_kind(v:Kind):Kind {
        this.kind = v;
        return v;
    }
    public function new(?method:String, ?kind:Kind, ?toString) this = new stdgo._internal.reflect.Reflect_ValueError.ValueError(method, kind, toString);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.MapIter_static_extension) abstract MapIter(stdgo._internal.reflect.Reflect_MapIter.MapIter) from stdgo._internal.reflect.Reflect_MapIter.MapIter to stdgo._internal.reflect.Reflect_MapIter.MapIter {
    public function new(?map:haxe.Constraints<Dynamic, Dynamic>, ?keys:Array<Dynamic>, ?values:Array<Dynamic>, ?t:stdgo._internal.internal.reflect.Reflect._Type, ?index:Int) this = new stdgo._internal.reflect.Reflect_MapIter.MapIter(map, keys, values, t, index);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract StringHeader(stdgo._internal.reflect.Reflect_StringHeader.StringHeader) from stdgo._internal.reflect.Reflect_StringHeader.StringHeader to stdgo._internal.reflect.Reflect_StringHeader.StringHeader {
    public var data(get, set) : stdgo.GoUIntptr;
    function get_data():stdgo.GoUIntptr return this.data;
    function set_data(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.data = v;
        return v;
    }
    public var len(get, set) : StdTypes.Int;
    function get_len():StdTypes.Int return this.len;
    function set_len(v:StdTypes.Int):StdTypes.Int {
        this.len = v;
        return v;
    }
    public function new(?data:stdgo.GoUIntptr, ?len:StdTypes.Int) this = new stdgo._internal.reflect.Reflect_StringHeader.StringHeader(data, len);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract SliceHeader(stdgo._internal.reflect.Reflect_SliceHeader.SliceHeader) from stdgo._internal.reflect.Reflect_SliceHeader.SliceHeader to stdgo._internal.reflect.Reflect_SliceHeader.SliceHeader {
    public var data(get, set) : stdgo.GoUIntptr;
    function get_data():stdgo.GoUIntptr return this.data;
    function set_data(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.data = v;
        return v;
    }
    public var len(get, set) : StdTypes.Int;
    function get_len():StdTypes.Int return this.len;
    function set_len(v:StdTypes.Int):StdTypes.Int {
        this.len = v;
        return v;
    }
    public var cap(get, set) : StdTypes.Int;
    function get_cap():StdTypes.Int return this.cap;
    function set_cap(v:StdTypes.Int):StdTypes.Int {
        this.cap = v;
        return v;
    }
    public function new(?data:stdgo.GoUIntptr, ?len:StdTypes.Int, ?cap:StdTypes.Int) this = new stdgo._internal.reflect.Reflect_SliceHeader.SliceHeader(data, len, cap);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract SelectCase(stdgo._internal.reflect.Reflect_SelectCase.SelectCase) from stdgo._internal.reflect.Reflect_SelectCase.SelectCase to stdgo._internal.reflect.Reflect_SelectCase.SelectCase {
    public var dir(get, set) : SelectDir;
    function get_dir():SelectDir return this.dir;
    function set_dir(v:SelectDir):SelectDir {
        this.dir = v;
        return v;
    }
    public var chan(get, set) : Value;
    function get_chan():Value return this.chan;
    function set_chan(v:Value):Value {
        this.chan = v;
        return v;
    }
    public var send(get, set) : Value;
    function get_send():Value return this.send;
    function set_send(v:Value):Value {
        this.send = v;
        return v;
    }
    public function new(?dir:SelectDir, ?chan:Value, ?send:Value) this = new stdgo._internal.reflect.Reflect_SelectCase.SelectCase(dir, chan, send);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Kind = stdgo._internal.reflect.Reflect_Kind.Kind;
typedef ChanDir = stdgo._internal.reflect.Reflect_ChanDir.ChanDir;
typedef StructTag = stdgo._internal.reflect.Reflect_StructTag.StructTag;
typedef SelectDir = stdgo._internal.reflect.Reflect_SelectDir.SelectDir;
class Method_static_extension {
    static public function isExported(_m:Method):Bool {
        return stdgo._internal.reflect.Reflect_Method_static_extension.Method_static_extension.isExported(_m);
    }
}
class StructField_static_extension {
    static public function isExported(_f:StructField):Bool {
        return stdgo._internal.reflect.Reflect_StructField_static_extension.StructField_static_extension.isExported(_f);
    }
}
class Value_static_extension {
    static public function equal(_v:Value, _u:Value):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.equal(_v, _u);
    }
    static public function comparable_(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.comparable_(_v);
    }
    static public function canConvert(_v:Value, _t:Type_):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.canConvert(_v, _t);
    }
    static public function convert(_v:Value, _t:Type_):Value {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.convert(_v, _t);
    }
    static public function clear(_v:Value):Void {
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.clear(_v);
    }
    static public function grow(_v:Value, _n:StdTypes.Int):Void {
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.grow(_v, _n);
    }
    static public function unsafePointer(_v:Value):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.unsafePointer(_v);
    }
    static public function unsafeAddr(_v:Value):stdgo.GoUIntptr {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.unsafeAddr(_v);
    }
    static public function uint(_v:Value):haxe.UInt64 {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.uint(_v);
    }
    static public function canUint(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.canUint(_v);
    }
    static public function type(_v:Value):Type_ {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.type(_v);
    }
    static public function trySend(_v:Value, _x:Value):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.trySend(_v, _x);
    }
    static public function tryRecv(_v:Value):stdgo.Tuple<Value, Bool> {
        return {
            final obj = stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.tryRecv(_v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function string(_v:Value):String {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.string(_v);
    }
    static public function slice3(_v:Value, _i:StdTypes.Int, _j:StdTypes.Int, _k:StdTypes.Int):Value {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.slice3(_v, _i, _j, _k);
    }
    static public function slice(_v:Value, _i:StdTypes.Int, _j:StdTypes.Int):Value {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.slice(_v, _i, _j);
    }
    static public function setString(_v:Value, _x:String):Void {
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.setString(_v, _x);
    }
    static public function setPointer(_v:Value, _x:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.setPointer(_v, _x);
    }
    static public function setUint(_v:Value, _x:haxe.UInt64):Void {
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.setUint(_v, _x);
    }
    static public function setMapIndex(_v:Value, _key:Value, _elem:Value):Void {
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.setMapIndex(_v, _key, _elem);
    }
    static public function setCap(_v:Value, _n:StdTypes.Int):Void {
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.setCap(_v, _n);
    }
    static public function setLen(_v:Value, _n:StdTypes.Int):Void {
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.setLen(_v, _n);
    }
    static public function setInt(_v:Value, _x:haxe.Int64):Void {
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.setInt(_v, _x);
    }
    static public function setFloat(_v:Value, _x:StdTypes.Float):Void {
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.setFloat(_v, _x);
    }
    static public function setComplex(_v:Value, _x:stdgo.GoComplex128):Void {
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.setComplex(_v, _x);
    }
    static public function setBytes(_v:Value, _x:Array<std.UInt>):Void {
        final _x = ([for (i in _x) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.setBytes(_v, _x);
    }
    static public function setBool(_v:Value, _x:Bool):Void {
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.setBool(_v, _x);
    }
    static public function set(_v:Value, _x:Value):Void {
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.set(_v, _x);
    }
    static public function send(_v:Value, _x:Value):Void {
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.send(_v, _x);
    }
    static public function recv(_v:Value):stdgo.Tuple<Value, Bool> {
        return {
            final obj = stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.recv(_v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function pointer(_v:Value):stdgo.GoUIntptr {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.pointer(_v);
    }
    static public function overflowUint(_v:Value, _x:haxe.UInt64):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.overflowUint(_v, _x);
    }
    static public function overflowInt(_v:Value, _x:haxe.Int64):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.overflowInt(_v, _x);
    }
    static public function overflowFloat(_v:Value, _x:StdTypes.Float):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.overflowFloat(_v, _x);
    }
    static public function overflowComplex(_v:Value, _x:stdgo.GoComplex128):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.overflowComplex(_v, _x);
    }
    static public function numField(_v:Value):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.numField(_v);
    }
    static public function methodByName(_v:Value, _name:String):Value {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.methodByName(_v, _name);
    }
    static public function numMethod(_v:Value):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.numMethod(_v);
    }
    static public function method(_v:Value, _i:StdTypes.Int):Value {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.method(_v, _i);
    }
    static public function mapRange(_v:Value):MapIter {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.mapRange(_v);
    }
    static public function setIterValue(_v:Value, _iter:MapIter):Void {
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.setIterValue(_v, _iter);
    }
    static public function setIterKey(_v:Value, _iter:MapIter):Void {
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.setIterKey(_v, _iter);
    }
    static public function mapKeys(_v:Value):Array<Value> {
        return [for (i in stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.mapKeys(_v)) i];
    }
    static public function mapIndex(_v:Value, _key:Value):Value {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.mapIndex(_v, _key);
    }
    static public function len(_v:Value):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.len(_v);
    }
    static public function kind(_v:Value):Kind {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.kind(_v);
    }
    static public function setZero(_v:Value):Void {
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.setZero(_v);
    }
    static public function isZero(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.isZero(_v);
    }
    static public function isValid(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.isValid(_v);
    }
    static public function isNil(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.isNil(_v);
    }
    static public function interfaceData(_v:Value):haxe.ds.Vector<stdgo.GoUIntptr> {
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.interfaceData(_v)) i]);
    }
    static public function interface_(_v:Value):stdgo.AnyInterface {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.interface_(_v);
    }
    static public function canInterface(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.canInterface(_v);
    }
    static public function int_(_v:Value):haxe.Int64 {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.int_(_v);
    }
    static public function canInt(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.canInt(_v);
    }
    static public function index(_v:Value, _i:StdTypes.Int):Value {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.index(_v, _i);
    }
    static public function float_(_v:Value):StdTypes.Float {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.float_(_v);
    }
    static public function canFloat(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.canFloat(_v);
    }
    static public function fieldByNameFunc(_v:Value, _match:stdgo.GoString -> Bool):Value {
        final _match = _match;
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.fieldByNameFunc(_v, _match);
    }
    static public function fieldByName(_v:Value, _name:String):Value {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.fieldByName(_v, _name);
    }
    static public function fieldByIndexErr(_v:Value, _index:Array<StdTypes.Int>):stdgo.Tuple<Value, stdgo.Error> {
        final _index = ([for (i in _index) i] : stdgo.Slice<stdgo.GoInt>);
        return {
            final obj = stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.fieldByIndexErr(_v, _index);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function fieldByIndex(_v:Value, _index:Array<StdTypes.Int>):Value {
        final _index = ([for (i in _index) i] : stdgo.Slice<stdgo.GoInt>);
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.fieldByIndex(_v, _index);
    }
    static public function field(_v:Value, _i:StdTypes.Int):Value {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.field(_v, _i);
    }
    static public function elem(_v:Value):Value {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.elem(_v);
    }
    static public function complex(_v:Value):stdgo.GoComplex128 {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.complex(_v);
    }
    static public function canComplex(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.canComplex(_v);
    }
    static public function close(_v:Value):Void {
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.close(_v);
    }
    static public function cap(_v:Value):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.cap(_v);
    }
    static public function callSlice(_v:Value, _in:Array<Value>):Array<Value> {
        final _in = ([for (i in _in) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>);
        return [for (i in stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.callSlice(_v, _in)) i];
    }
    static public function call(_v:Value, _in:Array<Value>):Array<Value> {
        final _in = ([for (i in _in) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>);
        return [for (i in stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.call(_v, _in)) i];
    }
    static public function canSet(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.canSet(_v);
    }
    static public function canAddr(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.canAddr(_v);
    }
    static public function bytes(_v:Value):Array<std.UInt> {
        return [for (i in stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.bytes(_v)) i];
    }
    static public function bool_(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.bool_(_v);
    }
    static public function addr(_v:Value):Value {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.addr(_v);
    }
}
class ValueError_static_extension {
    static public function error(_e:ValueError):String {
        return stdgo._internal.reflect.Reflect_ValueError_static_extension.ValueError_static_extension.error(_e);
    }
}
class MapIter_static_extension {
    static public function reset(_iter:MapIter, _v:Value):Void {
        stdgo._internal.reflect.Reflect_MapIter_static_extension.MapIter_static_extension.reset(_iter, _v);
    }
    static public function next(_iter:MapIter):Bool {
        return stdgo._internal.reflect.Reflect_MapIter_static_extension.MapIter_static_extension.next(_iter);
    }
    static public function value(_iter:MapIter):Value {
        return stdgo._internal.reflect.Reflect_MapIter_static_extension.MapIter_static_extension.value(_iter);
    }
    static public function key(_iter:MapIter):Value {
        return stdgo._internal.reflect.Reflect_MapIter_static_extension.MapIter_static_extension.key(_iter);
    }
}
class Kind_static_extension {
    static public function string(_k:Kind):String {
        return stdgo._internal.reflect.Reflect_Kind_static_extension.Kind_static_extension.string(_k);
    }
}
class ChanDir_static_extension {
    static public function string(_d:ChanDir):String {
        return stdgo._internal.reflect.Reflect_ChanDir_static_extension.ChanDir_static_extension.string(_d);
    }
}
class StructTag_static_extension {
    static public function lookup(_tag:StructTag, _key:String):stdgo.Tuple<String, Bool> {
        return {
            final obj = stdgo._internal.reflect.Reflect_StructTag_static_extension.StructTag_static_extension.lookup(_tag, _key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function get(_tag:StructTag, _key:String):String {
        return stdgo._internal.reflect.Reflect_StructTag_static_extension.StructTag_static_extension.get(_tag, _key);
    }
}
/**
    Package reflect implements run-time reflection, allowing a program to
    manipulate objects with arbitrary types. The typical use is to take a value
    with static type interface{} and extract its dynamic type information by
    calling TypeOf, which returns a Type.
    
    A call to ValueOf returns a Value representing the run-time data.
    Zero takes a Type and returns a Value representing a zero value
    for that type.
    
    See "The Laws of Reflection" for an introduction to reflection in Go:
    https://golang.org/doc/articles/laws_of_reflection.html
**/
class Reflect {
    /**
        DeepEqual reports whether x and y are “deeply equal,” defined as follows.
        Two values of identical type are deeply equal if one of the following cases applies.
        Values of distinct types are never deeply equal.
        
        Array values are deeply equal when their corresponding elements are deeply equal.
        
        Struct values are deeply equal if their corresponding fields,
        both exported and unexported, are deeply equal.
        
        Func values are deeply equal if both are nil; otherwise they are not deeply equal.
        
        Interface values are deeply equal if they hold deeply equal concrete values.
        
        Map values are deeply equal when all of the following are true:
        they are both nil or both non-nil, they have the same length,
        and either they are the same map object or their corresponding keys
        (matched using Go equality) map to deeply equal values.
        
        Pointer values are deeply equal if they are equal using Go's == operator
        or if they point to deeply equal values.
        
        Slice values are deeply equal when all of the following are true:
        they are both nil or both non-nil, they have the same length,
        and either they point to the same initial entry of the same underlying array
        (that is, &x[0] == &y[0]) or their corresponding elements (up to length) are deeply equal.
        Note that a non-nil empty slice and a nil slice (for example, []byte{} and []byte(nil))
        are not deeply equal.
        
        Other values - numbers, bools, strings, and channels - are deeply equal
        if they are equal using Go's == operator.
        
        In general DeepEqual is a recursive relaxation of Go's == operator.
        However, this idea is impossible to implement without some inconsistency.
        Specifically, it is possible for a value to be unequal to itself,
        either because it is of func type (uncomparable in general)
        or because it is a floating-point NaN value (not equal to itself in floating-point comparison),
        or because it is an array, struct, or interface containing
        such a value.
        On the other hand, pointer values are always equal to themselves,
        even if they point at or contain such problematic values,
        because they compare equal using Go's == operator, and that
        is a sufficient condition to be deeply equal, regardless of content.
        DeepEqual has been defined so that the same short-cut applies
        to slices and maps: if x and y are the same slice or the same map,
        they are deeply equal regardless of content.
        
        As DeepEqual traverses the data values it may find a cycle. The
        second and subsequent times that DeepEqual compares two pointer
        values that have been compared before, it treats the values as
        equal rather than examining the values to which they point.
        This ensures that DeepEqual terminates.
    **/
    static public function deepEqual(_x:stdgo.AnyInterface, _y:stdgo.AnyInterface):Bool {
        return stdgo._internal.reflect.Reflect_deepEqual.deepEqual(_x, _y);
    }
    /**
        MakeRO returns a copy of v with the read-only flag set.
    **/
    static public function makeRO(_v:Value):Value {
        return stdgo._internal.reflect.Reflect_makeRO.makeRO(_v);
    }
    /**
        IsRO reports whether v's read-only flag is set.
    **/
    static public function isRO(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_isRO.isRO(_v);
    }
    /**
        FuncLayout calls funcLayout and returns a subset of the results for testing.
        
        Bitmaps like stack, gc, inReg, and outReg are expanded such that each bit
        takes up one byte, so that writing out test cases is a little clearer.
        If ptrs is false, gc will be nil.
    **/
    static public function funcLayout(_t:Type_, _rcvr:Type_):{ var _0 : Type_; var _1 : stdgo.GoUIntptr; var _2 : stdgo.GoUIntptr; var _3 : Array<std.UInt>; var _4 : Array<std.UInt>; var _5 : Array<std.UInt>; var _6 : Array<std.UInt>; var _7 : Bool; } {
        return {
            final obj = stdgo._internal.reflect.Reflect_funcLayout.funcLayout(_t, _rcvr);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : [for (i in obj._3) i], _4 : [for (i in obj._4) i], _5 : [for (i in obj._5) i], _6 : [for (i in obj._6) i], _7 : obj._7 };
        };
    }
    static public function typeLinks():Array<String> {
        return [for (i in stdgo._internal.reflect.Reflect_typeLinks.typeLinks()) i];
    }
    static public function mapBucketOf(_x:Type_, _y:Type_):Type_ {
        return stdgo._internal.reflect.Reflect_mapBucketOf.mapBucketOf(_x, _y);
    }
    static public function cachedBucketOf(_m:Type_):Type_ {
        return stdgo._internal.reflect.Reflect_cachedBucketOf.cachedBucketOf(_m);
    }
    static public function firstMethodNameBytes(_t:Type_):stdgo.Pointer<std.UInt> {
        return stdgo._internal.reflect.Reflect_firstMethodNameBytes.firstMethodNameBytes(_t);
    }
    static public function isExported(_t:Type_):Bool {
        return stdgo._internal.reflect.Reflect_isExported.isExported(_t);
    }
    static public function resolveReflectName(_s:String):Void {
        stdgo._internal.reflect.Reflect_resolveReflectName.resolveReflectName(_s);
    }
    static public function setArgRegs(_ints:StdTypes.Int, _floats:StdTypes.Int, _floatSize:stdgo.GoUIntptr):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.GoUIntptr> {
        return {
            final obj = stdgo._internal.reflect.Reflect_setArgRegs.setArgRegs(_ints, _floats, _floatSize);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        MakeFunc returns a new function of the given Type
        that wraps the function fn. When called, that new function
        does the following:
        
          - converts its arguments to a slice of Values.
          - runs results := fn(args).
          - returns the results as a slice of Values, one per formal result.
        
        The implementation fn can assume that the argument Value slice
        has the number and type of arguments given by typ.
        If typ describes a variadic function, the final Value is itself
        a slice representing the variadic arguments, as in the
        body of a variadic function. The result Value slice returned by fn
        must have the number and type of results given by typ.
        
        The Value.Call method allows the caller to invoke a typed function
        in terms of Values; in contrast, MakeFunc allows the caller to implement
        a typed function in terms of Values.
        
        The Examples section of the documentation includes an illustration
        of how to use MakeFunc to build a swap function for different types.
    **/
    static public function makeFunc(_typ:Type_, _fn:stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value> -> stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>):Value {
        final _fn = _fn;
        return stdgo._internal.reflect.Reflect_makeFunc.makeFunc(_typ, _fn);
    }
    /**
        Swapper returns a function that swaps the elements in the provided
        slice.
        
        Swapper panics if the provided interface is not a slice.
    **/
    static public function swapper(_slice:stdgo.AnyInterface):(stdgo.GoInt, stdgo.GoInt) -> Void {
        return (_0, _1) -> stdgo._internal.reflect.Reflect_swapper.swapper(_slice)(_0, _1);
    }
    /**
        TypeOf returns the reflection Type that represents the dynamic type of i.
        If i is a nil interface value, TypeOf returns nil.
    **/
    static public function typeOf(_i:stdgo.AnyInterface):Type_ {
        return stdgo._internal.reflect.Reflect_typeOf.typeOf(_i);
    }
    /**
        PtrTo returns the pointer type with element t.
        For example, if t represents type Foo, PtrTo(t) represents *Foo.
        
        PtrTo is the old spelling of PointerTo.
        The two functions behave identically.
    **/
    static public function ptrTo(_t:Type_):Type_ {
        return stdgo._internal.reflect.Reflect_ptrTo.ptrTo(_t);
    }
    /**
        PointerTo returns the pointer type with element t.
        For example, if t represents type Foo, PointerTo(t) represents *Foo.
    **/
    static public function pointerTo(_t:Type_):Type_ {
        return stdgo._internal.reflect.Reflect_pointerTo.pointerTo(_t);
    }
    /**
        ChanOf returns the channel type with the given direction and element type.
        For example, if t represents int, ChanOf(RecvDir, t) represents <-chan int.
        
        The gc runtime imposes a limit of 64 kB on channel element types.
        If t's size is equal to or exceeds this limit, ChanOf panics.
    **/
    static public function chanOf(_dir:ChanDir, _t:Type_):Type_ {
        return stdgo._internal.reflect.Reflect_chanOf.chanOf(_dir, _t);
    }
    /**
        MapOf returns the map type with the given key and element types.
        For example, if k represents int and e represents string,
        MapOf(k, e) represents map[int]string.
        
        If the key type is not a valid map key type (that is, if it does
        not implement Go's == operator), MapOf panics.
    **/
    static public function mapOf(_key:Type_, _elem:Type_):Type_ {
        return stdgo._internal.reflect.Reflect_mapOf.mapOf(_key, _elem);
    }
    /**
        FuncOf returns the function type with the given argument and result types.
        For example if k represents int and e represents string,
        FuncOf([]Type{k}, []Type{e}, false) represents func(int) string.
        
        The variadic argument controls whether the function is variadic. FuncOf
        panics if the in[len(in)-1] does not represent a slice and variadic is
        true.
    **/
    static public function funcOf(_in:Array<Type_>, _out:Array<Type_>, _variadic:Bool):Type_ {
        final _in = ([for (i in _in) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>);
        final _out = ([for (i in _out) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>);
        return stdgo._internal.reflect.Reflect_funcOf.funcOf(_in, _out, _variadic);
    }
    /**
        SliceOf returns the slice type with element type t.
        For example, if t represents int, SliceOf(t) represents []int.
    **/
    static public function sliceOf(_t:Type_):Type_ {
        return stdgo._internal.reflect.Reflect_sliceOf.sliceOf(_t);
    }
    /**
        StructOf returns the struct type containing fields.
        The Offset and Index fields are ignored and computed as they would be
        by the compiler.
        
        StructOf currently does not generate wrapper methods for embedded
        fields and panics if passed unexported StructFields.
        These limitations may be lifted in a future version.
    **/
    static public function structOf(_fields:Array<StructField>):Type_ {
        final _fields = ([for (i in _fields) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>);
        return stdgo._internal.reflect.Reflect_structOf.structOf(_fields);
    }
    /**
        ArrayOf returns the array type with the given length and element type.
        For example, if t represents int, ArrayOf(5, t) represents [5]int.
        
        If the resulting type would be larger than the available address space,
        ArrayOf panics.
    **/
    static public function arrayOf(_length:StdTypes.Int, _elem:Type_):Type_ {
        return stdgo._internal.reflect.Reflect_arrayOf.arrayOf(_length, _elem);
    }
    /**
        Append appends the values x to a slice s and returns the resulting slice.
        As in Go, each x's value must be assignable to the slice's element type.
    **/
    static public function append(_s:Value, _x:haxe.Rest<Value>):Value {
        return stdgo._internal.reflect.Reflect_append.append(_s, ...[for (i in _x) i]);
    }
    /**
        AppendSlice appends a slice t to a slice s and returns the resulting slice.
        The slices s and t must have the same element type.
    **/
    static public function appendSlice(_s:Value, _t:Value):Value {
        return stdgo._internal.reflect.Reflect_appendSlice.appendSlice(_s, _t);
    }
    /**
        Copy copies the contents of src into dst until either
        dst has been filled or src has been exhausted.
        It returns the number of elements copied.
        Dst and src each must have kind Slice or Array, and
        dst and src must have the same element type.
        
        As a special case, src can have kind String if the element type of dst is kind Uint8.
    **/
    static public function copy(_dst:Value, _src:Value):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_copy.copy(_dst, _src);
    }
    /**
        Select executes a select operation described by the list of cases.
        Like the Go select statement, it blocks until at least one of the cases
        can proceed, makes a uniform pseudo-random choice,
        and then executes that case. It returns the index of the chosen case
        and, if that case was a receive operation, the value received and a
        boolean indicating whether the value corresponds to a send on the channel
        (as opposed to a zero value received because the channel is closed).
        Select supports a maximum of 65536 cases.
    **/
    static public function select(_cases:Array<SelectCase>):stdgo.Tuple.Tuple3<StdTypes.Int, Value, Bool> {
        final _cases = ([for (i in _cases) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_SelectCase.SelectCase>);
        return {
            final obj = stdgo._internal.reflect.Reflect_select.select(_cases);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        MakeSlice creates a new zero-initialized slice value
        for the specified slice type, length, and capacity.
    **/
    static public function makeSlice(_typ:Type_, _len:StdTypes.Int, _cap:StdTypes.Int):Value {
        return stdgo._internal.reflect.Reflect_makeSlice.makeSlice(_typ, _len, _cap);
    }
    /**
        MakeChan creates a new channel with the specified type and buffer size.
    **/
    static public function makeChan(_typ:Type_, _buffer:StdTypes.Int):Value {
        return stdgo._internal.reflect.Reflect_makeChan.makeChan(_typ, _buffer);
    }
    /**
        MakeMap creates a new map with the specified type.
    **/
    static public function makeMap(_typ:Type_):Value {
        return stdgo._internal.reflect.Reflect_makeMap.makeMap(_typ);
    }
    /**
        MakeMapWithSize creates a new map with the specified type
        and initial space for approximately n elements.
    **/
    static public function makeMapWithSize(_typ:Type_, _n:StdTypes.Int):Value {
        return stdgo._internal.reflect.Reflect_makeMapWithSize.makeMapWithSize(_typ, _n);
    }
    /**
        Indirect returns the value that v points to.
        If v is a nil pointer, Indirect returns a zero Value.
        If v is not a pointer, Indirect returns v.
    **/
    static public function indirect(_v:Value):Value {
        return stdgo._internal.reflect.Reflect_indirect.indirect(_v);
    }
    /**
        ValueOf returns a new Value initialized to the concrete value
        stored in the interface i. ValueOf(nil) returns the zero Value.
    **/
    static public function valueOf(_i:stdgo.AnyInterface):Value {
        return stdgo._internal.reflect.Reflect_valueOf.valueOf(_i);
    }
    /**
        Zero returns a Value representing the zero value for the specified type.
        The result is different from the zero value of the Value struct,
        which represents no value at all.
        For example, Zero(TypeOf(42)) returns a Value with Kind Int and value 0.
        The returned value is neither addressable nor settable.
    **/
    static public function zero(_typ:Type_):Value {
        return stdgo._internal.reflect.Reflect_zero.zero(_typ);
    }
    /**
        New returns a Value representing a pointer to a new zero value
        for the specified type. That is, the returned Value's Type is PointerTo(typ).
    **/
    static public function new_(_typ:Type_):Value {
        return stdgo._internal.reflect.Reflect_new_.new_(_typ);
    }
    /**
        NewAt returns a Value representing a pointer to a value of the
        specified type, using p as that pointer.
    **/
    static public function newAt(_typ:Type_, _p:stdgo._internal.unsafe.Unsafe.UnsafePointer):Value {
        return stdgo._internal.reflect.Reflect_newAt.newAt(_typ, _p);
    }
    /**
        VisibleFields returns all the visible fields in t, which must be a
        struct type. A field is defined as visible if it's accessible
        directly with a FieldByName call. The returned fields include fields
        inside anonymous struct members and unexported fields. They follow
        the same order found in the struct, with anonymous fields followed
        immediately by their promoted fields.
        
        For each element e of the returned slice, the corresponding field
        can be retrieved from a value v of type t by calling v.FieldByIndex(e.Index).
    **/
    static public function visibleFields(_t:Type_):Array<StructField> {
        return [for (i in stdgo._internal.reflect.Reflect_visibleFields.visibleFields(_t)) i];
    }
}
