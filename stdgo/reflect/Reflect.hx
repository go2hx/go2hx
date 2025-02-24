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
final unsafePointer = stdgo._internal.reflect.Reflect_unsafepointer.unsafePointer;
final ptr : Kind = stdgo._internal.reflect.Reflect_ptr.ptr;
final recvDir : ChanDir = stdgo._internal.reflect.Reflect_recvdir.recvDir;
final sendDir = stdgo._internal.reflect.Reflect_senddir.sendDir;
final bothDir : ChanDir = stdgo._internal.reflect.Reflect_bothdir.bothDir;
final selectSend = stdgo._internal.reflect.Reflect_selectsend.selectSend;
final selectRecv = stdgo._internal.reflect.Reflect_selectrecv.selectRecv;
final selectDefault = stdgo._internal.reflect.Reflect_selectdefault.selectDefault;
var callGC(get, set) : stdgo.Pointer<Bool>;
private function get_callGC():stdgo.Pointer<Bool> return stdgo._internal.reflect.Reflect_callgc.callGC;
private function set_callGC(v:stdgo.Pointer<Bool>):stdgo.Pointer<Bool> {
        stdgo._internal.reflect.Reflect_callgc.callGC = v;
        return v;
    }
var gCBits(get, set) : stdgo.AnyInterface -> Array<std.UInt>;
private function get_gCBits():stdgo.AnyInterface -> Array<std.UInt> return _0 -> stdgo._internal.reflect.Reflect_gcbits.gCBits(_0);
private function set_gCBits(v:stdgo.AnyInterface -> Array<std.UInt>):stdgo.AnyInterface -> Array<std.UInt> {
        stdgo._internal.reflect.Reflect_gcbits.gCBits = v;
        return v;
    }
var methodValueCallCodePtr(get, set) : () -> stdgo.GoUIntptr;
private function get_methodValueCallCodePtr():() -> stdgo.GoUIntptr return () -> stdgo._internal.reflect.Reflect_methodvaluecallcodeptr.methodValueCallCodePtr();
private function set_methodValueCallCodePtr(v:() -> stdgo.GoUIntptr):() -> stdgo.GoUIntptr {
        stdgo._internal.reflect.Reflect_methodvaluecallcodeptr.methodValueCallCodePtr = v;
        return v;
    }
