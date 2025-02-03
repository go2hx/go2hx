package stdgo.text.template;
@:structInit @:using(stdgo.text.template.Template.T__static_extension) abstract T_(stdgo._internal.text.template.Template_T_.T_) from stdgo._internal.text.template.Template_T_.T_ to stdgo._internal.text.template.Template_T_.T_ {
    public var __True(get, set) : Bool;
    function get___True():Bool return this.__True;
    function set___True(v:Bool):Bool {
        this.__True = v;
        return v;
    }
    public var i(get, set) : StdTypes.Int;
    function get_i():StdTypes.Int return this.i;
    function set_i(v:StdTypes.Int):StdTypes.Int {
        this.i = (v : stdgo.GoInt);
        return v;
    }
    public var u16(get, set) : std.UInt;
    function get_u16():std.UInt return this.u16;
    function set_u16(v:std.UInt):std.UInt {
        this.u16 = (v : stdgo.GoUInt16);
        return v;
    }
    public var x(get, set) : String;
    function get_x():String return this.x;
    function set_x(v:String):String {
        this.x = (v : stdgo.GoString);
        return v;
    }
    public var s(get, set) : String;
    function get_s():String return this.s;
    function set_s(v:String):String {
        this.s = (v : stdgo.GoString);
        return v;
    }
    public var floatZero(get, set) : StdTypes.Float;
    function get_floatZero():StdTypes.Float return this.floatZero;
    function set_floatZero(v:StdTypes.Float):StdTypes.Float {
        this.floatZero = (v : stdgo.GoFloat64);
        return v;
    }
    public var complexZero(get, set) : stdgo.GoComplex128;
    function get_complexZero():stdgo.GoComplex128 return this.complexZero;
    function set_complexZero(v:stdgo.GoComplex128):stdgo.GoComplex128 {
        this.complexZero = (v : stdgo.GoComplex128);
        return v;
    }
    public var u(get, set) : U;
    function get_u():U return this.u;
    function set_u(v:U):U {
        this.u = (v : stdgo.Ref<stdgo._internal.text.template.Template_U.U>);
        return v;
    }
    public var v0(get, set) : V;
    function get_v0():V return this.v0;
    function set_v0(v:V):V {
        this.v0 = v;
        return v;
    }
    public var v1(get, set) : V;
    function get_v1():V return this.v1;
    function set_v1(v:V):V {
        this.v1 = (v : stdgo.Ref<stdgo._internal.text.template.Template_V.V>);
        return v;
    }
    public var v2(get, set) : V;
    function get_v2():V return this.v2;
    function set_v2(v:V):V {
        this.v2 = (v : stdgo.Ref<stdgo._internal.text.template.Template_V.V>);
        return v;
    }
    public var w0(get, set) : W;
    function get_w0():W return this.w0;
    function set_w0(v:W):W {
        this.w0 = v;
        return v;
    }
    public var w1(get, set) : W;
    function get_w1():W return this.w1;
    function set_w1(v:W):W {
        this.w1 = (v : stdgo.Ref<stdgo._internal.text.template.Template_W.W>);
        return v;
    }
    public var w2(get, set) : W;
    function get_w2():W return this.w2;
    function set_w2(v:W):W {
        this.w2 = (v : stdgo.Ref<stdgo._internal.text.template.Template_W.W>);
        return v;
    }
    public var sI(get, set) : Array<StdTypes.Int>;
    function get_sI():Array<StdTypes.Int> return [for (i in this.sI) i];
    function set_sI(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.sI = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var sICap(get, set) : Array<StdTypes.Int>;
    function get_sICap():Array<StdTypes.Int> return [for (i in this.sICap) i];
    function set_sICap(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.sICap = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var sIEmpty(get, set) : Array<StdTypes.Int>;
    function get_sIEmpty():Array<StdTypes.Int> return [for (i in this.sIEmpty) i];
    function set_sIEmpty(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.sIEmpty = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var sB(get, set) : Array<Bool>;
    function get_sB():Array<Bool> return [for (i in this.sB) i];
    function set_sB(v:Array<Bool>):Array<Bool> {
        this.sB = ([for (i in v) i] : stdgo.Slice<Bool>);
        return v;
    }
    public var aI(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get_aI():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this.aI) i]);
    function set_aI(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this.aI = ([for (i in v) (i : stdgo.GoInt)] : stdgo.GoArray<stdgo.GoInt>);
        return v;
    }
    public var mSI(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>;
    function get_mSI():stdgo.GoMap<stdgo.GoString, stdgo.GoInt> return this.mSI;
    function set_mSI(v:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>):stdgo.GoMap<stdgo.GoString, stdgo.GoInt> {
        this.mSI = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        return v;
    }
    public var mSIone(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>;
    function get_mSIone():stdgo.GoMap<stdgo.GoString, stdgo.GoInt> return this.mSIone;
    function set_mSIone(v:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>):stdgo.GoMap<stdgo.GoString, stdgo.GoInt> {
        this.mSIone = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        return v;
    }
    public var mSIEmpty(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>;
    function get_mSIEmpty():stdgo.GoMap<stdgo.GoString, stdgo.GoInt> return this.mSIEmpty;
    function set_mSIEmpty(v:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>):stdgo.GoMap<stdgo.GoString, stdgo.GoInt> {
        this.mSIEmpty = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        return v;
    }
    public var mXI(get, set) : stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>;
    function get_mXI():stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt> return this.mXI;
    function set_mXI(v:stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>):stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt> {
        this.mXI = (v : stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>);
        return v;
    }
    public var mII(get, set) : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>;
    function get_mII():stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> return this.mII;
    function set_mII(v:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>):stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> {
        this.mII = (v : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
        return v;
    }
    public var mI32S(get, set) : stdgo.GoMap<stdgo.GoInt32, stdgo.GoString>;
    function get_mI32S():stdgo.GoMap<stdgo.GoInt32, stdgo.GoString> return this.mI32S;
    function set_mI32S(v:stdgo.GoMap<stdgo.GoInt32, stdgo.GoString>):stdgo.GoMap<stdgo.GoInt32, stdgo.GoString> {
        this.mI32S = (v : stdgo.GoMap<stdgo.GoInt32, stdgo.GoString>);
        return v;
    }
    public var mI64S(get, set) : stdgo.GoMap<stdgo.GoInt64, stdgo.GoString>;
    function get_mI64S():stdgo.GoMap<stdgo.GoInt64, stdgo.GoString> return this.mI64S;
    function set_mI64S(v:stdgo.GoMap<stdgo.GoInt64, stdgo.GoString>):stdgo.GoMap<stdgo.GoInt64, stdgo.GoString> {
        this.mI64S = (v : stdgo.GoMap<stdgo.GoInt64, stdgo.GoString>);
        return v;
    }
    public var mUI32S(get, set) : stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>;
    function get_mUI32S():stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString> return this.mUI32S;
    function set_mUI32S(v:stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>):stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString> {
        this.mUI32S = (v : stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>);
        return v;
    }
    public var mUI64S(get, set) : stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>;
    function get_mUI64S():stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString> return this.mUI64S;
    function set_mUI64S(v:stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>):stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString> {
        this.mUI64S = (v : stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>);
        return v;
    }
    public var mI8S(get, set) : stdgo.GoMap<stdgo.GoInt8, stdgo.GoString>;
    function get_mI8S():stdgo.GoMap<stdgo.GoInt8, stdgo.GoString> return this.mI8S;
    function set_mI8S(v:stdgo.GoMap<stdgo.GoInt8, stdgo.GoString>):stdgo.GoMap<stdgo.GoInt8, stdgo.GoString> {
        this.mI8S = (v : stdgo.GoMap<stdgo.GoInt8, stdgo.GoString>);
        return v;
    }
    public var mUI8S(get, set) : stdgo.GoMap<stdgo.GoUInt8, stdgo.GoString>;
    function get_mUI8S():stdgo.GoMap<stdgo.GoUInt8, stdgo.GoString> return this.mUI8S;
    function set_mUI8S(v:stdgo.GoMap<stdgo.GoUInt8, stdgo.GoString>):stdgo.GoMap<stdgo.GoUInt8, stdgo.GoString> {
        this.mUI8S = (v : stdgo.GoMap<stdgo.GoUInt8, stdgo.GoString>);
        return v;
    }
    public var sMSI(get, set) : Array<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>;
    function get_sMSI():Array<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>> return [for (i in this.sMSI) i];
    function set_sMSI(v:Array<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>):Array<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>> {
        this.sMSI = ([for (i in v) (i : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>)] : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>);
        return v;
    }
    public var empty0(get, set) : stdgo.AnyInterface;
    function get_empty0():stdgo.AnyInterface return this.empty0;
    function set_empty0(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.empty0 = (v : stdgo.AnyInterface);
        return v;
    }
    public var empty1(get, set) : stdgo.AnyInterface;
    function get_empty1():stdgo.AnyInterface return this.empty1;
    function set_empty1(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.empty1 = (v : stdgo.AnyInterface);
        return v;
    }
    public var empty2(get, set) : stdgo.AnyInterface;
    function get_empty2():stdgo.AnyInterface return this.empty2;
    function set_empty2(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.empty2 = (v : stdgo.AnyInterface);
        return v;
    }
    public var empty3(get, set) : stdgo.AnyInterface;
    function get_empty3():stdgo.AnyInterface return this.empty3;
    function set_empty3(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.empty3 = (v : stdgo.AnyInterface);
        return v;
    }
    public var empty4(get, set) : stdgo.AnyInterface;
    function get_empty4():stdgo.AnyInterface return this.empty4;
    function set_empty4(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.empty4 = (v : stdgo.AnyInterface);
        return v;
    }
    public var nonEmptyInterface(get, set) : I;
    function get_nonEmptyInterface():I return this.nonEmptyInterface;
    function set_nonEmptyInterface(v:I):I {
        this.nonEmptyInterface = v;
        return v;
    }
    public var nonEmptyInterfacePtS(get, set) : I;
    function get_nonEmptyInterfacePtS():I return this.nonEmptyInterfacePtS;
    function set_nonEmptyInterfacePtS(v:I):I {
        this.nonEmptyInterfacePtS = (v : stdgo.Ref<stdgo._internal.text.template.Template_I.I>);
        return v;
    }
    public var nonEmptyInterfaceNil(get, set) : I;
    function get_nonEmptyInterfaceNil():I return this.nonEmptyInterfaceNil;
    function set_nonEmptyInterfaceNil(v:I):I {
        this.nonEmptyInterfaceNil = v;
        return v;
    }
    public var nonEmptyInterfaceTypedNil(get, set) : I;
    function get_nonEmptyInterfaceTypedNil():I return this.nonEmptyInterfaceTypedNil;
    function set_nonEmptyInterfaceTypedNil(v:I):I {
        this.nonEmptyInterfaceTypedNil = v;
        return v;
    }
    public var str(get, set) : stdgo._internal.fmt.Fmt_Stringer.Stringer;
    function get_str():stdgo._internal.fmt.Fmt_Stringer.Stringer return this.str;
    function set_str(v:stdgo._internal.fmt.Fmt_Stringer.Stringer):stdgo._internal.fmt.Fmt_Stringer.Stringer {
        this.str = v;
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public var pI(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_pI():stdgo.Pointer<StdTypes.Int> return this.pI;
    function set_pI(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.pI = v;
        return v;
    }
    public var pS(get, set) : stdgo.Pointer<String>;
    function get_pS():stdgo.Pointer<String> return this.pS;
    function set_pS(v:stdgo.Pointer<String>):stdgo.Pointer<String> {
        this.pS = v;
        return v;
    }
    public var pSI(get, set) : Array<StdTypes.Int>;
    function get_pSI():Array<StdTypes.Int> return this.pSI;
    function set_pSI(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.pSI = (v : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>);
        return v;
    }
    public var nIL(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_nIL():stdgo.Pointer<StdTypes.Int> return this.nIL;
    function set_nIL(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.nIL = v;
        return v;
    }
    public var binaryFunc(get, set) : (stdgo.GoString, stdgo.GoString) -> stdgo.GoString;
    function get_binaryFunc():(stdgo.GoString, stdgo.GoString) -> stdgo.GoString return (_0, _1) -> this.binaryFunc(_0, _1);
    function set_binaryFunc(v:(stdgo.GoString, stdgo.GoString) -> stdgo.GoString):(stdgo.GoString, stdgo.GoString) -> stdgo.GoString {
        this.binaryFunc = v;
        return v;
    }
    public var variadicFunc(get, set) : haxe.Rest<stdgo.GoString> -> stdgo.GoString;
    function get_variadicFunc():haxe.Rest<stdgo.GoString> -> stdgo.GoString return _0 -> this.variadicFunc(_0);
    function set_variadicFunc(v:haxe.Rest<stdgo.GoString> -> stdgo.GoString):haxe.Rest<stdgo.GoString> -> stdgo.GoString {
        this.variadicFunc = v;
        return v;
    }
    public var variadicFuncInt(get, set) : (stdgo.GoInt, haxe.Rest<stdgo.GoString>) -> stdgo.GoString;
    function get_variadicFuncInt():(stdgo.GoInt, haxe.Rest<stdgo.GoString>) -> stdgo.GoString return (_0, _1) -> this.variadicFuncInt(_0, _1);
    function set_variadicFuncInt(v:(stdgo.GoInt, haxe.Rest<stdgo.GoString>) -> stdgo.GoString):(stdgo.GoInt, haxe.Rest<stdgo.GoString>) -> stdgo.GoString {
        this.variadicFuncInt = v;
        return v;
    }
    public var nilOKFunc(get, set) : stdgo.Pointer<stdgo.GoInt> -> Bool;
    function get_nilOKFunc():stdgo.Pointer<stdgo.GoInt> -> Bool return _0 -> this.nilOKFunc(_0);
    function set_nilOKFunc(v:stdgo.Pointer<stdgo.GoInt> -> Bool):stdgo.Pointer<stdgo.GoInt> -> Bool {
        this.nilOKFunc = v;
        return v;
    }
    public var errFunc(get, set) : () -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; };
    function get_errFunc():() -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; } return () -> this.errFunc();
    function set_errFunc(v:() -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; }):() -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        this.errFunc = v;
        return v;
    }
    public var panicFunc(get, set) : () -> stdgo.GoString;
    function get_panicFunc():() -> stdgo.GoString return () -> this.panicFunc();
    function set_panicFunc(v:() -> stdgo.GoString):() -> stdgo.GoString {
        this.panicFunc = v;
        return v;
    }
    public var tmpl(get, set) : Template_;
    function get_tmpl():Template_ return this.tmpl;
    function set_tmpl(v:Template_):Template_ {
        this.tmpl = (v : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        return v;
    }
    public var _unexported(get, set) : StdTypes.Int;
    function get__unexported():StdTypes.Int return this._unexported;
    function set__unexported(v:StdTypes.Int):StdTypes.Int {
        this._unexported = (v : stdgo.GoInt);
        return v;
    }
    public function new(?__True:Bool, ?i:StdTypes.Int, ?u16:std.UInt, ?x:String, ?s:String, ?floatZero:StdTypes.Float, ?complexZero:stdgo.GoComplex128, ?u:U, ?v0:V, ?v1:V, ?v2:V, ?w0:W, ?w1:W, ?w2:W, ?sI:Array<StdTypes.Int>, ?sICap:Array<StdTypes.Int>, ?sIEmpty:Array<StdTypes.Int>, ?sB:Array<Bool>, ?aI:haxe.ds.Vector<StdTypes.Int>, ?mSI:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?mSIone:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?mSIEmpty:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?mXI:stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>, ?mII:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, ?mI32S:stdgo.GoMap<stdgo.GoInt32, stdgo.GoString>, ?mI64S:stdgo.GoMap<stdgo.GoInt64, stdgo.GoString>, ?mUI32S:stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>, ?mUI64S:stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>, ?mI8S:stdgo.GoMap<stdgo.GoInt8, stdgo.GoString>, ?mUI8S:stdgo.GoMap<stdgo.GoUInt8, stdgo.GoString>, ?sMSI:Array<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>, ?empty0:stdgo.AnyInterface, ?empty1:stdgo.AnyInterface, ?empty2:stdgo.AnyInterface, ?empty3:stdgo.AnyInterface, ?empty4:stdgo.AnyInterface, ?nonEmptyInterface:I, ?nonEmptyInterfacePtS:I, ?nonEmptyInterfaceNil:I, ?nonEmptyInterfaceTypedNil:I, ?str:stdgo._internal.fmt.Fmt_Stringer.Stringer, ?err:stdgo.Error, ?pI:stdgo.Pointer<StdTypes.Int>, ?pS:stdgo.Pointer<String>, ?pSI:Array<StdTypes.Int>, ?nIL:stdgo.Pointer<StdTypes.Int>, ?binaryFunc:(stdgo.GoString, stdgo.GoString) -> stdgo.GoString, ?variadicFunc:haxe.Rest<stdgo.GoString> -> stdgo.GoString, ?variadicFuncInt:(stdgo.GoInt, haxe.Rest<stdgo.GoString>) -> stdgo.GoString, ?nilOKFunc:stdgo.Pointer<stdgo.GoInt> -> Bool, ?errFunc:() -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; }, ?panicFunc:() -> stdgo.GoString, ?tmpl:Template_, ?_unexported:StdTypes.Int) this = new stdgo._internal.text.template.Template_T_.T_(
__True,
(i : stdgo.GoInt),
(u16 : stdgo.GoUInt16),
(x : stdgo.GoString),
(s : stdgo.GoString),
(floatZero : stdgo.GoFloat64),
(complexZero : stdgo.GoComplex128),
(u : stdgo.Ref<stdgo._internal.text.template.Template_U.U>),
v0,
(v1 : stdgo.Ref<stdgo._internal.text.template.Template_V.V>),
(v2 : stdgo.Ref<stdgo._internal.text.template.Template_V.V>),
w0,
(w1 : stdgo.Ref<stdgo._internal.text.template.Template_W.W>),
(w2 : stdgo.Ref<stdgo._internal.text.template.Template_W.W>),
([for (i in sI) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>),
([for (i in sICap) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>),
([for (i in sIEmpty) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>),
([for (i in sB) i] : stdgo.Slice<Bool>),
([for (i in aI) (i : stdgo.GoInt)] : stdgo.GoArray<stdgo.GoInt>),
(mSI : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>),
(mSIone : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>),
(mSIEmpty : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>),
(mXI : stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>),
(mII : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>),
(mI32S : stdgo.GoMap<stdgo.GoInt32, stdgo.GoString>),
(mI64S : stdgo.GoMap<stdgo.GoInt64, stdgo.GoString>),
(mUI32S : stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>),
(mUI64S : stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>),
(mI8S : stdgo.GoMap<stdgo.GoInt8, stdgo.GoString>),
(mUI8S : stdgo.GoMap<stdgo.GoUInt8, stdgo.GoString>),
([for (i in sMSI) (i : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>)] : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>),
(empty0 : stdgo.AnyInterface),
(empty1 : stdgo.AnyInterface),
(empty2 : stdgo.AnyInterface),
(empty3 : stdgo.AnyInterface),
(empty4 : stdgo.AnyInterface),
nonEmptyInterface,
(nonEmptyInterfacePtS : stdgo.Ref<stdgo._internal.text.template.Template_I.I>),
nonEmptyInterfaceNil,
nonEmptyInterfaceTypedNil,
str,
(err : stdgo.Error),
pI,
pS,
(pSI : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>),
nIL,
binaryFunc,
variadicFunc,
variadicFuncInt,
nilOKFunc,
errFunc,
panicFunc,
(tmpl : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>),
(_unexported : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
