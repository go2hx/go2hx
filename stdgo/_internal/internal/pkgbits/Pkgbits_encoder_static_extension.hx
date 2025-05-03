package stdgo._internal.internal.pkgbits;
@:keep @:allow(stdgo._internal.internal.pkgbits.Pkgbits.Encoder_asInterface) class Encoder_static_extension {
    @:keep
    @:tdfield
    static public function _bigFloat( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder>, _v:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder> = _w;
        var _b = _v.append((null : stdgo.Slice<stdgo.GoUInt8>), (112 : stdgo.GoUInt8), (-1 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L393"
        _w.string((_b : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _bigInt( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder>, _v:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder> = _w;
        var _b = _v.bytes();
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L387"
        _w.string((_b : stdgo.GoString)?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L388"
        _w.bool_((_v.sign() < (0 : stdgo.GoInt) : Bool));
    }
    @:keep
    @:tdfield
    static public function _scalar( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder>, _val:stdgo._internal.go.constant.Constant_value.Value):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder> = _w;
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L360"
        {
            final __type__ = stdgo._internal.go.constant.Constant_val.val(_val);
            if (stdgo.Go.typeEquals((__type__ : Bool))) {
                var _v:Bool = __type__ == null ? false : __type__.__underlying__() == null ? false : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? false : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L364"
                _w.code(stdgo.Go.asInterface((0 : stdgo._internal.internal.pkgbits.Pkgbits_codeval.CodeVal)));
                //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L365"
                _w.bool_(_v);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                var _v:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? "" : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L367"
                _w.code(stdgo.Go.asInterface((1 : stdgo._internal.internal.pkgbits.Pkgbits_codeval.CodeVal)));
                //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L368"
                _w.string(_v?.__copy__());
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt64))) {
                var _v:stdgo.GoInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L370"
                _w.code(stdgo.Go.asInterface((2 : stdgo._internal.internal.pkgbits.Pkgbits_codeval.CodeVal)));
                //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L371"
                _w.int64(_v);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))) {
                var _v:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L373"
                _w.code(stdgo.Go.asInterface((3 : stdgo._internal.internal.pkgbits.Pkgbits_codeval.CodeVal)));
                //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L374"
                _w._bigInt(_v);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>))) {
                var _v:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L376"
                _w.code(stdgo.Go.asInterface((4 : stdgo._internal.internal.pkgbits.Pkgbits_codeval.CodeVal)));
                //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L377"
                _w._bigInt(_v.num());
                //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L378"
                _w._bigInt(_v.denom());
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>))) {
                var _v:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L380"
                _w.code(stdgo.Go.asInterface((5 : stdgo._internal.internal.pkgbits.Pkgbits_codeval.CodeVal)));
                //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L381"
                _w._bigFloat(_v);
            } else {
                var _v:stdgo.AnyInterface = __type__?.__underlying__();
                //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L362"
                stdgo._internal.internal.pkgbits.Pkgbits__errorf._errorf(("unhandled %v (%v)" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(stdgo.Go.asInterface(_val.kind())));
            };
        };
    }
    @:keep
    @:tdfield
    static public function value( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder>, _val:stdgo._internal.go.constant.Constant_value.Value):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder> = _w;
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L350"
        _w.sync((6 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L351"
        if (_w.bool_(_val.kind() == ((5 : stdgo._internal.go.constant.Constant_kind.Kind)))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L352"
            _w._scalar(stdgo._internal.go.constant.Constant_real.real(_val));
            //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L353"
            _w._scalar(stdgo._internal.go.constant.Constant_imag.imag(_val));
        } else {
            //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L355"
            _w._scalar(_val);
        };
    }
    @:keep
    @:tdfield
    static public function strings( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder>, _ss:stdgo.Slice<stdgo.GoString>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder> = _w;
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L341"
        _w.len((_ss.length));
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L342"
        for (__2 => _s in _ss) {
            //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L343"
            _w.string(_s?.__copy__());
        };
    }
    @:keep
    @:tdfield
    static public function stringRef( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder>, _idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder> = _w;
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L334"
        _w.sync((5 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L335"
        _w.reloc((0 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind), _idx);
    }
    @:keep
    @:tdfield
    static public function string( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder>, _s:stdgo.GoString):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder> = _w;
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L328"
        _w.stringRef((@:checkr _w ?? throw "null pointer dereference")._p.stringIdx(_s?.__copy__()));
    }
    @:keep
    @:tdfield
    static public function code( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder>, _c:stdgo._internal.internal.pkgbits.Pkgbits_code.Code):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder> = _w;
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L317"
        _w.sync(_c.marker());
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L318"
        _w.len(_c.value());
    }
    @:keep
    @:tdfield
    static public function reloc( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder>, _r:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder> = _w;
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L311"
        _w.sync((10 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L312"
        _w.len(_w._rawReloc(_r, _idx));
    }
    @:keep
    @:tdfield
    static public function uint( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder>, _x:stdgo.GoUInt):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder> = _w;
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L302"
        _w.uint64((_x : stdgo.GoUInt64));
    }
    @:keep
    @:tdfield
    static public function int_( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder>, _x:stdgo.GoInt):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder> = _w;
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L299"
        _w.int64((_x : stdgo.GoInt64));
    }
    @:keep
    @:tdfield
    static public function len( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder>, _x:stdgo.GoInt):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder> = _w;
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L296"
        stdgo._internal.internal.pkgbits.Pkgbits__assert._assert((_x >= (0 : stdgo.GoInt) : Bool));
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L296"
        _w.uint64((_x : stdgo.GoUInt64));
    }
    @:keep
    @:tdfield
    static public function uint64( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder>, _x:stdgo.GoUInt64):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder> = _w;
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L291"
        _w.sync((4 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L292"
        _w._rawUvarint(_x);
    }
    @:keep
    @:tdfield
    static public function int64( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder>, _x:stdgo.GoInt64):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder> = _w;
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L285"
        _w.sync((3 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L286"
        _w._rawVarint(_x);
    }
    @:keep
    @:tdfield
    static public function bool_( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder>, _b:Bool):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder> = _w;
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L273"
        _w.sync((2 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        var _x:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L275"
        if (_b) {
            _x = (1 : stdgo.GoUInt8);
        };
        var _err = ((@:checkr _w ?? throw "null pointer dereference").data.writeByte(_x) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L279"
        _w._checkErr(_err);
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L280"
        return _b;
    }
    @:keep
    @:tdfield
    static public function sync( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder>, _m:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder> = _w;
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L235"
        if (!(@:checkr _w ?? throw "null pointer dereference")._p.syncMarkers()) {
            //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L236"
            return;
        };
        var _frames:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L244"
        if ((!(@:checkr _w ?? throw "null pointer dereference")._encodingRelocHeader && ((@:checkr (@:checkr _w ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._syncFrames > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _pcs = (new stdgo.Slice<stdgo.GoUIntptr>(((@:checkr (@:checkr _w ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._syncFrames : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
            var _n = (stdgo._internal.runtime.Runtime_callers.callers((2 : stdgo.GoInt), _pcs) : stdgo.GoInt);
            _frames = stdgo._internal.internal.pkgbits.Pkgbits__fmtframes._fmtFrames(...((_pcs.__slice__(0, _n) : stdgo.Slice<stdgo.GoUIntptr>) : Array<stdgo.GoUIntptr>));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L252"
        _w._rawUvarint((_m : stdgo.GoUInt64));
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L253"
        _w._rawUvarint((_frames.length : stdgo.GoUInt64));
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L254"
        for (__2 => _frame in _frames) {
            //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L255"
            _w._rawUvarint((_w._rawReloc((0 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind), (@:checkr _w ?? throw "null pointer dereference")._p.stringIdx(_frame?.__copy__())) : stdgo.GoUInt64));
        };
    }
    @:keep
    @:tdfield
    static public function _rawReloc( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder>, _r:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo.GoInt {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder> = _w;
        var _e = (new stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt(_r, _idx) : stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt);
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L220"
        if ((@:checkr _w ?? throw "null pointer dereference").relocMap != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L221"
            {
                var __tmp__ = ((@:checkr _w ?? throw "null pointer dereference").relocMap != null && (@:checkr _w ?? throw "null pointer dereference").relocMap.__exists__(_e?.__copy__()) ? { _0 : (@:checkr _w ?? throw "null pointer dereference").relocMap[_e?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoUInt32), _1 : false }), _i:stdgo.GoUInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L222"
                    return (_i : stdgo.GoInt);
                };
            };
        } else {
            (@:checkr _w ?? throw "null pointer dereference").relocMap = (({
                final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt, stdgo.GoUInt32>();
                x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "kind", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "idx", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.pkgbits.Pkgbits_index.Index", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }));
                x.__defaultValue__ = () -> (0 : stdgo.GoUInt32);
                {};
                cast x;
            } : stdgo.GoMap<stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt, stdgo.GoUInt32>) : stdgo.GoMap<stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt, stdgo.GoUInt32>);
        };
        var _i = ((@:checkr _w ?? throw "null pointer dereference").relocs.length : stdgo.GoInt);
        (@:checkr _w ?? throw "null pointer dereference").relocMap[_e] = (_i : stdgo.GoUInt32);
        (@:checkr _w ?? throw "null pointer dereference").relocs = ((@:checkr _w ?? throw "null pointer dereference").relocs.__append__(_e?.__copy__()) : stdgo.Slice<stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt>);
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L231"
        return _i;
    }
    @:keep
    @:tdfield
    static public function _rawVarint( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder>, _x:stdgo.GoInt64):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder> = _w;
        var _ux = ((_x : stdgo.GoUInt64) << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L211"
        if ((_x < (0i64 : stdgo.GoInt64) : Bool)) {
            _ux = (-1 ^ _ux);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L215"
        _w._rawUvarint(_ux);
    }
    @:keep
    @:tdfield
    static public function _rawUvarint( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder>, _x:stdgo.GoUInt64):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder> = _w;
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(10, 10).__setNumber32__();
        var _n = (stdgo._internal.encoding.binary.Binary_putuvarint.putUvarint((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _x) : stdgo.GoInt);
        var __tmp__ = (@:checkr _w ?? throw "null pointer dereference").data.write((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L205"
        _w._checkErr(_err);
    }
    @:keep
    @:tdfield
    static public function _checkErr( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder>, _err:stdgo.Error):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder> = _w;
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L196"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L197"
            stdgo._internal.internal.pkgbits.Pkgbits__errorf._errorf(("unexpected encoding error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
    @:keep
    @:tdfield
    static public function flush( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder>):stdgo._internal.internal.pkgbits.Pkgbits_index.Index {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder> = _w;
        var _sb:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        var _tmp:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L171"
        stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface((stdgo.Go.setRef(_tmp) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _w ?? throw "null pointer dereference").data) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L176"
        if ((@:checkr _w ?? throw "null pointer dereference")._encodingRelocHeader) {
            //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L177"
            throw stdgo.Go.toInterface(("encodingRelocHeader already true; recursive flush?" : stdgo.GoString));
        };
        (@:checkr _w ?? throw "null pointer dereference")._encodingRelocHeader = true;
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L180"
        _w.sync((8 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L181"
        _w.len(((@:checkr _w ?? throw "null pointer dereference").relocs.length));
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L182"
        for (__2 => _rEnt in (@:checkr _w ?? throw "null pointer dereference").relocs) {
            //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L183"
            _w.sync((9 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
            //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L184"
            _w.len((_rEnt.kind : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L185"
            _w.len((_rEnt.idx : stdgo.GoInt));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L188"
        stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface((stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _w ?? throw "null pointer dereference").data) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L189"
        stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface((stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), stdgo.Go.asInterface((stdgo.Go.setRef(_tmp) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        (@:checkr (@:checkr _w ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._elems[((@:checkr _w ?? throw "null pointer dereference")._k : stdgo.GoInt)][((@:checkr _w ?? throw "null pointer dereference").idx : stdgo.GoInt)] = (_sb.string() : stdgo.GoString)?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/encoder.go#L192"
        return (@:checkr _w ?? throw "null pointer dereference").idx;
    }
}
