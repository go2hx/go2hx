package stdgo._internal.reflect;
private var __go2hxdoc__package : Bool;
final invalid : stdgo._internal.reflect.Reflect.Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect.Kind);
final bool_ = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect.Kind);
final int_ = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect.Kind);
final int8 = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect.Kind);
final int16 = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect.Kind);
final int32 = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect.Kind);
final int64 = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect.Kind);
final uint = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect.Kind);
final uint8 = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect.Kind);
final uint16 = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect.Kind);
final uint32 = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect.Kind);
final uint64 = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect.Kind);
final uintptr = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect.Kind);
final float32 = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect.Kind);
final float64 = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect.Kind);
final complex64 = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect.Kind);
final complex128 = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect.Kind);
final array = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect.Kind);
final chan = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect.Kind);
final func = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect.Kind);
final interface_ = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect.Kind);
final map_ = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect.Kind);
final pointer = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect.Kind);
final slice = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect.Kind);
final string = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect.Kind);
final struct_ = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect.Kind);
final unsafePointer = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect.Kind);
final ptr : stdgo._internal.reflect.Reflect.Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect.Kind);
final recvDir : stdgo._internal.reflect.Reflect.ChanDir = ((0 : stdgo.GoInt) : stdgo._internal.reflect.Reflect.ChanDir);
final sendDir = ((0 : stdgo.GoInt) : stdgo._internal.reflect.Reflect.ChanDir);
final bothDir : stdgo._internal.reflect.Reflect.ChanDir = ((0 : stdgo.GoInt) : stdgo._internal.reflect.Reflect.ChanDir);
final selectSend = @:unknown_default_value null;
final selectRecv = @:unknown_default_value null;
final selectDefault = @:unknown_default_value null;
@:keep class Type__static_extension {
    static public function out(t:Type_, _i:stdgo.GoInt):Type_ return t.out(_i);
    static public function numOut(t:Type_):stdgo.GoInt return t.numOut();
    static public function numIn(t:Type_):stdgo.GoInt return t.numIn();
    static public function numField(t:Type_):stdgo.GoInt return t.numField();
    static public function len(t:Type_):stdgo.GoInt return t.len();
    static public function key(t:Type_):Type_ return t.key();
    static public function in_(t:Type_, _i:stdgo.GoInt):Type_ return t.in_(_i);
    static public function fieldByNameFunc(t:Type_, _match:stdgo.GoString -> Bool):{ var _0 : StructField; var _1 : Bool; } return t.fieldByNameFunc(_match);
    static public function fieldByName(t:Type_, _name:stdgo.GoString):{ var _0 : StructField; var _1 : Bool; } return t.fieldByName(_name);
    static public function fieldByIndex(t:Type_, _index:stdgo.Slice<stdgo.GoInt>):StructField return t.fieldByIndex(_index);
    static public function field(t:Type_, _i:stdgo.GoInt):StructField return t.field(_i);
    static public function elem(t:Type_):Type_ return t.elem();
    static public function isVariadic(t:Type_):Bool return t.isVariadic();
    static public function chanDir(t:Type_):ChanDir return t.chanDir();
    static public function bits(t:Type_):stdgo.GoInt return t.bits();
    static public function comparable_(t:Type_):Bool return t.comparable_();
    static public function convertibleTo(t:Type_, _u:Type_):Bool return t.convertibleTo(_u);
    static public function assignableTo(t:Type_, _u:Type_):Bool return t.assignableTo(_u);
    static public function implements_(t:Type_, _u:Type_):Bool return t.implements_(_u);
    static public function kind(t:Type_):Kind return t.kind();
    static public function string(t:Type_):stdgo.GoString return t.string();
    static public function size(t:Type_):stdgo.GoUIntptr return t.size();
    static public function pkgPath(t:Type_):stdgo.GoString return t.pkgPath();
    static public function name(t:Type_):stdgo.GoString return t.name();
    static public function numMethod(t:Type_):stdgo.GoInt return t.numMethod();
    static public function methodByName(t:Type_, _0:stdgo.GoString):{ var _0 : Method; var _1 : Bool; } return t.methodByName(_0);
    static public function method(t:Type_, _0:stdgo.GoInt):Method return t.method(_0);
    static public function fieldAlign(t:Type_):stdgo.GoInt return t.fieldAlign();
    static public function align(t:Type_):stdgo.GoInt return t.align();
}
typedef Type_ = stdgo.StructType & {
    /**
        Align returns the alignment in bytes of a value of
        this type when allocated in memory.
        
        
    **/
    public dynamic function align():stdgo.GoInt;
    /**
        FieldAlign returns the alignment in bytes of a value of
        this type when used as a field in a struct.
        
        
    **/
    public dynamic function fieldAlign():stdgo.GoInt;
    /**
        Method returns the i'th method in the type's method set.
        It panics if i is not in the range [0, NumMethod()).
        
        For a non-interface type T or *T, the returned Method's Type and Func
        fields describe a function whose first argument is the receiver,
        and only exported methods are accessible.
        
        For an interface type, the returned Method's Type field gives the
        method signature, without a receiver, and the Func field is nil.
        
        Methods are sorted in lexicographic order.
        
        
    **/
    public dynamic function method(_0:stdgo.GoInt):Method;
    /**
        MethodByName returns the method with that name in the type's
        method set and a boolean indicating if the method was found.
        
        For a non-interface type T or *T, the returned Method's Type and Func
        fields describe a function whose first argument is the receiver.
        
        For an interface type, the returned Method's Type field gives the
        method signature, without a receiver, and the Func field is nil.
        
        
    **/
    public dynamic function methodByName(_0:stdgo.GoString):{ var _0 : Method; var _1 : Bool; };
    /**
        NumMethod returns the number of methods accessible using Method.
        
        For a non-interface type, it returns the number of exported methods.
        
        For an interface type, it returns the number of exported and unexported methods.
        
        
    **/
    public dynamic function numMethod():stdgo.GoInt;
    /**
        Name returns the type's name within its package for a defined type.
        For other (non-defined) types it returns the empty string.
        
        
    **/
    public dynamic function name():stdgo.GoString;
    /**
        PkgPath returns a defined type's package path, that is, the import path
        that uniquely identifies the package, such as "encoding/base64".
        If the type was predeclared (string, error) or not defined (*T, struct{},
        []int, or A where A is an alias for a non-defined type), the package path
        will be the empty string.
        
        
    **/
    public dynamic function pkgPath():stdgo.GoString;
    /**
        Size returns the number of bytes needed to store
        a value of the given type; it is analogous to unsafe.Sizeof.
        
        
    **/
    public dynamic function size():stdgo.GoUIntptr;
    /**
        String returns a string representation of the type.
        The string representation may use shortened package names
        (e.g., base64 instead of "encoding/base64") and is not
        guaranteed to be unique among types. To test for type identity,
        compare the Types directly.
        
        
    **/
    public dynamic function string():stdgo.GoString;
    /**
        Kind returns the specific kind of this type.
        
        
    **/
    public dynamic function kind():Kind;
    /**
        Implements reports whether the type implements the interface type u.
        
        
    **/
    public dynamic function implements_(_u:Type_):Bool;
    /**
        AssignableTo reports whether a value of the type is assignable to type u.
        
        
    **/
    public dynamic function assignableTo(_u:Type_):Bool;
    /**
        ConvertibleTo reports whether a value of the type is convertible to type u.
        Even if ConvertibleTo returns true, the conversion may still panic.
        For example, a slice of type []T is convertible to *[N]T,
        but the conversion will panic if its length is less than N.
        
        
    **/
    public dynamic function convertibleTo(_u:Type_):Bool;
    /**
        Comparable reports whether values of this type are comparable.
        Even if Comparable returns true, the comparison may still panic.
        For example, values of interface type are comparable,
        but the comparison will panic if their dynamic type is not comparable.
        
        
    **/
    public dynamic function comparable_():Bool;
    /**
        Bits returns the size of the type in bits.
        It panics if the type's Kind is not one of the
        sized or unsized Int, Uint, Float, or Complex kinds.
        
        
    **/
    public dynamic function bits():stdgo.GoInt;
    /**
        ChanDir returns a channel type's direction.
        It panics if the type's Kind is not Chan.
        
        
    **/
    public dynamic function chanDir():ChanDir;
    /**
        IsVariadic reports whether a function type's final input parameter
        is a "..." parameter. If so, t.In(t.NumIn() - 1) returns the parameter's
        implicit actual type []T.
        
        For concreteness, if t represents func(x int, y ... float64), then
        
        	t.NumIn() == 2
        	t.In(0) is the reflect.Type for "int"
        	t.In(1) is the reflect.Type for "[]float64"
        	t.IsVariadic() == true
        
        IsVariadic panics if the type's Kind is not Func.
        
        
    **/
    public dynamic function isVariadic():Bool;
    /**
        Elem returns a type's element type.
        It panics if the type's Kind is not Array, Chan, Map, Pointer, or Slice.
        
        
    **/
    public dynamic function elem():Type_;
    /**
        Field returns a struct type's i'th field.
        It panics if the type's Kind is not Struct.
        It panics if i is not in the range [0, NumField()).
        
        
    **/
    public dynamic function field(_i:stdgo.GoInt):StructField;
    /**
        FieldByIndex returns the nested field corresponding
        to the index sequence. It is equivalent to calling Field
        successively for each index i.
        It panics if the type's Kind is not Struct.
        
        
    **/
    public dynamic function fieldByIndex(_index:stdgo.Slice<stdgo.GoInt>):StructField;
    /**
        FieldByName returns the struct field with the given name
        and a boolean indicating if the field was found.
        
        
    **/
    public dynamic function fieldByName(_name:stdgo.GoString):{ var _0 : StructField; var _1 : Bool; };
    /**
        FieldByNameFunc returns the struct field with a name
        that satisfies the match function and a boolean indicating if
        the field was found.
        
        FieldByNameFunc considers the fields in the struct itself
        and then the fields in any embedded structs, in breadth first order,
        stopping at the shallowest nesting depth containing one or more
        fields satisfying the match function. If multiple fields at that depth
        satisfy the match function, they cancel each other
        and FieldByNameFunc returns no match.
        This behavior mirrors Go's handling of name lookup in
        structs containing embedded fields.
        
        
    **/
    public dynamic function fieldByNameFunc(_match:stdgo.GoString -> Bool):{ var _0 : StructField; var _1 : Bool; };
    /**
        In returns the type of a function type's i'th input parameter.
        It panics if the type's Kind is not Func.
        It panics if i is not in the range [0, NumIn()).
        
        
    **/
    public dynamic function in_(_i:stdgo.GoInt):Type_;
    /**
        Key returns a map type's key type.
        It panics if the type's Kind is not Map.
        
        
    **/
    public dynamic function key():Type_;
    /**
        Len returns an array type's length.
        It panics if the type's Kind is not Array.
        
        
    **/
    public dynamic function len():stdgo.GoInt;
    /**
        NumField returns a struct type's field count.
        It panics if the type's Kind is not Struct.
        
        
    **/
    public dynamic function numField():stdgo.GoInt;
    /**
        NumIn returns a function type's input parameter count.
        It panics if the type's Kind is not Func.
        
        
    **/
    public dynamic function numIn():stdgo.GoInt;
    /**
        NumOut returns a function type's output parameter count.
        It panics if the type's Kind is not Func.
        
        
    **/
    public dynamic function numOut():stdgo.GoInt;
    /**
        Out returns the type of a function type's i'th output parameter.
        It panics if the type's Kind is not Func.
        It panics if i is not in the range [0, NumOut()).
        
        
    **/
    public dynamic function out(_i:stdgo.GoInt):Type_;
};
@:structInit @:using(stdgo._internal.reflect.Reflect.Method_static_extension) class Method {
    public var name : stdgo.GoString = "";
    public var pkgPath : stdgo.GoString = "";
    public var type : stdgo._internal.reflect.Reflect.Type_ = (null : stdgo._internal.reflect.Reflect.Type_);
    public var func : stdgo._internal.reflect.Reflect.Value = ({} : stdgo._internal.reflect.Reflect.Value);
    public var index : stdgo.GoInt = 0;
    public function new(?name:stdgo.GoString, ?pkgPath:stdgo.GoString, ?type:stdgo._internal.reflect.Reflect.Type_, ?func:stdgo._internal.reflect.Reflect.Value, ?index:stdgo.GoInt) {
        if (name != null) this.name = name;
        if (pkgPath != null) this.pkgPath = pkgPath;
        if (type != null) this.type = type;
        if (func != null) this.func = func;
        if (index != null) this.index = index;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Method(name, pkgPath, type, func, index);
    }
}
@:structInit @:using(stdgo._internal.reflect.Reflect.StructField_static_extension) class StructField {
    public var name : stdgo.GoString = "";
    public var pkgPath : stdgo.GoString = "";
    public var type : stdgo._internal.reflect.Reflect.Type_ = (null : stdgo._internal.reflect.Reflect.Type_);
    public var tag : stdgo._internal.reflect.Reflect.StructTag = (("" : stdgo.GoString) : stdgo._internal.reflect.Reflect.StructTag);
    public var offset : stdgo.GoUIntptr = 0;
    public var index : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var anonymous : Bool = false;
    public function new(?name:stdgo.GoString, ?pkgPath:stdgo.GoString, ?type:stdgo._internal.reflect.Reflect.Type_, ?tag:stdgo._internal.reflect.Reflect.StructTag, ?offset:stdgo.GoUIntptr, ?index:stdgo.Slice<stdgo.GoInt>, ?anonymous:Bool) {
        if (name != null) this.name = name;
        if (pkgPath != null) this.pkgPath = pkgPath;
        if (type != null) this.type = type;
        if (tag != null) this.tag = tag;
        if (offset != null) this.offset = offset;
        if (index != null) this.index = index;
        if (anonymous != null) this.anonymous = anonymous;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StructField(name, pkgPath, type, tag, offset, index, anonymous);
    }
}
@:structInit @:using(stdgo._internal.reflect.Reflect.Value_static_extension) class Value {
    var value : stdgo.AnyInterface;
    @:local
    var underlyingValue : Dynamic;
    var underlyingIndex : stdgo.GoInt = -1;
    @:local
    var underlyingKey : Dynamic = null;
    var canAddrBool : Bool = false;
    var notSetBool : Bool = false;
    dynamic public function string():stdgo.GoString {
        var _v = this;
        if (@:privateAccess _v.value == null) {
            return "<invalid Value>";
        };
        var value = @:privateAccess _v.value.value;
        final t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        if (stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
            @:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
            value = (value : stdgo.Pointer<Dynamic>).value;
        };
        final underlyingType = stdgo._internal.internal.reflect.Reflect.getUnderlying(t);
        switch (underlyingType) {
            case stdgo._internal.internal.reflect.Reflect.GoType.basic(kind):
                switch kind {
                case string_kind:
                    return value;
                default:
                    final _ = false;
            };
            default:
                final _ = false;
        };
        return "<" + _v.type().string() + " Value>";
    }
    public function new(?value:stdgo.AnyInterface, ?underlyingValue:Dynamic, ?underlyingIndex:stdgo.GoInt, ?underlyingKey:Dynamic, ?canAddrBool:Bool, ?notSetBool:Bool, ?string) {
        if (value != null) this.value = value;
        if (underlyingValue != null) this.underlyingValue = underlyingValue;
        if (underlyingIndex != null) this.underlyingIndex = underlyingIndex;
        if (underlyingKey != null) this.underlyingKey = underlyingKey;
        if (canAddrBool != null) this.canAddrBool = canAddrBool;
        if (notSetBool != null) this.notSetBool = notSetBool;
        if (string != null) this.string = string;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Value(value, underlyingValue, underlyingIndex, underlyingKey, canAddrBool, notSetBool);
    }
}
@:structInit @:using(stdgo._internal.reflect.Reflect.ValueError_static_extension) class ValueError {
    public var method : stdgo.GoString = "";
    public var kind : stdgo._internal.reflect.Reflect.Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect.Kind);
    dynamic public function toString():String {
        return "" + method;
    }
    public function new(?method:stdgo.GoString, ?kind:stdgo._internal.reflect.Reflect.Kind, ?toString) {
        if (method != null) this.method = method;
        if (kind != null) this.kind = kind;
        if (toString != null) this.toString = toString;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ValueError(method, kind);
    }
}
@:structInit @:using(stdgo._internal.reflect.Reflect.MapIter_static_extension) class MapIter {
    @:local
    var map : haxe.Constraints.IMap<Dynamic, Dynamic>;
    @:local
    var keys : Array<Dynamic>;
    @:local
    var values : Array<Dynamic>;
    @:local
    var t : stdgo._internal.internal.reflect.Reflect._Type;
    @:local
    var index : Int = 0;
    public function new(?map:haxe.Constraints.IMap<Dynamic, Dynamic>, ?keys:Array<Dynamic>, ?values:Array<Dynamic>, ?t:stdgo._internal.internal.reflect.Reflect._Type, ?index:Int) {
        if (map != null) this.map = map;
        if (keys != null) this.keys = keys;
        if (values != null) this.values = values;
        if (t != null) this.t = t;
        if (index != null) this.index = index;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MapIter(map, keys, values, t, index);
    }
}
@:structInit class StringHeader {
    public var data : stdgo.GoUIntptr = 0;
    public var len : stdgo.GoInt = 0;
    public function new(?data:stdgo.GoUIntptr, ?len:stdgo.GoInt) {
        if (data != null) this.data = data;
        if (len != null) this.len = len;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StringHeader(data, len);
    }
}
@:structInit class SliceHeader {
    public var data : stdgo.GoUIntptr = 0;
    public var len : stdgo.GoInt = 0;
    public var cap : stdgo.GoInt = 0;
    public function new(?data:stdgo.GoUIntptr, ?len:stdgo.GoInt, ?cap:stdgo.GoInt) {
        if (data != null) this.data = data;
        if (len != null) this.len = len;
        if (cap != null) this.cap = cap;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SliceHeader(data, len, cap);
    }
}
@:structInit class SelectCase {
    public var dir : stdgo._internal.reflect.Reflect.SelectDir = ((0 : stdgo.GoInt) : stdgo._internal.reflect.Reflect.SelectDir);
    public var chan : stdgo._internal.reflect.Reflect.Value = ({} : stdgo._internal.reflect.Reflect.Value);
    public var send : stdgo._internal.reflect.Reflect.Value = ({} : stdgo._internal.reflect.Reflect.Value);
    public function new(?dir:stdgo._internal.reflect.Reflect.SelectDir, ?chan:stdgo._internal.reflect.Reflect.Value, ?send:stdgo._internal.reflect.Reflect.Value) {
        if (dir != null) this.dir = dir;
        if (chan != null) this.chan = chan;
        if (send != null) this.send = send;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SelectCase(dir, chan, send);
    }
}
@:named @:using(stdgo._internal.reflect.Reflect.Kind_static_extension) typedef Kind = stdgo.GoUInt;
@:named @:using(stdgo._internal.reflect.Reflect.ChanDir_static_extension) typedef ChanDir = stdgo.GoInt;
@:named @:using(stdgo._internal.reflect.Reflect.StructTag_static_extension) typedef StructTag = stdgo.GoString;
@:named typedef SelectDir = stdgo.GoInt;
function deepEqual(_x:stdgo.AnyInterface, _y:stdgo.AnyInterface):Bool {
        if (new Value(_x).isNil() || new Value(_y).isNil()) {
            return (_x : stdgo.AnyInterface) == (_y : stdgo.AnyInterface);
        };
        var v1 = valueOf(_x);
        var v2 = valueOf(_y);
        return stdgo._internal.internal.reflect.Reflect.deepValueEqual(v1, v2, null, 0);
    }
