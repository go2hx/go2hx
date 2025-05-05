package stdgo._internal.crypto.hmac;
@:keep @:allow(stdgo._internal.crypto.hmac.Hmac.T_hmac_asInterface) class T_hmac_static_extension {
    @:keep
    @:tdfield
    static public function reset( _h:stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac>):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac> = _h;
        //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L80"
        if ((@:checkr _h ?? throw "null pointer dereference")._marshaled) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L81"
            {
                var _err = ((stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _h ?? throw "null pointer dereference")._inner) : stdgo._internal.crypto.hmac.Hmac_t_marshalable.T_marshalable)) : stdgo._internal.crypto.hmac.Hmac_t_marshalable.T_marshalable).unmarshalBinary((@:checkr _h ?? throw "null pointer dereference")._ipad) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L82"
                    throw stdgo.Go.toInterface(_err);
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L84"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L87"
        (@:checkr _h ?? throw "null pointer dereference")._inner.reset();
        //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L88"
        (@:checkr _h ?? throw "null pointer dereference")._inner.write((@:checkr _h ?? throw "null pointer dereference")._ipad);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _h ?? throw "null pointer dereference")._inner) : stdgo._internal.crypto.hmac.Hmac_t_marshalable.T_marshalable)) : stdgo._internal.crypto.hmac.Hmac_t_marshalable.T_marshalable), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.crypto.hmac.Hmac_t_marshalable.T_marshalable), _1 : false };
        }, _marshalableInner = __tmp__._0, _innerOK = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L97"
        if (!_innerOK) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L98"
            return;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _h ?? throw "null pointer dereference")._outer) : stdgo._internal.crypto.hmac.Hmac_t_marshalable.T_marshalable)) : stdgo._internal.crypto.hmac.Hmac_t_marshalable.T_marshalable), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.crypto.hmac.Hmac_t_marshalable.T_marshalable), _1 : false };
        }, _marshalableOuter = __tmp__._0, _outerOK = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L101"
        if (!_outerOK) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L102"
            return;
        };
        var __tmp__ = _marshalableInner.marshalBinary(), _imarshal:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L106"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L107"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L110"
        (@:checkr _h ?? throw "null pointer dereference")._outer.reset();
        //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L111"
        (@:checkr _h ?? throw "null pointer dereference")._outer.write((@:checkr _h ?? throw "null pointer dereference")._opad);
        var __tmp__ = _marshalableOuter.marshalBinary(), _omarshal:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L113"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L114"
            return;
        };
        (@:checkr _h ?? throw "null pointer dereference")._ipad = _imarshal;
        (@:checkr _h ?? throw "null pointer dereference")._opad = _omarshal;
        (@:checkr _h ?? throw "null pointer dereference")._marshaled = true;
    }
    @:keep
    @:tdfield
    static public function blockSize( _h:stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac>):stdgo.GoInt {
        @:recv var _h:stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac> = _h;
        //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L77"
        return (@:checkr _h ?? throw "null pointer dereference")._inner.blockSize();
    }
    @:keep
    @:tdfield
    static public function size( _h:stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac>):stdgo.GoInt {
        @:recv var _h:stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac> = _h;
        //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L76"
        return (@:checkr _h ?? throw "null pointer dereference")._outer.size();
    }
    @:keep
    @:tdfield
    static public function write( _h:stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _h:stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac> = _h;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L73"
        return (@:checkr _h ?? throw "null pointer dereference")._inner.write(_p);
    }
    @:keep
    @:tdfield
    static public function sum( _h:stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac>, _in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac> = _h;
        var _origLen = (_in.length : stdgo.GoInt);
        _in = (@:checkr _h ?? throw "null pointer dereference")._inner.sum(_in);
        //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L60"
        if ((@:checkr _h ?? throw "null pointer dereference")._marshaled) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L61"
            {
                var _err = ((stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _h ?? throw "null pointer dereference")._outer) : stdgo._internal.crypto.hmac.Hmac_t_marshalable.T_marshalable)) : stdgo._internal.crypto.hmac.Hmac_t_marshalable.T_marshalable).unmarshalBinary((@:checkr _h ?? throw "null pointer dereference")._opad) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L62"
                    throw stdgo.Go.toInterface(_err);
                };
            };
        } else {
            //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L65"
            (@:checkr _h ?? throw "null pointer dereference")._outer.reset();
            //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L66"
            (@:checkr _h ?? throw "null pointer dereference")._outer.write((@:checkr _h ?? throw "null pointer dereference")._opad);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L68"
        (@:checkr _h ?? throw "null pointer dereference")._outer.write((_in.__slice__(_origLen) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L69"
        return (@:checkr _h ?? throw "null pointer dereference")._outer.sum((_in.__slice__(0, _origLen) : stdgo.Slice<stdgo.GoUInt8>));
    }
}