@:dox(hide) class T_pinUnexpMeth_static_extension {

}
@:interface @:dox(hide) @:forward abstract T_pinUnexpMeth(stdgo._internal.reflect.Reflect_t_pinunexpmeth.T_pinUnexpMeth) from stdgo._internal.reflect.Reflect_t_pinunexpmeth.T_pinUnexpMeth to stdgo._internal.reflect.Reflect_t_pinunexpmeth.T_pinUnexpMeth {
    @:from
    static function fromHaxeInterface(x:{ }):T_pinUnexpMeth {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_pinUnexpMeth = { __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Type__static_extension {
    static public function out(t:stdgo._internal.reflect.Reflect_type_.Type_, _i:StdTypes.Int):Type_ {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_type__static_extension.Type__static_extension.out(t, _i);
    }
    static public function numOut(t:stdgo._internal.reflect.Reflect_type_.Type_):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_type__static_extension.Type__static_extension.numOut(t);
    }
    static public function numIn(t:stdgo._internal.reflect.Reflect_type_.Type_):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_type__static_extension.Type__static_extension.numIn(t);
    }
    static public function numField(t:stdgo._internal.reflect.Reflect_type_.Type_):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_type__static_extension.Type__static_extension.numField(t);
    }
    static public function len(t:stdgo._internal.reflect.Reflect_type_.Type_):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_type__static_extension.Type__static_extension.len(t);
    }
    static public function key(t:stdgo._internal.reflect.Reflect_type_.Type_):Type_ {
        return stdgo._internal.reflect.Reflect_type__static_extension.Type__static_extension.key(t);
    }
    static public function in_(t:stdgo._internal.reflect.Reflect_type_.Type_, _i:StdTypes.Int):Type_ {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_type__static_extension.Type__static_extension.in_(t, _i);
    }
    static public function fieldByNameFunc(t:stdgo._internal.reflect.Reflect_type_.Type_, _match:String -> Bool):stdgo.Tuple<StructField, Bool> {
        final _match = _match;
        return {
            final obj = stdgo._internal.reflect.Reflect_type__static_extension.Type__static_extension.fieldByNameFunc(t, _match);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function fieldByName(t:stdgo._internal.reflect.Reflect_type_.Type_, _name:String):stdgo.Tuple<StructField, Bool> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.reflect.Reflect_type__static_extension.Type__static_extension.fieldByName(t, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function fieldByIndex(t:stdgo._internal.reflect.Reflect_type_.Type_, _index:Array<StdTypes.Int>):StructField {
        final _index = ([for (i in _index) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return stdgo._internal.reflect.Reflect_type__static_extension.Type__static_extension.fieldByIndex(t, _index);
    }
    static public function field(t:stdgo._internal.reflect.Reflect_type_.Type_, _i:StdTypes.Int):StructField {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_type__static_extension.Type__static_extension.field(t, _i);
    }
    static public function elem(t:stdgo._internal.reflect.Reflect_type_.Type_):Type_ {
        return stdgo._internal.reflect.Reflect_type__static_extension.Type__static_extension.elem(t);
    }
    static public function isVariadic(t:stdgo._internal.reflect.Reflect_type_.Type_):Bool {
        return stdgo._internal.reflect.Reflect_type__static_extension.Type__static_extension.isVariadic(t);
    }
    static public function chanDir(t:stdgo._internal.reflect.Reflect_type_.Type_):ChanDir {
        return stdgo._internal.reflect.Reflect_type__static_extension.Type__static_extension.chanDir(t);
    }
    static public function bits(t:stdgo._internal.reflect.Reflect_type_.Type_):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_type__static_extension.Type__static_extension.bits(t);
    }
    static public function comparable_(t:stdgo._internal.reflect.Reflect_type_.Type_):Bool {
        return stdgo._internal.reflect.Reflect_type__static_extension.Type__static_extension.comparable_(t);
    }
    static public function convertibleTo(t:stdgo._internal.reflect.Reflect_type_.Type_, _u:Type_):Bool {
        return stdgo._internal.reflect.Reflect_type__static_extension.Type__static_extension.convertibleTo(t, _u);
    }
    static public function assignableTo(t:stdgo._internal.reflect.Reflect_type_.Type_, _u:Type_):Bool {
        return stdgo._internal.reflect.Reflect_type__static_extension.Type__static_extension.assignableTo(t, _u);
    }
    static public function implements_(t:stdgo._internal.reflect.Reflect_type_.Type_, _u:Type_):Bool {
        return stdgo._internal.reflect.Reflect_type__static_extension.Type__static_extension.implements_(t, _u);
    }
    static public function kind(t:stdgo._internal.reflect.Reflect_type_.Type_):Kind {
        return stdgo._internal.reflect.Reflect_type__static_extension.Type__static_extension.kind(t);
    }
    static public function string(t:stdgo._internal.reflect.Reflect_type_.Type_):String {
        return stdgo._internal.reflect.Reflect_type__static_extension.Type__static_extension.string(t);
    }
    static public function size(t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo.GoUIntptr {
        return stdgo._internal.reflect.Reflect_type__static_extension.Type__static_extension.size(t);
    }
    static public function pkgPath(t:stdgo._internal.reflect.Reflect_type_.Type_):String {
        return stdgo._internal.reflect.Reflect_type__static_extension.Type__static_extension.pkgPath(t);
    }
    static public function name(t:stdgo._internal.reflect.Reflect_type_.Type_):String {
        return stdgo._internal.reflect.Reflect_type__static_extension.Type__static_extension.name(t);
    }
    static public function numMethod(t:stdgo._internal.reflect.Reflect_type_.Type_):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_type__static_extension.Type__static_extension.numMethod(t);
    }
    static public function methodByName(t:stdgo._internal.reflect.Reflect_type_.Type_, _0:String):stdgo.Tuple<Method, Bool> {
        final _0 = (_0 : stdgo.GoString);
        return {
            final obj = stdgo._internal.reflect.Reflect_type__static_extension.Type__static_extension.methodByName(t, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function method(t:stdgo._internal.reflect.Reflect_type_.Type_, _0:StdTypes.Int):Method {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_type__static_extension.Type__static_extension.method(t, _0);
    }
    static public function fieldAlign(t:stdgo._internal.reflect.Reflect_type_.Type_):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_type__static_extension.Type__static_extension.fieldAlign(t);
    }
    static public function align(t:stdgo._internal.reflect.Reflect_type_.Type_):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_type__static_extension.Type__static_extension.align(t);
    }
}
@:interface @:forward abstract Type_(stdgo._internal.reflect.Reflect_type_.Type_) from stdgo._internal.reflect.Reflect_type_.Type_ to stdgo._internal.reflect.Reflect_type_.Type_ {
    @:from
    static function fromHaxeInterface(x:{ function align():StdTypes.Int; function fieldAlign():StdTypes.Int; function method(_0:StdTypes.Int):Method; function methodByName(_0:String):stdgo.Tuple<Method, Bool>; function numMethod():StdTypes.Int; function name():String; function pkgPath():String; function size():stdgo.GoUIntptr; function string():String; function kind():Kind; function implements_(_u:Type_):Bool; function assignableTo(_u:Type_):Bool; function convertibleTo(_u:Type_):Bool; function comparable_():Bool; function bits():StdTypes.Int; function chanDir():ChanDir; function isVariadic():Bool; function elem():Type_; function field(_i:StdTypes.Int):StructField; function fieldByIndex(_index:Array<StdTypes.Int>):StructField; function fieldByName(_name:String):stdgo.Tuple<StructField, Bool>; function fieldByNameFunc(_match:String -> Bool):stdgo.Tuple<StructField, Bool>; function in_(_i:StdTypes.Int):Type_; function key():Type_; function len():StdTypes.Int; function numField():StdTypes.Int; function numIn():StdTypes.Int; function numOut():StdTypes.Int; function out(_i:StdTypes.Int):Type_; }):Type_ {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Type_ = { align : () -> x.align(), fieldAlign : () -> x.fieldAlign(), method : _0 -> x.method(_0), methodByName : _0 -> x.methodByName(_0), numMethod : () -> x.numMethod(), name : () -> x.name(), pkgPath : () -> x.pkgPath(), size : () -> x.size(), string : () -> x.string(), kind : () -> x.kind(), implements_ : _0 -> x.implements_(_0), assignableTo : _0 -> x.assignableTo(_0), convertibleTo : _0 -> x.convertibleTo(_0), comparable_ : () -> x.comparable_(), bits : () -> x.bits(), chanDir : () -> x.chanDir(), isVariadic : () -> x.isVariadic(), elem : () -> x.elem(), field : _0 -> x.field(_0), fieldByIndex : _0 -> x.fieldByIndex([for (i in _0) i]), fieldByName : _0 -> x.fieldByName(_0), fieldByNameFunc : _0 -> x.fieldByNameFunc(_0 -> _0(_0)), in_ : _0 -> x.in_(_0), key : () -> x.key(), len : () -> x.len(), numField : () -> x.numField(), numIn : () -> x.numIn(), numOut : () -> x.numOut(), out : _0 -> x.out(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.reflect.Reflect.T_abiStep_static_extension) @:dox(hide) abstract T_abiStep(stdgo._internal.reflect.Reflect_t_abistep.T_abiStep) from stdgo._internal.reflect.Reflect_t_abistep.T_abiStep to stdgo._internal.reflect.Reflect_t_abistep.T_abiStep {
    public function new() this = new stdgo._internal.reflect.Reflect_t_abistep.T_abiStep();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.T_abiSeq_static_extension) @:dox(hide) abstract T_abiSeq(stdgo._internal.reflect.Reflect_t_abiseq.T_abiSeq) from stdgo._internal.reflect.Reflect_t_abiseq.T_abiSeq to stdgo._internal.reflect.Reflect_t_abiseq.T_abiSeq {
    public function new() this = new stdgo._internal.reflect.Reflect_t_abiseq.T_abiSeq();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.T_abiDesc_static_extension) @:dox(hide) abstract T_abiDesc(stdgo._internal.reflect.Reflect_t_abidesc.T_abiDesc) from stdgo._internal.reflect.Reflect_t_abidesc.T_abiDesc to stdgo._internal.reflect.Reflect_t_abidesc.T_abiDesc {
    public function new() this = new stdgo._internal.reflect.Reflect_t_abidesc.T_abiDesc();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.T_visit_static_extension) @:dox(hide) abstract T_visit(stdgo._internal.reflect.Reflect_t_visit.T_visit) from stdgo._internal.reflect.Reflect_t_visit.T_visit to stdgo._internal.reflect.Reflect_t_visit.T_visit {
    public function new() this = new stdgo._internal.reflect.Reflect_t_visit.T_visit();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.EmbedWithUnexpMeth_static_extension) abstract EmbedWithUnexpMeth(stdgo._internal.reflect.Reflect_embedwithunexpmeth.EmbedWithUnexpMeth) from stdgo._internal.reflect.Reflect_embedwithunexpmeth.EmbedWithUnexpMeth to stdgo._internal.reflect.Reflect_embedwithunexpmeth.EmbedWithUnexpMeth {
    public function new() this = new stdgo._internal.reflect.Reflect_embedwithunexpmeth.EmbedWithUnexpMeth();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.OtherPkgFields_static_extension) abstract OtherPkgFields(stdgo._internal.reflect.Reflect_otherpkgfields.OtherPkgFields) from stdgo._internal.reflect.Reflect_otherpkgfields.OtherPkgFields to stdgo._internal.reflect.Reflect_otherpkgfields.OtherPkgFields {
    public var otherExported(get, set) : StdTypes.Int;
    function get_otherExported():StdTypes.Int return this.otherExported;
    function set_otherExported(v:StdTypes.Int):StdTypes.Int {
        this.otherExported = (v : stdgo.GoInt);
        return v;
    }
    public function new(?otherExported:StdTypes.Int) this = new stdgo._internal.reflect.Reflect_otherpkgfields.OtherPkgFields((otherExported : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.Buffer_static_extension) abstract Buffer(stdgo._internal.reflect.Reflect_buffer.Buffer) from stdgo._internal.reflect.Reflect_buffer.Buffer to stdgo._internal.reflect.Reflect_buffer.Buffer {
    public function new() this = new stdgo._internal.reflect.Reflect_buffer.Buffer();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.T_makeFuncImpl_static_extension) @:dox(hide) abstract T_makeFuncImpl(stdgo._internal.reflect.Reflect_t_makefuncimpl.T_makeFuncImpl) from stdgo._internal.reflect.Reflect_t_makefuncimpl.T_makeFuncImpl to stdgo._internal.reflect.Reflect_t_makefuncimpl.T_makeFuncImpl {
    public function new() this = new stdgo._internal.reflect.Reflect_t_makefuncimpl.T_makeFuncImpl();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.T_methodValue_static_extension) @:dox(hide) abstract T_methodValue(stdgo._internal.reflect.Reflect_t_methodvalue.T_methodValue) from stdgo._internal.reflect.Reflect_t_methodvalue.T_methodValue to stdgo._internal.reflect.Reflect_t_methodvalue.T_methodValue {
    public function new() this = new stdgo._internal.reflect.Reflect_t_methodvalue.T_methodValue();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.T_makeFuncCtxt_static_extension) @:dox(hide) abstract T_makeFuncCtxt(stdgo._internal.reflect.Reflect_t_makefuncctxt.T_makeFuncCtxt) from stdgo._internal.reflect.Reflect_t_makefuncctxt.T_makeFuncCtxt to stdgo._internal.reflect.Reflect_t_makefuncctxt.T_makeFuncCtxt {
    public function new() this = new stdgo._internal.reflect.Reflect_t_makefuncctxt.T_makeFuncCtxt();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.T_common_static_extension) @:dox(hide) abstract T_common(stdgo._internal.reflect.Reflect_t_common.T_common) from stdgo._internal.reflect.Reflect_t_common.T_common to stdgo._internal.reflect.Reflect_t_common.T_common {
    public var type(get, set) : stdgo._internal.internal.abi.Abi_type_.Type_;
    function get_type():stdgo._internal.internal.abi.Abi_type_.Type_ return this.type;
    function set_type(v:stdgo._internal.internal.abi.Abi_type_.Type_):stdgo._internal.internal.abi.Abi_type_.Type_ {
        this.type = v;
        return v;
    }
    public function new(?type:stdgo._internal.internal.abi.Abi_type_.Type_) this = new stdgo._internal.reflect.Reflect_t_common.T_common(type);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.T_rtype_static_extension) @:dox(hide) abstract T_rtype(stdgo._internal.reflect.Reflect_t_rtype.T_rtype) from stdgo._internal.reflect.Reflect_t_rtype.T_rtype to stdgo._internal.reflect.Reflect_t_rtype.T_rtype {
    public function new() this = new stdgo._internal.reflect.Reflect_t_rtype.T_rtype();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.T_interfaceType_static_extension) @:dox(hide) abstract T_interfaceType(stdgo._internal.reflect.Reflect_t_interfacetype.T_interfaceType) from stdgo._internal.reflect.Reflect_t_interfacetype.T_interfaceType to stdgo._internal.reflect.Reflect_t_interfacetype.T_interfaceType {
    public var interfaceType(get, set) : stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType;
    function get_interfaceType():stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType return this.interfaceType;
    function set_interfaceType(v:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType {
        this.interfaceType = v;
        return v;
    }
    public function new(?interfaceType:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType) this = new stdgo._internal.reflect.Reflect_t_interfacetype.T_interfaceType(interfaceType);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.T_mapType_static_extension) @:dox(hide) abstract T_mapType(stdgo._internal.reflect.Reflect_t_maptype.T_mapType) from stdgo._internal.reflect.Reflect_t_maptype.T_mapType to stdgo._internal.reflect.Reflect_t_maptype.T_mapType {
    public var mapType(get, set) : stdgo._internal.internal.abi.Abi_maptype.MapType;
    function get_mapType():stdgo._internal.internal.abi.Abi_maptype.MapType return this.mapType;
    function set_mapType(v:stdgo._internal.internal.abi.Abi_maptype.MapType):stdgo._internal.internal.abi.Abi_maptype.MapType {
        this.mapType = v;
        return v;
    }
    public function new(?mapType:stdgo._internal.internal.abi.Abi_maptype.MapType) this = new stdgo._internal.reflect.Reflect_t_maptype.T_mapType(mapType);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.T_ptrType_static_extension) @:dox(hide) abstract T_ptrType(stdgo._internal.reflect.Reflect_t_ptrtype.T_ptrType) from stdgo._internal.reflect.Reflect_t_ptrtype.T_ptrType to stdgo._internal.reflect.Reflect_t_ptrtype.T_ptrType {
    public var ptrType(get, set) : stdgo._internal.internal.abi.Abi_ptrtype.PtrType;
    function get_ptrType():stdgo._internal.internal.abi.Abi_ptrtype.PtrType return this.ptrType;
    function set_ptrType(v:stdgo._internal.internal.abi.Abi_ptrtype.PtrType):stdgo._internal.internal.abi.Abi_ptrtype.PtrType {
        this.ptrType = v;
        return v;
    }
    public function new(?ptrType:stdgo._internal.internal.abi.Abi_ptrtype.PtrType) this = new stdgo._internal.reflect.Reflect_t_ptrtype.T_ptrType(ptrType);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.T_sliceType_static_extension) @:dox(hide) abstract T_sliceType(stdgo._internal.reflect.Reflect_t_slicetype.T_sliceType) from stdgo._internal.reflect.Reflect_t_slicetype.T_sliceType to stdgo._internal.reflect.Reflect_t_slicetype.T_sliceType {
    public var sliceType(get, set) : stdgo._internal.internal.abi.Abi_slicetype.SliceType;
    function get_sliceType():stdgo._internal.internal.abi.Abi_slicetype.SliceType return this.sliceType;
    function set_sliceType(v:stdgo._internal.internal.abi.Abi_slicetype.SliceType):stdgo._internal.internal.abi.Abi_slicetype.SliceType {
        this.sliceType = v;
        return v;
    }
    public function new(?sliceType:stdgo._internal.internal.abi.Abi_slicetype.SliceType) this = new stdgo._internal.reflect.Reflect_t_slicetype.T_sliceType(sliceType);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.T_structType_static_extension) @:dox(hide) abstract T_structType(stdgo._internal.reflect.Reflect_t_structtype.T_structType) from stdgo._internal.reflect.Reflect_t_structtype.T_structType to stdgo._internal.reflect.Reflect_t_structtype.T_structType {
    public var structType(get, set) : stdgo._internal.internal.abi.Abi_structtype.StructType;
    function get_structType():stdgo._internal.internal.abi.Abi_structtype.StructType return this.structType;
    function set_structType(v:stdgo._internal.internal.abi.Abi_structtype.StructType):stdgo._internal.internal.abi.Abi_structtype.StructType {
        this.structType = v;
        return v;
    }
    public function new(?structType:stdgo._internal.internal.abi.Abi_structtype.StructType) this = new stdgo._internal.reflect.Reflect_t_structtype.T_structType(structType);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.Method_static_extension) abstract Method(stdgo._internal.reflect.Reflect_method.Method) from stdgo._internal.reflect.Reflect_method.Method to stdgo._internal.reflect.Reflect_method.Method {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var pkgPath(get, set) : String;
    function get_pkgPath():String return this.pkgPath;
    function set_pkgPath(v:String):String {
        this.pkgPath = (v : stdgo.GoString);
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
        this.index = (v : stdgo.GoInt);
        return v;
    }
    public function new(?name:String, ?pkgPath:String, ?type:Type_, ?func:Value, ?index:StdTypes.Int) this = new stdgo._internal.reflect.Reflect_method.Method((name : stdgo.GoString), (pkgPath : stdgo.GoString), type, func, (index : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.StructField_static_extension) abstract StructField(stdgo._internal.reflect.Reflect_structfield.StructField) from stdgo._internal.reflect.Reflect_structfield.StructField to stdgo._internal.reflect.Reflect_structfield.StructField {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var pkgPath(get, set) : String;
    function get_pkgPath():String return this.pkgPath;
    function set_pkgPath(v:String):String {
        this.pkgPath = (v : stdgo.GoString);
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
        this.offset = (v : stdgo.GoUIntptr);
        return v;
    }
    public var index(get, set) : Array<StdTypes.Int>;
    function get_index():Array<StdTypes.Int> return [for (i in this.index) i];
    function set_index(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.index = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var anonymous(get, set) : Bool;
    function get_anonymous():Bool return this.anonymous;
    function set_anonymous(v:Bool):Bool {
        this.anonymous = v;
        return v;
    }
    public function new(?name:String, ?pkgPath:String, ?type:Type_, ?tag:StructTag, ?offset:stdgo.GoUIntptr, ?index:Array<StdTypes.Int>, ?anonymous:Bool) this = new stdgo._internal.reflect.Reflect_structfield.StructField((name : stdgo.GoString), (pkgPath : stdgo.GoString), type, tag, (offset : stdgo.GoUIntptr), ([for (i in index) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), anonymous);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.T_fieldScan_static_extension) @:dox(hide) abstract T_fieldScan(stdgo._internal.reflect.Reflect_t_fieldscan.T_fieldScan) from stdgo._internal.reflect.Reflect_t_fieldscan.T_fieldScan to stdgo._internal.reflect.Reflect_t_fieldscan.T_fieldScan {
    public function new() this = new stdgo._internal.reflect.Reflect_t_fieldscan.T_fieldScan();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.T_cacheKey_static_extension) @:dox(hide) abstract T_cacheKey(stdgo._internal.reflect.Reflect_t_cachekey.T_cacheKey) from stdgo._internal.reflect.Reflect_t_cachekey.T_cacheKey to stdgo._internal.reflect.Reflect_t_cachekey.T_cacheKey {
    public function new() this = new stdgo._internal.reflect.Reflect_t_cachekey.T_cacheKey();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.T_structTypeUncommon_static_extension) @:dox(hide) abstract T_structTypeUncommon(stdgo._internal.reflect.Reflect_t_structtypeuncommon.T_structTypeUncommon) from stdgo._internal.reflect.Reflect_t_structtypeuncommon.T_structTypeUncommon to stdgo._internal.reflect.Reflect_t_structtypeuncommon.T_structTypeUncommon {
    public function new() this = new stdgo._internal.reflect.Reflect_t_structtypeuncommon.T_structTypeUncommon();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.T_layoutKey_static_extension) @:dox(hide) abstract T_layoutKey(stdgo._internal.reflect.Reflect_t_layoutkey.T_layoutKey) from stdgo._internal.reflect.Reflect_t_layoutkey.T_layoutKey to stdgo._internal.reflect.Reflect_t_layoutkey.T_layoutKey {
    public function new() this = new stdgo._internal.reflect.Reflect_t_layoutkey.T_layoutKey();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.T_layoutType_static_extension) @:dox(hide) abstract T_layoutType(stdgo._internal.reflect.Reflect_t_layouttype.T_layoutType) from stdgo._internal.reflect.Reflect_t_layouttype.T_layoutType to stdgo._internal.reflect.Reflect_t_layouttype.T_layoutType {
    public function new() this = new stdgo._internal.reflect.Reflect_t_layouttype.T_layoutType();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.T_bitVector_static_extension) @:dox(hide) abstract T_bitVector(stdgo._internal.reflect.Reflect_t_bitvector.T_bitVector) from stdgo._internal.reflect.Reflect_t_bitvector.T_bitVector to stdgo._internal.reflect.Reflect_t_bitvector.T_bitVector {
    public function new() this = new stdgo._internal.reflect.Reflect_t_bitvector.T_bitVector();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.Value_static_extension) abstract Value(stdgo._internal.reflect.Reflect_value.Value) from stdgo._internal.reflect.Reflect_value.Value to stdgo._internal.reflect.Reflect_value.Value {
    public function new(?value:stdgo.AnyInterface, ?underlyingValue:Dynamic, ?underlyingIndex:StdTypes.Int, ?underlyingKey:Dynamic, ?canAddrBool:Bool, ?notSetBool:Bool, ?string) this = new stdgo._internal.reflect.Reflect_value.Value((value : stdgo.AnyInterface), underlyingValue, (underlyingIndex : stdgo.GoInt), underlyingKey, canAddrBool, notSetBool, string);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.ValueError_static_extension) abstract ValueError(stdgo._internal.reflect.Reflect_valueerror.ValueError) from stdgo._internal.reflect.Reflect_valueerror.ValueError to stdgo._internal.reflect.Reflect_valueerror.ValueError {
    public var method(get, set) : String;
    function get_method():String return this.method;
    function set_method(v:String):String {
        this.method = (v : stdgo.GoString);
        return v;
    }
    public var kind(get, set) : Kind;
    function get_kind():Kind return this.kind;
    function set_kind(v:Kind):Kind {
        this.kind = v;
        return v;
    }
    public function new(?method:String, ?kind:Kind, ?toString) this = new stdgo._internal.reflect.Reflect_valueerror.ValueError((method : stdgo.GoString), kind, toString);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.T_emptyInterface_static_extension) @:dox(hide) abstract T_emptyInterface(stdgo._internal.reflect.Reflect_t_emptyinterface.T_emptyInterface) from stdgo._internal.reflect.Reflect_t_emptyinterface.T_emptyInterface to stdgo._internal.reflect.Reflect_t_emptyinterface.T_emptyInterface {
    public function new() this = new stdgo._internal.reflect.Reflect_t_emptyinterface.T_emptyInterface();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.T_nonEmptyInterface_static_extension) @:dox(hide) abstract T_nonEmptyInterface(stdgo._internal.reflect.Reflect_t_nonemptyinterface.T_nonEmptyInterface) from stdgo._internal.reflect.Reflect_t_nonemptyinterface.T_nonEmptyInterface to stdgo._internal.reflect.Reflect_t_nonemptyinterface.T_nonEmptyInterface {
    public function new() this = new stdgo._internal.reflect.Reflect_t_nonemptyinterface.T_nonEmptyInterface();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.T_hiter_static_extension) @:dox(hide) abstract T_hiter(stdgo._internal.reflect.Reflect_t_hiter.T_hiter) from stdgo._internal.reflect.Reflect_t_hiter.T_hiter to stdgo._internal.reflect.Reflect_t_hiter.T_hiter {
    public var b(get, set) : std.UInt;
    function get_b():std.UInt return this.b;
    function set_b(v:std.UInt):std.UInt {
        this.b = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?b:std.UInt) this = new stdgo._internal.reflect.Reflect_t_hiter.T_hiter((b : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.MapIter_static_extension) abstract MapIter(stdgo._internal.reflect.Reflect_mapiter.MapIter) from stdgo._internal.reflect.Reflect_mapiter.MapIter to stdgo._internal.reflect.Reflect_mapiter.MapIter {
    public function new(?map:haxe.Constraints<Dynamic, Dynamic>, ?keys:Array<Dynamic>, ?values:Array<Dynamic>, ?t:stdgo._internal.internal.reflect.Reflect._Type, ?index:Int) this = new stdgo._internal.reflect.Reflect_mapiter.MapIter(map, keys, values, t, index);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.StringHeader_static_extension) abstract StringHeader(stdgo._internal.reflect.Reflect_stringheader.StringHeader) from stdgo._internal.reflect.Reflect_stringheader.StringHeader to stdgo._internal.reflect.Reflect_stringheader.StringHeader {
    public var data(get, set) : stdgo.GoUIntptr;
    function get_data():stdgo.GoUIntptr return this.data;
    function set_data(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.data = (v : stdgo.GoUIntptr);
        return v;
    }
    public var len(get, set) : StdTypes.Int;
    function get_len():StdTypes.Int return this.len;
    function set_len(v:StdTypes.Int):StdTypes.Int {
        this.len = (v : stdgo.GoInt);
        return v;
    }
    public function new(?data:stdgo.GoUIntptr, ?len:StdTypes.Int) this = new stdgo._internal.reflect.Reflect_stringheader.StringHeader((data : stdgo.GoUIntptr), (len : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.SliceHeader_static_extension) abstract SliceHeader(stdgo._internal.reflect.Reflect_sliceheader.SliceHeader) from stdgo._internal.reflect.Reflect_sliceheader.SliceHeader to stdgo._internal.reflect.Reflect_sliceheader.SliceHeader {
    public var data(get, set) : stdgo.GoUIntptr;
    function get_data():stdgo.GoUIntptr return this.data;
    function set_data(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.data = (v : stdgo.GoUIntptr);
        return v;
    }
    public var len(get, set) : StdTypes.Int;
    function get_len():StdTypes.Int return this.len;
    function set_len(v:StdTypes.Int):StdTypes.Int {
        this.len = (v : stdgo.GoInt);
        return v;
    }
    public var cap(get, set) : StdTypes.Int;
    function get_cap():StdTypes.Int return this.cap;
    function set_cap(v:StdTypes.Int):StdTypes.Int {
        this.cap = (v : stdgo.GoInt);
        return v;
    }
    public function new(?data:stdgo.GoUIntptr, ?len:StdTypes.Int, ?cap:StdTypes.Int) this = new stdgo._internal.reflect.Reflect_sliceheader.SliceHeader((data : stdgo.GoUIntptr), (len : stdgo.GoInt), (cap : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.T_runtimeSelect_static_extension) @:dox(hide) abstract T_runtimeSelect(stdgo._internal.reflect.Reflect_t_runtimeselect.T_runtimeSelect) from stdgo._internal.reflect.Reflect_t_runtimeselect.T_runtimeSelect to stdgo._internal.reflect.Reflect_t_runtimeselect.T_runtimeSelect {
    public function new() this = new stdgo._internal.reflect.Reflect_t_runtimeselect.T_runtimeSelect();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.SelectCase_static_extension) abstract SelectCase(stdgo._internal.reflect.Reflect_selectcase.SelectCase) from stdgo._internal.reflect.Reflect_selectcase.SelectCase to stdgo._internal.reflect.Reflect_selectcase.SelectCase {
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
    public function new(?dir:SelectDir, ?chan:Value, ?send:Value) this = new stdgo._internal.reflect.Reflect_selectcase.SelectCase(dir, chan, send);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.reflect.Reflect.T_visibleFieldsWalker_static_extension) @:dox(hide) abstract T_visibleFieldsWalker(stdgo._internal.reflect.Reflect_t_visiblefieldswalker.T_visibleFieldsWalker) from stdgo._internal.reflect.Reflect_t_visiblefieldswalker.T_visibleFieldsWalker to stdgo._internal.reflect.Reflect_t_visiblefieldswalker.T_visibleFieldsWalker {
    public function new() this = new stdgo._internal.reflect.Reflect_t_visiblefieldswalker.T_visibleFieldsWalker();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_abiStepKind = stdgo._internal.reflect.Reflect_t_abistepkind.T_abiStepKind;
typedef Kind = stdgo._internal.reflect.Reflect_kind.Kind;
@:dox(hide) typedef T_uncommonType = stdgo._internal.reflect.Reflect_t_uncommontype.T_uncommonType;
@:dox(hide) typedef T_aNameOff = stdgo._internal.reflect.Reflect_t_anameoff.T_aNameOff;
@:dox(hide) typedef T_aTypeOff = stdgo._internal.reflect.Reflect_t_atypeoff.T_aTypeOff;
@:dox(hide) typedef T_aTextOff = stdgo._internal.reflect.Reflect_t_atextoff.T_aTextOff;
typedef ChanDir = stdgo._internal.reflect.Reflect_chandir.ChanDir;
@:dox(hide) typedef T_arrayType = stdgo._internal.reflect.Reflect_t_arraytype.T_arrayType;
@:dox(hide) typedef T_chanType = stdgo._internal.reflect.Reflect_t_chantype.T_chanType;
@:dox(hide) typedef T_funcType = stdgo._internal.reflect.Reflect_t_functype.T_funcType;
@:dox(hide) typedef T_structField = stdgo._internal.reflect.Reflect_t_structfield.T_structField;
typedef StructTag = stdgo._internal.reflect.Reflect_structtag.StructTag;
@:dox(hide) typedef T_flag = stdgo._internal.reflect.Reflect_t_flag.T_flag;
typedef SelectDir = stdgo._internal.reflect.Reflect_selectdir.SelectDir;
@:dox(hide) typedef T_abiStepPointer = stdgo._internal.reflect.Reflect_t_abisteppointer.T_abiStepPointer;
@:dox(hide) class T_abiStep_static_extension {

}
@:dox(hide) typedef T_abiSeqPointer = stdgo._internal.reflect.Reflect_t_abiseqpointer.T_abiSeqPointer;
@:dox(hide) class T_abiSeq_static_extension {

}
@:dox(hide) typedef T_abiDescPointer = stdgo._internal.reflect.Reflect_t_abidescpointer.T_abiDescPointer;
@:dox(hide) class T_abiDesc_static_extension {

}
@:dox(hide) typedef T_visitPointer = stdgo._internal.reflect.Reflect_t_visitpointer.T_visitPointer;
@:dox(hide) class T_visit_static_extension {

}
typedef EmbedWithUnexpMethPointer = stdgo._internal.reflect.Reflect_embedwithunexpmethpointer.EmbedWithUnexpMethPointer;
class EmbedWithUnexpMeth_static_extension {

}
typedef OtherPkgFieldsPointer = stdgo._internal.reflect.Reflect_otherpkgfieldspointer.OtherPkgFieldsPointer;
class OtherPkgFields_static_extension {

}
typedef BufferPointer = stdgo._internal.reflect.Reflect_bufferpointer.BufferPointer;
class Buffer_static_extension {

}
@:dox(hide) typedef T_makeFuncImplPointer = stdgo._internal.reflect.Reflect_t_makefuncimplpointer.T_makeFuncImplPointer;
@:dox(hide) class T_makeFuncImpl_static_extension {

}
@:dox(hide) typedef T_methodValuePointer = stdgo._internal.reflect.Reflect_t_methodvaluepointer.T_methodValuePointer;
@:dox(hide) class T_methodValue_static_extension {

}
@:dox(hide) typedef T_makeFuncCtxtPointer = stdgo._internal.reflect.Reflect_t_makefuncctxtpointer.T_makeFuncCtxtPointer;
@:dox(hide) class T_makeFuncCtxt_static_extension {

}
@:dox(hide) typedef T_commonPointer = stdgo._internal.reflect.Reflect_t_commonpointer.T_commonPointer;
@:dox(hide) class T_common_static_extension {
    public static function uncommon(__self__:stdgo._internal.reflect.Reflect_t_common.T_common):stdgo._internal.internal.abi.Abi_uncommontype.UncommonType {
        return stdgo._internal.reflect.Reflect_t_common_static_extension.T_common_static_extension.uncommon(__self__);
    }
    public static function structType(__self__:stdgo._internal.reflect.Reflect_t_common.T_common):stdgo._internal.internal.abi.Abi_structtype.StructType {
        return stdgo._internal.reflect.Reflect_t_common_static_extension.T_common_static_extension.structType(__self__);
    }
    public static function size(__self__:stdgo._internal.reflect.Reflect_t_common.T_common):stdgo.GoUIntptr {
        return stdgo._internal.reflect.Reflect_t_common_static_extension.T_common_static_extension.size(__self__);
    }
    public static function pointers(__self__:stdgo._internal.reflect.Reflect_t_common.T_common):Bool {
        return stdgo._internal.reflect.Reflect_t_common_static_extension.T_common_static_extension.pointers(__self__);
    }
    public static function numMethod(__self__:stdgo._internal.reflect.Reflect_t_common.T_common):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_t_common_static_extension.T_common_static_extension.numMethod(__self__);
    }
    public static function mapType(__self__:stdgo._internal.reflect.Reflect_t_common.T_common):stdgo._internal.internal.abi.Abi_maptype.MapType {
        return stdgo._internal.reflect.Reflect_t_common_static_extension.T_common_static_extension.mapType(__self__);
    }
    public static function len(__self__:stdgo._internal.reflect.Reflect_t_common.T_common):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_t_common_static_extension.T_common_static_extension.len(__self__);
    }
    public static function kind(__self__:stdgo._internal.reflect.Reflect_t_common.T_common):stdgo._internal.internal.abi.Abi_kind.Kind {
        return stdgo._internal.reflect.Reflect_t_common_static_extension.T_common_static_extension.kind(__self__);
    }
    public static function key(__self__:stdgo._internal.reflect.Reflect_t_common.T_common):stdgo._internal.internal.abi.Abi_type_.Type_ {
        return stdgo._internal.reflect.Reflect_t_common_static_extension.T_common_static_extension.key(__self__);
    }
    public static function isDirectIface(__self__:stdgo._internal.reflect.Reflect_t_common.T_common):Bool {
        return stdgo._internal.reflect.Reflect_t_common_static_extension.T_common_static_extension.isDirectIface(__self__);
    }
    public static function interfaceType(__self__:stdgo._internal.reflect.Reflect_t_common.T_common):stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType {
        return stdgo._internal.reflect.Reflect_t_common_static_extension.T_common_static_extension.interfaceType(__self__);
    }
    public static function ifaceIndir(__self__:stdgo._internal.reflect.Reflect_t_common.T_common):Bool {
        return stdgo._internal.reflect.Reflect_t_common_static_extension.T_common_static_extension.ifaceIndir(__self__);
    }
    public static function hasName(__self__:stdgo._internal.reflect.Reflect_t_common.T_common):Bool {
        return stdgo._internal.reflect.Reflect_t_common_static_extension.T_common_static_extension.hasName(__self__);
    }
    public static function gcSlice(__self__:stdgo._internal.reflect.Reflect_t_common.T_common, _0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):Array<std.UInt> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUIntptr);
        return [for (i in stdgo._internal.reflect.Reflect_t_common_static_extension.T_common_static_extension.gcSlice(__self__, _0, _1)) i];
    }
    public static function funcType(__self__:stdgo._internal.reflect.Reflect_t_common.T_common):stdgo._internal.internal.abi.Abi_functype.FuncType {
        return stdgo._internal.reflect.Reflect_t_common_static_extension.T_common_static_extension.funcType(__self__);
    }
    public static function fieldAlign(__self__:stdgo._internal.reflect.Reflect_t_common.T_common):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_t_common_static_extension.T_common_static_extension.fieldAlign(__self__);
    }
    public static function exportedMethods(__self__:stdgo._internal.reflect.Reflect_t_common.T_common):Array<stdgo._internal.internal.abi.Abi_method.Method> {
        return [for (i in stdgo._internal.reflect.Reflect_t_common_static_extension.T_common_static_extension.exportedMethods(__self__)) i];
    }
    public static function elem(__self__:stdgo._internal.reflect.Reflect_t_common.T_common):stdgo._internal.internal.abi.Abi_type_.Type_ {
        return stdgo._internal.reflect.Reflect_t_common_static_extension.T_common_static_extension.elem(__self__);
    }
    public static function common(__self__:stdgo._internal.reflect.Reflect_t_common.T_common):stdgo._internal.internal.abi.Abi_type_.Type_ {
        return stdgo._internal.reflect.Reflect_t_common_static_extension.T_common_static_extension.common(__self__);
    }
    public static function chanDir(__self__:stdgo._internal.reflect.Reflect_t_common.T_common):stdgo._internal.internal.abi.Abi_chandir.ChanDir {
        return stdgo._internal.reflect.Reflect_t_common_static_extension.T_common_static_extension.chanDir(__self__);
    }
    public static function arrayType(__self__:stdgo._internal.reflect.Reflect_t_common.T_common):stdgo._internal.internal.abi.Abi_arraytype.ArrayType {
        return stdgo._internal.reflect.Reflect_t_common_static_extension.T_common_static_extension.arrayType(__self__);
    }
    public static function align(__self__:stdgo._internal.reflect.Reflect_t_common.T_common):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_t_common_static_extension.T_common_static_extension.align(__self__);
    }
}
@:dox(hide) typedef T_rtypePointer = stdgo._internal.reflect.Reflect_t_rtypepointer.T_rtypePointer;
@:dox(hide) class T_rtype_static_extension {
    static public function comparable_(_t:T_rtype):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_t_rtype_static_extension.T_rtype_static_extension.comparable_(_t);
    }
    static public function convertibleTo(_t:T_rtype, _u:Type_):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_t_rtype_static_extension.T_rtype_static_extension.convertibleTo(_t, _u);
    }
    static public function assignableTo(_t:T_rtype, _u:Type_):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_t_rtype_static_extension.T_rtype_static_extension.assignableTo(_t, _u);
    }
    static public function implements_(_t:T_rtype, _u:Type_):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_t_rtype_static_extension.T_rtype_static_extension.implements_(_t, _u);
    }
    static public function isVariadic(_t:T_rtype):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_t_rtype_static_extension.T_rtype_static_extension.isVariadic(_t);
    }
    static public function out(_t:T_rtype, _i:StdTypes.Int):Type_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_rtype.T_rtype>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_t_rtype_static_extension.T_rtype_static_extension.out(_t, _i);
    }
    static public function numOut(_t:T_rtype):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_t_rtype_static_extension.T_rtype_static_extension.numOut(_t);
    }
    static public function numIn(_t:T_rtype):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_t_rtype_static_extension.T_rtype_static_extension.numIn(_t);
    }
    static public function in_(_t:T_rtype, _i:StdTypes.Int):Type_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_rtype.T_rtype>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_t_rtype_static_extension.T_rtype_static_extension.in_(_t, _i);
    }
    static public function numField(_t:T_rtype):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_t_rtype_static_extension.T_rtype_static_extension.numField(_t);
    }
    static public function len(_t:T_rtype):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_t_rtype_static_extension.T_rtype_static_extension.len(_t);
    }
    static public function key(_t:T_rtype):Type_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_t_rtype_static_extension.T_rtype_static_extension.key(_t);
    }
    static public function fieldByNameFunc(_t:T_rtype, _match:String -> Bool):stdgo.Tuple<StructField, Bool> {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_rtype.T_rtype>);
        final _match = _match;
        return {
            final obj = stdgo._internal.reflect.Reflect_t_rtype_static_extension.T_rtype_static_extension.fieldByNameFunc(_t, _match);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function fieldByName(_t:T_rtype, _name:String):stdgo.Tuple<StructField, Bool> {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_rtype.T_rtype>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.reflect.Reflect_t_rtype_static_extension.T_rtype_static_extension.fieldByName(_t, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function fieldByIndex(_t:T_rtype, _index:Array<StdTypes.Int>):StructField {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_rtype.T_rtype>);
        final _index = ([for (i in _index) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return stdgo._internal.reflect.Reflect_t_rtype_static_extension.T_rtype_static_extension.fieldByIndex(_t, _index);
    }
    static public function field(_t:T_rtype, _i:StdTypes.Int):StructField {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_rtype.T_rtype>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_t_rtype_static_extension.T_rtype_static_extension.field(_t, _i);
    }
    static public function elem(_t:T_rtype):Type_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_t_rtype_static_extension.T_rtype_static_extension.elem(_t);
    }
    static public function chanDir(_t:T_rtype):ChanDir {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_t_rtype_static_extension.T_rtype_static_extension.chanDir(_t);
    }
    static public function name(_t:T_rtype):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_t_rtype_static_extension.T_rtype_static_extension.name(_t);
    }
    static public function pkgPath(_t:T_rtype):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_t_rtype_static_extension.T_rtype_static_extension.pkgPath(_t);
    }
    static public function methodByName(_t:T_rtype, _name:String):stdgo.Tuple<Method, Bool> {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_rtype.T_rtype>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.reflect.Reflect_t_rtype_static_extension.T_rtype_static_extension.methodByName(_t, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function method(_t:T_rtype, _i:StdTypes.Int):Method {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_rtype.T_rtype>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_t_rtype_static_extension.T_rtype_static_extension.method(_t, _i);
    }
    static public function numMethod(_t:T_rtype):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_t_rtype_static_extension.T_rtype_static_extension.numMethod(_t);
    }
    static public function kind(_t:T_rtype):Kind {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_t_rtype_static_extension.T_rtype_static_extension.kind(_t);
    }
    static public function fieldAlign(_t:T_rtype):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_t_rtype_static_extension.T_rtype_static_extension.fieldAlign(_t);
    }
    static public function align(_t:T_rtype):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_t_rtype_static_extension.T_rtype_static_extension.align(_t);
    }
    static public function bits(_t:T_rtype):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_t_rtype_static_extension.T_rtype_static_extension.bits(_t);
    }
    static public function size(_t:T_rtype):stdgo.GoUIntptr {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_t_rtype_static_extension.T_rtype_static_extension.size(_t);
    }
    static public function string(_t:T_rtype):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_t_rtype_static_extension.T_rtype_static_extension.string(_t);
    }
}
@:dox(hide) typedef T_interfaceTypePointer = stdgo._internal.reflect.Reflect_t_interfacetypepointer.T_interfaceTypePointer;
@:dox(hide) class T_interfaceType_static_extension {
    static public function methodByName(_t:T_interfaceType, _name:String):stdgo.Tuple<Method, Bool> {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_interfacetype.T_interfaceType>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.reflect.Reflect_t_interfacetype_static_extension.T_interfaceType_static_extension.methodByName(_t, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function numMethod(_t:T_interfaceType):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_interfacetype.T_interfaceType>);
        return stdgo._internal.reflect.Reflect_t_interfacetype_static_extension.T_interfaceType_static_extension.numMethod(_t);
    }
    static public function method(_t:T_interfaceType, _i:StdTypes.Int):Method {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_interfacetype.T_interfaceType>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_t_interfacetype_static_extension.T_interfaceType_static_extension.method(_t, _i);
    }
    public static function uncommon(__self__:stdgo._internal.reflect.Reflect_t_interfacetype.T_interfaceType):stdgo._internal.internal.abi.Abi_uncommontype.UncommonType {
        return stdgo._internal.reflect.Reflect_t_interfacetype_static_extension.T_interfaceType_static_extension.uncommon(__self__);
    }
    public static function structType(__self__:stdgo._internal.reflect.Reflect_t_interfacetype.T_interfaceType):stdgo._internal.internal.abi.Abi_structtype.StructType {
        return stdgo._internal.reflect.Reflect_t_interfacetype_static_extension.T_interfaceType_static_extension.structType(__self__);
    }
    public static function size(__self__:stdgo._internal.reflect.Reflect_t_interfacetype.T_interfaceType):stdgo.GoUIntptr {
        return stdgo._internal.reflect.Reflect_t_interfacetype_static_extension.T_interfaceType_static_extension.size(__self__);
    }
    public static function pointers(__self__:stdgo._internal.reflect.Reflect_t_interfacetype.T_interfaceType):Bool {
        return stdgo._internal.reflect.Reflect_t_interfacetype_static_extension.T_interfaceType_static_extension.pointers(__self__);
    }
    public static function mapType(__self__:stdgo._internal.reflect.Reflect_t_interfacetype.T_interfaceType):stdgo._internal.internal.abi.Abi_maptype.MapType {
        return stdgo._internal.reflect.Reflect_t_interfacetype_static_extension.T_interfaceType_static_extension.mapType(__self__);
    }
    public static function len(__self__:stdgo._internal.reflect.Reflect_t_interfacetype.T_interfaceType):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_t_interfacetype_static_extension.T_interfaceType_static_extension.len(__self__);
    }
    public static function kind(__self__:stdgo._internal.reflect.Reflect_t_interfacetype.T_interfaceType):stdgo._internal.internal.abi.Abi_kind.Kind {
        return stdgo._internal.reflect.Reflect_t_interfacetype_static_extension.T_interfaceType_static_extension.kind(__self__);
    }
    public static function key(__self__:stdgo._internal.reflect.Reflect_t_interfacetype.T_interfaceType):stdgo._internal.internal.abi.Abi_type_.Type_ {
        return stdgo._internal.reflect.Reflect_t_interfacetype_static_extension.T_interfaceType_static_extension.key(__self__);
    }
    public static function isDirectIface(__self__:stdgo._internal.reflect.Reflect_t_interfacetype.T_interfaceType):Bool {
        return stdgo._internal.reflect.Reflect_t_interfacetype_static_extension.T_interfaceType_static_extension.isDirectIface(__self__);
    }
    public static function ifaceIndir(__self__:stdgo._internal.reflect.Reflect_t_interfacetype.T_interfaceType):Bool {
        return stdgo._internal.reflect.Reflect_t_interfacetype_static_extension.T_interfaceType_static_extension.ifaceIndir(__self__);
    }
    public static function hasName(__self__:stdgo._internal.reflect.Reflect_t_interfacetype.T_interfaceType):Bool {
        return stdgo._internal.reflect.Reflect_t_interfacetype_static_extension.T_interfaceType_static_extension.hasName(__self__);
    }
    public static function gcSlice(__self__:stdgo._internal.reflect.Reflect_t_interfacetype.T_interfaceType, _0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):Array<std.UInt> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUIntptr);
        return [for (i in stdgo._internal.reflect.Reflect_t_interfacetype_static_extension.T_interfaceType_static_extension.gcSlice(__self__, _0, _1)) i];
    }
    public static function funcType(__self__:stdgo._internal.reflect.Reflect_t_interfacetype.T_interfaceType):stdgo._internal.internal.abi.Abi_functype.FuncType {
        return stdgo._internal.reflect.Reflect_t_interfacetype_static_extension.T_interfaceType_static_extension.funcType(__self__);
    }
    public static function fieldAlign(__self__:stdgo._internal.reflect.Reflect_t_interfacetype.T_interfaceType):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_t_interfacetype_static_extension.T_interfaceType_static_extension.fieldAlign(__self__);
    }
    public static function exportedMethods(__self__:stdgo._internal.reflect.Reflect_t_interfacetype.T_interfaceType):Array<stdgo._internal.internal.abi.Abi_method.Method> {
        return [for (i in stdgo._internal.reflect.Reflect_t_interfacetype_static_extension.T_interfaceType_static_extension.exportedMethods(__self__)) i];
    }
    public static function elem(__self__:stdgo._internal.reflect.Reflect_t_interfacetype.T_interfaceType):stdgo._internal.internal.abi.Abi_type_.Type_ {
        return stdgo._internal.reflect.Reflect_t_interfacetype_static_extension.T_interfaceType_static_extension.elem(__self__);
    }
    public static function common(__self__:stdgo._internal.reflect.Reflect_t_interfacetype.T_interfaceType):stdgo._internal.internal.abi.Abi_type_.Type_ {
        return stdgo._internal.reflect.Reflect_t_interfacetype_static_extension.T_interfaceType_static_extension.common(__self__);
    }
    public static function chanDir(__self__:stdgo._internal.reflect.Reflect_t_interfacetype.T_interfaceType):stdgo._internal.internal.abi.Abi_chandir.ChanDir {
        return stdgo._internal.reflect.Reflect_t_interfacetype_static_extension.T_interfaceType_static_extension.chanDir(__self__);
    }
    public static function arrayType(__self__:stdgo._internal.reflect.Reflect_t_interfacetype.T_interfaceType):stdgo._internal.internal.abi.Abi_arraytype.ArrayType {
        return stdgo._internal.reflect.Reflect_t_interfacetype_static_extension.T_interfaceType_static_extension.arrayType(__self__);
    }
    public static function align(__self__:stdgo._internal.reflect.Reflect_t_interfacetype.T_interfaceType):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_t_interfacetype_static_extension.T_interfaceType_static_extension.align(__self__);
    }
}
@:dox(hide) typedef T_mapTypePointer = stdgo._internal.reflect.Reflect_t_maptypepointer.T_mapTypePointer;
@:dox(hide) class T_mapType_static_extension {
    public static function uncommon(__self__:stdgo._internal.reflect.Reflect_t_maptype.T_mapType):stdgo._internal.internal.abi.Abi_uncommontype.UncommonType {
        return stdgo._internal.reflect.Reflect_t_maptype_static_extension.T_mapType_static_extension.uncommon(__self__);
    }
    public static function structType(__self__:stdgo._internal.reflect.Reflect_t_maptype.T_mapType):stdgo._internal.internal.abi.Abi_structtype.StructType {
        return stdgo._internal.reflect.Reflect_t_maptype_static_extension.T_mapType_static_extension.structType(__self__);
    }
    public static function size(__self__:stdgo._internal.reflect.Reflect_t_maptype.T_mapType):stdgo.GoUIntptr {
        return stdgo._internal.reflect.Reflect_t_maptype_static_extension.T_mapType_static_extension.size(__self__);
    }
    public static function reflexiveKey(__self__:stdgo._internal.reflect.Reflect_t_maptype.T_mapType):Bool {
        return stdgo._internal.reflect.Reflect_t_maptype_static_extension.T_mapType_static_extension.reflexiveKey(__self__);
    }
    public static function pointers(__self__:stdgo._internal.reflect.Reflect_t_maptype.T_mapType):Bool {
        return stdgo._internal.reflect.Reflect_t_maptype_static_extension.T_mapType_static_extension.pointers(__self__);
    }
    public static function numMethod(__self__:stdgo._internal.reflect.Reflect_t_maptype.T_mapType):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_t_maptype_static_extension.T_mapType_static_extension.numMethod(__self__);
    }
    public static function needKeyUpdate(__self__:stdgo._internal.reflect.Reflect_t_maptype.T_mapType):Bool {
        return stdgo._internal.reflect.Reflect_t_maptype_static_extension.T_mapType_static_extension.needKeyUpdate(__self__);
    }
    public static function len(__self__:stdgo._internal.reflect.Reflect_t_maptype.T_mapType):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_t_maptype_static_extension.T_mapType_static_extension.len(__self__);
    }
    public static function kind(__self__:stdgo._internal.reflect.Reflect_t_maptype.T_mapType):stdgo._internal.internal.abi.Abi_kind.Kind {
        return stdgo._internal.reflect.Reflect_t_maptype_static_extension.T_mapType_static_extension.kind(__self__);
    }
    public static function isDirectIface(__self__:stdgo._internal.reflect.Reflect_t_maptype.T_mapType):Bool {
        return stdgo._internal.reflect.Reflect_t_maptype_static_extension.T_mapType_static_extension.isDirectIface(__self__);
    }
    public static function interfaceType(__self__:stdgo._internal.reflect.Reflect_t_maptype.T_mapType):stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType {
        return stdgo._internal.reflect.Reflect_t_maptype_static_extension.T_mapType_static_extension.interfaceType(__self__);
    }
    public static function indirectKey(__self__:stdgo._internal.reflect.Reflect_t_maptype.T_mapType):Bool {
        return stdgo._internal.reflect.Reflect_t_maptype_static_extension.T_mapType_static_extension.indirectKey(__self__);
    }
    public static function indirectElem(__self__:stdgo._internal.reflect.Reflect_t_maptype.T_mapType):Bool {
        return stdgo._internal.reflect.Reflect_t_maptype_static_extension.T_mapType_static_extension.indirectElem(__self__);
    }
    public static function ifaceIndir(__self__:stdgo._internal.reflect.Reflect_t_maptype.T_mapType):Bool {
        return stdgo._internal.reflect.Reflect_t_maptype_static_extension.T_mapType_static_extension.ifaceIndir(__self__);
    }
    public static function hashMightPanic(__self__:stdgo._internal.reflect.Reflect_t_maptype.T_mapType):Bool {
        return stdgo._internal.reflect.Reflect_t_maptype_static_extension.T_mapType_static_extension.hashMightPanic(__self__);
    }
    public static function hasName(__self__:stdgo._internal.reflect.Reflect_t_maptype.T_mapType):Bool {
        return stdgo._internal.reflect.Reflect_t_maptype_static_extension.T_mapType_static_extension.hasName(__self__);
    }
    public static function gcSlice(__self__:stdgo._internal.reflect.Reflect_t_maptype.T_mapType, _0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):Array<std.UInt> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUIntptr);
        return [for (i in stdgo._internal.reflect.Reflect_t_maptype_static_extension.T_mapType_static_extension.gcSlice(__self__, _0, _1)) i];
    }
    public static function funcType(__self__:stdgo._internal.reflect.Reflect_t_maptype.T_mapType):stdgo._internal.internal.abi.Abi_functype.FuncType {
        return stdgo._internal.reflect.Reflect_t_maptype_static_extension.T_mapType_static_extension.funcType(__self__);
    }
    public static function fieldAlign(__self__:stdgo._internal.reflect.Reflect_t_maptype.T_mapType):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_t_maptype_static_extension.T_mapType_static_extension.fieldAlign(__self__);
    }
    public static function exportedMethods(__self__:stdgo._internal.reflect.Reflect_t_maptype.T_mapType):Array<stdgo._internal.internal.abi.Abi_method.Method> {
        return [for (i in stdgo._internal.reflect.Reflect_t_maptype_static_extension.T_mapType_static_extension.exportedMethods(__self__)) i];
    }
    public static function common(__self__:stdgo._internal.reflect.Reflect_t_maptype.T_mapType):stdgo._internal.internal.abi.Abi_type_.Type_ {
        return stdgo._internal.reflect.Reflect_t_maptype_static_extension.T_mapType_static_extension.common(__self__);
    }
    public static function chanDir(__self__:stdgo._internal.reflect.Reflect_t_maptype.T_mapType):stdgo._internal.internal.abi.Abi_chandir.ChanDir {
        return stdgo._internal.reflect.Reflect_t_maptype_static_extension.T_mapType_static_extension.chanDir(__self__);
    }
    public static function arrayType(__self__:stdgo._internal.reflect.Reflect_t_maptype.T_mapType):stdgo._internal.internal.abi.Abi_arraytype.ArrayType {
        return stdgo._internal.reflect.Reflect_t_maptype_static_extension.T_mapType_static_extension.arrayType(__self__);
    }
    public static function align(__self__:stdgo._internal.reflect.Reflect_t_maptype.T_mapType):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_t_maptype_static_extension.T_mapType_static_extension.align(__self__);
    }
}
@:dox(hide) typedef T_ptrTypePointer = stdgo._internal.reflect.Reflect_t_ptrtypepointer.T_ptrTypePointer;
@:dox(hide) class T_ptrType_static_extension {
    public static function uncommon(__self__:stdgo._internal.reflect.Reflect_t_ptrtype.T_ptrType):stdgo._internal.internal.abi.Abi_uncommontype.UncommonType {
        return stdgo._internal.reflect.Reflect_t_ptrtype_static_extension.T_ptrType_static_extension.uncommon(__self__);
    }
    public static function structType(__self__:stdgo._internal.reflect.Reflect_t_ptrtype.T_ptrType):stdgo._internal.internal.abi.Abi_structtype.StructType {
        return stdgo._internal.reflect.Reflect_t_ptrtype_static_extension.T_ptrType_static_extension.structType(__self__);
    }
    public static function size(__self__:stdgo._internal.reflect.Reflect_t_ptrtype.T_ptrType):stdgo.GoUIntptr {
        return stdgo._internal.reflect.Reflect_t_ptrtype_static_extension.T_ptrType_static_extension.size(__self__);
    }
    public static function pointers(__self__:stdgo._internal.reflect.Reflect_t_ptrtype.T_ptrType):Bool {
        return stdgo._internal.reflect.Reflect_t_ptrtype_static_extension.T_ptrType_static_extension.pointers(__self__);
    }
    public static function numMethod(__self__:stdgo._internal.reflect.Reflect_t_ptrtype.T_ptrType):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_t_ptrtype_static_extension.T_ptrType_static_extension.numMethod(__self__);
    }
    public static function mapType(__self__:stdgo._internal.reflect.Reflect_t_ptrtype.T_ptrType):stdgo._internal.internal.abi.Abi_maptype.MapType {
        return stdgo._internal.reflect.Reflect_t_ptrtype_static_extension.T_ptrType_static_extension.mapType(__self__);
    }
    public static function len(__self__:stdgo._internal.reflect.Reflect_t_ptrtype.T_ptrType):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_t_ptrtype_static_extension.T_ptrType_static_extension.len(__self__);
    }
    public static function kind(__self__:stdgo._internal.reflect.Reflect_t_ptrtype.T_ptrType):stdgo._internal.internal.abi.Abi_kind.Kind {
        return stdgo._internal.reflect.Reflect_t_ptrtype_static_extension.T_ptrType_static_extension.kind(__self__);
    }
    public static function key(__self__:stdgo._internal.reflect.Reflect_t_ptrtype.T_ptrType):stdgo._internal.internal.abi.Abi_type_.Type_ {
        return stdgo._internal.reflect.Reflect_t_ptrtype_static_extension.T_ptrType_static_extension.key(__self__);
    }
    public static function isDirectIface(__self__:stdgo._internal.reflect.Reflect_t_ptrtype.T_ptrType):Bool {
        return stdgo._internal.reflect.Reflect_t_ptrtype_static_extension.T_ptrType_static_extension.isDirectIface(__self__);
    }
    public static function interfaceType(__self__:stdgo._internal.reflect.Reflect_t_ptrtype.T_ptrType):stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType {
        return stdgo._internal.reflect.Reflect_t_ptrtype_static_extension.T_ptrType_static_extension.interfaceType(__self__);
    }
    public static function ifaceIndir(__self__:stdgo._internal.reflect.Reflect_t_ptrtype.T_ptrType):Bool {
        return stdgo._internal.reflect.Reflect_t_ptrtype_static_extension.T_ptrType_static_extension.ifaceIndir(__self__);
    }
    public static function hasName(__self__:stdgo._internal.reflect.Reflect_t_ptrtype.T_ptrType):Bool {
        return stdgo._internal.reflect.Reflect_t_ptrtype_static_extension.T_ptrType_static_extension.hasName(__self__);
    }
    public static function gcSlice(__self__:stdgo._internal.reflect.Reflect_t_ptrtype.T_ptrType, _0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):Array<std.UInt> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUIntptr);
        return [for (i in stdgo._internal.reflect.Reflect_t_ptrtype_static_extension.T_ptrType_static_extension.gcSlice(__self__, _0, _1)) i];
    }
    public static function funcType(__self__:stdgo._internal.reflect.Reflect_t_ptrtype.T_ptrType):stdgo._internal.internal.abi.Abi_functype.FuncType {
        return stdgo._internal.reflect.Reflect_t_ptrtype_static_extension.T_ptrType_static_extension.funcType(__self__);
    }
    public static function fieldAlign(__self__:stdgo._internal.reflect.Reflect_t_ptrtype.T_ptrType):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_t_ptrtype_static_extension.T_ptrType_static_extension.fieldAlign(__self__);
    }
    public static function exportedMethods(__self__:stdgo._internal.reflect.Reflect_t_ptrtype.T_ptrType):Array<stdgo._internal.internal.abi.Abi_method.Method> {
        return [for (i in stdgo._internal.reflect.Reflect_t_ptrtype_static_extension.T_ptrType_static_extension.exportedMethods(__self__)) i];
    }
    public static function common(__self__:stdgo._internal.reflect.Reflect_t_ptrtype.T_ptrType):stdgo._internal.internal.abi.Abi_type_.Type_ {
        return stdgo._internal.reflect.Reflect_t_ptrtype_static_extension.T_ptrType_static_extension.common(__self__);
    }
    public static function chanDir(__self__:stdgo._internal.reflect.Reflect_t_ptrtype.T_ptrType):stdgo._internal.internal.abi.Abi_chandir.ChanDir {
        return stdgo._internal.reflect.Reflect_t_ptrtype_static_extension.T_ptrType_static_extension.chanDir(__self__);
    }
    public static function arrayType(__self__:stdgo._internal.reflect.Reflect_t_ptrtype.T_ptrType):stdgo._internal.internal.abi.Abi_arraytype.ArrayType {
        return stdgo._internal.reflect.Reflect_t_ptrtype_static_extension.T_ptrType_static_extension.arrayType(__self__);
    }
    public static function align(__self__:stdgo._internal.reflect.Reflect_t_ptrtype.T_ptrType):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_t_ptrtype_static_extension.T_ptrType_static_extension.align(__self__);
    }
}
@:dox(hide) typedef T_sliceTypePointer = stdgo._internal.reflect.Reflect_t_slicetypepointer.T_sliceTypePointer;
@:dox(hide) class T_sliceType_static_extension {
    public static function uncommon(__self__:stdgo._internal.reflect.Reflect_t_slicetype.T_sliceType):stdgo._internal.internal.abi.Abi_uncommontype.UncommonType {
        return stdgo._internal.reflect.Reflect_t_slicetype_static_extension.T_sliceType_static_extension.uncommon(__self__);
    }
    public static function structType(__self__:stdgo._internal.reflect.Reflect_t_slicetype.T_sliceType):stdgo._internal.internal.abi.Abi_structtype.StructType {
        return stdgo._internal.reflect.Reflect_t_slicetype_static_extension.T_sliceType_static_extension.structType(__self__);
    }
    public static function size(__self__:stdgo._internal.reflect.Reflect_t_slicetype.T_sliceType):stdgo.GoUIntptr {
        return stdgo._internal.reflect.Reflect_t_slicetype_static_extension.T_sliceType_static_extension.size(__self__);
    }
    public static function pointers(__self__:stdgo._internal.reflect.Reflect_t_slicetype.T_sliceType):Bool {
        return stdgo._internal.reflect.Reflect_t_slicetype_static_extension.T_sliceType_static_extension.pointers(__self__);
    }
    public static function numMethod(__self__:stdgo._internal.reflect.Reflect_t_slicetype.T_sliceType):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_t_slicetype_static_extension.T_sliceType_static_extension.numMethod(__self__);
    }
    public static function mapType(__self__:stdgo._internal.reflect.Reflect_t_slicetype.T_sliceType):stdgo._internal.internal.abi.Abi_maptype.MapType {
        return stdgo._internal.reflect.Reflect_t_slicetype_static_extension.T_sliceType_static_extension.mapType(__self__);
    }
    public static function len(__self__:stdgo._internal.reflect.Reflect_t_slicetype.T_sliceType):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_t_slicetype_static_extension.T_sliceType_static_extension.len(__self__);
    }
    public static function kind(__self__:stdgo._internal.reflect.Reflect_t_slicetype.T_sliceType):stdgo._internal.internal.abi.Abi_kind.Kind {
        return stdgo._internal.reflect.Reflect_t_slicetype_static_extension.T_sliceType_static_extension.kind(__self__);
    }
    public static function key(__self__:stdgo._internal.reflect.Reflect_t_slicetype.T_sliceType):stdgo._internal.internal.abi.Abi_type_.Type_ {
        return stdgo._internal.reflect.Reflect_t_slicetype_static_extension.T_sliceType_static_extension.key(__self__);
    }
    public static function isDirectIface(__self__:stdgo._internal.reflect.Reflect_t_slicetype.T_sliceType):Bool {
        return stdgo._internal.reflect.Reflect_t_slicetype_static_extension.T_sliceType_static_extension.isDirectIface(__self__);
    }
    public static function interfaceType(__self__:stdgo._internal.reflect.Reflect_t_slicetype.T_sliceType):stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType {
        return stdgo._internal.reflect.Reflect_t_slicetype_static_extension.T_sliceType_static_extension.interfaceType(__self__);
    }
    public static function ifaceIndir(__self__:stdgo._internal.reflect.Reflect_t_slicetype.T_sliceType):Bool {
        return stdgo._internal.reflect.Reflect_t_slicetype_static_extension.T_sliceType_static_extension.ifaceIndir(__self__);
    }
    public static function hasName(__self__:stdgo._internal.reflect.Reflect_t_slicetype.T_sliceType):Bool {
        return stdgo._internal.reflect.Reflect_t_slicetype_static_extension.T_sliceType_static_extension.hasName(__self__);
    }
    public static function gcSlice(__self__:stdgo._internal.reflect.Reflect_t_slicetype.T_sliceType, _0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):Array<std.UInt> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUIntptr);
        return [for (i in stdgo._internal.reflect.Reflect_t_slicetype_static_extension.T_sliceType_static_extension.gcSlice(__self__, _0, _1)) i];
    }
    public static function funcType(__self__:stdgo._internal.reflect.Reflect_t_slicetype.T_sliceType):stdgo._internal.internal.abi.Abi_functype.FuncType {
        return stdgo._internal.reflect.Reflect_t_slicetype_static_extension.T_sliceType_static_extension.funcType(__self__);
    }
    public static function fieldAlign(__self__:stdgo._internal.reflect.Reflect_t_slicetype.T_sliceType):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_t_slicetype_static_extension.T_sliceType_static_extension.fieldAlign(__self__);
    }
    public static function exportedMethods(__self__:stdgo._internal.reflect.Reflect_t_slicetype.T_sliceType):Array<stdgo._internal.internal.abi.Abi_method.Method> {
        return [for (i in stdgo._internal.reflect.Reflect_t_slicetype_static_extension.T_sliceType_static_extension.exportedMethods(__self__)) i];
    }
    public static function common(__self__:stdgo._internal.reflect.Reflect_t_slicetype.T_sliceType):stdgo._internal.internal.abi.Abi_type_.Type_ {
        return stdgo._internal.reflect.Reflect_t_slicetype_static_extension.T_sliceType_static_extension.common(__self__);
    }
    public static function chanDir(__self__:stdgo._internal.reflect.Reflect_t_slicetype.T_sliceType):stdgo._internal.internal.abi.Abi_chandir.ChanDir {
        return stdgo._internal.reflect.Reflect_t_slicetype_static_extension.T_sliceType_static_extension.chanDir(__self__);
    }
    public static function arrayType(__self__:stdgo._internal.reflect.Reflect_t_slicetype.T_sliceType):stdgo._internal.internal.abi.Abi_arraytype.ArrayType {
        return stdgo._internal.reflect.Reflect_t_slicetype_static_extension.T_sliceType_static_extension.arrayType(__self__);
    }
    public static function align(__self__:stdgo._internal.reflect.Reflect_t_slicetype.T_sliceType):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_t_slicetype_static_extension.T_sliceType_static_extension.align(__self__);
    }
}
@:dox(hide) typedef T_structTypePointer = stdgo._internal.reflect.Reflect_t_structtypepointer.T_structTypePointer;
@:dox(hide) class T_structType_static_extension {
    static public function fieldByName(_t:T_structType, _name:String):stdgo.Tuple<StructField, Bool> {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_structtype.T_structType>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.reflect.Reflect_t_structtype_static_extension.T_structType_static_extension.fieldByName(_t, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function fieldByNameFunc(_t:T_structType, _match:String -> Bool):stdgo.Tuple<StructField, Bool> {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_structtype.T_structType>);
        final _match = _match;
        return {
            final obj = stdgo._internal.reflect.Reflect_t_structtype_static_extension.T_structType_static_extension.fieldByNameFunc(_t, _match);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function fieldByIndex(_t:T_structType, _index:Array<StdTypes.Int>):StructField {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_structtype.T_structType>);
        final _index = ([for (i in _index) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return stdgo._internal.reflect.Reflect_t_structtype_static_extension.T_structType_static_extension.fieldByIndex(_t, _index);
    }
    static public function field(_t:T_structType, _i:StdTypes.Int):StructField {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_t_structtype.T_structType>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_t_structtype_static_extension.T_structType_static_extension.field(_t, _i);
    }
    public static function uncommon(__self__:stdgo._internal.reflect.Reflect_t_structtype.T_structType):stdgo._internal.internal.abi.Abi_uncommontype.UncommonType {
        return stdgo._internal.reflect.Reflect_t_structtype_static_extension.T_structType_static_extension.uncommon(__self__);
    }
    public static function size(__self__:stdgo._internal.reflect.Reflect_t_structtype.T_structType):stdgo.GoUIntptr {
        return stdgo._internal.reflect.Reflect_t_structtype_static_extension.T_structType_static_extension.size(__self__);
    }
    public static function pointers(__self__:stdgo._internal.reflect.Reflect_t_structtype.T_structType):Bool {
        return stdgo._internal.reflect.Reflect_t_structtype_static_extension.T_structType_static_extension.pointers(__self__);
    }
    public static function numMethod(__self__:stdgo._internal.reflect.Reflect_t_structtype.T_structType):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_t_structtype_static_extension.T_structType_static_extension.numMethod(__self__);
    }
    public static function mapType(__self__:stdgo._internal.reflect.Reflect_t_structtype.T_structType):stdgo._internal.internal.abi.Abi_maptype.MapType {
        return stdgo._internal.reflect.Reflect_t_structtype_static_extension.T_structType_static_extension.mapType(__self__);
    }
    public static function len(__self__:stdgo._internal.reflect.Reflect_t_structtype.T_structType):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_t_structtype_static_extension.T_structType_static_extension.len(__self__);
    }
    public static function kind(__self__:stdgo._internal.reflect.Reflect_t_structtype.T_structType):stdgo._internal.internal.abi.Abi_kind.Kind {
        return stdgo._internal.reflect.Reflect_t_structtype_static_extension.T_structType_static_extension.kind(__self__);
    }
    public static function key(__self__:stdgo._internal.reflect.Reflect_t_structtype.T_structType):stdgo._internal.internal.abi.Abi_type_.Type_ {
        return stdgo._internal.reflect.Reflect_t_structtype_static_extension.T_structType_static_extension.key(__self__);
    }
    public static function isDirectIface(__self__:stdgo._internal.reflect.Reflect_t_structtype.T_structType):Bool {
        return stdgo._internal.reflect.Reflect_t_structtype_static_extension.T_structType_static_extension.isDirectIface(__self__);
    }
    public static function interfaceType(__self__:stdgo._internal.reflect.Reflect_t_structtype.T_structType):stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType {
        return stdgo._internal.reflect.Reflect_t_structtype_static_extension.T_structType_static_extension.interfaceType(__self__);
    }
    public static function ifaceIndir(__self__:stdgo._internal.reflect.Reflect_t_structtype.T_structType):Bool {
        return stdgo._internal.reflect.Reflect_t_structtype_static_extension.T_structType_static_extension.ifaceIndir(__self__);
    }
    public static function hasName(__self__:stdgo._internal.reflect.Reflect_t_structtype.T_structType):Bool {
        return stdgo._internal.reflect.Reflect_t_structtype_static_extension.T_structType_static_extension.hasName(__self__);
    }
    public static function gcSlice(__self__:stdgo._internal.reflect.Reflect_t_structtype.T_structType, _0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):Array<std.UInt> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUIntptr);
        return [for (i in stdgo._internal.reflect.Reflect_t_structtype_static_extension.T_structType_static_extension.gcSlice(__self__, _0, _1)) i];
    }
    public static function funcType(__self__:stdgo._internal.reflect.Reflect_t_structtype.T_structType):stdgo._internal.internal.abi.Abi_functype.FuncType {
        return stdgo._internal.reflect.Reflect_t_structtype_static_extension.T_structType_static_extension.funcType(__self__);
    }
    public static function fieldAlign(__self__:stdgo._internal.reflect.Reflect_t_structtype.T_structType):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_t_structtype_static_extension.T_structType_static_extension.fieldAlign(__self__);
    }
    public static function exportedMethods(__self__:stdgo._internal.reflect.Reflect_t_structtype.T_structType):Array<stdgo._internal.internal.abi.Abi_method.Method> {
        return [for (i in stdgo._internal.reflect.Reflect_t_structtype_static_extension.T_structType_static_extension.exportedMethods(__self__)) i];
    }
    public static function elem(__self__:stdgo._internal.reflect.Reflect_t_structtype.T_structType):stdgo._internal.internal.abi.Abi_type_.Type_ {
        return stdgo._internal.reflect.Reflect_t_structtype_static_extension.T_structType_static_extension.elem(__self__);
    }
    public static function common(__self__:stdgo._internal.reflect.Reflect_t_structtype.T_structType):stdgo._internal.internal.abi.Abi_type_.Type_ {
        return stdgo._internal.reflect.Reflect_t_structtype_static_extension.T_structType_static_extension.common(__self__);
    }
    public static function chanDir(__self__:stdgo._internal.reflect.Reflect_t_structtype.T_structType):stdgo._internal.internal.abi.Abi_chandir.ChanDir {
        return stdgo._internal.reflect.Reflect_t_structtype_static_extension.T_structType_static_extension.chanDir(__self__);
    }
    public static function arrayType(__self__:stdgo._internal.reflect.Reflect_t_structtype.T_structType):stdgo._internal.internal.abi.Abi_arraytype.ArrayType {
        return stdgo._internal.reflect.Reflect_t_structtype_static_extension.T_structType_static_extension.arrayType(__self__);
    }
    public static function align(__self__:stdgo._internal.reflect.Reflect_t_structtype.T_structType):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_t_structtype_static_extension.T_structType_static_extension.align(__self__);
    }
}
typedef MethodPointer = stdgo._internal.reflect.Reflect_methodpointer.MethodPointer;
class Method_static_extension {
    static public function isExported(_m:Method):Bool {
        return stdgo._internal.reflect.Reflect_method_static_extension.Method_static_extension.isExported(_m);
    }
}
typedef StructFieldPointer = stdgo._internal.reflect.Reflect_structfieldpointer.StructFieldPointer;
class StructField_static_extension {
    static public function isExported(_f:StructField):Bool {
        return stdgo._internal.reflect.Reflect_structfield_static_extension.StructField_static_extension.isExported(_f);
    }
}
@:dox(hide) typedef T_fieldScanPointer = stdgo._internal.reflect.Reflect_t_fieldscanpointer.T_fieldScanPointer;
@:dox(hide) class T_fieldScan_static_extension {

}
@:dox(hide) typedef T_cacheKeyPointer = stdgo._internal.reflect.Reflect_t_cachekeypointer.T_cacheKeyPointer;
@:dox(hide) class T_cacheKey_static_extension {

}
@:dox(hide) typedef T_structTypeUncommonPointer = stdgo._internal.reflect.Reflect_t_structtypeuncommonpointer.T_structTypeUncommonPointer;
@:dox(hide) class T_structTypeUncommon_static_extension {
    public static function uncommon(__self__:stdgo._internal.reflect.Reflect_t_structtypeuncommon.T_structTypeUncommon):stdgo._internal.internal.abi.Abi_uncommontype.UncommonType {
        return stdgo._internal.reflect.Reflect_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.uncommon(__self__);
    }
    public static function size(__self__:stdgo._internal.reflect.Reflect_t_structtypeuncommon.T_structTypeUncommon):stdgo.GoUIntptr {
        return stdgo._internal.reflect.Reflect_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.size(__self__);
    }
    public static function pointers(__self__:stdgo._internal.reflect.Reflect_t_structtypeuncommon.T_structTypeUncommon):Bool {
        return stdgo._internal.reflect.Reflect_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.pointers(__self__);
    }
    public static function numMethod(__self__:stdgo._internal.reflect.Reflect_t_structtypeuncommon.T_structTypeUncommon):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.numMethod(__self__);
    }
    public static function mapType(__self__:stdgo._internal.reflect.Reflect_t_structtypeuncommon.T_structTypeUncommon):stdgo._internal.internal.abi.Abi_maptype.MapType {
        return stdgo._internal.reflect.Reflect_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.mapType(__self__);
    }
    public static function len(__self__:stdgo._internal.reflect.Reflect_t_structtypeuncommon.T_structTypeUncommon):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.len(__self__);
    }
    public static function kind(__self__:stdgo._internal.reflect.Reflect_t_structtypeuncommon.T_structTypeUncommon):stdgo._internal.internal.abi.Abi_kind.Kind {
        return stdgo._internal.reflect.Reflect_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.kind(__self__);
    }
    public static function key(__self__:stdgo._internal.reflect.Reflect_t_structtypeuncommon.T_structTypeUncommon):stdgo._internal.internal.abi.Abi_type_.Type_ {
        return stdgo._internal.reflect.Reflect_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.key(__self__);
    }
    public static function isDirectIface(__self__:stdgo._internal.reflect.Reflect_t_structtypeuncommon.T_structTypeUncommon):Bool {
        return stdgo._internal.reflect.Reflect_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.isDirectIface(__self__);
    }
    public static function interfaceType(__self__:stdgo._internal.reflect.Reflect_t_structtypeuncommon.T_structTypeUncommon):stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType {
        return stdgo._internal.reflect.Reflect_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.interfaceType(__self__);
    }
    public static function ifaceIndir(__self__:stdgo._internal.reflect.Reflect_t_structtypeuncommon.T_structTypeUncommon):Bool {
        return stdgo._internal.reflect.Reflect_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.ifaceIndir(__self__);
    }
    public static function hasName(__self__:stdgo._internal.reflect.Reflect_t_structtypeuncommon.T_structTypeUncommon):Bool {
        return stdgo._internal.reflect.Reflect_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.hasName(__self__);
    }
    public static function gcSlice(__self__:stdgo._internal.reflect.Reflect_t_structtypeuncommon.T_structTypeUncommon, _0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):Array<std.UInt> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUIntptr);
        return [for (i in stdgo._internal.reflect.Reflect_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.gcSlice(__self__, _0, _1)) i];
    }
    public static function funcType(__self__:stdgo._internal.reflect.Reflect_t_structtypeuncommon.T_structTypeUncommon):stdgo._internal.internal.abi.Abi_functype.FuncType {
        return stdgo._internal.reflect.Reflect_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.funcType(__self__);
    }
    public static function fieldByNameFunc(__self__:stdgo._internal.reflect.Reflect_t_structtypeuncommon.T_structTypeUncommon, _0:String -> Bool):stdgo.Tuple<StructField, Bool> {
        final _0 = _0;
        return {
            final obj = stdgo._internal.reflect.Reflect_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.fieldByNameFunc(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function fieldByName(__self__:stdgo._internal.reflect.Reflect_t_structtypeuncommon.T_structTypeUncommon, _0:String):stdgo.Tuple<StructField, Bool> {
        final _0 = (_0 : stdgo.GoString);
        return {
            final obj = stdgo._internal.reflect.Reflect_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.fieldByName(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function fieldByIndex(__self__:stdgo._internal.reflect.Reflect_t_structtypeuncommon.T_structTypeUncommon, _0:Array<StdTypes.Int>):StructField {
        final _0 = ([for (i in _0) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return stdgo._internal.reflect.Reflect_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.fieldByIndex(__self__, _0);
    }
    public static function fieldAlign(__self__:stdgo._internal.reflect.Reflect_t_structtypeuncommon.T_structTypeUncommon):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.fieldAlign(__self__);
    }
    public static function field(__self__:stdgo._internal.reflect.Reflect_t_structtypeuncommon.T_structTypeUncommon, _0:StdTypes.Int):StructField {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.field(__self__, _0);
    }
    public static function exportedMethods(__self__:stdgo._internal.reflect.Reflect_t_structtypeuncommon.T_structTypeUncommon):Array<stdgo._internal.internal.abi.Abi_method.Method> {
        return [for (i in stdgo._internal.reflect.Reflect_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.exportedMethods(__self__)) i];
    }
    public static function elem(__self__:stdgo._internal.reflect.Reflect_t_structtypeuncommon.T_structTypeUncommon):stdgo._internal.internal.abi.Abi_type_.Type_ {
        return stdgo._internal.reflect.Reflect_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.elem(__self__);
    }
    public static function common(__self__:stdgo._internal.reflect.Reflect_t_structtypeuncommon.T_structTypeUncommon):stdgo._internal.internal.abi.Abi_type_.Type_ {
        return stdgo._internal.reflect.Reflect_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.common(__self__);
    }
    public static function chanDir(__self__:stdgo._internal.reflect.Reflect_t_structtypeuncommon.T_structTypeUncommon):stdgo._internal.internal.abi.Abi_chandir.ChanDir {
        return stdgo._internal.reflect.Reflect_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.chanDir(__self__);
    }
    public static function arrayType(__self__:stdgo._internal.reflect.Reflect_t_structtypeuncommon.T_structTypeUncommon):stdgo._internal.internal.abi.Abi_arraytype.ArrayType {
        return stdgo._internal.reflect.Reflect_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.arrayType(__self__);
    }
    public static function align(__self__:stdgo._internal.reflect.Reflect_t_structtypeuncommon.T_structTypeUncommon):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.align(__self__);
    }
}
@:dox(hide) typedef T_layoutKeyPointer = stdgo._internal.reflect.Reflect_t_layoutkeypointer.T_layoutKeyPointer;
@:dox(hide) class T_layoutKey_static_extension {

}
@:dox(hide) typedef T_layoutTypePointer = stdgo._internal.reflect.Reflect_t_layouttypepointer.T_layoutTypePointer;
@:dox(hide) class T_layoutType_static_extension {

}
@:dox(hide) typedef T_bitVectorPointer = stdgo._internal.reflect.Reflect_t_bitvectorpointer.T_bitVectorPointer;
@:dox(hide) class T_bitVector_static_extension {

}
typedef ValuePointer = stdgo._internal.reflect.Reflect_valuepointer.ValuePointer;
class Value_static_extension {
    static public function equal(_v:Value, _u:Value):Bool {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.equal(_v, _u);
    }
    static public function comparable_(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.comparable_(_v);
    }
    static public function canConvert(_v:Value, _t:Type_):Bool {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.canConvert(_v, _t);
    }
    static public function convert(_v:Value, _t:Type_):Value {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.convert(_v, _t);
    }
    static public function clear(_v:Value):Void {
        stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.clear(_v);
    }
    static public function grow(_v:Value, _n:StdTypes.Int):Void {
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.grow(_v, _n);
    }
    static public function unsafePointer(_v:Value):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.unsafePointer(_v);
    }
    static public function unsafeAddr(_v:Value):stdgo.GoUIntptr {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.unsafeAddr(_v);
    }
    static public function uint(_v:Value):haxe.UInt64 {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.uint(_v);
    }
    static public function canUint(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.canUint(_v);
    }
    static public function type(_v:Value):Type_ {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.type(_v);
    }
    static public function trySend(_v:Value, _x:Value):Bool {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.trySend(_v, _x);
    }
    static public function tryRecv(_v:Value):stdgo.Tuple<Value, Bool> {
        return {
            final obj = stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.tryRecv(_v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function string(_v:Value):String {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.string(_v);
    }
    static public function slice3(_v:Value, _i:StdTypes.Int, _j:StdTypes.Int, _k:StdTypes.Int):Value {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        final _k = (_k : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.slice3(_v, _i, _j, _k);
    }
    static public function slice(_v:Value, _i:StdTypes.Int, _j:StdTypes.Int):Value {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.slice(_v, _i, _j);
    }
    static public function setString(_v:Value, _x:String):Void {
        final _x = (_x : stdgo.GoString);
        stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.setString(_v, _x);
    }
    static public function setPointer(_v:Value, _x:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.setPointer(_v, _x);
    }
    static public function setUint(_v:Value, _x:haxe.UInt64):Void {
        final _x = (_x : stdgo.GoUInt64);
        stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.setUint(_v, _x);
    }
    static public function setMapIndex(_v:Value, _key:Value, _elem:Value):Void {
        stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.setMapIndex(_v, _key, _elem);
    }
    static public function setCap(_v:Value, _n:StdTypes.Int):Void {
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.setCap(_v, _n);
    }
    static public function setLen(_v:Value, _n:StdTypes.Int):Void {
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.setLen(_v, _n);
    }
    static public function setInt(_v:Value, _x:haxe.Int64):Void {
        final _x = (_x : stdgo.GoInt64);
        stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.setInt(_v, _x);
    }
    static public function setFloat(_v:Value, _x:StdTypes.Float):Void {
        final _x = (_x : stdgo.GoFloat64);
        stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.setFloat(_v, _x);
    }
    static public function setComplex(_v:Value, _x:stdgo.GoComplex128):Void {
        final _x = (_x : stdgo.GoComplex128);
        stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.setComplex(_v, _x);
    }
    static public function setBytes(_v:Value, _x:Array<std.UInt>):Void {
        final _x = ([for (i in _x) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.setBytes(_v, _x);
    }
    static public function setBool(_v:Value, _x:Bool):Void {
        stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.setBool(_v, _x);
    }
    static public function set(_v:Value, _x:Value):Void {
        stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.set(_v, _x);
    }
    static public function send(_v:Value, _x:Value):Void {
        stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.send(_v, _x);
    }
    static public function recv(_v:Value):stdgo.Tuple<Value, Bool> {
        return {
            final obj = stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.recv(_v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function pointer(_v:Value):stdgo.GoUIntptr {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.pointer(_v);
    }
    static public function overflowUint(_v:Value, _x:haxe.UInt64):Bool {
        final _x = (_x : stdgo.GoUInt64);
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.overflowUint(_v, _x);
    }
    static public function overflowInt(_v:Value, _x:haxe.Int64):Bool {
        final _x = (_x : stdgo.GoInt64);
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.overflowInt(_v, _x);
    }
    static public function overflowFloat(_v:Value, _x:StdTypes.Float):Bool {
        final _x = (_x : stdgo.GoFloat64);
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.overflowFloat(_v, _x);
    }
    static public function overflowComplex(_v:Value, _x:stdgo.GoComplex128):Bool {
        final _x = (_x : stdgo.GoComplex128);
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.overflowComplex(_v, _x);
    }
    static public function numField(_v:Value):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.numField(_v);
    }
    static public function methodByName(_v:Value, _name:String):Value {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.methodByName(_v, _name);
    }
    static public function numMethod(_v:Value):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.numMethod(_v);
    }
    static public function method(_v:Value, _i:StdTypes.Int):Value {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.method(_v, _i);
    }
    static public function mapRange(_v:Value):MapIter {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.mapRange(_v);
    }
    static public function setIterValue(_v:Value, _iter:MapIter):Void {
        final _iter = (_iter : stdgo.Ref<stdgo._internal.reflect.Reflect_mapiter.MapIter>);
        stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.setIterValue(_v, _iter);
    }
    static public function setIterKey(_v:Value, _iter:MapIter):Void {
        final _iter = (_iter : stdgo.Ref<stdgo._internal.reflect.Reflect_mapiter.MapIter>);
        stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.setIterKey(_v, _iter);
    }
    static public function mapKeys(_v:Value):Array<Value> {
        return [for (i in stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.mapKeys(_v)) i];
    }
    static public function mapIndex(_v:Value, _key:Value):Value {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.mapIndex(_v, _key);
    }
    static public function len(_v:Value):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.len(_v);
    }
    static public function kind(_v:Value):Kind {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.kind(_v);
    }
    static public function setZero(_v:Value):Void {
        stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.setZero(_v);
    }
    static public function isZero(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.isZero(_v);
    }
    static public function isValid(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.isValid(_v);
    }
    static public function isNil(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.isNil(_v);
    }
    static public function interfaceData(_v:Value):haxe.ds.Vector<stdgo.GoUIntptr> {
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.interfaceData(_v)) i]);
    }
    static public function interface_(_v:Value):stdgo.AnyInterface {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.interface_(_v);
    }
    static public function canInterface(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.canInterface(_v);
    }
    static public function int_(_v:Value):haxe.Int64 {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.int_(_v);
    }
    static public function canInt(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.canInt(_v);
    }
    static public function index(_v:Value, _i:StdTypes.Int):Value {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.index(_v, _i);
    }
    static public function float_(_v:Value):StdTypes.Float {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.float_(_v);
    }
    static public function canFloat(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.canFloat(_v);
    }
    static public function fieldByNameFunc(_v:Value, _match:String -> Bool):Value {
        final _match = _match;
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.fieldByNameFunc(_v, _match);
    }
    static public function fieldByName(_v:Value, _name:String):Value {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.fieldByName(_v, _name);
    }
    static public function fieldByIndexErr(_v:Value, _index:Array<StdTypes.Int>):stdgo.Tuple<Value, stdgo.Error> {
        final _index = ([for (i in _index) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return {
            final obj = stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.fieldByIndexErr(_v, _index);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function fieldByIndex(_v:Value, _index:Array<StdTypes.Int>):Value {
        final _index = ([for (i in _index) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.fieldByIndex(_v, _index);
    }
    static public function field(_v:Value, _i:StdTypes.Int):Value {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.field(_v, _i);
    }
    static public function elem(_v:Value):Value {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.elem(_v);
    }
    static public function complex(_v:Value):stdgo.GoComplex128 {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.complex(_v);
    }
    static public function canComplex(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.canComplex(_v);
    }
    static public function close(_v:Value):Void {
        stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.close(_v);
    }
    static public function cap(_v:Value):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.cap(_v);
    }
    static public function callSlice(_v:Value, _in:Array<Value>):Array<Value> {
        final _in = ([for (i in _in) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
        return [for (i in stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.callSlice(_v, _in)) i];
    }
    static public function call(_v:Value, _in:Array<Value>):Array<Value> {
        final _in = ([for (i in _in) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
        return [for (i in stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.call(_v, _in)) i];
    }
    static public function canSet(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.canSet(_v);
    }
    static public function canAddr(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.canAddr(_v);
    }
    static public function bytes(_v:Value):Array<std.UInt> {
        return [for (i in stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.bytes(_v)) i];
    }
    static public function bool_(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.bool_(_v);
    }
    static public function addr(_v:Value):Value {
        return stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension.addr(_v);
    }
}
typedef ValueErrorPointer = stdgo._internal.reflect.Reflect_valueerrorpointer.ValueErrorPointer;
class ValueError_static_extension {
    static public function error(_e:ValueError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.reflect.Reflect_valueerror.ValueError>);
        return stdgo._internal.reflect.Reflect_valueerror_static_extension.ValueError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_emptyInterfacePointer = stdgo._internal.reflect.Reflect_t_emptyinterfacepointer.T_emptyInterfacePointer;
@:dox(hide) class T_emptyInterface_static_extension {

}
@:dox(hide) typedef T_nonEmptyInterfacePointer = stdgo._internal.reflect.Reflect_t_nonemptyinterfacepointer.T_nonEmptyInterfacePointer;
@:dox(hide) class T_nonEmptyInterface_static_extension {

}
@:dox(hide) typedef T_hiterPointer = stdgo._internal.reflect.Reflect_t_hiterpointer.T_hiterPointer;
@:dox(hide) class T_hiter_static_extension {

}
typedef MapIterPointer = stdgo._internal.reflect.Reflect_mapiterpointer.MapIterPointer;
class MapIter_static_extension {
    static public function reset(_iter:MapIter, _v:Value):Void {
        final _iter = (_iter : stdgo.Ref<stdgo._internal.reflect.Reflect_mapiter.MapIter>);
        stdgo._internal.reflect.Reflect_mapiter_static_extension.MapIter_static_extension.reset(_iter, _v);
    }
    static public function next(_iter:MapIter):Bool {
        final _iter = (_iter : stdgo.Ref<stdgo._internal.reflect.Reflect_mapiter.MapIter>);
        return stdgo._internal.reflect.Reflect_mapiter_static_extension.MapIter_static_extension.next(_iter);
    }
    static public function value(_iter:MapIter):Value {
        final _iter = (_iter : stdgo.Ref<stdgo._internal.reflect.Reflect_mapiter.MapIter>);
        return stdgo._internal.reflect.Reflect_mapiter_static_extension.MapIter_static_extension.value(_iter);
    }
    static public function key(_iter:MapIter):Value {
        final _iter = (_iter : stdgo.Ref<stdgo._internal.reflect.Reflect_mapiter.MapIter>);
        return stdgo._internal.reflect.Reflect_mapiter_static_extension.MapIter_static_extension.key(_iter);
    }
}
typedef StringHeaderPointer = stdgo._internal.reflect.Reflect_stringheaderpointer.StringHeaderPointer;
class StringHeader_static_extension {

}
typedef SliceHeaderPointer = stdgo._internal.reflect.Reflect_sliceheaderpointer.SliceHeaderPointer;
class SliceHeader_static_extension {

}
@:dox(hide) typedef T_runtimeSelectPointer = stdgo._internal.reflect.Reflect_t_runtimeselectpointer.T_runtimeSelectPointer;
@:dox(hide) class T_runtimeSelect_static_extension {

}
typedef SelectCasePointer = stdgo._internal.reflect.Reflect_selectcasepointer.SelectCasePointer;
class SelectCase_static_extension {

}
@:dox(hide) typedef T_visibleFieldsWalkerPointer = stdgo._internal.reflect.Reflect_t_visiblefieldswalkerpointer.T_visibleFieldsWalkerPointer;
@:dox(hide) class T_visibleFieldsWalker_static_extension {

}
@:dox(hide) typedef T_abiStepKindPointer = stdgo._internal.reflect.Reflect_t_abistepkindpointer.T_abiStepKindPointer;
@:dox(hide) class T_abiStepKind_static_extension {

}
typedef KindPointer = stdgo._internal.reflect.Reflect_kindpointer.KindPointer;
class Kind_static_extension {
    static public function string(_k:Kind):String {
        return stdgo._internal.reflect.Reflect_kind_static_extension.Kind_static_extension.string(_k);
    }
}
@:dox(hide) typedef T_uncommonTypePointer = stdgo._internal.reflect.Reflect_t_uncommontypepointer.T_uncommonTypePointer;
@:dox(hide) class T_uncommonType_static_extension {

}
@:dox(hide) typedef T_aNameOffPointer = stdgo._internal.reflect.Reflect_t_anameoffpointer.T_aNameOffPointer;
@:dox(hide) class T_aNameOff_static_extension {

}
@:dox(hide) typedef T_aTypeOffPointer = stdgo._internal.reflect.Reflect_t_atypeoffpointer.T_aTypeOffPointer;
@:dox(hide) class T_aTypeOff_static_extension {

}
@:dox(hide) typedef T_aTextOffPointer = stdgo._internal.reflect.Reflect_t_atextoffpointer.T_aTextOffPointer;
@:dox(hide) class T_aTextOff_static_extension {

}
typedef ChanDirPointer = stdgo._internal.reflect.Reflect_chandirpointer.ChanDirPointer;
class ChanDir_static_extension {
    static public function string(_d:ChanDir):String {
        return stdgo._internal.reflect.Reflect_chandir_static_extension.ChanDir_static_extension.string(_d);
    }
}
@:dox(hide) typedef T_arrayTypePointer = stdgo._internal.reflect.Reflect_t_arraytypepointer.T_arrayTypePointer;
@:dox(hide) class T_arrayType_static_extension {

}
@:dox(hide) typedef T_chanTypePointer = stdgo._internal.reflect.Reflect_t_chantypepointer.T_chanTypePointer;
@:dox(hide) class T_chanType_static_extension {

}
@:dox(hide) typedef T_funcTypePointer = stdgo._internal.reflect.Reflect_t_functypepointer.T_funcTypePointer;
@:dox(hide) class T_funcType_static_extension {

}
@:dox(hide) typedef T_structFieldPointer = stdgo._internal.reflect.Reflect_t_structfieldpointer.T_structFieldPointer;
@:dox(hide) class T_structField_static_extension {

}
typedef StructTagPointer = stdgo._internal.reflect.Reflect_structtagpointer.StructTagPointer;
class StructTag_static_extension {
    static public function lookup(_tag:StructTag, _key:String):stdgo.Tuple<String, Bool> {
        final _key = (_key : stdgo.GoString);
        return {
            final obj = stdgo._internal.reflect.Reflect_structtag_static_extension.StructTag_static_extension.lookup(_tag, _key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function get(_tag:StructTag, _key:String):String {
        final _key = (_key : stdgo.GoString);
        return stdgo._internal.reflect.Reflect_structtag_static_extension.StructTag_static_extension.get(_tag, _key);
    }
}
@:dox(hide) typedef T_flagPointer = stdgo._internal.reflect.Reflect_t_flagpointer.T_flagPointer;
@:dox(hide) class T_flag_static_extension {

}
typedef SelectDirPointer = stdgo._internal.reflect.Reflect_selectdirpointer.SelectDirPointer;
class SelectDir_static_extension {

}
/**
    * Package reflect implements run-time reflection, allowing a program to
    * manipulate objects with arbitrary types. The typical use is to take a value
    * with static type interface{} and extract its dynamic type information by
    * calling TypeOf, which returns a Type.
    * 
    * A call to ValueOf returns a Value representing the run-time data.
    * Zero takes a Type and returns a Value representing a zero value
    * for that type.
    * 
    * See "The Laws of Reflection" for an introduction to reflection in Go:
    * https://golang.org/doc/articles/laws_of_reflection.html
**/
class Reflect {
    /**
        * DeepEqual reports whether x and y are “deeply equal,” defined as follows.
        * Two values of identical type are deeply equal if one of the following cases applies.
        * Values of distinct types are never deeply equal.
        * 
        * Array values are deeply equal when their corresponding elements are deeply equal.
        * 
        * Struct values are deeply equal if their corresponding fields,
        * both exported and unexported, are deeply equal.
        * 
        * Func values are deeply equal if both are nil; otherwise they are not deeply equal.
        * 
        * Interface values are deeply equal if they hold deeply equal concrete values.
        * 
        * Map values are deeply equal when all of the following are true:
        * they are both nil or both non-nil, they have the same length,
        * and either they are the same map object or their corresponding keys
        * (matched using Go equality) map to deeply equal values.
        * 
        * Pointer values are deeply equal if they are equal using Go's == operator
        * or if they point to deeply equal values.
        * 
        * Slice values are deeply equal when all of the following are true:
        * they are both nil or both non-nil, they have the same length,
        * and either they point to the same initial entry of the same underlying array
        * (that is, &x[0] == &y[0]) or their corresponding elements (up to length) are deeply equal.
        * Note that a non-nil empty slice and a nil slice (for example, []byte{} and []byte(nil))
        * are not deeply equal.
        * 
        * Other values - numbers, bools, strings, and channels - are deeply equal
        * if they are equal using Go's == operator.
        * 
        * In general DeepEqual is a recursive relaxation of Go's == operator.
        * However, this idea is impossible to implement without some inconsistency.
        * Specifically, it is possible for a value to be unequal to itself,
        * either because it is of func type (uncomparable in general)
        * or because it is a floating-point NaN value (not equal to itself in floating-point comparison),
        * or because it is an array, struct, or interface containing
        * such a value.
        * On the other hand, pointer values are always equal to themselves,
        * even if they point at or contain such problematic values,
        * because they compare equal using Go's == operator, and that
        * is a sufficient condition to be deeply equal, regardless of content.
        * DeepEqual has been defined so that the same short-cut applies
        * to slices and maps: if x and y are the same slice or the same map,
        * they are deeply equal regardless of content.
        * 
        * As DeepEqual traverses the data values it may find a cycle. The
        * second and subsequent times that DeepEqual compares two pointer
        * values that have been compared before, it treats the values as
        * equal rather than examining the values to which they point.
        * This ensures that DeepEqual terminates.
    **/
    static public inline function deepEqual(_x:stdgo.AnyInterface, _y:stdgo.AnyInterface):Bool {
        final _x = (_x : stdgo.AnyInterface);
        final _y = (_y : stdgo.AnyInterface);
        return stdgo._internal.reflect.Reflect_deepequal.deepEqual(_x, _y);
    }
    /**
        * MakeRO returns a copy of v with the read-only flag set.
    **/
    static public inline function makeRO(_v:Value):Value {
        return stdgo._internal.reflect.Reflect_makero.makeRO(_v);
    }
    /**
        * IsRO reports whether v's read-only flag is set.
    **/
    static public inline function isRO(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_isro.isRO(_v);
    }
    /**
        * FuncLayout calls funcLayout and returns a subset of the results for testing.
        * 
        * Bitmaps like stack, gc, inReg, and outReg are expanded such that each bit
        * takes up one byte, so that writing out test cases is a little clearer.
        * If ptrs is false, gc will be nil.
    **/
    static public inline function funcLayout(_t:Type_, _rcvr:Type_):{ var _0 : Type_; var _1 : stdgo.GoUIntptr; var _2 : stdgo.GoUIntptr; var _3 : Array<std.UInt>; var _4 : Array<std.UInt>; var _5 : Array<std.UInt>; var _6 : Array<std.UInt>; var _7 : Bool; } {
        return {
            final obj = stdgo._internal.reflect.Reflect_funclayout.funcLayout(_t, _rcvr);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : [for (i in obj._3) i], _4 : [for (i in obj._4) i], _5 : [for (i in obj._5) i], _6 : [for (i in obj._6) i], _7 : obj._7 };
        };
    }
    static public inline function typeLinks():Array<String> {
        return [for (i in stdgo._internal.reflect.Reflect_typelinks.typeLinks()) i];
    }
    static public inline function mapBucketOf(_x:Type_, _y:Type_):Type_ {
        return stdgo._internal.reflect.Reflect_mapbucketof.mapBucketOf(_x, _y);
    }
    static public inline function cachedBucketOf(_m:Type_):Type_ {
        return stdgo._internal.reflect.Reflect_cachedbucketof.cachedBucketOf(_m);
    }
    static public inline function firstMethodNameBytes(_t:Type_):stdgo.Pointer<std.UInt> {
        return stdgo._internal.reflect.Reflect_firstmethodnamebytes.firstMethodNameBytes(_t);
    }
    static public inline function isExported(_t:Type_):Bool {
        return stdgo._internal.reflect.Reflect_isexported.isExported(_t);
    }
    static public inline function resolveReflectName(_s:String):Void {
        final _s = (_s : stdgo.GoString);
        stdgo._internal.reflect.Reflect_resolvereflectname.resolveReflectName(_s);
    }
    static public inline function setArgRegs(_ints:StdTypes.Int, _floats:StdTypes.Int, _floatSize:stdgo.GoUIntptr):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.GoUIntptr> {
        final _ints = (_ints : stdgo.GoInt);
        final _floats = (_floats : stdgo.GoInt);
        final _floatSize = (_floatSize : stdgo.GoUIntptr);
        return {
            final obj = stdgo._internal.reflect.Reflect_setargregs.setArgRegs(_ints, _floats, _floatSize);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        * MakeFunc returns a new function of the given Type
        * that wraps the function fn. When called, that new function
        * does the following:
        * 
        *   - converts its arguments to a slice of Values.
        *   - runs results := fn(args).
        *   - returns the results as a slice of Values, one per formal result.
        * 
        * The implementation fn can assume that the argument Value slice
        * has the number and type of arguments given by typ.
        * If typ describes a variadic function, the final Value is itself
        * a slice representing the variadic arguments, as in the
        * body of a variadic function. The result Value slice returned by fn
        * must have the number and type of results given by typ.
        * 
        * The Value.Call method allows the caller to invoke a typed function
        * in terms of Values; in contrast, MakeFunc allows the caller to implement
        * a typed function in terms of Values.
        * 
        * The Examples section of the documentation includes an illustration
        * of how to use MakeFunc to build a swap function for different types.
    **/
    static public inline function makeFunc(_typ:Type_, _fn:Array<Value> -> Array<Value>):Value {
        final _fn = _fn;
        return stdgo._internal.reflect.Reflect_makefunc.makeFunc(_typ, _fn);
    }
    /**
        * Swapper returns a function that swaps the elements in the provided
        * slice.
        * 
        * Swapper panics if the provided interface is not a slice.
    **/
    static public inline function swapper(_slice:stdgo.AnyInterface):(StdTypes.Int, StdTypes.Int) -> Void {
        final _slice = (_slice : stdgo.AnyInterface);
        return (_0, _1) -> stdgo._internal.reflect.Reflect_swapper.swapper(_slice)(_0, _1);
    }
    /**
        * TypeOf returns the reflection Type that represents the dynamic type of i.
        * If i is a nil interface value, TypeOf returns nil.
    **/
    static public inline function typeOf(_i:stdgo.AnyInterface):Type_ {
        final _i = (_i : stdgo.AnyInterface);
        return stdgo._internal.reflect.Reflect_typeof.typeOf(_i);
    }
    /**
        * PtrTo returns the pointer type with element t.
        * For example, if t represents type Foo, PtrTo(t) represents *Foo.
        * 
        * PtrTo is the old spelling of PointerTo.
        * The two functions behave identically.
    **/
    static public inline function ptrTo(_t:Type_):Type_ {
        return stdgo._internal.reflect.Reflect_ptrto.ptrTo(_t);
    }
    /**
        * PointerTo returns the pointer type with element t.
        * For example, if t represents type Foo, PointerTo(t) represents *Foo.
    **/
    static public inline function pointerTo(_t:Type_):Type_ {
        return stdgo._internal.reflect.Reflect_pointerto.pointerTo(_t);
    }
    /**
        * ChanOf returns the channel type with the given direction and element type.
        * For example, if t represents int, ChanOf(RecvDir, t) represents <-chan int.
        * 
        * The gc runtime imposes a limit of 64 kB on channel element types.
        * If t's size is equal to or exceeds this limit, ChanOf panics.
    **/
    static public inline function chanOf(_dir:ChanDir, _t:Type_):Type_ {
        return stdgo._internal.reflect.Reflect_chanof.chanOf(_dir, _t);
    }
    /**
        * MapOf returns the map type with the given key and element types.
        * For example, if k represents int and e represents string,
        * MapOf(k, e) represents map[int]string.
        * 
        * If the key type is not a valid map key type (that is, if it does
        * not implement Go's == operator), MapOf panics.
    **/
    static public inline function mapOf(_key:Type_, _elem:Type_):Type_ {
        return stdgo._internal.reflect.Reflect_mapof.mapOf(_key, _elem);
    }
    /**
        * FuncOf returns the function type with the given argument and result types.
        * For example if k represents int and e represents string,
        * FuncOf([]Type{k}, []Type{e}, false) represents func(int) string.
        * 
        * The variadic argument controls whether the function is variadic. FuncOf
        * panics if the in[len(in)-1] does not represent a slice and variadic is
        * true.
    **/
    static public inline function funcOf(_in:Array<Type_>, _out:Array<Type_>, _variadic:Bool):Type_ {
        final _in = ([for (i in _in) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>);
        final _out = ([for (i in _out) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>);
        return stdgo._internal.reflect.Reflect_funcof.funcOf(_in, _out, _variadic);
    }
    /**
        * SliceOf returns the slice type with element type t.
        * For example, if t represents int, SliceOf(t) represents []int.
    **/
    static public inline function sliceOf(_t:Type_):Type_ {
        return stdgo._internal.reflect.Reflect_sliceof.sliceOf(_t);
    }
    /**
        * StructOf returns the struct type containing fields.
        * The Offset and Index fields are ignored and computed as they would be
        * by the compiler.
        * 
        * StructOf currently does not generate wrapper methods for embedded
        * fields and panics if passed unexported StructFields.
        * These limitations may be lifted in a future version.
    **/
    static public inline function structOf(_fields:Array<StructField>):Type_ {
        final _fields = ([for (i in _fields) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>);
        return stdgo._internal.reflect.Reflect_structof.structOf(_fields);
    }
    /**
        * ArrayOf returns the array type with the given length and element type.
        * For example, if t represents int, ArrayOf(5, t) represents [5]int.
        * 
        * If the resulting type would be larger than the available address space,
        * ArrayOf panics.
    **/
    static public inline function arrayOf(_length:StdTypes.Int, _elem:Type_):Type_ {
        final _length = (_length : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_arrayof.arrayOf(_length, _elem);
    }
    /**
        * Append appends the values x to a slice s and returns the resulting slice.
        * As in Go, each x's value must be assignable to the slice's element type.
    **/
    static public inline function append(_s:Value, _x:haxe.Rest<Value>):Value {
        return stdgo._internal.reflect.Reflect_append.append(_s, ...[for (i in _x) i]);
    }
    /**
        * AppendSlice appends a slice t to a slice s and returns the resulting slice.
        * The slices s and t must have the same element type.
    **/
    static public inline function appendSlice(_s:Value, _t:Value):Value {
        return stdgo._internal.reflect.Reflect_appendslice.appendSlice(_s, _t);
    }
    /**
        * Copy copies the contents of src into dst until either
        * dst has been filled or src has been exhausted.
        * It returns the number of elements copied.
        * Dst and src each must have kind Slice or Array, and
        * dst and src must have the same element type.
        * 
        * As a special case, src can have kind String if the element type of dst is kind Uint8.
    **/
    static public inline function copy(_dst:Value, _src:Value):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_copy.copy(_dst, _src);
    }
    /**
        * Select executes a select operation described by the list of cases.
        * Like the Go select statement, it blocks until at least one of the cases
        * can proceed, makes a uniform pseudo-random choice,
        * and then executes that case. It returns the index of the chosen case
        * and, if that case was a receive operation, the value received and a
        * boolean indicating whether the value corresponds to a send on the channel
        * (as opposed to a zero value received because the channel is closed).
        * Select supports a maximum of 65536 cases.
    **/
    static public inline function select(_cases:Array<SelectCase>):stdgo.Tuple.Tuple3<StdTypes.Int, Value, Bool> {
        final _cases = ([for (i in _cases) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_selectcase.SelectCase>);
        return {
            final obj = stdgo._internal.reflect.Reflect_select.select(_cases);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        * MakeSlice creates a new zero-initialized slice value
        * for the specified slice type, length, and capacity.
    **/
    static public inline function makeSlice(_typ:Type_, _len:StdTypes.Int, _cap:StdTypes.Int):Value {
        final _len = (_len : stdgo.GoInt);
        final _cap = (_cap : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_makeslice.makeSlice(_typ, _len, _cap);
    }
    /**
        * MakeChan creates a new channel with the specified type and buffer size.
    **/
    static public inline function makeChan(_typ:Type_, _buffer:StdTypes.Int):Value {
        final _buffer = (_buffer : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_makechan.makeChan(_typ, _buffer);
    }
    /**
        * MakeMap creates a new map with the specified type.
    **/
    static public inline function makeMap(_typ:Type_):Value {
        return stdgo._internal.reflect.Reflect_makemap.makeMap(_typ);
    }
    /**
        * MakeMapWithSize creates a new map with the specified type
        * and initial space for approximately n elements.
    **/
    static public inline function makeMapWithSize(_typ:Type_, _n:StdTypes.Int):Value {
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_makemapwithsize.makeMapWithSize(_typ, _n);
    }
    /**
        * Indirect returns the value that v points to.
        * If v is a nil pointer, Indirect returns a zero Value.
        * If v is not a pointer, Indirect returns v.
    **/
    static public inline function indirect(_v:Value):Value {
        return stdgo._internal.reflect.Reflect_indirect.indirect(_v);
    }
    /**
        * ValueOf returns a new Value initialized to the concrete value
        * stored in the interface i. ValueOf(nil) returns the zero Value.
    **/
    static public inline function valueOf(_i:stdgo.AnyInterface):Value {
        final _i = (_i : stdgo.AnyInterface);
        return stdgo._internal.reflect.Reflect_valueof.valueOf(_i);
    }
    /**
        * Zero returns a Value representing the zero value for the specified type.
        * The result is different from the zero value of the Value struct,
        * which represents no value at all.
        * For example, Zero(TypeOf(42)) returns a Value with Kind Int and value 0.
        * The returned value is neither addressable nor settable.
    **/
    static public inline function zero(_typ:Type_):Value {
        return stdgo._internal.reflect.Reflect_zero.zero(_typ);
    }
    /**
        * New returns a Value representing a pointer to a new zero value
        * for the specified type. That is, the returned Value's Type is PointerTo(typ).
    **/
    static public inline function new_(_typ:Type_):Value {
        return stdgo._internal.reflect.Reflect_new_.new_(_typ);
    }
    /**
        * NewAt returns a Value representing a pointer to a value of the
        * specified type, using p as that pointer.
    **/
    static public inline function newAt(_typ:Type_, _p:stdgo._internal.unsafe.Unsafe.UnsafePointer):Value {
        return stdgo._internal.reflect.Reflect_newat.newAt(_typ, _p);
    }
    /**
        * VisibleFields returns all the visible fields in t, which must be a
        * struct type. A field is defined as visible if it's accessible
        * directly with a FieldByName call. The returned fields include fields
        * inside anonymous struct members and unexported fields. They follow
        * the same order found in the struct, with anonymous fields followed
        * immediately by their promoted fields.
        * 
        * For each element e of the returned slice, the corresponding field
        * can be retrieved from a value v of type t by calling v.FieldByIndex(e.Index).
    **/
    static public inline function visibleFields(_t:Type_):Array<StructField> {
        return [for (i in stdgo._internal.reflect.Reflect_visiblefields.visibleFields(_t)) i];
    }
}
