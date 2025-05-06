package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_operand_asInterface) class T_operand_static_extension {
    @:keep
    @:tdfield
    static public function _assignableTo( _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _check:stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>, t:stdgo._internal.go.types.Types_type_.Type_, _cause:stdgo.Pointer<stdgo.GoString>):{ var _0 : Bool; var _1 : stdgo._internal.internal.types.errors.Errors_code.Code; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L235"
        if ((((@:checkr _x ?? throw "null pointer dereference")._mode == (0 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode)) || (stdgo.Go.toInterface(t) == stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]))) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L236"
            return { _0 : true, _1 : (0 : stdgo._internal.internal.types.errors.Errors_code.Code) };
        };
        var v = ((@:checkr _x ?? throw "null pointer dereference")._typ : stdgo._internal.go.types.Types_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L242"
        if (stdgo._internal.go.types.Types_identical.identical(v, t)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L243"
            return { _0 : true, _1 : (0 : stdgo._internal.internal.types.errors.Errors_code.Code) };
        };
        var vu = (stdgo._internal.go.types.Types__under._under(v) : stdgo._internal.go.types.Types_type_.Type_);
        var tu = (stdgo._internal.go.types.Types__under._under(t) : stdgo._internal.go.types.Types_type_.Type_);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(v) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false };
        }, vp = __tmp__._0, __0 = __tmp__._1;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(t) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false };
        }, tp = __tmp__._0, __1 = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L252"
        if (stdgo._internal.go.types.Types__isuntyped._isUntyped(vu)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L253"
            stdgo._internal.go.types.Types__assert._assert(({
                final value = vp;
                (value == null || (value : Dynamic).__nil__);
            }));
            //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L254"
            if (({
                final value = tp;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L257"
                return { _0 : tp._is(function(_t:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L258"
                    if (({
                        final value = _t;
                        (value == null || (value : Dynamic).__nil__);
                    })) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L259"
                        return false;
                    };
                    var __tmp__ = _check._implicitTypeAndValue(_x, (@:checkr _t ?? throw "null pointer dereference")._typ), _newType:stdgo._internal.go.types.Types_type_.Type_ = __tmp__._0, __18:stdgo._internal.go.constant.Constant_value.Value = __tmp__._1, __19:stdgo._internal.internal.types.errors.Errors_code.Code = __tmp__._2;
                    //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L265"
                    return _newType != null;
                }), _1 : (23 : stdgo._internal.internal.types.errors.Errors_code.Code) };
            };
            var __tmp__ = _check._implicitTypeAndValue(_x, t), _newType:stdgo._internal.go.types.Types_type_.Type_ = __tmp__._0, __10:stdgo._internal.go.constant.Constant_value.Value = __tmp__._1, __11:stdgo._internal.internal.types.errors.Errors_code.Code = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L269"
            return { _0 : _newType != null, _1 : (23 : stdgo._internal.internal.types.errors.Errors_code.Code) };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L276"
        if ((((stdgo._internal.go.types.Types_identical.identical(vu, tu) && ((!stdgo._internal.go.types.Types__hasname._hasName(v) || !stdgo._internal.go.types.Types__hasname._hasName(t) : Bool)) : Bool) && ({
            final value = vp;
            (value == null || (value : Dynamic).__nil__);
        }) : Bool) && ({
            final value = tp;
            (value == null || (value : Dynamic).__nil__);
        }) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L277"
            return { _0 : true, _1 : (0 : stdgo._internal.internal.types.errors.Errors_code.Code) };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L283"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(tu) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : false };
            }, __2 = __tmp__._0, _ok = __tmp__._1;
            if (((_ok && ({
                final value = tp;
                (value == null || (value : Dynamic).__nil__);
            }) : Bool) || stdgo._internal.go.types.Types__isinterfaceptr._isInterfacePtr(tu) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L284"
                if (_check._implements(_x.pos(), v, t, false, _cause)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L285"
                    return { _0 : true, _1 : (0 : stdgo._internal.internal.types.errors.Errors_code.Code) };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L289"
                if (({
                    final value = vp;
                    (value == null || (value : Dynamic).__nil__);
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L290"
                    return { _0 : false, _1 : (21 : stdgo._internal.internal.types.errors.Errors_code.Code) };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L292"
                if (_cause != null) {
                    _cause.value = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L298"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(vu) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : false };
            }, vi = __tmp__._0, __3 = __tmp__._1;
            if ((({
                final value = vi;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && ({
                final value = vp;
                (value == null || (value : Dynamic).__nil__);
            }) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L299"
                if (_check._implements(_x.pos(), t, v, false, (null : stdgo.Pointer<stdgo.GoString>))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L301"
                    if (_cause != null) {
                        _cause.value = ("need type assertion" : stdgo.GoString);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L304"
                    return { _0 : false, _1 : (23 : stdgo._internal.internal.types.errors.Errors_code.Code) };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L311"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(vu) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>)) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : false };
            }, vc = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && ((@:checkr vc ?? throw "null pointer dereference")._dir == (0 : stdgo._internal.go.types.Types_chandir.ChanDir)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L312"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(tu) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>)) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : false };
                    }, tc = __tmp__._0, _ok = __tmp__._1;
                    if ((_ok && stdgo._internal.go.types.Types_identical.identical((@:checkr vc ?? throw "null pointer dereference")._elem, (@:checkr tc ?? throw "null pointer dereference")._elem) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L313"
                        return { _0 : (!stdgo._internal.go.types.Types__hasname._hasName(v) || !stdgo._internal.go.types.Types__hasname._hasName(t) : Bool), _1 : (22 : stdgo._internal.internal.types.errors.Errors_code.Code) };
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L318"
        if ((({
            final value = vp;
            (value == null || (value : Dynamic).__nil__);
        }) && ({
            final value = tp;
            (value == null || (value : Dynamic).__nil__);
        }) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L319"
            return { _0 : false, _1 : (23 : stdgo._internal.internal.types.errors.Errors_code.Code) };
        };
        var _errorf = function(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
            var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
            //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L323"
            if ((({
                final value = _check;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && (_cause != null) : Bool)) {
                var _msg = (_check._sprintf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L325"
                if (_cause.value != ((stdgo.Go.str() : stdgo.GoString))) {
                    _msg = (_msg + ((("\n\t" : stdgo.GoString) + _cause.value?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                };
                _cause.value = _msg?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L334"
        if ((!stdgo._internal.go.types.Types__hasname._hasName(v) && ({
            final value = tp;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) : Bool)) {
            var _ok = (false : Bool);
            var _code = (23 : stdgo._internal.internal.types.errors.Errors_code.Code);
            //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L337"
            tp._is(function(t:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool {
                //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L338"
                if (({
                    final value = t;
                    (value == null || (value : Dynamic).__nil__);
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L339"
                    return false;
                };
                {
                    var __tmp__ = _x._assignableTo(_check, (@:checkr t ?? throw "null pointer dereference")._typ, _cause);
                    _ok = @:tmpset0 __tmp__._0;
                    _code = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L342"
                if (!_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L343"
                    _errorf(("cannot assign %s to %s (in %s)" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference")._typ), stdgo.Go.toInterface((@:checkr t ?? throw "null pointer dereference")._typ), stdgo.Go.toInterface(stdgo.Go.asInterface(tp)));
                    //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L344"
                    return false;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L346"
                return true;
            });
            //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L348"
            return { _0 : _ok, _1 : _code };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L354"
        if ((({
            final value = vp;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && !stdgo._internal.go.types.Types__hasname._hasName(t) : Bool)) {
            var _x = ((_x : stdgo._internal.go.types.Types_t_operand.T_operand)?.__copy__() : stdgo._internal.go.types.Types_t_operand.T_operand);
            var _ok = (false : Bool);
            var _code = (23 : stdgo._internal.internal.types.errors.Errors_code.Code);
            //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L358"
            vp._is(function(v:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool {
                //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L359"
                if (({
                    final value = v;
                    (value == null || (value : Dynamic).__nil__);
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L360"
                    return false;
                };
                _x._typ = (@:checkr v ?? throw "null pointer dereference")._typ;
                {
                    var __tmp__ = _x._assignableTo(_check, t, _cause);
                    _ok = @:tmpset0 __tmp__._0;
                    _code = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L364"
                if (!_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L365"
                    _errorf(("cannot assign %s (in %s) to %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr v ?? throw "null pointer dereference")._typ), stdgo.Go.toInterface(stdgo.Go.asInterface(vp)), stdgo.Go.toInterface(t));
                    //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L366"
                    return false;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L368"
                return true;
            });
            //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L370"
            return { _0 : _ok, _1 : _code };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L373"
        return { _0 : false, _1 : (23 : stdgo._internal.internal.types.errors.Errors_code.Code) };
    }
    @:keep
    @:tdfield
    static public function _isNil( _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L226"
        return (((@:checkr _x ?? throw "null pointer dereference")._mode == (7 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode)) && (stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference")._typ) == stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((25 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]))) : Bool);
    }
    @:keep
    @:tdfield
    static public function _setConst( _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _tok:stdgo._internal.go.token.Token_token.Token, _lit:stdgo.GoString):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand> = _x;
        var _kind:stdgo._internal.go.types.Types_basickind.BasicKind = ((0 : stdgo.GoInt) : stdgo._internal.go.types.Types_basickind.BasicKind);
        //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L199"
        {
            final __value__ = _tok;
            if (__value__ == ((5 : stdgo._internal.go.token.Token_token.Token))) {
                _kind = (20 : stdgo._internal.go.types.Types_basickind.BasicKind);
            } else if (__value__ == ((6 : stdgo._internal.go.token.Token_token.Token))) {
                _kind = (22 : stdgo._internal.go.types.Types_basickind.BasicKind);
            } else if (__value__ == ((7 : stdgo._internal.go.token.Token_token.Token))) {
                _kind = (23 : stdgo._internal.go.types.Types_basickind.BasicKind);
            } else if (__value__ == ((8 : stdgo._internal.go.token.Token_token.Token))) {
                _kind = (21 : stdgo._internal.go.types.Types_basickind.BasicKind);
            } else if (__value__ == ((9 : stdgo._internal.go.token.Token_token.Token))) {
                _kind = (24 : stdgo._internal.go.types.Types_basickind.BasicKind);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L211"
                stdgo._internal.go.types.Types__unreachable._unreachable();
            };
        };
        var _val = (stdgo._internal.go.constant.Constant_makefromliteral.makeFromLiteral(_lit?.__copy__(), _tok, (0u32 : stdgo.GoUInt)) : stdgo._internal.go.constant.Constant_value.Value);
        //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L215"
        if (_val.kind() == ((0 : stdgo._internal.go.constant.Constant_kind.Kind))) {
            (@:checkr _x ?? throw "null pointer dereference")._mode = (0 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode);
            (@:checkr _x ?? throw "null pointer dereference")._typ = stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]);
            //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L218"
            return;
        };
        (@:checkr _x ?? throw "null pointer dereference")._mode = (4 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode);
        (@:checkr _x ?? throw "null pointer dereference")._typ = stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[(_kind : stdgo.GoInt)]);
        (@:checkr _x ?? throw "null pointer dereference")._val = _val;
    }
    @:keep
    @:tdfield
    static public function string( _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L193"
        return stdgo._internal.go.types.Types__operandstring._operandString(_x, null)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function pos( _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L65"
        if ((@:checkr _x ?? throw "null pointer dereference")._expr == null) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L66"
            return stdgo._internal.go.types.Types__nopos._nopos;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/operand.go#L68"
        return (@:checkr _x ?? throw "null pointer dereference")._expr.pos();
    }
    @:keep
    @:tdfield
    static public function _convertibleTo( _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _check:stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>, t:stdgo._internal.go.types.Types_type_.Type_, _cause:stdgo.Pointer<stdgo.GoString>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L122"
        {
            var __tmp__ = _x._assignableTo(_check, t, _cause), _ok:Bool = __tmp__._0, __0:stdgo._internal.internal.types.errors.Errors_code.Code = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L123"
                return true;
            };
        };
        var v = ((@:checkr _x ?? throw "null pointer dereference")._typ : stdgo._internal.go.types.Types_type_.Type_);
        var vu = (stdgo._internal.go.types.Types__under._under(v) : stdgo._internal.go.types.Types_type_.Type_);
        var tu = (stdgo._internal.go.types.Types__under._under(t) : stdgo._internal.go.types.Types_type_.Type_);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(v) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false };
        }, vp = __tmp__._0, __1 = __tmp__._1;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(t) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false };
        }, tp = __tmp__._0, __2 = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L133"
        if (((stdgo._internal.go.types.Types_identicalignoretags.identicalIgnoreTags(vu, tu) && ({
            final value = vp;
            (value == null || (value : Dynamic).__nil__);
        }) : Bool) && ({
            final value = tp;
            (value == null || (value : Dynamic).__nil__);
        }) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L134"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L140"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(v) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>)) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : false };
            }, v = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L141"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(t) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>)) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : false };
                    }, t = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L142"
                        if (((stdgo._internal.go.types.Types_identicalignoretags.identicalIgnoreTags(stdgo._internal.go.types.Types__under._under((@:checkr v ?? throw "null pointer dereference")._base), stdgo._internal.go.types.Types__under._under((@:checkr t ?? throw "null pointer dereference")._base)) && !stdgo._internal.go.types.Types__istypeparam._isTypeParam((@:checkr v ?? throw "null pointer dereference")._base) : Bool) && !stdgo._internal.go.types.Types__istypeparam._isTypeParam((@:checkr t ?? throw "null pointer dereference")._base) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L143"
                            return true;
                        };
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L149"
        if ((stdgo._internal.go.types.Types__isintegerorfloat._isIntegerOrFloat(vu) && stdgo._internal.go.types.Types__isintegerorfloat._isIntegerOrFloat(tu) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L150"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L154"
        if ((stdgo._internal.go.types.Types__iscomplex._isComplex(vu) && stdgo._internal.go.types.Types__iscomplex._isComplex(tu) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L155"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L159"
        if ((((stdgo._internal.go.types.Types__isinteger._isInteger(vu) || stdgo._internal.go.types.Types__isbytesorrunes._isBytesOrRunes(vu) : Bool)) && stdgo._internal.go.types.Types__isstring._isString(tu) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L160"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L164"
        if ((stdgo._internal.go.types.Types__isstring._isString(vu) && stdgo._internal.go.types.Types__isbytesorrunes._isBytesOrRunes(tu) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L165"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L170"
        if ((((stdgo._internal.go.types.Types__ispointer._isPointer(vu) || stdgo._internal.go.types.Types__isuintptr._isUintptr(vu) : Bool)) && stdgo._internal.go.types.Types__isunsafepointer._isUnsafePointer(tu) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L171"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L174"
        if ((stdgo._internal.go.types.Types__isunsafepointer._isUnsafePointer(vu) && ((stdgo._internal.go.types.Types__ispointer._isPointer(tu) || stdgo._internal.go.types.Types__isuintptr._isUintptr(tu) : Bool)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L175"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L180"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(vu) : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>)) : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>), _1 : false };
            }, _s = __tmp__._0, __3 = __tmp__._1;
            if (({
                final value = _s;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L181"
                {
                    final __type__ = tu;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>))) {
                        var _a:stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L183"
                        if (stdgo._internal.go.types.Types_identical.identical(_s.elem(), _a.elem())) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L184"
                            if ((({
                                final value = _check;
                                (value == null || (value : Dynamic).__nil__);
                            }) || _check._allowVersion((@:checkr _check ?? throw "null pointer dereference")._pkg, stdgo.Go.asInterface(_x), stdgo._internal.go.types.Types__go1_20._go1_20?.__copy__()) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L185"
                                return true;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L188"
                            if (_cause != null) {
                                _cause.value = ("conversion of slices to arrays requires go1.20 or later" : stdgo.GoString);
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L192"
                            return false;
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>))) {
                        var _a:stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L195"
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.go.types.Types__under._under(_a.elem())) : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>)) : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>), _1 : false };
                            }, _a = __tmp__._0, __4 = __tmp__._1;
                            if (({
                                final value = _a;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L196"
                                if (stdgo._internal.go.types.Types_identical.identical(_s.elem(), _a.elem())) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L197"
                                    if ((({
                                        final value = _check;
                                        (value == null || (value : Dynamic).__nil__);
                                    }) || _check._allowVersion((@:checkr _check ?? throw "null pointer dereference")._pkg, stdgo.Go.asInterface(_x), stdgo._internal.go.types.Types__go1_17._go1_17?.__copy__()) : Bool)) {
                                        //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L198"
                                        return true;
                                    };
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L201"
                                    if (_cause != null) {
                                        _cause.value = ("conversion of slices to array pointers requires go1.17 or later" : stdgo.GoString);
                                    };
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L204"
                                    return false;
                                };
                            };
                        };
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L211"
        if ((({
            final value = vp;
            (value == null || (value : Dynamic).__nil__);
        }) && ({
            final value = tp;
            (value == null || (value : Dynamic).__nil__);
        }) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L212"
            return false;
        };
        var _errorf = function(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
            var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
            //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L216"
            if ((({
                final value = _check;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && (_cause != null) : Bool)) {
                var _msg = (_check._sprintf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L218"
                if (_cause.value != ((stdgo.Go.str() : stdgo.GoString))) {
                    _msg = (_msg + ((("\n\t" : stdgo.GoString) + _cause.value?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                };
                _cause.value = _msg?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L227"
        if ((({
            final value = vp;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && ({
            final value = tp;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) : Bool)) {
            var _x = ((_x : stdgo._internal.go.types.Types_t_operand.T_operand)?.__copy__() : stdgo._internal.go.types.Types_t_operand.T_operand);
            //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L230"
            return vp._is(function(v:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool {
                //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L231"
                if (({
                    final value = v;
                    (value == null || (value : Dynamic).__nil__);
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L232"
                    return false;
                };
                _x._typ = (@:checkr v ?? throw "null pointer dereference")._typ;
                //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L235"
                return tp._is(function(t:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L236"
                    if (({
                        final value = t;
                        (value == null || (value : Dynamic).__nil__);
                    })) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L237"
                        return false;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L239"
                    if (!_x._convertibleTo(_check, (@:checkr t ?? throw "null pointer dereference")._typ, _cause)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L240"
                        _errorf(("cannot convert %s (in %s) to type %s (in %s)" : stdgo.GoString), stdgo.Go.toInterface((@:checkr v ?? throw "null pointer dereference")._typ), stdgo.Go.toInterface(stdgo.Go.asInterface(vp)), stdgo.Go.toInterface((@:checkr t ?? throw "null pointer dereference")._typ), stdgo.Go.toInterface(stdgo.Go.asInterface(tp)));
                        //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L241"
                        return false;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L243"
                    return true;
                });
            });
        } else if (({
            final value = vp;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            var _x = ((_x : stdgo._internal.go.types.Types_t_operand.T_operand)?.__copy__() : stdgo._internal.go.types.Types_t_operand.T_operand);
            //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L248"
            return vp._is(function(v:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool {
                //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L249"
                if (({
                    final value = v;
                    (value == null || (value : Dynamic).__nil__);
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L250"
                    return false;
                };
                _x._typ = (@:checkr v ?? throw "null pointer dereference")._typ;
                //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L253"
                if (!_x._convertibleTo(_check, t, _cause)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L254"
                    _errorf(("cannot convert %s (in %s) to type %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr v ?? throw "null pointer dereference")._typ), stdgo.Go.toInterface(stdgo.Go.asInterface(vp)), stdgo.Go.toInterface(t));
                    //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L255"
                    return false;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L257"
                return true;
            });
        } else if (({
            final value = tp;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L260"
            return tp._is(function(t:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool {
                //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L261"
                if (({
                    final value = t;
                    (value == null || (value : Dynamic).__nil__);
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L262"
                    return false;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L264"
                if (!_x._convertibleTo(_check, (@:checkr t ?? throw "null pointer dereference")._typ, _cause)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L265"
                    _errorf(("cannot convert %s to type %s (in %s)" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference")._typ), stdgo.Go.toInterface((@:checkr t ?? throw "null pointer dereference")._typ), stdgo.Go.toInterface(stdgo.Go.asInterface(tp)));
                    //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L266"
                    return false;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L268"
                return true;
            });
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L272"
        return false;
    }
}
