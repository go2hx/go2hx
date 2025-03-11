package stdgo._internal.text.template;
@:structInit @:using(stdgo._internal.text.template.Template_t__static_extension.T__static_extension) class T_ {
    public var __True : Bool = false;
    public var i : stdgo.GoInt = 0;
    public var u16 : stdgo.GoUInt16 = 0;
    public var x : stdgo.GoString = "";
    public var s : stdgo.GoString = "";
    public var floatZero : stdgo.GoFloat64 = 0;
    public var complexZero : stdgo.GoComplex128 = new stdgo.GoComplex128(0, 0);
    public var u : stdgo.Ref<stdgo._internal.text.template.Template_u.U> = (null : stdgo.Ref<stdgo._internal.text.template.Template_u.U>);
    public var v0 : stdgo._internal.text.template.Template_v.V = ({} : stdgo._internal.text.template.Template_v.V);
    public var v1 : stdgo.Ref<stdgo._internal.text.template.Template_v.V> = (null : stdgo.Ref<stdgo._internal.text.template.Template_v.V>);
    public var v2 : stdgo.Ref<stdgo._internal.text.template.Template_v.V> = (null : stdgo.Ref<stdgo._internal.text.template.Template_v.V>);
    public var w0 : stdgo._internal.text.template.Template_w.W = ({} : stdgo._internal.text.template.Template_w.W);
    public var w1 : stdgo.Ref<stdgo._internal.text.template.Template_w.W> = (null : stdgo.Ref<stdgo._internal.text.template.Template_w.W>);
    public var w2 : stdgo.Ref<stdgo._internal.text.template.Template_w.W> = (null : stdgo.Ref<stdgo._internal.text.template.Template_w.W>);
    public var sI : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var sICap : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var sIEmpty : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var sB : stdgo.Slice<Bool> = (null : stdgo.Slice<Bool>);
    public var aI : stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(3, 3).__setNumber32__();
    public var mSI : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    public var mSIone : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    public var mSIEmpty : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    public var mXI : stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>);
    public var mII : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
    public var mI32S : stdgo.GoMap<stdgo.GoInt32, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoInt32, stdgo.GoString>);
    public var mI64S : stdgo.GoMap<stdgo.GoInt64, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoInt64, stdgo.GoString>);
    public var mUI32S : stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>);
    public var mUI64S : stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>);
    public var mI8S : stdgo.GoMap<stdgo.GoInt8, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoInt8, stdgo.GoString>);
    public var mUI8S : stdgo.GoMap<stdgo.GoUInt8, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoUInt8, stdgo.GoString>);
    public var sMSI : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>> = (null : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>);
    public var empty0 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var empty1 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var empty2 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var empty3 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var empty4 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var nonEmptyInterface : stdgo._internal.text.template.Template_i.I = (null : stdgo._internal.text.template.Template_i.I);
    public var nonEmptyInterfacePtS : stdgo.Ref<stdgo._internal.text.template.Template_i.I> = (null : stdgo.Ref<stdgo._internal.text.template.Template_i.I>);
    public var nonEmptyInterfaceNil : stdgo._internal.text.template.Template_i.I = (null : stdgo._internal.text.template.Template_i.I);
    public var nonEmptyInterfaceTypedNil : stdgo._internal.text.template.Template_i.I = (null : stdgo._internal.text.template.Template_i.I);
    public var str : stdgo._internal.fmt.Fmt_stringer.Stringer = (null : stdgo._internal.fmt.Fmt_stringer.Stringer);
    public var err : stdgo.Error = (null : stdgo.Error);
    public var pI : stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
    public var pS : stdgo.Pointer<stdgo.GoString> = (null : stdgo.Pointer<stdgo.GoString>);
    public var pSI : stdgo.Ref<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>);
    public var nIL : stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
    public var binaryFunc : (stdgo.GoString, stdgo.GoString) -> stdgo.GoString = null;
    public var variadicFunc : haxe.Rest<stdgo.GoString> -> stdgo.GoString = null;
    public var variadicFuncInt : (stdgo.GoInt, haxe.Rest<stdgo.GoString>) -> stdgo.GoString = null;
    public var nilOKFunc : stdgo.Pointer<stdgo.GoInt> -> Bool = null;
    public var errFunc : () -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; } = null;
    public var panicFunc : () -> stdgo.GoString = null;
    public var tmpl : stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = (null : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
    public var _unexported : stdgo.GoInt = 0;
    public function new(?__True:Bool, ?i:stdgo.GoInt, ?u16:stdgo.GoUInt16, ?x:stdgo.GoString, ?s:stdgo.GoString, ?floatZero:stdgo.GoFloat64, ?complexZero:stdgo.GoComplex128, ?u:stdgo.Ref<stdgo._internal.text.template.Template_u.U>, ?v0:stdgo._internal.text.template.Template_v.V, ?v1:stdgo.Ref<stdgo._internal.text.template.Template_v.V>, ?v2:stdgo.Ref<stdgo._internal.text.template.Template_v.V>, ?w0:stdgo._internal.text.template.Template_w.W, ?w1:stdgo.Ref<stdgo._internal.text.template.Template_w.W>, ?w2:stdgo.Ref<stdgo._internal.text.template.Template_w.W>, ?sI:stdgo.Slice<stdgo.GoInt>, ?sICap:stdgo.Slice<stdgo.GoInt>, ?sIEmpty:stdgo.Slice<stdgo.GoInt>, ?sB:stdgo.Slice<Bool>, ?aI:stdgo.GoArray<stdgo.GoInt>, ?mSI:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?mSIone:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?mSIEmpty:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?mXI:stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>, ?mII:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, ?mI32S:stdgo.GoMap<stdgo.GoInt32, stdgo.GoString>, ?mI64S:stdgo.GoMap<stdgo.GoInt64, stdgo.GoString>, ?mUI32S:stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>, ?mUI64S:stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>, ?mI8S:stdgo.GoMap<stdgo.GoInt8, stdgo.GoString>, ?mUI8S:stdgo.GoMap<stdgo.GoUInt8, stdgo.GoString>, ?sMSI:stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>, ?empty0:stdgo.AnyInterface, ?empty1:stdgo.AnyInterface, ?empty2:stdgo.AnyInterface, ?empty3:stdgo.AnyInterface, ?empty4:stdgo.AnyInterface, ?nonEmptyInterface:stdgo._internal.text.template.Template_i.I, ?nonEmptyInterfacePtS:stdgo.Ref<stdgo._internal.text.template.Template_i.I>, ?nonEmptyInterfaceNil:stdgo._internal.text.template.Template_i.I, ?nonEmptyInterfaceTypedNil:stdgo._internal.text.template.Template_i.I, ?str:stdgo._internal.fmt.Fmt_stringer.Stringer, ?err:stdgo.Error, ?pI:stdgo.Pointer<stdgo.GoInt>, ?pS:stdgo.Pointer<stdgo.GoString>, ?pSI:stdgo.Ref<stdgo.Slice<stdgo.GoInt>>, ?nIL:stdgo.Pointer<stdgo.GoInt>, ?binaryFunc:(stdgo.GoString, stdgo.GoString) -> stdgo.GoString, ?variadicFunc:haxe.Rest<stdgo.GoString> -> stdgo.GoString, ?variadicFuncInt:(stdgo.GoInt, haxe.Rest<stdgo.GoString>) -> stdgo.GoString, ?nilOKFunc:stdgo.Pointer<stdgo.GoInt> -> Bool, ?errFunc:() -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; }, ?panicFunc:() -> stdgo.GoString, ?tmpl:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>, ?_unexported:stdgo.GoInt) {
        if (__True != null) this.__True = __True;
        if (i != null) this.i = i;
        if (u16 != null) this.u16 = u16;
        if (x != null) this.x = x;
        if (s != null) this.s = s;
        if (floatZero != null) this.floatZero = floatZero;
        if (complexZero != null) this.complexZero = complexZero;
        if (u != null) this.u = u;
        if (v0 != null) this.v0 = v0;
        if (v1 != null) this.v1 = v1;
        if (v2 != null) this.v2 = v2;
        if (w0 != null) this.w0 = w0;
        if (w1 != null) this.w1 = w1;
        if (w2 != null) this.w2 = w2;
        if (sI != null) this.sI = sI;
        if (sICap != null) this.sICap = sICap;
        if (sIEmpty != null) this.sIEmpty = sIEmpty;
        if (sB != null) this.sB = sB;
        if (aI != null) this.aI = aI;
        if (mSI != null) this.mSI = mSI;
        if (mSIone != null) this.mSIone = mSIone;
        if (mSIEmpty != null) this.mSIEmpty = mSIEmpty;
        if (mXI != null) this.mXI = mXI;
        if (mII != null) this.mII = mII;
        if (mI32S != null) this.mI32S = mI32S;
        if (mI64S != null) this.mI64S = mI64S;
        if (mUI32S != null) this.mUI32S = mUI32S;
        if (mUI64S != null) this.mUI64S = mUI64S;
        if (mI8S != null) this.mI8S = mI8S;
        if (mUI8S != null) this.mUI8S = mUI8S;
        if (sMSI != null) this.sMSI = sMSI;
        if (empty0 != null) this.empty0 = empty0;
        if (empty1 != null) this.empty1 = empty1;
        if (empty2 != null) this.empty2 = empty2;
        if (empty3 != null) this.empty3 = empty3;
        if (empty4 != null) this.empty4 = empty4;
        if (nonEmptyInterface != null) this.nonEmptyInterface = nonEmptyInterface;
        if (nonEmptyInterfacePtS != null) this.nonEmptyInterfacePtS = nonEmptyInterfacePtS;
        if (nonEmptyInterfaceNil != null) this.nonEmptyInterfaceNil = nonEmptyInterfaceNil;
        if (nonEmptyInterfaceTypedNil != null) this.nonEmptyInterfaceTypedNil = nonEmptyInterfaceTypedNil;
        if (str != null) this.str = str;
        if (err != null) this.err = err;
        if (pI != null) this.pI = pI;
        if (pS != null) this.pS = pS;
        if (pSI != null) this.pSI = pSI;
        if (nIL != null) this.nIL = nIL;
        if (binaryFunc != null) this.binaryFunc = binaryFunc;
        if (variadicFunc != null) this.variadicFunc = variadicFunc;
        if (variadicFuncInt != null) this.variadicFuncInt = variadicFuncInt;
        if (nilOKFunc != null) this.nilOKFunc = nilOKFunc;
        if (errFunc != null) this.errFunc = errFunc;
        if (panicFunc != null) this.panicFunc = panicFunc;
        if (tmpl != null) this.tmpl = tmpl;
        if (_unexported != null) this._unexported = _unexported;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_(
__True,
i,
u16,
x,
s,
floatZero,
complexZero,
u,
v0,
v1,
v2,
w0,
w1,
w2,
sI,
sICap,
sIEmpty,
sB,
aI,
mSI,
mSIone,
mSIEmpty,
mXI,
mII,
mI32S,
mI64S,
mUI32S,
mUI64S,
mI8S,
mUI8S,
sMSI,
empty0,
empty1,
empty2,
empty3,
empty4,
nonEmptyInterface,
nonEmptyInterfacePtS,
nonEmptyInterfaceNil,
nonEmptyInterfaceTypedNil,
str,
err,
pI,
pS,
pSI,
nIL,
binaryFunc,
variadicFunc,
variadicFuncInt,
nilOKFunc,
errFunc,
panicFunc,
tmpl,
_unexported);
    }
}
