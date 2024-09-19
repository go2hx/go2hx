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
            (_n : stdgo._internal.text.template.Template_T_.T_).__True = __tmp__.__True;
            (_n : stdgo._internal.text.template.Template_T_.T_).i = __tmp__.i;
            (_n : stdgo._internal.text.template.Template_T_.T_).u16 = __tmp__.u16;
            (_n : stdgo._internal.text.template.Template_T_.T_).x = __tmp__.x;
            (_n : stdgo._internal.text.template.Template_T_.T_).s = __tmp__.s;
            (_n : stdgo._internal.text.template.Template_T_.T_).floatZero = __tmp__.floatZero;
            (_n : stdgo._internal.text.template.Template_T_.T_).complexZero = __tmp__.complexZero;
            (_n : stdgo._internal.text.template.Template_T_.T_).u = __tmp__.u;
            (_n : stdgo._internal.text.template.Template_T_.T_).v0 = __tmp__.v0;
            (_n : stdgo._internal.text.template.Template_T_.T_).v1 = __tmp__.v1;
            (_n : stdgo._internal.text.template.Template_T_.T_).v2 = __tmp__.v2;
            (_n : stdgo._internal.text.template.Template_T_.T_).w0 = __tmp__.w0;
            (_n : stdgo._internal.text.template.Template_T_.T_).w1 = __tmp__.w1;
            (_n : stdgo._internal.text.template.Template_T_.T_).w2 = __tmp__.w2;
            (_n : stdgo._internal.text.template.Template_T_.T_).si = __tmp__.si;
            (_n : stdgo._internal.text.template.Template_T_.T_).sicap = __tmp__.sicap;
            (_n : stdgo._internal.text.template.Template_T_.T_).siempty = __tmp__.siempty;
            (_n : stdgo._internal.text.template.Template_T_.T_).sb = __tmp__.sb;
            (_n : stdgo._internal.text.template.Template_T_.T_).ai = __tmp__.ai;
            (_n : stdgo._internal.text.template.Template_T_.T_).msi = __tmp__.msi;
            (_n : stdgo._internal.text.template.Template_T_.T_).msione = __tmp__.msione;
            (_n : stdgo._internal.text.template.Template_T_.T_).msiempty = __tmp__.msiempty;
            (_n : stdgo._internal.text.template.Template_T_.T_).mxi = __tmp__.mxi;
            (_n : stdgo._internal.text.template.Template_T_.T_).mii = __tmp__.mii;
            (_n : stdgo._internal.text.template.Template_T_.T_).mi32s = __tmp__.mi32s;
            (_n : stdgo._internal.text.template.Template_T_.T_).mi64s = __tmp__.mi64s;
            (_n : stdgo._internal.text.template.Template_T_.T_).mui32s = __tmp__.mui32s;
            (_n : stdgo._internal.text.template.Template_T_.T_).mui64s = __tmp__.mui64s;
            (_n : stdgo._internal.text.template.Template_T_.T_).mi8s = __tmp__.mi8s;
            (_n : stdgo._internal.text.template.Template_T_.T_).mui8s = __tmp__.mui8s;
            (_n : stdgo._internal.text.template.Template_T_.T_).smsi = __tmp__.smsi;
            (_n : stdgo._internal.text.template.Template_T_.T_).empty0 = __tmp__.empty0;
            (_n : stdgo._internal.text.template.Template_T_.T_).empty1 = __tmp__.empty1;
            (_n : stdgo._internal.text.template.Template_T_.T_).empty2 = __tmp__.empty2;
            (_n : stdgo._internal.text.template.Template_T_.T_).empty3 = __tmp__.empty3;
            (_n : stdgo._internal.text.template.Template_T_.T_).empty4 = __tmp__.empty4;
            (_n : stdgo._internal.text.template.Template_T_.T_).nonEmptyInterface = __tmp__.nonEmptyInterface;
            (_n : stdgo._internal.text.template.Template_T_.T_).nonEmptyInterfacePtS = __tmp__.nonEmptyInterfacePtS;
            (_n : stdgo._internal.text.template.Template_T_.T_).nonEmptyInterfaceNil = __tmp__.nonEmptyInterfaceNil;
            (_n : stdgo._internal.text.template.Template_T_.T_).nonEmptyInterfaceTypedNil = __tmp__.nonEmptyInterfaceTypedNil;
            (_n : stdgo._internal.text.template.Template_T_.T_).str = __tmp__.str;
            (_n : stdgo._internal.text.template.Template_T_.T_).err = __tmp__.err;
            (_n : stdgo._internal.text.template.Template_T_.T_).pi = __tmp__.pi;
            (_n : stdgo._internal.text.template.Template_T_.T_).ps = __tmp__.ps;
            (_n : stdgo._internal.text.template.Template_T_.T_).psi = __tmp__.psi;
            (_n : stdgo._internal.text.template.Template_T_.T_).nil = __tmp__.nil;
            (_n : stdgo._internal.text.template.Template_T_.T_).binaryFunc = __tmp__.binaryFunc;
            (_n : stdgo._internal.text.template.Template_T_.T_).variadicFunc = __tmp__.variadicFunc;
            (_n : stdgo._internal.text.template.Template_T_.T_).variadicFuncInt = __tmp__.variadicFuncInt;
            (_n : stdgo._internal.text.template.Template_T_.T_).nilOKFunc = __tmp__.nilOKFunc;
            (_n : stdgo._internal.text.template.Template_T_.T_).errFunc = __tmp__.errFunc;
            (_n : stdgo._internal.text.template.Template_T_.T_).panicFunc = __tmp__.panicFunc;
            (_n : stdgo._internal.text.template.Template_T_.T_).tmpl = __tmp__.tmpl;
            (_n : stdgo._internal.text.template.Template_T_.T_)._unexported = __tmp__._unexported;
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
