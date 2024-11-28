package stdgo._internal.crypto.hmac;
@:keep @:allow(stdgo._internal.crypto.hmac.Hmac.T_hmac_asInterface) class T_hmac_static_extension {
    @:keep
    static public function reset( _h:stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_T_hmac.T_hmac>):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_T_hmac.T_hmac> = _h;
        if (_h._marshaled) {
            {
                var _err = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_h._inner) : stdgo._internal.crypto.hmac.Hmac_T_marshalable.T_marshalable)) : stdgo._internal.crypto.hmac.Hmac_T_marshalable.T_marshalable).unmarshalBinary(_h._ipad) : stdgo.Error);
                if (_err != null) {
                    throw stdgo.Go.toInterface(_err);
                };
            };
            return;
        };
        _h._inner.reset();
        _h._inner.write(_h._ipad);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_h._inner) : stdgo._internal.crypto.hmac.Hmac_T_marshalable.T_marshalable)) : stdgo._internal.crypto.hmac.Hmac_T_marshalable.T_marshalable), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.crypto.hmac.Hmac_T_marshalable.T_marshalable), _1 : false };
        }, _marshalableInner = __tmp__._0, _innerOK = __tmp__._1;
        if (!_innerOK) {
            return;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_h._outer) : stdgo._internal.crypto.hmac.Hmac_T_marshalable.T_marshalable)) : stdgo._internal.crypto.hmac.Hmac_T_marshalable.T_marshalable), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.crypto.hmac.Hmac_T_marshalable.T_marshalable), _1 : false };
        }, _marshalableOuter = __tmp__._0, _outerOK = __tmp__._1;
        if (!_outerOK) {
            return;
        };
        var __tmp__ = _marshalableInner.marshalBinary(), _imarshal:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return;
        };
        _h._outer.reset();
        _h._outer.write(_h._opad);
        var __tmp__ = _marshalableOuter.marshalBinary(), _omarshal:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return;
        };
        _h._ipad = _imarshal;
        _h._opad = _omarshal;
        _h._marshaled = true;
    }
    @:keep
    static public function blockSize( _h:stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_T_hmac.T_hmac>):stdgo.GoInt {
        @:recv var _h:stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_T_hmac.T_hmac> = _h;
        return _h._inner.blockSize();
    }
    @:keep
    static public function size( _h:stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_T_hmac.T_hmac>):stdgo.GoInt {
        @:recv var _h:stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_T_hmac.T_hmac> = _h;
        return _h._outer.size();
    }
    @:keep
    static public function write( _h:stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_T_hmac.T_hmac>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _h:stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_T_hmac.T_hmac> = _h;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = _h._inner.write(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    static public function sum( _h:stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_T_hmac.T_hmac>, _in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_T_hmac.T_hmac> = _h;
        var _origLen = (_in.length : stdgo.GoInt);
        _in = _h._inner.sum(_in);
        if (_h._marshaled) {
            {
                var _err = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_h._outer) : stdgo._internal.crypto.hmac.Hmac_T_marshalable.T_marshalable)) : stdgo._internal.crypto.hmac.Hmac_T_marshalable.T_marshalable).unmarshalBinary(_h._opad) : stdgo.Error);
                if (_err != null) {
                    throw stdgo.Go.toInterface(_err);
                };
            };
        } else {
            _h._outer.reset();
            _h._outer.write(_h._opad);
        };
        _h._outer.write((_in.__slice__(_origLen) : stdgo.Slice<stdgo.GoUInt8>));
        return _h._outer.sum((_in.__slice__(0, _origLen) : stdgo.Slice<stdgo.GoUInt8>));
    }
}