function makeFunc(_typ:Type_, _fn:(_args:stdgo.Slice<Value>) -> stdgo.Slice<Value>):Value throw ":reflect.makeFunc is not yet implemented";
function swapper(_slice:stdgo.AnyInterface):(_i:stdgo.GoInt, _j:stdgo.GoInt) -> Void throw ":reflect.swapper is not yet implemented";
function typeOf(_i:stdgo.AnyInterface):Type_ {
        if (_i == null) return new stdgo._internal.internal.reflect.Reflect._Type_asInterface(stdgo.Go.pointer(new stdgo._internal.internal.reflect.Reflect._Type(basic(unsafepointer_kind))), new stdgo._internal.internal.reflect.Reflect._Type(basic(unsafepointer_kind)));
        return new stdgo._internal.internal.reflect.Reflect._Type_asInterface(stdgo.Go.pointer(_i.type), _i.type);
    }
function ptrTo(_t:Type_):Type_ throw ":reflect.ptrTo is not yet implemented";
function pointerTo(_t:Type_):Type_ throw ":reflect.pointerTo is not yet implemented";
function chanOf(_dir:ChanDir, _t:Type_):Type_ throw ":reflect.chanOf is not yet implemented";
function mapOf(_key:Type_, _elem:Type_):Type_ throw ":reflect.mapOf is not yet implemented";
function funcOf(_in:stdgo.Slice<Type_>, _out:stdgo.Slice<Type_>, _variadic:Bool):Type_ throw ":reflect.funcOf is not yet implemented";
function sliceOf(_t:Type_):Type_ throw ":reflect.sliceOf is not yet implemented";
function structOf(_fields:stdgo.Slice<StructField>):Type_ throw ":reflect.structOf is not yet implemented";
function arrayOf(_length:stdgo.GoInt, _elem:Type_):Type_ throw ":reflect.arrayOf is not yet implemented";
function append(_s:Value, _x:haxe.Rest<Value>):Value throw ":reflect.append is not yet implemented";
function appendSlice(_s:Value, _t:Value):Value throw ":reflect.appendSlice is not yet implemented";
function copy(_dst:Value, _src:Value):stdgo.GoInt throw ":reflect.copy is not yet implemented";
function select(_cases:stdgo.Slice<SelectCase>):{ var _0 : stdgo.GoInt; var _1 : Value; var _2 : Bool; } throw ":reflect.select is not yet implemented";
function makeSlice(_typ:Type_, _len:stdgo.GoInt, _cap:stdgo.GoInt):Value {
        final value = stdgo._internal.internal.reflect.Reflect.defaultValue(_typ);
        final slice = new stdgo.Slice(_len, _cap.toBasic(), ...[for (i in 0 ... _len.toBasic()) value]);
        final t = @:privateAccess (cast _typ : stdgo._internal.internal.reflect.Reflect._Type_asInterface).__type__;
        return new Value(new stdgo.AnyInterface(slice, t));
    }
