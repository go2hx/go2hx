package stdgo._internal.text.template;
@:keep @:allow(stdgo._internal.text.template.Template.T__asInterface) class T__static_extension {
    @:keep
    @:tdfield
    static public function getU( _t:stdgo.Ref<stdgo._internal.text.template.Template_t_.T_>):stdgo.Ref<stdgo._internal.text.template.Template_u.U> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_t_.T_> = _t;
        return (@:checkr _t ?? throw "null pointer dereference").u;
    }
    @:keep
    @:tdfield
    static public function myError( _t:stdgo.Ref<stdgo._internal.text.template.Template_t_.T_>, _error:Bool):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_t_.T_> = _t;
        if (_error) {
            return { _0 : true, _1 : stdgo._internal.text.template.Template__myerror._myError };
        };
        return { _0 : false, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function mAdd( _t:stdgo.Ref<stdgo._internal.text.template.Template_t_.T_>, _a:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_t_.T_> = _t;
        var _v = (new stdgo.Slice<stdgo.GoInt>((_b.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        for (_i => _x in _b) {
            _v[(_i : stdgo.GoInt)] = (_x + _a : stdgo.GoInt);
        };
        return _v;
    }
    @:keep
    @:tdfield
    static public function copy( _t:stdgo.Ref<stdgo._internal.text.template.Template_t_.T_>):stdgo.Ref<stdgo._internal.text.template.Template_t_.T_> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_t_.T_> = _t;
        var _n = (stdgo.Go.setRef(({} : stdgo._internal.text.template.Template_t_.T_)) : stdgo.Ref<stdgo._internal.text.template.Template_t_.T_>);
        {
            var __tmp__ = (_t : stdgo._internal.text.template.Template_t_.T_)?.__copy__();
            var x = (_n : stdgo._internal.text.template.Template_t_.T_);
            x.__True = __tmp__?.__True;
            x.i = __tmp__?.i;
            x.u16 = __tmp__?.u16;
            x.x = __tmp__?.x;
            x.s = __tmp__?.s;
            x.floatZero = __tmp__?.floatZero;
            x.complexZero = __tmp__?.complexZero;
            x.u = __tmp__?.u;
            x.v0 = __tmp__?.v0;
            x.v1 = __tmp__?.v1;
            x.v2 = __tmp__?.v2;
            x.w0 = __tmp__?.w0;
            x.w1 = __tmp__?.w1;
            x.w2 = __tmp__?.w2;
            x.sI = __tmp__?.sI;
            x.sICap = __tmp__?.sICap;
            x.sIEmpty = __tmp__?.sIEmpty;
            x.sB = __tmp__?.sB;
            x.aI = __tmp__?.aI;
            x.mSI = __tmp__?.mSI;
            x.mSIone = __tmp__?.mSIone;
            x.mSIEmpty = __tmp__?.mSIEmpty;
            x.mXI = __tmp__?.mXI;
            x.mII = __tmp__?.mII;
            x.mI32S = __tmp__?.mI32S;
            x.mI64S = __tmp__?.mI64S;
            x.mUI32S = __tmp__?.mUI32S;
            x.mUI64S = __tmp__?.mUI64S;
            x.mI8S = __tmp__?.mI8S;
            x.mUI8S = __tmp__?.mUI8S;
            x.sMSI = __tmp__?.sMSI;
            x.empty0 = __tmp__?.empty0;
            x.empty1 = __tmp__?.empty1;
            x.empty2 = __tmp__?.empty2;
            x.empty3 = __tmp__?.empty3;
            x.empty4 = __tmp__?.empty4;
            x.nonEmptyInterface = __tmp__?.nonEmptyInterface;
            x.nonEmptyInterfacePtS = __tmp__?.nonEmptyInterfacePtS;
            x.nonEmptyInterfaceNil = __tmp__?.nonEmptyInterfaceNil;
            x.nonEmptyInterfaceTypedNil = __tmp__?.nonEmptyInterfaceTypedNil;
            x.str = __tmp__?.str;
            x.err = __tmp__?.err;
            x.pI = __tmp__?.pI;
            x.pS = __tmp__?.pS;
            x.pSI = __tmp__?.pSI;
            x.nIL = __tmp__?.nIL;
            x.binaryFunc = __tmp__?.binaryFunc;
            x.variadicFunc = __tmp__?.variadicFunc;
            x.variadicFuncInt = __tmp__?.variadicFuncInt;
            x.nilOKFunc = __tmp__?.nilOKFunc;
            x.errFunc = __tmp__?.errFunc;
            x.panicFunc = __tmp__?.panicFunc;
            x.tmpl = __tmp__?.tmpl;
            x._unexported = __tmp__?._unexported;
        };
        return _n;
    }
    @:keep
    @:tdfield
    static public function method3( _t:stdgo.Ref<stdgo._internal.text.template.Template_t_.T_>, _v:stdgo.AnyInterface):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_t_.T_> = _t;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("Method3: %v" : stdgo.GoString), _v)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function method2( _t:stdgo.Ref<stdgo._internal.text.template.Template_t_.T_>, _a:stdgo.GoUInt16, _b:stdgo.GoString):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_t_.T_> = _t;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("Method2: %d %s" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function method1( _t:stdgo.Ref<stdgo._internal.text.template.Template_t_.T_>, _a:stdgo.GoInt):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_t_.T_> = _t;
        return _a;
    }
    @:keep
    @:tdfield
    static public function method0( _t:stdgo.Ref<stdgo._internal.text.template.Template_t_.T_>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_t_.T_> = _t;
        return ("M0" : stdgo.GoString);
    }
}
