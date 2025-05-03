package stdgo._internal.crypto.elliptic;
@:keep @:allow(stdgo._internal.crypto.elliptic.Elliptic.T_nistCurve_asInterface) class T_nistCurve_static_extension {
    @:keep
    @:tdfield
    static public function unmarshalCompressed( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>> = _curve;
        var _x = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _y = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L270"
        if (((_data.length == (0 : stdgo.GoInt)) || (((_data[(0 : stdgo.GoInt)] != (2 : stdgo.GoUInt8)) && (_data[(0 : stdgo.GoInt)] != (3 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L271"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } = { _0 : null, _1 : null };
                _x = __tmp__._0;
                _y = __tmp__._1;
                __tmp__;
            };
        };
        var __tmp__ = (@:checkr _curve ?? throw "null pointer dereference")._newPoint().setBytes(_data), _p:Dynamic = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L274"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L275"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } = { _0 : null, _1 : null };
                _x = __tmp__._0;
                _y = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L277"
        return _curve._pointToAffine(_p);
    }
    @:keep
    @:tdfield
    static public function unmarshal( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>> = _curve;
        var _x = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _y = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L252"
        if (((_data.length == (0 : stdgo.GoInt)) || (_data[(0 : stdgo.GoInt)] != (4 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L253"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } = { _0 : null, _1 : null };
                _x = __tmp__._0;
                _y = __tmp__._1;
                __tmp__;
            };
        };
        var __tmp__ = (@:checkr _curve ?? throw "null pointer dereference")._newPoint().setBytes(_data), __1:Dynamic = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L257"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L258"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } = { _0 : null, _1 : null };
                _x = __tmp__._0;
                _y = __tmp__._1;
                __tmp__;
            };
        };
        var _byteLen = ((((@:checkr (@:checkr _curve ?? throw "null pointer dereference")._params ?? throw "null pointer dereference").bitSize + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
        _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes((_data.__slice__((1 : stdgo.GoInt), ((1 : stdgo.GoInt) + _byteLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        _y = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes((_data.__slice__(((1 : stdgo.GoInt) + _byteLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L266"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } = { _0 : _x, _1 : _y };
            _x = __tmp__._0;
            _y = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function combinedMult( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>>, px:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, py:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _s1:stdgo.Slice<stdgo.GoUInt8>, _s2:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>> = _curve;
        var _x = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _y = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        _s1 = _curve._normalizeScalar(_s1);
        var __tmp__ = (@:checkr _curve ?? throw "null pointer dereference")._newPoint().scalarBaseMult(_s1), _q:Dynamic = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L236"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L237"
            throw stdgo.Go.toInterface(("crypto/elliptic: nistec rejected normalized scalar" : stdgo.GoString));
        };
        var __tmp__ = _curve._pointFromAffine(px, py), _p:Dynamic = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L240"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L241"
            throw stdgo.Go.toInterface(("crypto/elliptic: CombinedMult was called on an invalid point" : stdgo.GoString));
        };
        _s2 = _curve._normalizeScalar(_s2);
        {
            var __tmp__ = _p.scalarMult(_p, _s2);
            _p = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L245"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L246"
            throw stdgo.Go.toInterface(("crypto/elliptic: nistec rejected normalized scalar" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L248"
        return _curve._pointToAffine(_p.add(_p, _q));
    }
    @:keep
    @:tdfield
    static public function scalarBaseMult( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>>, _scalar:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>> = _curve;
        _scalar = _curve._normalizeScalar(_scalar);
        var __tmp__ = (@:checkr _curve ?? throw "null pointer dereference")._newPoint().scalarBaseMult(_scalar), _p:Dynamic = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L225"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L226"
            throw stdgo.Go.toInterface(("crypto/elliptic: nistec rejected normalized scalar" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L228"
        return _curve._pointToAffine(_p);
    }
    @:keep
    @:tdfield
    static public function scalarMult( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>>, bx:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, by:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _scalar:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>> = _curve;
        var __tmp__ = _curve._pointFromAffine(bx, by), _p:Dynamic = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L211"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L212"
            throw stdgo.Go.toInterface(("crypto/elliptic: ScalarMult was called on an invalid point" : stdgo.GoString));
        };
        _scalar = _curve._normalizeScalar(_scalar);
        {
            var __tmp__ = _p.scalarMult(_p, _scalar);
            _p = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L216"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L217"
            throw stdgo.Go.toInterface(("crypto/elliptic: nistec rejected normalized scalar" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L219"
        return _curve._pointToAffine(_p);
    }
    @:keep
    @:tdfield
    static public function _normalizeScalar( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>>, _scalar:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>> = _curve;
        var _byteSize = ((((@:checkr (@:checkr _curve ?? throw "null pointer dereference")._params ?? throw "null pointer dereference").n.bitLen() + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L198"
        if ((_scalar.length) == (_byteSize)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L199"
            return _scalar;
        };
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes(_scalar);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L202"
        if (((_scalar.length) > _byteSize : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L203"
            _s.mod(_s, (@:checkr (@:checkr _curve ?? throw "null pointer dereference")._params ?? throw "null pointer dereference").n);
        };
        var _out = (new stdgo.Slice<stdgo.GoUInt8>((_byteSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L206"
        return _s.fillBytes(_out);
    }
    @:keep
    @:tdfield
    static public function double( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>>, _x1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>> = _curve;
        var __tmp__ = _curve._pointFromAffine(_x1, _y1), _p:Dynamic = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L188"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L189"
            throw stdgo.Go.toInterface(("crypto/elliptic: Double was called on an invalid point" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L191"
        return _curve._pointToAffine(_p.double(_p));
    }
    @:keep
    @:tdfield
    static public function add( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>>, _x1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>> = _curve;
        var __tmp__ = _curve._pointFromAffine(_x1, _y1), _p1:Dynamic = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L176"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L177"
            throw stdgo.Go.toInterface(("crypto/elliptic: Add was called on an invalid point" : stdgo.GoString));
        };
        var __tmp__ = _curve._pointFromAffine(_x2, _y2), _p2:Dynamic = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L180"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L181"
            throw stdgo.Go.toInterface(("crypto/elliptic: Add was called on an invalid point" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L183"
        return _curve._pointToAffine(_p1.add(_p1, _p2));
    }
    @:keep
    @:tdfield
    static public function _pointToAffine( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>>, _p:Dynamic):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>> = _curve;
        var _x = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _y = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _out = _p.bytes();
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L163"
        if (((_out.length == (1 : stdgo.GoInt)) && (_out[(0 : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L166"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } = { _0 : (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _1 : (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) };
                _x = __tmp__._0;
                _y = __tmp__._1;
                __tmp__;
            };
        };
        var _byteLen = ((((@:checkr (@:checkr _curve ?? throw "null pointer dereference")._params ?? throw "null pointer dereference").bitSize + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
        _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes((_out.__slice__((1 : stdgo.GoInt), ((1 : stdgo.GoInt) + _byteLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        _y = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes((_out.__slice__(((1 : stdgo.GoInt) + _byteLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L171"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } = { _0 : _x, _1 : _y };
            _x = __tmp__._0;
            _y = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _pointFromAffine( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : Dynamic; var _1 : stdgo.Error; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>> = _curve;
        var _p = stdgo.Go.typer.exprs.Expr.defaultValue((cast (null) : Point)), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L142"
        if (((_x.sign() == (0 : stdgo.GoInt)) && (_y.sign() == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L143"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : Dynamic; var _1 : stdgo.Error; } = { _0 : (@:checkr _curve ?? throw "null pointer dereference")._newPoint(), _1 : (null : stdgo.Error) };
                _p = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L146"
        if (((_x.sign() < (0 : stdgo.GoInt) : Bool) || (_y.sign() < (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L147"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : Dynamic; var _1 : stdgo.Error; } = { _0 : _p, _1 : stdgo._internal.errors.Errors_new_.new_(("negative coordinate" : stdgo.GoString)) };
                _p = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L149"
        if (((_x.bitLen() > (@:checkr (@:checkr _curve ?? throw "null pointer dereference")._params ?? throw "null pointer dereference").bitSize : Bool) || (_y.bitLen() > (@:checkr (@:checkr _curve ?? throw "null pointer dereference")._params ?? throw "null pointer dereference").bitSize : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L150"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : Dynamic; var _1 : stdgo.Error; } = { _0 : _p, _1 : stdgo._internal.errors.Errors_new_.new_(("overflowing coordinate" : stdgo.GoString)) };
                _p = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _byteLen = ((((@:checkr (@:checkr _curve ?? throw "null pointer dereference")._params ?? throw "null pointer dereference").bitSize + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>(((1 : stdgo.GoInt) + ((2 : stdgo.GoInt) * _byteLen : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _buf[(0 : stdgo.GoInt)] = (4 : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L156"
        _x.fillBytes((_buf.__slice__((1 : stdgo.GoInt), ((1 : stdgo.GoInt) + _byteLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L157"
        _y.fillBytes((_buf.__slice__(((1 : stdgo.GoInt) + _byteLen : stdgo.GoInt), ((1 : stdgo.GoInt) + ((2 : stdgo.GoInt) * _byteLen : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L158"
        return (@:checkr _curve ?? throw "null pointer dereference")._newPoint().setBytes(_buf);
    }
    @:keep
    @:tdfield
    static public function isOnCurve( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Bool {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>> = _curve;
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L132"
        if (((_x.sign() == (0 : stdgo.GoInt)) && (_y.sign() == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L133"
            return false;
        };
        var __tmp__ = _curve._pointFromAffine(_x, _y), __1:Dynamic = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L136"
        return _err == null;
    }
    @:keep
    @:tdfield
    static public function params( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>>):stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>> = _curve;
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L126"
        return (@:checkr _curve ?? throw "null pointer dereference")._params;
    }
}