function makeChan(_typ:Type_, _buffer:stdgo.GoInt):Value throw ":reflect.makeChan is not yet implemented";
function makeMap(_typ:Type_):Value throw ":reflect.makeMap is not yet implemented";
function makeMapWithSize(_typ:Type_, _n:stdgo.GoInt):Value throw ":reflect.makeMapWithSize is not yet implemented";
function indirect(_v:Value):Value {
        if (_v.kind() != pointer) {
            return _v;
        } else {
            return _v.elem();
        };
    }
function valueOf(_i:stdgo.AnyInterface):Value {
        return new Value(_i);
    }
function zero(_typ:Type_):Value {
        return new Value(new stdgo.AnyInterface(stdgo._internal.internal.reflect.Reflect.defaultValue(_typ), _typ.__underlying__().value));
    }
function new_(_typ:Type_):Value {
        var value = stdgo._internal.internal.reflect.Reflect.defaultValue(_typ);
        var ptr = new Pointer(() -> value, x -> value = x);
        return new Value(new stdgo.AnyInterface(ptr, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> @:privateAccess (_typ : Dynamic)._common() }))));
    }
function newAt(_typ:Type_, _p:stdgo._internal.unsafe.Unsafe.UnsafePointer):Value throw ":reflect.newAt is not yet implemented";
function visibleFields(_t:Type_):stdgo.Slice<StructField> throw ":reflect.visibleFields is not yet implemented";
class Method_asInterface {
    @:keep
    public dynamic function isExported():Bool return __self__.value.isExported();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Method>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.reflect.Reflect.Method_asInterface) class Method_static_extension {
    @:keep
    static public function isExported( _m:Method):Bool throw "Method:reflect.isExported is not yet implemented";
}
class StructField_asInterface {
    @:keep
    public dynamic function isExported():Bool return __self__.value.isExported();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<StructField>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.reflect.Reflect.StructField_asInterface) class StructField_static_extension {
    @:keep
    static public function isExported( _f:StructField):Bool throw "StructField:reflect.isExported is not yet implemented";
}
class Value_asInterface {
    @:keep
    public dynamic function equal(_u:Value):Bool return __self__.value.equal(_u);
    @:keep
    public dynamic function comparable_():Bool return __self__.value.comparable_();
    @:keep
    public dynamic function canConvert(_t:Type_):Bool return __self__.value.canConvert(_t);
    @:keep
    public dynamic function convert(_t:Type_):Value return __self__.value.convert(_t);
    @:keep
    public dynamic function clear():Void __self__.value.clear();
    @:keep
    public dynamic function grow(_n:stdgo.GoInt):Void __self__.value.grow(_n);
    @:keep
    public dynamic function unsafePointer():stdgo._internal.unsafe.Unsafe.UnsafePointer return __self__.value.unsafePointer();
    @:keep
    public dynamic function unsafeAddr():stdgo.GoUIntptr return __self__.value.unsafeAddr();
    @:keep
    public dynamic function uint():stdgo.GoUInt64 return __self__.value.uint();
    @:keep
    public dynamic function canUint():Bool return __self__.value.canUint();
    @:keep
    public dynamic function type():Type_ return __self__.value.type();
    @:keep
    public dynamic function trySend(_x:Value):Bool return __self__.value.trySend(_x);
    @:keep
    public dynamic function tryRecv():{ var _0 : Value; var _1 : Bool; } return __self__.value.tryRecv();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function slice3(_i:stdgo.GoInt, _j:stdgo.GoInt, _k:stdgo.GoInt):Value return __self__.value.slice3(_i, _j, _k);
    @:keep
    public dynamic function slice(_i:stdgo.GoInt, _j:stdgo.GoInt):Value return __self__.value.slice(_i, _j);
    @:keep
    public dynamic function setString(_x:stdgo.GoString):Void __self__.value.setString(_x);
    @:keep
    public dynamic function setPointer(_x:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void __self__.value.setPointer(_x);
    @:keep
    public dynamic function setUint(_x:stdgo.GoUInt64):Void __self__.value.setUint(_x);
    @:keep
    public dynamic function setMapIndex(_key:Value, _elem:Value):Void __self__.value.setMapIndex(_key, _elem);
    @:keep
    public dynamic function setCap(_n:stdgo.GoInt):Void __self__.value.setCap(_n);
    @:keep
    public dynamic function setLen(_n:stdgo.GoInt):Void __self__.value.setLen(_n);
    @:keep
    public dynamic function setInt(_x:stdgo.GoInt64):Void __self__.value.setInt(_x);
    @:keep
    public dynamic function setFloat(_x:stdgo.GoFloat64):Void __self__.value.setFloat(_x);
    @:keep
    public dynamic function setComplex(_x:stdgo.GoComplex128):Void __self__.value.setComplex(_x);
    @:keep
    public dynamic function setBytes(_x:stdgo.Slice<stdgo.GoByte>):Void __self__.value.setBytes(_x);
    @:keep
    public dynamic function setBool(_x:Bool):Void __self__.value.setBool(_x);
    @:keep
    public dynamic function set(_x:Value):Void __self__.value.set(_x);
    @:keep
    public dynamic function send(_x:Value):Void __self__.value.send(_x);
    @:keep
    public dynamic function recv():{ var _0 : Value; var _1 : Bool; } return __self__.value.recv();
    @:keep
    public dynamic function pointer():stdgo.GoUIntptr return __self__.value.pointer();
    @:keep
    public dynamic function overflowUint(_x:stdgo.GoUInt64):Bool return __self__.value.overflowUint(_x);
    @:keep
    public dynamic function overflowInt(_x:stdgo.GoInt64):Bool return __self__.value.overflowInt(_x);
    @:keep
    public dynamic function overflowFloat(_x:stdgo.GoFloat64):Bool return __self__.value.overflowFloat(_x);
    @:keep
    public dynamic function overflowComplex(_x:stdgo.GoComplex128):Bool return __self__.value.overflowComplex(_x);
    @:keep
    public dynamic function numField():stdgo.GoInt return __self__.value.numField();
    @:keep
    public dynamic function methodByName(_name:stdgo.GoString):Value return __self__.value.methodByName(_name);
    @:keep
    public dynamic function numMethod():stdgo.GoInt return __self__.value.numMethod();
    @:keep
    public dynamic function method(_i:stdgo.GoInt):Value return __self__.value.method(_i);
    @:keep
    public dynamic function mapRange():stdgo.Ref<MapIter> return __self__.value.mapRange();
    @:keep
    public dynamic function setIterValue(_iter:stdgo.Ref<MapIter>):Void __self__.value.setIterValue(_iter);
    @:keep
    public dynamic function setIterKey(_iter:stdgo.Ref<MapIter>):Void __self__.value.setIterKey(_iter);
    @:keep
    public dynamic function mapKeys():stdgo.Slice<Value> return __self__.value.mapKeys();
    @:keep
    public dynamic function mapIndex(_key:Value):Value return __self__.value.mapIndex(_key);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:keep
    public dynamic function kind():Kind return __self__.value.kind();
    @:keep
    public dynamic function setZero():Void __self__.value.setZero();
    @:keep
    public dynamic function isZero():Bool return __self__.value.isZero();
    @:keep
    public dynamic function isValid():Bool return __self__.value.isValid();
    @:keep
    public dynamic function isNil():Bool return __self__.value.isNil();
    @:keep
    public dynamic function interfaceData():stdgo.GoArray<stdgo.GoUIntptr> return __self__.value.interfaceData();
    @:keep
    public dynamic function interface_():stdgo.AnyInterface return __self__.value.interface_();
    @:keep
    public dynamic function canInterface():Bool return __self__.value.canInterface();
    @:keep
    public dynamic function int_():stdgo.GoInt64 return __self__.value.int_();
    @:keep
    public dynamic function canInt():Bool return __self__.value.canInt();
    @:keep
    public dynamic function index(_i:stdgo.GoInt):Value return __self__.value.index(_i);
    @:keep
    public dynamic function float_():stdgo.GoFloat64 return __self__.value.float_();
    @:keep
    public dynamic function canFloat():Bool return __self__.value.canFloat();
    @:keep
    public dynamic function fieldByNameFunc(_match:stdgo.GoString -> Bool):Value return __self__.value.fieldByNameFunc(_match);
    @:keep
    public dynamic function fieldByName(_name:stdgo.GoString):Value return __self__.value.fieldByName(_name);
    @:keep
    public dynamic function fieldByIndexErr(_index:stdgo.Slice<stdgo.GoInt>):{ var _0 : Value; var _1 : stdgo.Error; } return __self__.value.fieldByIndexErr(_index);
    @:keep
    public dynamic function fieldByIndex(_index:stdgo.Slice<stdgo.GoInt>):Value return __self__.value.fieldByIndex(_index);
    @:keep
    public dynamic function field(_i:stdgo.GoInt):Value return __self__.value.field(_i);
    @:keep
    public dynamic function elem():Value return __self__.value.elem();
    @:keep
    public dynamic function complex():stdgo.GoComplex128 return __self__.value.complex();
    @:keep
    public dynamic function canComplex():Bool return __self__.value.canComplex();
    @:keep
    public dynamic function close():Void __self__.value.close();
    @:keep
    public dynamic function cap():stdgo.GoInt return __self__.value.cap();
    @:keep
    public dynamic function callSlice(_in:stdgo.Slice<Value>):stdgo.Slice<Value> return __self__.value.callSlice(_in);
    @:keep
    public dynamic function call(_in:stdgo.Slice<Value>):stdgo.Slice<Value> return __self__.value.call(_in);
    @:keep
    public dynamic function canSet():Bool return __self__.value.canSet();
    @:keep
    public dynamic function canAddr():Bool return __self__.value.canAddr();
    @:keep
    public dynamic function bytes():stdgo.Slice<stdgo.GoByte> return __self__.value.bytes();
    @:keep
    public dynamic function bool_():Bool return __self__.value.bool_();
    @:keep
    public dynamic function addr():Value return __self__.value.addr();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Value>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.reflect.Reflect.Value_asInterface) class Value_static_extension {
    @:keep
    static public function equal( _v:Value, _u:Value):Bool throw "Value:reflect.equal is not yet implemented";
    @:keep
    static public function comparable_( _v:Value):Bool throw "Value:reflect.comparable_ is not yet implemented";
    @:keep
    static public function canConvert( _v:Value, _t:Type_):Bool throw "Value:reflect.canConvert is not yet implemented";
    @:keep
    static public function convert( _v:Value, _t:Type_):Value throw "Value:reflect.convert is not yet implemented";
    @:keep
    static public function clear( _v:Value):Void throw "Value:reflect.clear is not yet implemented";
    @:keep
    static public function grow( _v:Value, _n:stdgo.GoInt):Void throw "Value:reflect.grow is not yet implemented";
    @:keep
    static public function unsafePointer( _v:Value):stdgo._internal.unsafe.Unsafe.UnsafePointer throw "Value:reflect.unsafePointer is not yet implemented";
    @:keep
    static public function unsafeAddr( _v:Value):stdgo.GoUIntptr throw "Value:reflect.unsafeAddr is not yet implemented";
    @:keep
    static public function uint( _v:Value):stdgo.GoUInt64 {
        @:recv var _v:Value = _v?.__copy__();
        var value = @:privateAccess _v.value.value;
        final t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        if (stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
            @:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
            value = (value : stdgo.Pointer<Dynamic>).value;
        };
        final value:stdgo.GoUInt64 = switch _v.kind() {
            case stdgo._internal.internal.reflect.Reflect.KindType.uint:
                (value : stdgo.GoUInt8);
            case stdgo._internal.internal.reflect.Reflect.KindType.uint8:
                (value : stdgo.GoUInt8);
            case stdgo._internal.internal.reflect.Reflect.KindType.uint16:
                (value : stdgo.GoUInt16);
            case stdgo._internal.internal.reflect.Reflect.KindType.uint32:
                (value : stdgo.GoUInt32);
            case stdgo._internal.internal.reflect.Reflect.KindType.uint64:
                (value : stdgo.GoUInt64);
            case stdgo._internal.internal.reflect.Reflect.KindType.uintptr:
                (value : stdgo.GoUIntptr);
            default:
                throw new ValueError("reflect.Value.Uint", _v.kind());
        };
        return value;
    }
    @:keep
    static public function canUint( _v:Value):Bool {
        @:recv var _v:Value = _v?.__copy__();
        return switch _v.kind() {
            case stdgo._internal.internal.reflect.Reflect.KindType.uint, stdgo._internal.internal.reflect.Reflect.KindType.uint8, stdgo._internal.internal.reflect.Reflect.KindType.uint16, stdgo._internal.internal.reflect.Reflect.KindType.uint32, stdgo._internal.internal.reflect.Reflect.KindType.uint64, stdgo._internal.internal.reflect.Reflect.KindType.uintptr:
                true;
            default:
                false;
        };
    }
    @:keep
    static public function type( _v:Value):Type_ {
        @:recv var _v:Value = _v?.__copy__();
        if (@:privateAccess _v.value == null) {
            var t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.invalidType);
            return @:privateAccess new stdgo._internal.internal.reflect.Reflect._Type_asInterface(stdgo.Go.pointer(t), t);
        };
        return @:privateAccess new stdgo._internal.internal.reflect.Reflect._Type_asInterface(stdgo.Go.pointer(_v.value.type), _v.value.type);
    }
    @:keep
    static public function trySend( _v:Value, _x:Value):Bool throw "Value:reflect.trySend is not yet implemented";
    @:keep
    static public function tryRecv( _v:Value):{ var _0 : Value; var _1 : Bool; } throw "Value:reflect.tryRecv is not yet implemented";
    @:keep
    static public function string( _v:Value):stdgo.GoString {
        @:recv var _v:Value = _v?.__copy__();
        if (@:privateAccess _v.value == null) {
            return "<invalid Value>";
        };
        var value = @:privateAccess _v.value.value;
        final t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        if (stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
            @:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
            value = (value : stdgo.Pointer<Dynamic>).value;
        };
        final underlyingType = stdgo._internal.internal.reflect.Reflect.getUnderlying(t);
        switch (underlyingType) {
            case stdgo._internal.internal.reflect.Reflect.GoType.basic(kind):
                switch kind {
                case string_kind:
                    return value;
                default:
                    final _ = false;
            };
            default:
                final _ = false;
        };
        return "<" + _v.type().string() + " Value>";
    }
    @:keep
    static public function slice3( _v:Value, _i:stdgo.GoInt, _j:stdgo.GoInt, _k:stdgo.GoInt):Value throw "Value:reflect.slice3 is not yet implemented";
    @:keep
    static public function slice( _v:Value, _i:stdgo.GoInt, _j:stdgo.GoInt):Value {
        @:recv var _v:Value = _v?.__copy__();
        var value = @:privateAccess _v.value.value;
        var t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        switch t {
            case stdgo._internal.internal.reflect.Reflect.GoType.arrayType(elem, _):
                t = stdgo._internal.internal.reflect.Reflect.GoType.sliceType(elem);
            case stdgo._internal.internal.reflect.Reflect.GoType.named(path, methods, stdgo._internal.internal.reflect.Reflect.GoType.arrayType(elem, _), alias, params):
                t = stdgo._internal.internal.reflect.Reflect.GoType.named(path, methods, stdgo._internal.internal.reflect.Reflect.GoType.sliceType(elem), alias, params);
            default:
                final _ = false;
        };
        final k = _v.kind();
        value = switch k {
            case stdgo._internal.internal.reflect.Reflect.KindType.slice:
                (value : stdgo.Slice<Dynamic>).__slice__(_i, _j);
            case stdgo._internal.internal.reflect.Reflect.KindType.array:
                (value : stdgo.GoArray<Dynamic>).__slice__(_i, _j);
            default:
                throw new ValueError("reflect.Value.Slice", k);
        };
        return new Value(new stdgo.AnyInterface(value, new stdgo._internal.internal.reflect.Reflect._Type(t)));
    }
    @:keep
    static public function setString( _v:Value, _x:stdgo.GoString):Void {
        @:recv var _v:Value = _v?.__copy__();
        @:privateAccess _v.value.value = _x;
        stdgo._internal.internal.reflect.Reflect._set(_v);
    }
    @:keep
    static public function setPointer( _v:Value, _x:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void throw "Value:reflect.setPointer is not yet implemented";
    @:keep
    static public function setUint( _v:Value, _x:stdgo.GoUInt64):Void {
        @:recv var _v:Value = _v?.__copy__();
        final k = _v.kind();
        @:privateAccess _v.value.value = switch k {
            case stdgo._internal.internal.reflect.Reflect.KindType.int8:
                (_x : stdgo.GoInt8);
            case stdgo._internal.internal.reflect.Reflect.KindType.int16:
                (_x : stdgo.GoInt16);
            case stdgo._internal.internal.reflect.Reflect.KindType.int32:
                (_x : stdgo.GoInt32);
            case stdgo._internal.internal.reflect.Reflect.KindType.int64:
                (_x : stdgo.GoInt64);
            case stdgo._internal.internal.reflect.Reflect.KindType.int:
                (_x : stdgo.GoInt);
            case stdgo._internal.internal.reflect.Reflect.KindType.uint8:
                (_x : stdgo.GoUInt8);
            case stdgo._internal.internal.reflect.Reflect.KindType.uint16:
                (_x : stdgo.GoUInt16);
            case stdgo._internal.internal.reflect.Reflect.KindType.uint32:
                (_x : stdgo.GoUInt32);
            case stdgo._internal.internal.reflect.Reflect.KindType.uint64:
                (_x : stdgo.GoUInt64);
            case stdgo._internal.internal.reflect.Reflect.KindType.uint:
                (_x : stdgo.GoUInt);
            case stdgo._internal.internal.reflect.Reflect.KindType.uintptr:
                (_x : stdgo.GoUIntptr);
            default:
                throw "unknown setUInt kind: " + k.string();
        };
        stdgo._internal.internal.reflect.Reflect._set(_v);
    }
    @:keep
    static public function setMapIndex( _v:Value, _key:Value, _elem:Value):Void throw "Value:reflect.setMapIndex is not yet implemented";
    @:keep
    static public function setCap( _v:Value, _n:stdgo.GoInt):Void throw "Value:reflect.setCap is not yet implemented";
    @:keep
    static public function setLen( _v:Value, _n:stdgo.GoInt):Void throw "Value:reflect.setLen is not yet implemented";
    @:keep
    static public function setInt( _v:Value, _x:stdgo.GoInt64):Void {
        @:recv var _v:Value = _v?.__copy__();
        final k = _v.kind();
        @:privateAccess _v.value.value = switch k {
            case stdgo._internal.internal.reflect.Reflect.KindType.int8:
                (_x : stdgo.GoInt8);
            case stdgo._internal.internal.reflect.Reflect.KindType.int16:
                (_x : stdgo.GoInt16);
            case stdgo._internal.internal.reflect.Reflect.KindType.int32:
                (_x : stdgo.GoInt32);
            case stdgo._internal.internal.reflect.Reflect.KindType.int64:
                (_x : stdgo.GoInt64);
            case stdgo._internal.internal.reflect.Reflect.KindType.int:
                (_x : stdgo.GoInt);
            case stdgo._internal.internal.reflect.Reflect.KindType.uint8:
                (_x : stdgo.GoUInt8);
            case stdgo._internal.internal.reflect.Reflect.KindType.uint16:
                (_x : stdgo.GoUInt16);
            case stdgo._internal.internal.reflect.Reflect.KindType.uint32:
                (_x : stdgo.GoUInt32);
            case stdgo._internal.internal.reflect.Reflect.KindType.uint64:
                (_x : stdgo.GoUInt64);
            case stdgo._internal.internal.reflect.Reflect.KindType.uint:
                (_x : stdgo.GoUInt);
            default:
                throw "unknown setInt kind: " + k.string();
        };
        stdgo._internal.internal.reflect.Reflect._set(_v);
    }
    @:keep
    static public function setFloat( _v:Value, _x:stdgo.GoFloat64):Void {
        @:recv var _v:Value = _v?.__copy__();
        final k = _v.kind();
        @:privateAccess _v.value.value = switch k {
            case stdgo._internal.internal.reflect.Reflect.KindType.float32:
                (_x : stdgo.GoFloat32);
            case stdgo._internal.internal.reflect.Reflect.KindType.float64:
                (_x : stdgo.GoFloat64);
            default:
                throw "unknown setFloat kind: " + k.string();
        };
        stdgo._internal.internal.reflect.Reflect._set(_v);
    }
    @:keep
    static public function setComplex( _v:Value, _x:stdgo.GoComplex128):Void {
        @:recv var _v:Value = _v?.__copy__();
        final k = _v.kind();
        @:privateAccess _v.value.value = switch k {
            case stdgo._internal.internal.reflect.Reflect.KindType.complex64:
                (_x : stdgo.GoComplex64);
            case stdgo._internal.internal.reflect.Reflect.KindType.complex128:
                (_x : stdgo.GoComplex128);
            default:
                throw "unknown setFloat kind: " + k.string();
        };
        stdgo._internal.internal.reflect.Reflect._set(_v);
    }
    @:keep
    static public function setBytes( _v:Value, _x:stdgo.Slice<stdgo.GoByte>):Void throw "Value:reflect.setBytes is not yet implemented";
    @:keep
    static public function setBool( _v:Value, _x:Bool):Void {
        @:recv var _v:Value = _v?.__copy__();
        @:privateAccess _v.value.value = _x;
        stdgo._internal.internal.reflect.Reflect._set(_v);
    }
    @:keep
    static public function set( _v:Value, _x:Value):Void {
        @:recv var _v:Value = _v?.__copy__();
        var value = @:privateAccess _x.value.value;
        final gt = @:privateAccess _x.value.type._common();
        if (value != null) {
            final cl = std.Type.getClassName(std.Type.getClass(value));
            if (StringTools.endsWith(cl, "_asInterface")) {
                value = (value : Dynamic).__underlying__().value;
            };
        };
        final k = _v.kind();
        switch k {
            case stdgo._internal.internal.reflect.Reflect.KindType.struct:
                switch stdgo._internal.internal.reflect.Reflect.getUnderlying(gt) {
                case structType(fields):
                    for (field in fields) {
                    final fieldValue = std.Reflect.field(value, field.name);
                    std.Reflect.setField(value, field.name, fieldValue);
                };
                default:
                    final _ = false;
            };
            case stdgo._internal.internal.reflect.Reflect.KindType.int8:
                _v.setInt((value : stdgo.GoInt8));
            case stdgo._internal.internal.reflect.Reflect.KindType.int16:
                _v.setInt((value : stdgo.GoInt16));
            case stdgo._internal.internal.reflect.Reflect.KindType.int32:
                _v.setInt((value : stdgo.GoInt32));
            case stdgo._internal.internal.reflect.Reflect.KindType.int64:
                _v.setInt((value : stdgo.GoInt64));
            case stdgo._internal.internal.reflect.Reflect.KindType.int:
                _v.setInt((value : stdgo.GoInt));
            case stdgo._internal.internal.reflect.Reflect.KindType.uint:
                _v.setInt((value : stdgo.GoUInt8));
            case stdgo._internal.internal.reflect.Reflect.KindType.uint16:
                _v.setInt((value : stdgo.GoUInt16));
            case stdgo._internal.internal.reflect.Reflect.KindType.uint32:
                _v.setInt((value : stdgo.GoUInt32));
            case stdgo._internal.internal.reflect.Reflect.KindType.uint64:
                _v.setInt((value : stdgo.GoUInt64));
            case stdgo._internal.internal.reflect.Reflect.KindType.float32:
                _v.setFloat((value : stdgo.GoFloat32));
            case stdgo._internal.internal.reflect.Reflect.KindType.float64:
                _v.setFloat((value : stdgo.GoFloat64));
            case stdgo._internal.internal.reflect.Reflect.KindType.string:
                _v.setString(value);
            case stdgo._internal.internal.reflect.Reflect.KindType.slice:
                var value:Slice<Dynamic> = @:privateAccess _v.value.value;
final x:Slice<Dynamic> = @:privateAccess _x.value.value;
stdgo._internal.internal.reflect.Reflect._set(_v);
            case stdgo._internal.internal.reflect.Reflect.KindType.map:
                var value:haxe.Constraints.IMap<Dynamic, Dynamic> = @:privateAccess _v.value.value;
final x:haxe.Constraints.IMap<Dynamic, Dynamic> = @:privateAccess _x.value.value;
for (key => value in x) {
                value.set(key, value);
            };
stdgo._internal.internal.reflect.Reflect._set(_v);
            default:
                @:privateAccess _v.value = _x.value;
stdgo._internal.internal.reflect.Reflect._set(_v);
        };
    }
    @:keep
    static public function send( _v:Value, _x:Value):Void throw "Value:reflect.send is not yet implemented";
    @:keep
    static public function recv( _v:Value):{ var _0 : Value; var _1 : Bool; } throw "Value:reflect.recv is not yet implemented";
    @:keep
    static public function pointer( _v:Value):stdgo.GoUIntptr {
        @:recv var _v:Value = _v?.__copy__();
        if (@:privateAccess _v.value == null) return 0;
        var value = @:privateAccess _v.value.value;
        return value != null ? 1 : 0;
    }
    @:keep
    static public function overflowUint( _v:Value, _x:stdgo.GoUInt64):Bool throw "Value:reflect.overflowUint is not yet implemented";
    @:keep
    static public function overflowInt( _v:Value, _x:stdgo.GoInt64):Bool throw "Value:reflect.overflowInt is not yet implemented";
    @:keep
    static public function overflowFloat( _v:Value, _x:stdgo.GoFloat64):Bool throw "Value:reflect.overflowFloat is not yet implemented";
    @:keep
    static public function overflowComplex( _v:Value, _x:stdgo.GoComplex128):Bool throw "Value:reflect.overflowComplex is not yet implemented";
    @:keep
    static public function numField( _v:Value):stdgo.GoInt {
        @:recv var _v:Value = _v?.__copy__();
        return _v.type().numField();
    }
    @:keep
    static public function methodByName( _v:Value, _name:stdgo.GoString):Value throw "Value:reflect.methodByName is not yet implemented";
    @:keep
    static public function numMethod( _v:Value):stdgo.GoInt throw "Value:reflect.numMethod is not yet implemented";
    @:keep
    static public function method( _v:Value, _i:stdgo.GoInt):Value throw "Value:reflect.method is not yet implemented";
    @:keep
    static public function mapRange( _v:Value):stdgo.Ref<MapIter> {
        @:recv var _v:Value = _v?.__copy__();
        return new MapIter(@:privateAccess _v.value.value, @:privateAccess _v.value.type);
    }
    @:keep
    static public function setIterValue( _v:Value, _iter:stdgo.Ref<MapIter>):Void throw "Value:reflect.setIterValue is not yet implemented";
    @:keep
    static public function setIterKey( _v:Value, _iter:stdgo.Ref<MapIter>):Void throw "Value:reflect.setIterKey is not yet implemented";
    @:keep
    static public function mapKeys( _v:Value):stdgo.Slice<Value> throw "Value:reflect.mapKeys is not yet implemented";
    @:keep
    static public function mapIndex( _v:Value, _key:Value):Value throw "Value:reflect.mapIndex is not yet implemented";
    @:keep
    static public function len( _v:Value):stdgo.GoInt {
        @:recv var _v:Value = _v?.__copy__();
        final _v = _v.__copy__();
        var value = @:privateAccess _v.value.value;
        final t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        if (stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
            @:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
            value = (value : stdgo.Pointer<Dynamic>).value;
        };
        final k = _v.kind();
        return switch k {
            case stdgo._internal.internal.reflect.Reflect.KindType.array:
                (value : stdgo.GoArray<Dynamic>).length;
            case stdgo._internal.internal.reflect.Reflect.KindType.chan:
                (value : stdgo.Chan<Dynamic>).length;
            case stdgo._internal.internal.reflect.Reflect.KindType.slice:
                (value : stdgo.Slice<Dynamic>).length;
            case stdgo._internal.internal.reflect.Reflect.KindType.map:
                Lambda.count((value : haxe.Constraints.IMap<Dynamic, Dynamic>));
            case stdgo._internal.internal.reflect.Reflect.KindType.string:
                (value : Dynamic).length;
            default:
                trace(k.string());
throw "not supported";
        };
    }
    @:keep
    static public function kind( _v:Value):Kind return _v.type().kind();
    @:keep
    static public function setZero( _v:Value):Void throw "Value:reflect.setZero is not yet implemented";
    @:keep
    static public function isZero( _v:Value):Bool throw "Value:reflect.isZero is not yet implemented";
    @:keep
    static public function isValid( _v:Value):Bool {
        @:recv var _v:Value = _v?.__copy__();
        if (@:privateAccess _v.value == null) return false;
        if (@:privateAccess _v.value.type._common() != stdgo._internal.internal.reflect.Reflect.GoType.invalidType) return true;
        return switch @:privateAccess _v.value.type._common() {
            case stdgo._internal.internal.reflect.Reflect.GoType.basic(stdgo._internal.internal.reflect.Reflect.BasicKind.untyped_nil_kind):
                false;
            default:
                true;
        };
    }
    @:keep
    static public function isNil( _v:Value):Bool {
        @:recv var _v:Value = _v?.__copy__();
        var value = @:privateAccess _v.value.value;
        final k = _v.kind();
        final gt:stdgo._internal.internal.reflect.Reflect.GoType = (_v.type() : Dynamic)._common();
        return switch k {
            case stdgo._internal.internal.reflect.Reflect.KindType.pointer:
                switch gt {
                case stdgo._internal.internal.reflect.Reflect.GoType.refType(_):
                    switch std.Type.typeof(value) {
                    case TClass(c):
                        final name = std.Type.getClassName(c);
if (StringTools.endsWith(name, "_asInterface")) {
                        value = (value : Dynamic).__underlying__().value;
                    };
                    default:
                        final _ = false;
                };
value == null;
                default:
                    if (value == null) {
                    true;
                } else {
                    final b = (value : stdgo.Pointer<Dynamic>).hasSet();
                    trace("hasSet: " + b);
                    b;
                };
            };
            case stdgo._internal.internal.reflect.Reflect.KindType.func:
                value == null;
            case stdgo._internal.internal.reflect.Reflect.KindType.chan:
                value == null;
            case stdgo._internal.internal.reflect.Reflect.KindType.map:
                value == null;
            case stdgo._internal.internal.reflect.Reflect.KindType.slice:
                value == null;
            case stdgo._internal.internal.reflect.Reflect.KindType.interface_:
                value == null;
            case stdgo._internal.internal.reflect.Reflect.KindType.array:
                false;
            case stdgo._internal.internal.reflect.Reflect.KindType.struct:
                false;
            case stdgo._internal.internal.reflect.Reflect.KindType.invalid:
                false;
            case stdgo._internal.internal.reflect.Reflect.KindType.unsafePointer, stdgo._internal.internal.reflect.Reflect.KindType.uintptr:
                value == null;
            case stdgo._internal.internal.reflect.Reflect.KindType.bool, stdgo._internal.internal.reflect.Reflect.KindType.int, stdgo._internal.internal.reflect.Reflect.KindType.int32, stdgo._internal.internal.reflect.Reflect.KindType.int64, stdgo._internal.internal.reflect.Reflect.KindType.float32, stdgo._internal.internal.reflect.Reflect.KindType.float64, stdgo._internal.internal.reflect.Reflect.KindType.int8, stdgo._internal.internal.reflect.Reflect.KindType.int16, stdgo._internal.internal.reflect.Reflect.KindType.uint, stdgo._internal.internal.reflect.Reflect.KindType.uint8, stdgo._internal.internal.reflect.Reflect.KindType.uint16, stdgo._internal.internal.reflect.Reflect.KindType.uint32, stdgo._internal.internal.reflect.Reflect.KindType.uint64, stdgo._internal.internal.reflect.Reflect.KindType.string, stdgo._internal.internal.reflect.Reflect.KindType.complex64, stdgo._internal.internal.reflect.Reflect.KindType.complex128:
                false;
            default:
                throw "nil check not supported kind: " + _v.kind().string();
        };
    }
    @:keep
    static public function interfaceData( _v:Value):stdgo.GoArray<stdgo.GoUIntptr> throw "Value:reflect.interfaceData is not yet implemented";
    @:keep
    static public function interface_( _v:Value):stdgo.AnyInterface return @:privateAccess _v.value;
    @:keep
    static public function canInterface( _v:Value):Bool {
        @:recv var _v:Value = _v?.__copy__();
        return true;
    }
    @:keep
    static public function int_( _v:Value):stdgo.GoInt64 {
        @:recv var _v:Value = _v?.__copy__();
        var value = @:privateAccess _v.value.value;
        final t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        if (stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
            @:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
            value = (value : stdgo.Pointer<Dynamic>).value;
        };
        final value:stdgo.GoInt64 = switch _v.kind() {
            case stdgo._internal.internal.reflect.Reflect.KindType.int:
                (value : stdgo.GoInt8);
            case stdgo._internal.internal.reflect.Reflect.KindType.int8:
                (value : stdgo.GoInt8);
            case stdgo._internal.internal.reflect.Reflect.KindType.int16:
                (value : stdgo.GoInt16);
            case stdgo._internal.internal.reflect.Reflect.KindType.int32:
                (value : stdgo.GoInt32);
            case stdgo._internal.internal.reflect.Reflect.KindType.int64:
                (value : stdgo.GoInt64);
            default:
                throw new ValueError("reflect.Value.Int", _v.kind());
        };
        return value;
    }
    @:keep
    static public function canInt( _v:Value):Bool throw "Value:reflect.canInt is not yet implemented";
    @:keep
    static public function index( _v:Value, _i:stdgo.GoInt):Value {
        @:recv var _v:Value = _v?.__copy__();
        final _v = _v.__copy__();
        var value = @:privateAccess _v.value.value;
        final t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        if (stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
            @:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
            value = (value : stdgo.Pointer<Dynamic>).value;
        };
        final gt = stdgo._internal.internal.reflect.Reflect.getUnderlying(@:privateAccess _v.value.type._common());
        return switch gt {
            case stdgo._internal.internal.reflect.Reflect.GoType.arrayType(_.get() => elem, _):
                final t = @:privateAccess new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.unroll(gt, elem));
final valueInterface = stdgo._internal.internal.reflect.Reflect.asInterfaceValue((value : stdgo.GoArray<Dynamic>)[_i], t._common());
new Value(new stdgo.AnyInterface(valueInterface, t), value, _i);
            case stdgo._internal.internal.reflect.Reflect.GoType.sliceType(_.get() => elem):
                final t = @:privateAccess new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.unroll(gt, elem));
final valueInterface = stdgo._internal.internal.reflect.Reflect.asInterfaceValue((value : Slice<Dynamic>)[_i], t._common());
final value = new Value(new stdgo.AnyInterface(valueInterface, t), value, _i);
@:privateAccess value.canAddrBool = true;
value;
            case stdgo._internal.internal.reflect.Reflect.GoType.basic(kind):
                switch kind {
                case string_kind:
                    var value = value;
if ((value is String)) value = (value : stdgo.GoString);
new Value(new stdgo.AnyInterface((value : stdgo.GoString)[_i], new stdgo._internal.internal.reflect.Reflect._Type(basic(uint8_kind))));
                default:
                    throw "unsupported basic kind";
            };
            default:
                throw "not supported";
        };
    }
    @:keep
    static public function float_( _v:Value):stdgo.GoFloat64 {
        @:recv var _v:Value = _v?.__copy__();
        var value = @:privateAccess _v.value.value;
        final t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        if (stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
            @:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
            value = (value : stdgo.Pointer<Dynamic>).value;
        };
        final value:stdgo.GoFloat64 = switch _v.kind() {
            case stdgo._internal.internal.reflect.Reflect.KindType.float64:
                (value : stdgo.GoFloat64);
            case stdgo._internal.internal.reflect.Reflect.KindType.float32:
                (value : stdgo.GoFloat32);
            default:
                throw new ValueError("reflect.Value.Float", _v.kind());
        };
        return value;
    }
    @:keep
    static public function canFloat( _v:Value):Bool throw "Value:reflect.canFloat is not yet implemented";
    @:keep
    static public function fieldByNameFunc( _v:Value, _match:stdgo.GoString -> Bool):Value throw "Value:reflect.fieldByNameFunc is not yet implemented";
    @:keep
    static public function fieldByName( _v:Value, _name:stdgo.GoString):Value throw "Value:reflect.fieldByName is not yet implemented";
    @:keep
    static public function fieldByIndexErr( _v:Value, _index:stdgo.Slice<stdgo.GoInt>):{ var _0 : Value; var _1 : stdgo.Error; } throw "Value:reflect.fieldByIndexErr is not yet implemented";
    @:keep
    static public function fieldByIndex( _v:Value, _index:stdgo.Slice<stdgo.GoInt>):Value throw "Value:reflect.fieldByIndex is not yet implemented";
    @:keep
    static public function field( _v:Value, _i:stdgo.GoInt):Value {
        @:recv var _v:Value = _v?.__copy__();
        final gt = @:privateAccess stdgo._internal.internal.reflect.Reflect.getUnderlying(_v.value.type._common());
        return switch gt {
            case structType(fields):
                final field = fields[_i.toBasic()];
final t = @:privateAccess (cast _v.value.type.field(_i).type : stdgo._internal.internal.reflect.Reflect._Type_asInterface).__type__;
var fieldValue = std.Reflect.field(@:privateAccess _v.value.value, field.name);
fieldValue = stdgo._internal.internal.reflect.Reflect.asInterfaceValue(fieldValue, t._common());
final valueType = new Value(new stdgo.AnyInterface(fieldValue, t));
if (field.name.charAt(0) == "_") @:privateAccess valueType.notSetBool = false;
valueType;
            default:
                throw "unsupported: " + gt;
        };
    }
    @:keep
    static public function elem( _v:Value):Value {
        @:recv var _v:Value = _v?.__copy__();
        var value = @:privateAccess _v.value.value;
        final t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo._internal.internal.reflect.Reflect.isNamed(t) && !stdgo._internal.internal.reflect.Reflect.isRef(t) && !stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (StringTools.endsWith(name, "_asInterface")) {
                    @:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
                    value = (value : Dynamic).__underlying__().value;
                };
                default:
                    final _ = false;
            };
        };
        var k = _v.kind();
        switch k {
            case stdgo._internal.internal.reflect.Reflect.KindType.pointer:
                final t = stdgo._internal.internal.reflect.Reflect.getUnderlying(t);
switch t {
                case stdgo._internal.internal.reflect.Reflect.GoType.refType(_.get() => elem):
                    final value = new Value(new stdgo.AnyInterface(value, new stdgo._internal.internal.reflect.Reflect._Type(elem)), null);
@:privateAccess value.canAddrBool = true;
return value;
                case stdgo._internal.internal.reflect.Reflect.GoType.pointerType(_.get() => elem):
                    if (value == null) {
                    final value = new Value(new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(elem)), value);
                    @:privateAccess value.canAddrBool = true;
                    return value;
                };
final ptrValue = (value : stdgo.Pointer<Dynamic>).value;
final value = new Value(new stdgo.AnyInterface(ptrValue, new stdgo._internal.internal.reflect.Reflect._Type(elem)), value);
@:privateAccess value.canAddrBool = true;
return value;
                default:
                    final _ = false;
            };
            case stdgo._internal.internal.reflect.Reflect.KindType.interface_:
                if (value == null) return new Value();
