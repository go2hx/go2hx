package stdgo._internal.internal.pkgbits;
@:keep @:allow(stdgo._internal.internal.pkgbits.Pkgbits.Decoder_asInterface) class Decoder_static_extension {
    @:keep
    static public function _bigFloat( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder> = _r;
        var _v = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec((512u32 : stdgo.GoUInt));
        stdgo._internal.internal.pkgbits.Pkgbits__assert._assert(_v.unmarshalText(((_r.string() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) == null);
        return _v;
    }
    @:keep
    static public function _bigInt( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder> = _r;
        var _v = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setBytes(((_r.string() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        if (_r.bool_()) {
            _v.neg(_v);
        };
        return _v;
    }
    @:keep
    static public function _scalar( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>):stdgo._internal.go.constant.Constant_Value.Value {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder> = _r;
        {
            var _tag = (_r.code((7 : stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker)) : stdgo._internal.internal.pkgbits.Pkgbits_CodeVal.CodeVal);
            {
                final __value__ = _tag;
                if (__value__ == ((0 : stdgo._internal.internal.pkgbits.Pkgbits_CodeVal.CodeVal))) {
                    return stdgo._internal.go.constant.Constant_makeBool.makeBool(_r.bool_());
                } else if (__value__ == ((1 : stdgo._internal.internal.pkgbits.Pkgbits_CodeVal.CodeVal))) {
                    return stdgo._internal.go.constant.Constant_makeString.makeString((_r.string() : stdgo.GoString)?.__copy__());
                } else if (__value__ == ((2 : stdgo._internal.internal.pkgbits.Pkgbits_CodeVal.CodeVal))) {
                    return stdgo._internal.go.constant.Constant_makeInt64.makeInt64(_r.int64());
                } else if (__value__ == ((3 : stdgo._internal.internal.pkgbits.Pkgbits_CodeVal.CodeVal))) {
                    return stdgo._internal.go.constant.Constant_make.make(stdgo.Go.toInterface(stdgo.Go.asInterface(_r._bigInt())));
                } else if (__value__ == ((4 : stdgo._internal.internal.pkgbits.Pkgbits_CodeVal.CodeVal))) {
                    var _num = _r._bigInt();
                    var _denom = _r._bigInt();
                    return stdgo._internal.go.constant.Constant_make.make(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).setFrac(_num, _denom))));
                } else if (__value__ == ((5 : stdgo._internal.internal.pkgbits.Pkgbits_CodeVal.CodeVal))) {
                    return stdgo._internal.go.constant.Constant_make.make(stdgo.Go.toInterface(stdgo.Go.asInterface(_r._bigFloat())));
                } else {
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_errorf.errorf(("unexpected scalar tag: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tag))));
                };
            };
        };
    }
    @:keep
    static public function value( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>):stdgo._internal.go.constant.Constant_Value.Value {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder> = _r;
        _r.sync((6 : stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker));
        var _isComplex = (_r.bool_() : Bool);
        var _val = (_r._scalar() : stdgo._internal.go.constant.Constant_Value.Value);
        if (_isComplex) {
            _val = stdgo._internal.go.constant.Constant_binaryOp.binaryOp(_val, (12 : stdgo._internal.go.token.Token_Token.Token), stdgo._internal.go.constant.Constant_makeImag.makeImag(_r._scalar()));
        };
        return _val;
    }
    @:keep
    static public function strings( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>):stdgo.Slice<stdgo.GoString> {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder> = _r;
        var _res = (new stdgo.Slice<stdgo.GoString>((_r.len() : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_i => _ in _res) {
            _res[(_i : stdgo.GoInt)] = (_r.string() : stdgo.GoString)?.__copy__();
        };
        return _res;
    }
    @:keep
    static public function string( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder> = _r;
        _r.sync((5 : stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker));
        return _r._common.stringIdx(_r.reloc((0 : stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind)))?.__copy__();
    }
    @:keep
    static public function reloc( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>, _k:stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind):stdgo._internal.internal.pkgbits.Pkgbits_Index.Index {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder> = _r;
        _r.sync((10 : stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker));
        return _r._rawReloc(_k, _r.len());
    }
    @:keep
    static public function code( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>, _mark:stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder> = _r;
        _r.sync(_mark);
        return _r.len();
    }
    @:keep
    static public function uint( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>):stdgo.GoUInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder> = _r;
        var _x = (_r.uint64() : stdgo.GoUInt64);
        var _v = (_x : stdgo.GoUInt);
        stdgo._internal.internal.pkgbits.Pkgbits__assert._assert((_v : stdgo.GoUInt64) == (_x));
        return _v;
    }
    @:keep
    static public function int_( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder> = _r;
        var _x = (_r.int64() : stdgo.GoInt64);
        var _v = (_x : stdgo.GoInt);
        stdgo._internal.internal.pkgbits.Pkgbits__assert._assert((_v : stdgo.GoInt64) == (_x));
        return _v;
    }
    @:keep
    static public function len( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder> = _r;
        var _x = (_r.uint64() : stdgo.GoUInt64);
        var _v = (_x : stdgo.GoInt);
        stdgo._internal.internal.pkgbits.Pkgbits__assert._assert((_v : stdgo.GoUInt64) == (_x));
        return _v;
    }
    @:keep
    static public function uint64( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>):stdgo.GoUInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder> = _r;
        _r.sync((4 : stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker));
        return _r._rawUvarint();
    }
    @:keep
    static public function int64( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder> = _r;
        _r.sync((3 : stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker));
        return _r._rawVarint();
    }
    @:keep
    static public function bool_( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder> = _r;
        _r.sync((2 : stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker));
        var __tmp__ = _r.data.readByte(), _x:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _r._checkErr(_err);
        stdgo._internal.internal.pkgbits.Pkgbits__assert._assert((_x < (2 : stdgo.GoUInt8) : Bool));
        return _x != ((0 : stdgo.GoUInt8));
    }
    @:keep
    static public function sync( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>, _mWant:stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder> = _r;
        if (!_r._common._sync) {
            return;
        };
        var __tmp__ = _r.data.seek((0i64 : stdgo.GoInt64), (1 : stdgo.GoInt)), _pos:stdgo.GoInt64 = __tmp__._0, __2:stdgo.Error = __tmp__._1;
        var _mHave = (_r._rawUvarint() : stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker);
        var _writerPCs = (new stdgo.Slice<stdgo.GoInt>((_r._rawUvarint() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        for (_i => _ in _writerPCs) {
            _writerPCs[(_i : stdgo.GoInt)] = (_r._rawUvarint() : stdgo.GoInt);
        };
        if (_mHave == (_mWant)) {
            return;
        };
        stdgo._internal.fmt.Fmt_printf.printf(("export data desync: package %q, section %v, index %v, offset %v\n" : stdgo.GoString), stdgo.Go.toInterface(_r._common._pkgPath), stdgo.Go.toInterface(_r._k), stdgo.Go.toInterface(_r.idx), stdgo.Go.toInterface(_pos));
        stdgo._internal.fmt.Fmt_printf.printf(("\nfound %v, written at:\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_mHave)));
        if ((_writerPCs.length) == ((0 : stdgo.GoInt))) {
            stdgo._internal.fmt.Fmt_printf.printf(("\t[stack trace unavailable; recompile package %q with -d=syncframes]\n" : stdgo.GoString), stdgo.Go.toInterface(_r._common._pkgPath));
        };
        for (__3 => _pc in _writerPCs) {
            stdgo._internal.fmt.Fmt_printf.printf(("\t%s\n" : stdgo.GoString), stdgo.Go.toInterface(_r._common.stringIdx(_r._rawReloc((0 : stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind), _pc))));
        };
        stdgo._internal.fmt.Fmt_printf.printf(("\nexpected %v, reading at:\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_mWant)));
        var _readerPCs:stdgo.GoArray<stdgo.GoUIntptr> = new stdgo.GoArray<stdgo.GoUIntptr>(32, 32, ...[for (i in 0 ... 32) (0 : stdgo.GoUIntptr)]);
        var _n = (stdgo._internal.runtime.Runtime_callers.callers((2 : stdgo.GoInt), (_readerPCs.__slice__(0) : stdgo.Slice<stdgo.GoUIntptr>)) : stdgo.GoInt);
        for (__4 => _pc in stdgo._internal.internal.pkgbits.Pkgbits__fmtFrames._fmtFrames(...((_readerPCs.__slice__(0, _n) : stdgo.Slice<stdgo.GoUIntptr>) : Array<stdgo.GoUIntptr>))) {
            stdgo._internal.fmt.Fmt_printf.printf(("\t%s\n" : stdgo.GoString), stdgo.Go.toInterface(_pc));
        };
        Sys.exit((1 : stdgo.GoInt));
    }
    @:keep
    static public function _rawReloc( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>, _k:stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind, _idx:stdgo.GoInt):stdgo._internal.internal.pkgbits.Pkgbits_Index.Index {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder> = _r;
        var _e = (_r.relocs[(_idx : stdgo.GoInt)] : stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt);
        stdgo._internal.internal.pkgbits.Pkgbits__assert._assert(_e.kind == (_k));
        return _e.idx;
    }
    @:keep
    static public function _rawVarint( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder> = _r;
        var _ux = (_r._rawUvarint() : stdgo.GoUInt64);
        var _x = ((_ux >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64);
        if ((_ux & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            _x = (-1 ^ _x);
        };
        return _x;
    }
    @:keep
    static public function _rawUvarint( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>):stdgo.GoUInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder> = _r;
        var __tmp__ = stdgo._internal.internal.pkgbits.Pkgbits__readUvarint._readUvarint((stdgo.Go.setRef(_r.data) : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>)), _x:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _r._checkErr(_err);
        return _x;
    }
    @:keep
    static public function _checkErr( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>, _err:stdgo.Error):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder> = _r;
        if (_err != null) {
            stdgo._internal.internal.pkgbits.Pkgbits__errorf._errorf(("unexpected decoding error: %w" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
}