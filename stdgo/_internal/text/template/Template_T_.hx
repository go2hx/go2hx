package stdgo._internal.text.template;
@:structInit @:using(stdgo._internal.text.template.Template_T__static_extension.T__static_extension) class T_ {
    public var __True : Bool = false;
    public var i : stdgo.GoInt = 0;
    public var u16 : stdgo.GoUInt16 = 0;
    public var x : stdgo.GoString = "";
    public var s : stdgo.GoString = "";
    public var floatZero : stdgo.GoFloat64 = 0;
    public var complexZero : stdgo.GoComplex128 = new stdgo.GoComplex128(0, 0);
    public var u : stdgo.Ref<stdgo._internal.text.template.Template_U.U> = (null : stdgo.Ref<stdgo._internal.text.template.Template_U.U>);
    public var v0 : stdgo._internal.text.template.Template_V.V = ({} : stdgo._internal.text.template.Template_V.V);
    public var v1 : stdgo.Ref<stdgo._internal.text.template.Template_V.V> = (null : stdgo.Ref<stdgo._internal.text.template.Template_V.V>);
    public var v2 : stdgo.Ref<stdgo._internal.text.template.Template_V.V> = (null : stdgo.Ref<stdgo._internal.text.template.Template_V.V>);
    public var w0 : stdgo._internal.text.template.Template_W.W = ({} : stdgo._internal.text.template.Template_W.W);
    public var w1 : stdgo.Ref<stdgo._internal.text.template.Template_W.W> = (null : stdgo.Ref<stdgo._internal.text.template.Template_W.W>);
    public var w2 : stdgo.Ref<stdgo._internal.text.template.Template_W.W> = (null : stdgo.Ref<stdgo._internal.text.template.Template_W.W>);
    public var si : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var sicap : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var siempty : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var sb : stdgo.Slice<Bool> = (null : stdgo.Slice<Bool>);
    public var ai : stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(3, 3, ...[for (i in 0 ... 3) (0 : stdgo.GoInt)]);
    public var msi : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    public var msione : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    public var msiempty : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    public var mxi : stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>);
    public var mii : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
    public var mi32s : stdgo.GoMap<stdgo.GoInt32, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoInt32, stdgo.GoString>);
    public var mi64s : stdgo.GoMap<stdgo.GoInt64, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoInt64, stdgo.GoString>);
    public var mui32s : stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>);
    public var mui64s : stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>);
    public var mi8s : stdgo.GoMap<stdgo.GoInt8, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoInt8, stdgo.GoString>);
    public var mui8s : stdgo.GoMap<stdgo.GoUInt8, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoUInt8, stdgo.GoString>);
    public var smsi : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>> = (null : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>);
    public var empty0 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var empty1 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var empty2 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var empty3 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var empty4 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var nonEmptyInterface : stdgo._internal.text.template.Template_I.I = (null : stdgo._internal.text.template.Template_I.I);
    public var nonEmptyInterfacePtS : stdgo.Ref<stdgo._internal.text.template.Template_I.I> = (null : stdgo.Ref<stdgo._internal.text.template.Template_I.I>);
    public var nonEmptyInterfaceNil : stdgo._internal.text.template.Template_I.I = (null : stdgo._internal.text.template.Template_I.I);
    public var nonEmptyInterfaceTypedNil : stdgo._internal.text.template.Template_I.I = (null : stdgo._internal.text.template.Template_I.I);
    public var str : stdgo._internal.fmt.Fmt_Stringer.Stringer = (null : stdgo._internal.fmt.Fmt_Stringer.Stringer);
    public var err : stdgo.Error = (null : stdgo.Error);
    public var pi : stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
    public var ps : stdgo.Pointer<stdgo.GoString> = (null : stdgo.Pointer<stdgo.GoString>);
    public var psi : stdgo.Ref<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>);
    public var nil : stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
    public var binaryFunc : (stdgo.GoString, stdgo.GoString) -> stdgo.GoString = null;
    public var variadicFunc : haxe.Rest<stdgo.GoString> -> stdgo.GoString = null;
    public var variadicFuncInt : (stdgo.GoInt, haxe.Rest<stdgo.GoString>) -> stdgo.GoString = null;
    public var nilOKFunc : stdgo.Pointer<stdgo.GoInt> -> Bool = null;
    public var errFunc : () -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; } = null;
    public var panicFunc : () -> stdgo.GoString = null;
    public var tmpl : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = (null : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
    public var _unexported : stdgo.GoInt = 0;
    public function new(?__True:Bool, ?i:stdgo.GoInt, ?u16:stdgo.GoUInt16, ?x:stdgo.GoString, ?s:stdgo.GoString, ?floatZero:stdgo.GoFloat64, ?complexZero:stdgo.GoComplex128, ?u:stdgo.Ref<stdgo._internal.text.template.Template_U.U>, ?v0:stdgo._internal.text.template.Template_V.V, ?v1:stdgo.Ref<stdgo._internal.text.template.Template_V.V>, ?v2:stdgo.Ref<stdgo._internal.text.template.Template_V.V>, ?w0:stdgo._internal.text.template.Template_W.W, ?w1:stdgo.Ref<stdgo._internal.text.template.Template_W.W>, ?w2:stdgo.Ref<stdgo._internal.text.template.Template_W.W>, ?si:stdgo.Slice<stdgo.GoInt>, ?sicap:stdgo.Slice<stdgo.GoInt>, ?siempty:stdgo.Slice<stdgo.GoInt>, ?sb:stdgo.Slice<Bool>, ?ai:stdgo.GoArray<stdgo.GoInt>, ?msi:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?msione:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?msiempty:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?mxi:stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>, ?mii:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, ?mi32s:stdgo.GoMap<stdgo.GoInt32, stdgo.GoString>, ?mi64s:stdgo.GoMap<stdgo.GoInt64, stdgo.GoString>, ?mui32s:stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>, ?mui64s:stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>, ?mi8s:stdgo.GoMap<stdgo.GoInt8, stdgo.GoString>, ?mui8s:stdgo.GoMap<stdgo.GoUInt8, stdgo.GoString>, ?smsi:stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>, ?empty0:stdgo.AnyInterface, ?empty1:stdgo.AnyInterface, ?empty2:stdgo.AnyInterface, ?empty3:stdgo.AnyInterface, ?empty4:stdgo.AnyInterface, ?nonEmptyInterface:stdgo._internal.text.template.Template_I.I, ?nonEmptyInterfacePtS:stdgo.Ref<stdgo._internal.text.template.Template_I.I>, ?nonEmptyInterfaceNil:stdgo._internal.text.template.Template_I.I, ?nonEmptyInterfaceTypedNil:stdgo._internal.text.template.Template_I.I, ?str:stdgo._internal.fmt.Fmt_Stringer.Stringer, ?err:stdgo.Error, ?pi:stdgo.Pointer<stdgo.GoInt>, ?ps:stdgo.Pointer<stdgo.GoString>, ?psi:stdgo.Ref<stdgo.Slice<stdgo.GoInt>>, ?nil:stdgo.Pointer<stdgo.GoInt>, ?binaryFunc:(stdgo.GoString, stdgo.GoString) -> stdgo.GoString, ?variadicFunc:haxe.Rest<stdgo.GoString> -> stdgo.GoString, ?variadicFuncInt:(stdgo.GoInt, haxe.Rest<stdgo.GoString>) -> stdgo.GoString, ?nilOKFunc:stdgo.Pointer<stdgo.GoInt> -> Bool, ?errFunc:() -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; }, ?panicFunc:() -> stdgo.GoString, ?tmpl:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>, ?_unexported:stdgo.GoInt) {
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
        if (si != null) this.si = si;
        if (sicap != null) this.sicap = sicap;
        if (siempty != null) this.siempty = siempty;
        if (sb != null) this.sb = sb;
        if (ai != null) this.ai = ai;
        if (msi != null) this.msi = msi;
        if (msione != null) this.msione = msione;
        if (msiempty != null) this.msiempty = msiempty;
        if (mxi != null) this.mxi = mxi;
        if (mii != null) this.mii = mii;
        if (mi32s != null) this.mi32s = mi32s;
        if (mi64s != null) this.mi64s = mi64s;
        if (mui32s != null) this.mui32s = mui32s;
        if (mui64s != null) this.mui64s = mui64s;
        if (mi8s != null) this.mi8s = mi8s;
        if (mui8s != null) this.mui8s = mui8s;
        if (smsi != null) this.smsi = smsi;
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
        if (pi != null) this.pi = pi;
        if (ps != null) this.ps = ps;
        if (psi != null) this.psi = psi;
        if (nil != null) this.nil = nil;
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
si,
sicap,
siempty,
sb,
ai,
msi,
msione,
msiempty,
mxi,
mii,
mi32s,
mi64s,
mui32s,
mui64s,
mi8s,
mui8s,
smsi,
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
pi,
ps,
psi,
nil,
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
