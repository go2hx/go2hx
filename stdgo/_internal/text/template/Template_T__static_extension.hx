package stdgo._internal.text.template;
@:keep @:allow(stdgo._internal.text.template.Template.T__asInterface) class T__static_extension {
    @:keep
    static public function getU( _t:stdgo.Ref<stdgo._internal.text.template.Template_T_.T_>):stdgo.Ref<stdgo._internal.text.template.Template_U.U> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_T_.T_> = _t;
        return _t.u;
    }
    @:keep
    static public function myError( _t:stdgo.Ref<stdgo._internal.text.template.Template_T_.T_>, _error:Bool):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_T_.T_> = _t;
        if (_error) {
            return { _0 : true, _1 : stdgo._internal.text.template.Template__myError._myError };
        };
        return { _0 : false, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function madd( _t:stdgo.Ref<stdgo._internal.text.template.Template_T_.T_>, _a:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_T_.T_> = _t;
        var _v = (new stdgo.Slice<stdgo.GoInt>((_b.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        for (_i => _x in _b) {
            _v[(_i : stdgo.GoInt)] = (_x + _a : stdgo.GoInt);
        };
        return _v;
    }
    @:keep
    static public function copy( _t:stdgo.Ref<stdgo._internal.text.template.Template_T_.T_>):stdgo.Ref<stdgo._internal.text.template.Template_T_.T_> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_T_.T_> = _t;
        var _n = (stdgo.Go.setRef(({} : stdgo._internal.text.template.Template_T_.T_)) : stdgo.Ref<stdgo._internal.text.template.Template_T_.T_>);
        {
            var __tmp__ = (_t : stdgo._internal.text.template.Template_T_.T_)?.__copy__();
            var x = (_n : stdgo._internal.text.template.Template_T_.T_);
            x.__True = __tmp__.__True;
            x.i = __tmp__.i;
            x.u16 = __tmp__.u16;
            x.x = __tmp__.x;
            x.s = __tmp__.s;
            x.floatZero = __tmp__.floatZero;
            x.complexZero = __tmp__.complexZero;
            x.u = __tmp__.u;
            x.v0 = __tmp__.v0;
            x.v1 = __tmp__.v1;
            x.v2 = __tmp__.v2;
            x.w0 = __tmp__.w0;
            x.w1 = __tmp__.w1;
            x.w2 = __tmp__.w2;
            x.si = __tmp__.si;
            x.sicap = __tmp__.sicap;
            x.siempty = __tmp__.siempty;
            x.sb = __tmp__.sb;
            x.ai = __tmp__.ai;
            x.msi = __tmp__.msi;
            x.msione = __tmp__.msione;
            x.msiempty = __tmp__.msiempty;
            x.mxi = __tmp__.mxi;
            x.mii = __tmp__.mii;
            x.mi32s = __tmp__.mi32s;
            x.mi64s = __tmp__.mi64s;
            x.mui32s = __tmp__.mui32s;
            x.mui64s = __tmp__.mui64s;
            x.mi8s = __tmp__.mi8s;
            x.mui8s = __tmp__.mui8s;
            x.smsi = __tmp__.smsi;
            x.empty0 = __tmp__.empty0;
            x.empty1 = __tmp__.empty1;
            x.empty2 = __tmp__.empty2;
            x.empty3 = __tmp__.empty3;
            x.empty4 = __tmp__.empty4;
            x.nonEmptyInterface = __tmp__.nonEmptyInterface;
            x.nonEmptyInterfacePtS = __tmp__.nonEmptyInterfacePtS;
            x.nonEmptyInterfaceNil = __tmp__.nonEmptyInterfaceNil;
            x.nonEmptyInterfaceTypedNil = __tmp__.nonEmptyInterfaceTypedNil;
            x.str = __tmp__.str;
            x.err = __tmp__.err;
            x.pi = __tmp__.pi;
            x.ps = __tmp__.ps;
            x.psi = __tmp__.psi;
            x.nil = __tmp__.nil;
            x.binaryFunc = __tmp__.binaryFunc;
            x.variadicFunc = __tmp__.variadicFunc;
            x.variadicFuncInt = __tmp__.variadicFuncInt;
            x.nilOKFunc = __tmp__.nilOKFunc;
            x.errFunc = __tmp__.errFunc;
            x.panicFunc = __tmp__.panicFunc;
            x.tmpl = __tmp__.tmpl;
            x._unexported = __tmp__._unexported;
        };
        return _n;
    }
    @:keep
    static public function method3( _t:stdgo.Ref<stdgo._internal.text.template.Template_T_.T_>, _v:stdgo.AnyInterface):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_T_.T_> = _t;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("Method3: %v" : stdgo.GoString), _v)?.__copy__();
    }
    @:keep
    static public function method2( _t:stdgo.Ref<stdgo._internal.text.template.Template_T_.T_>, _a:stdgo.GoUInt16, _b:stdgo.GoString):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_T_.T_> = _t;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("Method2: %d %s" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b))?.__copy__();
    }
    @:keep
    static public function method1( _t:stdgo.Ref<stdgo._internal.text.template.Template_T_.T_>, _a:stdgo.GoInt):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_T_.T_> = _t;
        return _a;
    }
    @:keep
    static public function method0( _t:stdgo.Ref<stdgo._internal.text.template.Template_T_.T_>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_T_.T_> = _t;
        return ("M0" : stdgo.GoString);
    }
}