return new Value(value, @:privateAccess _v.value.type);
        };
        throw new ValueError("reflect.Value.Elem", k);
    }
    @:keep
    static public function complex( _v:Value):stdgo.GoComplex128 {
        @:recv var _v:Value = _v?.__copy__();
        var value = @:privateAccess _v.value.value;
        final t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        if (stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
            @:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
            value = (value : stdgo.Pointer<Dynamic>).value;
        };
        final value:stdgo.GoComplex128 = switch _v.kind() {
            case stdgo._internal.internal.reflect.Reflect.KindType.complex128, stdgo._internal.internal.reflect.Reflect.KindType.complex64:
                value;
            default:
                throw new ValueError("Value.Complex", _v.kind());
        };
        return value;
    }
    @:keep
    static public function canComplex( _v:Value):Bool throw "Value:reflect.canComplex is not yet implemented";
    @:keep
    static public function close( _v:Value):Void throw "Value:reflect.close is not yet implemented";
    @:keep
    static public function cap( _v:Value):stdgo.GoInt throw "Value:reflect.cap is not yet implemented";
    @:keep
    static public function callSlice( _v:Value, _in:stdgo.Slice<Value>):stdgo.Slice<Value> throw "Value:reflect.callSlice is not yet implemented";
    @:keep
    static public function call( _v:Value, _in:stdgo.Slice<Value>):stdgo.Slice<Value> {
        @:recv var _v:Value = _v?.__copy__();
        final gt = @:privateAccess stdgo._internal.internal.reflect.Reflect.getUnderlying(_v.value.type._common());
        switch gt {
            case signature(_, _.get() => params, _.get() => out, _):
                throw "not implemented reflect.Value:call: " + gt;
            default:
                throw "unsupported: " + gt;
        };
    }
    @:keep
    static public function canSet( _v:Value):Bool throw "Value:reflect.canSet is not yet implemented";
    @:keep
    static public function canAddr( _v:Value):Bool {
        @:recv var _v:Value = _v?.__copy__();
        return @:privateAccess _v.canAddrBool;
    }
    @:keep
    static public function bytes( _v:Value):stdgo.Slice<stdgo.GoByte> {
        @:recv var _v:Value = _v?.__copy__();
        final _v = _v.__copy__();
        var value = @:privateAccess _v.value.value;
        var t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
            t = stdgo._internal.internal.reflect.Reflect.getUnderlying(t);
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        if (stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
            @:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
            value = (value : stdgo.Pointer<Dynamic>).value;
            t = @:privateAccess _v.value.type._common();
        };
        switch t {
            case stdgo._internal.internal.reflect.Reflect.GoType.arrayType(_.get() => elem, _):
                switch elem {
                case stdgo._internal.internal.reflect.Reflect.GoType.basic(stdgo._internal.internal.reflect.Reflect.BasicKind.uint8_kind):
                    return (value : stdgo.GoArray<stdgo.GoByte>).__slice__(0);
                default:
                    throw new ValueError("reflect.Value.Bytes", @:privateAccess _v.kind());
            };
            case stdgo._internal.internal.reflect.Reflect.GoType.sliceType(_.get() => elem):
                elem = stdgo._internal.internal.reflect.Reflect.getUnderlying(elem);
switch elem {
                case stdgo._internal.internal.reflect.Reflect.GoType.basic(stdgo._internal.internal.reflect.Reflect.BasicKind.uint8_kind):
                    return value;
                default:
                    throw new ValueError("reflect.Value.Bytes", @:privateAccess _v.kind());
            };
            default:
                throw new ValueError("reflect.Value.Bytes", @:privateAccess _v.kind());
        };
    }
    @:keep
    static public function bool_( _v:Value):Bool {
        @:recv var _v:Value = _v?.__copy__();
        var value = @:privateAccess _v.value.value;
        final t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        if (stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
            @:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
            value = (value : stdgo.Pointer<Dynamic>).value;
        };
        final value:Bool = switch _v.kind() {
            case stdgo._internal.internal.reflect.Reflect.KindType.bool:
                value;
            default:
                throw new ValueError("reflect.Value.Bool", _v.kind());
        };
        return value;
    }
    @:keep
    static public function addr( _v:Value):Value throw "Value:reflect.addr is not yet implemented";
}
class ValueError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ValueError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.reflect.Reflect.ValueError_asInterface) class ValueError_static_extension {
    @:keep
    static public function error( _e:stdgo.Ref<ValueError>):stdgo.GoString throw "ValueError:reflect.error is not yet implemented";
}
class MapIter_asInterface {
    @:keep
    public dynamic function reset(_v:Value):Void __self__.value.reset(_v);
    @:keep
    public dynamic function next():Bool return __self__.value.next();
    @:keep
    public dynamic function value():Value return __self__.value.value();
    @:keep
    public dynamic function key():Value return __self__.value.key();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<MapIter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.reflect.Reflect.MapIter_asInterface) class MapIter_static_extension {
    @:keep
    static public function reset( _iter:stdgo.Ref<MapIter>, _v:Value):Void {
        @:recv var _iter:stdgo.Ref<MapIter> = _iter;
        @:privateAccess _iter.index = 0;
        @:privateAccess _iter.map = _v.value.value;
        @:privateAccess _iter.keys = null;
        @:privateAccess _iter.values = null;
    }
    @:keep
    static public function next( _iter:stdgo.Ref<MapIter>):Bool {
        @:recv var _iter:stdgo.Ref<MapIter> = _iter;
        if (@:privateAccess _iter.map == null) return false;
        @:privateAccess if (_iter.keys == null) {
            @:privateAccess _iter.keys = [for (key in _iter.map.keys()) key];
            @:privateAccess _iter.values = [for (key in _iter.map.iterator()) key];
        } else {
            @:privateAccess _iter.index++;
        };
        return @:privateAccess _iter.index < @:privateAccess _iter.keys.length;
    }
    @:keep
    static public function value( _iter:stdgo.Ref<MapIter>):Value {
        @:recv var _iter:stdgo.Ref<MapIter> = _iter;
        @:privateAccess if (_iter.keys == null) {
            @:privateAccess _iter.keys = [for (key in _iter.map.keys()) key];
            @:privateAccess _iter.values = [for (key in _iter.map.iterator()) key];
        };
        final gt = stdgo._internal.internal.reflect.Reflect.getUnderlying(@:privateAccess _iter.t._common());
        final value = switch gt {
            case mapType(_, _.get() => valueType):
                new stdgo._internal.internal.reflect.Reflect._Type(valueType);
            default:
                throw "invalid mapType: " + gt;
        };
        return new Value(new stdgo.AnyInterface(@:privateAccess _iter.values[_iter.index], value));
    }
    @:keep
    static public function key( _iter:stdgo.Ref<MapIter>):Value {
        @:recv var _iter:stdgo.Ref<MapIter> = _iter;
        @:privateAccess if (_iter.keys == null) {
            @:privateAccess _iter.keys = [for (key in _iter.map.keys()) key];
            @:privateAccess _iter.values = [for (key in _iter.map.iterator()) key];
        };
        final gt = stdgo._internal.internal.reflect.Reflect.getUnderlying(@:privateAccess _iter.t._common());
        final key = switch gt {
            case mapType(_.get() => var keyType, _):
                new stdgo._internal.internal.reflect.Reflect._Type(keyType);
            default:
                throw "invalid mapType: " + gt;
        };
        return new Value(new stdgo.AnyInterface(@:privateAccess _iter.keys[_iter.index], key));
    }
}
class Kind_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Kind>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.reflect.Reflect.Kind_asInterface) class Kind_static_extension {
    @:keep
    static public function string( _k:Kind):stdgo.GoString {
        @:recv var _k:Kind = _k;
        var idx:Int = _k.toBasic();
        return switch idx {
            case 0:
                "invalid";
            case 1:
                "bool";
            case 2:
                "int";
            case 3:
                "int8";
            case 4:
                "int16";
            case 5:
                "int32";
            case 6:
                "int64";
            case 7:
                "uint";
            case 8:
                "uint8";
            case 9:
                "uint16";
            case 10:
                "uint32";
            case 11:
                "uint64";
            case 12:
                "uintptr";
            case 13:
                "float32";
            case 14:
                "float64";
            case 15:
                "complex64";
            case 16:
                "complex128";
            case 17:
                "array";
            case 18:
                "chan";
            case 19:
                "func";
            case 20:
                "interface";
            case 21:
                "map";
            case 22:
                "ptr";
            case 23:
                "slice";
            case 24:
                "string";
            case 25:
                "struct";
            case 26:
                "unsafe.Pointer";
            default:
                throw "unknown kind string: " + idx;
        };
    }
}
class ChanDir_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ChanDir>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.reflect.Reflect.ChanDir_asInterface) class ChanDir_static_extension {
    @:keep
    static public function string( _d:ChanDir):stdgo.GoString throw "ChanDir:reflect.string is not yet implemented";
}
class StructTag_asInterface {
    @:keep
    public dynamic function lookup(_key:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } return __self__.value.lookup(_key);
    @:keep
    public dynamic function get(_key:stdgo.GoString):stdgo.GoString return __self__.value.get(_key);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<StructTag>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.reflect.Reflect.StructTag_asInterface) class StructTag_static_extension {
    @:keep
    static public function lookup( _tag:StructTag, _key:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } throw "StructTag:reflect.lookup is not yet implemented";
    @:keep
    static public function get( _tag:StructTag, _key:stdgo.GoString):stdgo.GoString throw "StructTag:reflect.get is not yet implemented";
}
