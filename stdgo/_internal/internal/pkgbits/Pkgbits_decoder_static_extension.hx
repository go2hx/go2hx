package stdgo._internal.internal.pkgbits;
@:keep @:allow(stdgo._internal.internal.pkgbits.Pkgbits.Decoder_asInterface) class Decoder_static_extension {
    @:keep
    @:tdfield
    static public function _bigFloat( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder>):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder> = _r;
        var _v = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec((512u32 : stdgo.GoUInt));
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L469"
        stdgo._internal.internal.pkgbits.Pkgbits__assert._assert(_v.unmarshalText(((_r.string() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) == null);
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L470"
        return _v;
    }
    @:keep
    @:tdfield
    static public function _bigInt( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder> = _r;
        var _v = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes(((_r.string() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L461"
        if (_r.bool_()) {
            //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L462"
            _v.neg(_v);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L464"
        return _v;
    }
    @:keep
    @:tdfield
    static public function _scalar( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder>):stdgo._internal.go.constant.Constant_value.Value {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder> = _r;
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L438"
        {
            var _tag = (_r.code((7 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker)) : stdgo._internal.internal.pkgbits.Pkgbits_codeval.CodeVal);
            {
                final __value__ = _tag;
                if (__value__ == ((0 : stdgo._internal.internal.pkgbits.Pkgbits_codeval.CodeVal))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L443"
                    return stdgo._internal.go.constant.Constant_makebool.makeBool(_r.bool_());
                } else if (__value__ == ((1 : stdgo._internal.internal.pkgbits.Pkgbits_codeval.CodeVal))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L445"
                    return stdgo._internal.go.constant.Constant_makestring.makeString((_r.string() : stdgo.GoString)?.__copy__());
                } else if (__value__ == ((2 : stdgo._internal.internal.pkgbits.Pkgbits_codeval.CodeVal))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L447"
                    return stdgo._internal.go.constant.Constant_makeint64.makeInt64(_r.int64());
                } else if (__value__ == ((3 : stdgo._internal.internal.pkgbits.Pkgbits_codeval.CodeVal))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L449"
                    return stdgo._internal.go.constant.Constant_make.make(stdgo.Go.toInterface(stdgo.Go.asInterface(_r._bigInt())));
                } else if (__value__ == ((4 : stdgo._internal.internal.pkgbits.Pkgbits_codeval.CodeVal))) {
                    var _num = _r._bigInt();
                    var _denom = _r._bigInt();
                    //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L453"
                    return stdgo._internal.go.constant.Constant_make.make(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setFrac(_num, _denom))));
                } else if (__value__ == ((5 : stdgo._internal.internal.pkgbits.Pkgbits_codeval.CodeVal))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L455"
                    return stdgo._internal.go.constant.Constant_make.make(stdgo.Go.toInterface(stdgo.Go.asInterface(_r._bigFloat())));
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L440"
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_errorf.errorf(("unexpected scalar tag: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tag))));
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function value( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder>):stdgo._internal.go.constant.Constant_value.Value {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder> = _r;
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L428"
        _r.sync((6 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        var _isComplex = (_r.bool_() : Bool);
        var _val = (_r._scalar() : stdgo._internal.go.constant.Constant_value.Value);
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L431"
        if (_isComplex) {
            _val = stdgo._internal.go.constant.Constant_binaryop.binaryOp(_val, (12 : stdgo._internal.go.token.Token_token.Token), stdgo._internal.go.constant.Constant_makeimag.makeImag(_r._scalar()));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L434"
        return _val;
    }
    @:keep
    @:tdfield
    static public function strings( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder>):stdgo.Slice<stdgo.GoString> {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder> = _r;
        var _res = (new stdgo.Slice<stdgo.GoString>((_r.len() : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L419"
        for (_i => _ in _res) {
            _res[(_i : stdgo.GoInt)] = (_r.string() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L422"
        return _res;
    }
    @:keep
    @:tdfield
    static public function string( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder> = _r;
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L411"
        _r.sync((5 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L412"
        return (@:checkr _r ?? throw "null pointer dereference")._common.stringIdx(_r.reloc((0 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind)))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function reloc( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder>, _k:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind):stdgo._internal.internal.pkgbits.Pkgbits_index.Index {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder> = _r;
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L404"
        _r.sync((10 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L405"
        return _r._rawReloc(_k, _r.len());
    }
    @:keep
    @:tdfield
    static public function code( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder>, _mark:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder> = _r;
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L397"
        _r.sync(_mark);
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L398"
        return _r.len();
    }
    @:keep
    @:tdfield
    static public function uint( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder>):stdgo.GoUInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder> = _r;
        var _x = (_r.uint64() : stdgo.GoUInt64);
        var _v = (_x : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L387"
        stdgo._internal.internal.pkgbits.Pkgbits__assert._assert((_v : stdgo.GoUInt64) == (_x));
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L387"
        return _v;
    }
    @:keep
    @:tdfield
    static public function int_( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder> = _r;
        var _x = (_r.int64() : stdgo.GoInt64);
        var _v = (_x : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L384"
        stdgo._internal.internal.pkgbits.Pkgbits__assert._assert((_v : stdgo.GoInt64) == (_x));
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L384"
        return _v;
    }
    @:keep
    @:tdfield
    static public function len( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder> = _r;
        var _x = (_r.uint64() : stdgo.GoUInt64);
        var _v = (_x : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L381"
        stdgo._internal.internal.pkgbits.Pkgbits__assert._assert((_v : stdgo.GoUInt64) == (_x));
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L381"
        return _v;
    }
    @:keep
    @:tdfield
    static public function uint64( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder>):stdgo.GoUInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder> = _r;
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L376"
        _r.sync((4 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L377"
        return _r._rawUvarint();
    }
    @:keep
    @:tdfield
    static public function int64( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder>):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder> = _r;
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L370"
        _r.sync((3 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L371"
        return _r._rawVarint();
    }
    @:keep
    @:tdfield
    static public function bool_( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder> = _r;
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L361"
        _r.sync((2 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        var __tmp__ = (@:checkr _r ?? throw "null pointer dereference").data.readByte(), _x:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L363"
        _r._checkErr(_err);
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L364"
        stdgo._internal.internal.pkgbits.Pkgbits__assert._assert((_x < (2 : stdgo.GoUInt8) : Bool));
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L365"
        return _x != ((0 : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function sync( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder>, _mWant:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder> = _r;
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L305"
        if (!(@:checkr (@:checkr _r ?? throw "null pointer dereference")._common ?? throw "null pointer dereference")._sync) {
            //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L306"
            return;
        };
        var __tmp__ = (@:checkr _r ?? throw "null pointer dereference").data.seek((0i64 : stdgo.GoInt64), (1 : stdgo.GoInt)), _pos:stdgo.GoInt64 = __tmp__._0, __2:stdgo.Error = __tmp__._1;
        var _mHave = (_r._rawUvarint() : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker);
        var _writerPCs = (new stdgo.Slice<stdgo.GoInt>((_r._rawUvarint() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L312"
        for (_i => _ in _writerPCs) {
            _writerPCs[(_i : stdgo.GoInt)] = (_r._rawUvarint() : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L316"
        if (_mHave == (_mWant)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L317"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L336"
        stdgo._internal.fmt.Fmt_printf.printf(("export data desync: package %q, section %v, index %v, offset %v\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr (@:checkr _r ?? throw "null pointer dereference")._common ?? throw "null pointer dereference")._pkgPath), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._k), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference").idx), stdgo.Go.toInterface(_pos));
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L338"
        stdgo._internal.fmt.Fmt_printf.printf(("\nfound %v, written at:\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_mHave)));
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L339"
        if ((_writerPCs.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L340"
            stdgo._internal.fmt.Fmt_printf.printf(("\t[stack trace unavailable; recompile package %q with -d=syncframes]\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr (@:checkr _r ?? throw "null pointer dereference")._common ?? throw "null pointer dereference")._pkgPath));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L342"
        for (__3 => _pc in _writerPCs) {
            //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L343"
            stdgo._internal.fmt.Fmt_printf.printf(("\t%s\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._common.stringIdx(_r._rawReloc((0 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind), _pc))));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L346"
        stdgo._internal.fmt.Fmt_printf.printf(("\nexpected %v, reading at:\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_mWant)));
        var _readerPCs:stdgo.GoArray<stdgo.GoUIntptr> = new stdgo.GoArray<stdgo.GoUIntptr>(32, 32);
        var _n = (stdgo._internal.runtime.Runtime_callers.callers((2 : stdgo.GoInt), (_readerPCs.__slice__(0) : stdgo.Slice<stdgo.GoUIntptr>)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L349"
        for (__4 => _pc in stdgo._internal.internal.pkgbits.Pkgbits__fmtframes._fmtFrames(...((_readerPCs.__slice__(0, _n) : stdgo.Slice<stdgo.GoUIntptr>) : Array<stdgo.GoUIntptr>))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L350"
            stdgo._internal.fmt.Fmt_printf.printf(("\t%s\n" : stdgo.GoString), stdgo.Go.toInterface(_pc));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L356"
        #if (sys || hxnodejs) Sys.exit((1 : stdgo.GoInt)) #else null #end;
    }
    @:keep
    @:tdfield
    static public function _rawReloc( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder>, _k:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _idx:stdgo.GoInt):stdgo._internal.internal.pkgbits.Pkgbits_index.Index {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder> = _r;
        var _e = ((@:checkr _r ?? throw "null pointer dereference").relocs[(_idx : stdgo.GoInt)] : stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt);
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L296"
        stdgo._internal.internal.pkgbits.Pkgbits__assert._assert(_e.kind == (_k));
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L297"
        return _e.idx;
    }
    @:keep
    @:tdfield
    static public function _rawVarint( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder>):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder> = _r;
        var _ux = (_r._rawUvarint() : stdgo.GoUInt64);
        var _x = ((_ux >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L288"
        if ((_ux & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            _x = (-1 ^ _x);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L291"
        return _x;
    }
    @:keep
    @:tdfield
    static public function _rawUvarint( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder>):stdgo.GoUInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder> = _r;
        var __tmp__ = stdgo._internal.internal.pkgbits.Pkgbits__readuvarint._readUvarint((stdgo.Go.setRef((@:checkr _r ?? throw "null pointer dereference").data) : stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>)), _x:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L251"
        _r._checkErr(_err);
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L252"
        return _x;
    }
    @:keep
    @:tdfield
    static public function _checkErr( _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder>, _err:stdgo.Error):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder> = _r;
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L244"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L245"
            stdgo._internal.internal.pkgbits.Pkgbits__errorf._errorf(("unexpected decoding error: %w" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
}
