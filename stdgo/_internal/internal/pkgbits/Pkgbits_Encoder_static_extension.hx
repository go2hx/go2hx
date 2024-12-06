package stdgo._internal.internal.pkgbits;
@:keep @:allow(stdgo._internal.internal.pkgbits.Pkgbits.Encoder_asInterface) class Encoder_static_extension {
    @:keep
    static public function _bigFloat( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>, _v:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder> = _w;
        var _b = _v.append((null : stdgo.Slice<stdgo.GoUInt8>), (112 : stdgo.GoUInt8), (-1 : stdgo.GoInt));
        _w.string((_b : stdgo.GoString)?.__copy__());
    }
    @:keep
    static public function _bigInt( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>, _v:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder> = _w;
        var _b = _v.bytes();
        _w.string((_b : stdgo.GoString)?.__copy__());
        _w.bool_((_v.sign() < (0 : stdgo.GoInt) : Bool));
    }
    @:keep
    static public function _scalar( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>, _val:stdgo._internal.go.constant.Constant_Value.Value):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder> = _w;
        {
            final __type__ = stdgo._internal.go.constant.Constant_val.val(_val);
            if (stdgo.Go.typeEquals((__type__ : Bool))) {
                var _v:Bool = __type__ == null ? false : __type__.__underlying__() == null ? false : __type__ == null ? false : __type__.__underlying__().value;
                _w.code(stdgo.Go.asInterface((0 : stdgo._internal.internal.pkgbits.Pkgbits_CodeVal.CodeVal)));
                _w.bool_(_v);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                var _v:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                _w.code(stdgo.Go.asInterface((1 : stdgo._internal.internal.pkgbits.Pkgbits_CodeVal.CodeVal)));
                _w.string(_v?.__copy__());
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt64))) {
                var _v:stdgo.GoInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _w.code(stdgo.Go.asInterface((2 : stdgo._internal.internal.pkgbits.Pkgbits_CodeVal.CodeVal)));
                _w.int64(_v);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>))) {
                var _v:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>) : __type__.__underlying__().value;
                _w.code(stdgo.Go.asInterface((3 : stdgo._internal.internal.pkgbits.Pkgbits_CodeVal.CodeVal)));
                _w._bigInt(_v);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>))) {
                var _v:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>) : __type__.__underlying__().value;
                _w.code(stdgo.Go.asInterface((4 : stdgo._internal.internal.pkgbits.Pkgbits_CodeVal.CodeVal)));
                _w._bigInt(_v.num());
                _w._bigInt(_v.denom());
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>))) {
                var _v:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>) : __type__.__underlying__().value;
                _w.code(stdgo.Go.asInterface((5 : stdgo._internal.internal.pkgbits.Pkgbits_CodeVal.CodeVal)));
                _w._bigFloat(_v);
            } else {
                var _v:stdgo.AnyInterface = __type__?.__underlying__();
                stdgo._internal.internal.pkgbits.Pkgbits__errorf._errorf(("unhandled %v (%v)" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(stdgo.Go.asInterface(_val.kind())));
            };
        };
    }
    @:keep
    static public function value( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>, _val:stdgo._internal.go.constant.Constant_Value.Value):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder> = _w;
        _w.sync((6 : stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker));
        if (_w.bool_(_val.kind() == ((5 : stdgo._internal.go.constant.Constant_Kind.Kind)))) {
            _w._scalar(stdgo._internal.go.constant.Constant_real.real(_val));
            _w._scalar(stdgo._internal.go.constant.Constant_imag.imag(_val));
        } else {
            _w._scalar(_val);
        };
    }
    @:keep
    static public function strings( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>, _ss:stdgo.Slice<stdgo.GoString>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder> = _w;
        _w.len((_ss.length));
        for (__2 => _s in _ss) {
            _w.string(_s?.__copy__());
        };
    }
    @:keep
    static public function stringRef( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>, _idx:stdgo._internal.internal.pkgbits.Pkgbits_Index.Index):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder> = _w;
        _w.sync((5 : stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker));
        _w.reloc((0 : stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind), _idx);
    }
    @:keep
    static public function string( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>, _s:stdgo.GoString):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder> = _w;
        _w.stringRef(_w._p.stringIdx(_s?.__copy__()));
    }
    @:keep
    static public function code( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>, _c:stdgo._internal.internal.pkgbits.Pkgbits_Code.Code):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder> = _w;
        _w.sync(_c.marker());
        _w.len(_c.value());
    }
    @:keep
    static public function reloc( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>, _r:stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind, _idx:stdgo._internal.internal.pkgbits.Pkgbits_Index.Index):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder> = _w;
        _w.sync((10 : stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker));
        _w.len(_w._rawReloc(_r, _idx));
    }
    @:keep
    static public function uint( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>, _x:stdgo.GoUInt):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder> = _w;
        _w.uint64((_x : stdgo.GoUInt64));
    }
    @:keep
    static public function int_( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>, _x:stdgo.GoInt):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder> = _w;
        _w.int64((_x : stdgo.GoInt64));
    }
    @:keep
    static public function len( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>, _x:stdgo.GoInt):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder> = _w;
        stdgo._internal.internal.pkgbits.Pkgbits__assert._assert((_x >= (0 : stdgo.GoInt) : Bool));
        _w.uint64((_x : stdgo.GoUInt64));
    }
    @:keep
    static public function uint64( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>, _x:stdgo.GoUInt64):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder> = _w;
        _w.sync((4 : stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker));
        _w._rawUvarint(_x);
    }
    @:keep
    static public function int64( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>, _x:stdgo.GoInt64):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder> = _w;
        _w.sync((3 : stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker));
        _w._rawVarint(_x);
    }
    @:keep
    static public function bool_( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>, _b:Bool):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder> = _w;
        _w.sync((2 : stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker));
        var _x:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        if (_b) {
            _x = (1 : stdgo.GoUInt8);
        };
        var _err = (_w.data.writeByte(_x) : stdgo.Error);
        _w._checkErr(_err);
        return _b;
    }
    @:keep
    static public function sync( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>, _m:stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder> = _w;
        if (!_w._p.syncMarkers()) {
            return;
        };
        var _frames:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        if ((!_w._encodingRelocHeader && (_w._p._syncFrames > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _pcs = (new stdgo.Slice<stdgo.GoUIntptr>((_w._p._syncFrames : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
            var _n = (stdgo._internal.runtime.Runtime_callers.callers((2 : stdgo.GoInt), _pcs) : stdgo.GoInt);
            _frames = stdgo._internal.internal.pkgbits.Pkgbits__fmtFrames._fmtFrames(...((_pcs.__slice__(0, _n) : stdgo.Slice<stdgo.GoUIntptr>) : Array<stdgo.GoUIntptr>));
        };
        _w._rawUvarint((_m : stdgo.GoUInt64));
        _w._rawUvarint((_frames.length : stdgo.GoUInt64));
        for (__2 => _frame in _frames) {
            _w._rawUvarint((_w._rawReloc((0 : stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind), _w._p.stringIdx(_frame?.__copy__())) : stdgo.GoUInt64));
        };
    }
    @:keep
    static public function _rawReloc( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>, _r:stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind, _idx:stdgo._internal.internal.pkgbits.Pkgbits_Index.Index):stdgo.GoInt {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder> = _w;
        var _e = (new stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt(_r, _idx) : stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt);
        if (_w.relocMap != null) {
            {
                var __tmp__ = (_w.relocMap != null && _w.relocMap.exists(_e?.__copy__()) ? { _0 : _w.relocMap[_e?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoUInt32), _1 : false }), _i:stdgo.GoUInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return (_i : stdgo.GoInt);
                };
            };
        } else {
            _w.relocMap = ({
                final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt, stdgo.GoUInt32>();
                x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "kind", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "idx", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.pkgbits.Pkgbits_Index.Index", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }));
                x.__defaultValue__ = () -> (0 : stdgo.GoUInt32);
                {};
                cast x;
            } : stdgo.GoMap<stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt, stdgo.GoUInt32>);
        };
        var _i = (_w.relocs.length : stdgo.GoInt);
        _w.relocMap[_e] = (_i : stdgo.GoUInt32);
        _w.relocs = (_w.relocs.__append__(_e?.__copy__()));
        return _i;
    }
    @:keep
    static public function _rawVarint( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>, _x:stdgo.GoInt64):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder> = _w;
        var _ux = ((_x : stdgo.GoUInt64) << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        if ((_x < (0i64 : stdgo.GoInt64) : Bool)) {
            _ux = (-1 ^ _ux);
        };
        _w._rawUvarint(_ux);
    }
    @:keep
    static public function _rawUvarint( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>, _x:stdgo.GoUInt64):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder> = _w;
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(10, 10, ...[for (i in 0 ... 10) (0 : stdgo.GoUInt8)]);
        var _n = (stdgo._internal.encoding.binary.Binary_putUvarint.putUvarint((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _x) : stdgo.GoInt);
        var __tmp__ = _w.data.write((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _w._checkErr(_err);
    }
    @:keep
    static public function _checkErr( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>, _err:stdgo.Error):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder> = _w;
        if (_err != null) {
            stdgo._internal.internal.pkgbits.Pkgbits__errorf._errorf(("unexpected encoding error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
    @:keep
    static public function flush( _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>):stdgo._internal.internal.pkgbits.Pkgbits_Index.Index {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder> = _w;
        var _sb:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        var _tmp:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface((stdgo.Go.setRef(_tmp) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), stdgo.Go.asInterface((stdgo.Go.setRef(_w.data) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        if (_w._encodingRelocHeader) {
            throw stdgo.Go.toInterface(("encodingRelocHeader already true; recursive flush?" : stdgo.GoString));
        };
        _w._encodingRelocHeader = true;
        _w.sync((8 : stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker));
        _w.len((_w.relocs.length));
        for (__2 => _rEnt in _w.relocs) {
            _w.sync((9 : stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker));
            _w.len((_rEnt.kind : stdgo.GoInt));
            _w.len((_rEnt.idx : stdgo.GoInt));
        };
        stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface((stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), stdgo.Go.asInterface((stdgo.Go.setRef(_w.data) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface((stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), stdgo.Go.asInterface((stdgo.Go.setRef(_tmp) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        _w._p._elems[(_w._k : stdgo.GoInt)][(_w.idx : stdgo.GoInt)] = (_sb.string() : stdgo.GoString)?.__copy__();
        return _w.idx;
    }
}
