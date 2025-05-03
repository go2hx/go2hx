package stdgo._internal.internal.coverage.decodecounter;
@:keep @:allow(stdgo._internal.internal.coverage.decodecounter.Decodecounter.CounterDataReader_asInterface) class CounterDataReader_static_extension {
    @:keep
    @:tdfield
    static public function nextFunc( _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>, _p:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_funcpayload.FuncPayload>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader> = _cdr;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L275"
        if (((@:checkr _cdr ?? throw "null pointer dereference")._fcnCount >= ((@:checkr _cdr ?? throw "null pointer dereference")._shdr.fcnEntries : stdgo.GoUInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L276"
            return { _0 : false, _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L278"
        (@:checkr _cdr ?? throw "null pointer dereference")._fcnCount++;
        var _rdu32:() -> { var _0 : stdgo.GoUInt32; var _1 : stdgo.Error; } = null;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L280"
        if ((@:checkr _cdr ?? throw "null pointer dereference")._hdr.cFlavor == ((2 : stdgo._internal.internal.coverage.Coverage_counterflavor.CounterFlavor))) {
            _rdu32 = function():{ var _0 : stdgo.GoUInt32; var _1 : stdgo.Error; } {
                var _shift:stdgo.GoUInt = (0 : stdgo.GoUInt);
                var _value:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L284"
                while (true) {
                    var __tmp__ = (@:checkr _cdr ?? throw "null pointer dereference")._mr.read((@:checkr _cdr ?? throw "null pointer dereference")._u8b), __43:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L286"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L287"
                        return { _0 : (0u32 : stdgo.GoUInt32), _1 : _err };
                    };
                    var _b = ((@:checkr _cdr ?? throw "null pointer dereference")._u8b[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
                    _value = (_value | ((((_b & (127 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64) << _shift : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L291"
                    if ((_b & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L292"
                        break;
                    };
                    _shift = (_shift + ((7u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L296"
                return { _0 : (_value : stdgo.GoUInt32), _1 : (null : stdgo.Error) };
            };
        } else if ((@:checkr _cdr ?? throw "null pointer dereference")._hdr.cFlavor == ((1 : stdgo._internal.internal.coverage.Coverage_counterflavor.CounterFlavor))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L299"
            if ((@:checkr _cdr ?? throw "null pointer dereference")._hdr.bigEndian) {
                _rdu32 = function():{ var _0 : stdgo.GoUInt32; var _1 : stdgo.Error; } {
                    var __tmp__ = (@:checkr _cdr ?? throw "null pointer dereference")._mr.read((@:checkr _cdr ?? throw "null pointer dereference")._u32b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L302"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L303"
                        return { _0 : (0u32 : stdgo.GoUInt32), _1 : _err };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L305"
                    if (_n != ((4 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L306"
                        return { _0 : (0u32 : stdgo.GoUInt32), _1 : stdgo._internal.io.Io_eof.eOF };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L308"
                    return { _0 : stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32((@:checkr _cdr ?? throw "null pointer dereference")._u32b), _1 : (null : stdgo.Error) };
                };
            } else {
                _rdu32 = function():{ var _0 : stdgo.GoUInt32; var _1 : stdgo.Error; } {
                    var __tmp__ = (@:checkr _cdr ?? throw "null pointer dereference")._mr.read((@:checkr _cdr ?? throw "null pointer dereference")._u32b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L313"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L314"
                        return { _0 : (0u32 : stdgo.GoUInt32), _1 : _err };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L316"
                    if (_n != ((4 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L317"
                        return { _0 : (0u32 : stdgo.GoUInt32), _1 : stdgo._internal.io.Io_eof.eOF };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L319"
                    return { _0 : stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((@:checkr _cdr ?? throw "null pointer dereference")._u32b), _1 : (null : stdgo.Error) };
                };
            };
        } else {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L323"
            throw stdgo.Go.toInterface(("internal error: unknown counter flavor" : stdgo.GoString));
        };
        var _nc:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L333"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L334"
            while (true) {
                {
                    var __tmp__ = _rdu32();
                    _nc = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L336"
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L337"
                    return { _0 : false, _1 : stdgo._internal.io.Io_eof.eOF };
                } else if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L339"
                    break;
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L341"
                if (_nc != ((0u32 : stdgo.GoUInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L342"
                    break;
                };
            };
        } else {
            {
                var __tmp__ = _rdu32();
                _nc = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L348"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L349"
            return { _0 : false, _1 : _err };
        };
        {
            var __tmp__ = _rdu32();
            (@:checkr _p ?? throw "null pointer dereference").pkgIdx = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L354"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L355"
            return { _0 : false, _1 : _err };
        };
        {
            var __tmp__ = _rdu32();
            (@:checkr _p ?? throw "null pointer dereference").funcIdx = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L358"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L359"
            return { _0 : false, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L361"
        if (((@:checkr _p ?? throw "null pointer dereference").counters.capacity < (1024 : stdgo.GoInt) : Bool)) {
            (@:checkr _p ?? throw "null pointer dereference").counters = (new stdgo.Slice<stdgo.GoUInt32>((0 : stdgo.GoInt).toBasic(), (1024 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        };
        (@:checkr _p ?? throw "null pointer dereference").counters = ((@:checkr _p ?? throw "null pointer dereference").counters.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt32>);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L365"
        {
            var _i = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            while ((_i < _nc : Bool)) {
                var __tmp__ = _rdu32(), _v:stdgo.GoUInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L367"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L368"
                    return { _0 : false, _1 : _err };
                };
(@:checkr _p ?? throw "null pointer dereference").counters = ((@:checkr _p ?? throw "null pointer dereference").counters.__append__(_v) : stdgo.Slice<stdgo.GoUInt32>);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L372"
        return { _0 : true, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function numFunctionsInSegment( _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>):stdgo.GoUInt32 {
        @:recv var _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader> = _cdr;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L264"
        return ((@:checkr _cdr ?? throw "null pointer dereference")._shdr.fcnEntries : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function beginNextSegment( _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader> = _cdr;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L244"
        if (((@:checkr _cdr ?? throw "null pointer dereference")._segCount >= (@:checkr _cdr ?? throw "null pointer dereference")._ftr.numSegments : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L245"
            return { _0 : false, _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L247"
        (@:checkr _cdr ?? throw "null pointer dereference")._segCount++;
        (@:checkr _cdr ?? throw "null pointer dereference")._fcnCount = (0u32 : stdgo.GoUInt32);
        var _ftrSize = (stdgo._internal.unsafe.Unsafe_sizeof.sizeof(stdgo.Go.toInterface((@:checkr _cdr ?? throw "null pointer dereference")._ftr)) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L251"
        {
            var __tmp__ = (@:checkr _cdr ?? throw "null pointer dereference")._mr.seek(_ftrSize, (1 : stdgo.GoInt)), __46:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L252"
                return { _0 : false, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L255"
        {
            var _err = (_cdr._readSegmentPreamble() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L256"
                return { _0 : false, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L258"
        return { _0 : true, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function numSegments( _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>):stdgo.GoUInt32 {
        @:recv var _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader> = _cdr;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L236"
        return (@:checkr _cdr ?? throw "null pointer dereference")._ftr.numSegments;
    }
    @:keep
    @:tdfield
    static public function goarch( _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>):stdgo.GoString {
        @:recv var _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader> = _cdr;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L223"
        return (@:checkr _cdr ?? throw "null pointer dereference")._goarch?.__copy__();
    }
    @:keep
    @:tdfield
    static public function goos( _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>):stdgo.GoString {
        @:recv var _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader> = _cdr;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L215"
        return (@:checkr _cdr ?? throw "null pointer dereference")._goos?.__copy__();
    }
    @:keep
    @:tdfield
    static public function osArgs( _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>):stdgo.Slice<stdgo.GoString> {
        @:recv var _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader> = _cdr;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L207"
        return (@:checkr _cdr ?? throw "null pointer dereference")._osargs;
    }
    @:keep
    @:tdfield
    static public function _readArgs( _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>):stdgo.Error {
        @:recv var _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader> = _cdr;
        var _b = (new stdgo.Slice<stdgo.GoUInt8>(((@:checkr _cdr ?? throw "null pointer dereference")._shdr.argsLen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = (@:checkr _cdr ?? throw "null pointer dereference")._mr.read(_b), _nr:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L150"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L151"
            return _err;
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L153"
        if (_nr != (((@:checkr _cdr ?? throw "null pointer dereference")._shdr.argsLen : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L154"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("error: short read on args table" : stdgo.GoString));
        };
        var _slr = stdgo._internal.internal.coverage.slicereader.Slicereader_newreader.newReader(_b, false);
        var _sget = (function():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
            var _kidx = (_slr.readULEB128() : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L159"
            if (((_kidx : stdgo.GoInt) >= (@:checkr _cdr ?? throw "null pointer dereference")._stab.entries() : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L160"
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("malformed string table ref" : stdgo.GoString)) };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L162"
            return { _0 : (@:checkr _cdr ?? throw "null pointer dereference")._stab.get((_kidx : stdgo.GoUInt32))?.__copy__(), _1 : (null : stdgo.Error) };
        } : () -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; });
        var _nents = (_slr.readULEB128() : stdgo.GoUInt64);
        (@:checkr _cdr ?? throw "null pointer dereference")._args = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L166"
        {
            var _i = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            while ((_i < _nents : Bool)) {
                var __tmp__ = _sget(), _k:stdgo.GoString = __tmp__._0, _errk:stdgo.Error = __tmp__._1;
//"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L168"
                if (_errk != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L169"
                    return _errk;
                };
var __tmp__ = _sget(), _v:stdgo.GoString = __tmp__._0, _errv:stdgo.Error = __tmp__._1;
//"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L172"
                if (_errv != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L173"
                    return _errv;
                };
//"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L175"
                {
                    var __tmp__ = ((@:checkr _cdr ?? throw "null pointer dereference")._args != null && (@:checkr _cdr ?? throw "null pointer dereference")._args.__exists__(_k.__copy__()) ? { _0 : (@:checkr _cdr ?? throw "null pointer dereference")._args[_k.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), __42:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L176"
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("malformed args table" : stdgo.GoString));
                    };
                };
(@:checkr _cdr ?? throw "null pointer dereference")._args[_k] = _v.__copy__();
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L180"
        {
            var __tmp__ = ((@:checkr _cdr ?? throw "null pointer dereference")._args != null && (@:checkr _cdr ?? throw "null pointer dereference")._args.__exists__(("argc" : stdgo.GoString)) ? { _0 : (@:checkr _cdr ?? throw "null pointer dereference")._args[("argc" : stdgo.GoString)], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _argcs:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_argcs?.__copy__()), _argc:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L182"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L183"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("malformed argc in counter data file args section" : stdgo.GoString));
                };
                (@:checkr _cdr ?? throw "null pointer dereference")._osargs = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), _argc).__setString__() : stdgo.Slice<stdgo.GoString>);
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L186"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _argc : Bool)) {
                        var _arg = (((@:checkr _cdr ?? throw "null pointer dereference")._args[stdgo._internal.fmt.Fmt_sprintf.sprintf(("argv%d" : stdgo.GoString), stdgo.Go.toInterface(_i))] ?? ("" : stdgo.GoString)).__copy__() : stdgo.GoString);
(@:checkr _cdr ?? throw "null pointer dereference")._osargs = ((@:checkr _cdr ?? throw "null pointer dereference")._osargs.__append__(_arg.__copy__()) : stdgo.Slice<stdgo.GoString>);
                        _i++;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L191"
        {
            var __tmp__ = ((@:checkr _cdr ?? throw "null pointer dereference")._args != null && (@:checkr _cdr ?? throw "null pointer dereference")._args.__exists__(("GOOS" : stdgo.GoString)) ? { _0 : (@:checkr _cdr ?? throw "null pointer dereference")._args[("GOOS" : stdgo.GoString)], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _goos:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                (@:checkr _cdr ?? throw "null pointer dereference")._goos = _goos?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L194"
        {
            var __tmp__ = ((@:checkr _cdr ?? throw "null pointer dereference")._args != null && (@:checkr _cdr ?? throw "null pointer dereference")._args.__exists__(("GOARCH" : stdgo.GoString)) ? { _0 : (@:checkr _cdr ?? throw "null pointer dereference")._args[("GOARCH" : stdgo.GoString)], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _goarch:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                (@:checkr _cdr ?? throw "null pointer dereference")._goarch = _goarch?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L197"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readStringTable( _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>):stdgo.Error {
        @:recv var _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader> = _cdr;
        var _b = (new stdgo.Slice<stdgo.GoUInt8>(((@:checkr _cdr ?? throw "null pointer dereference")._shdr.strTabLen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = (@:checkr _cdr ?? throw "null pointer dereference")._mr.read(_b), _nr:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L135"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L136"
            return _err;
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L138"
        if (_nr != (((@:checkr _cdr ?? throw "null pointer dereference")._shdr.strTabLen : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L139"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("error: short read on string table" : stdgo.GoString));
        };
        var _slr = stdgo._internal.internal.coverage.slicereader.Slicereader_newreader.newReader(_b, false);
        (@:checkr _cdr ?? throw "null pointer dereference")._stab = stdgo._internal.internal.coverage.stringtab.Stringtab_newreader.newReader(_slr);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L143"
        (@:checkr _cdr ?? throw "null pointer dereference")._stab.read();
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L144"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readSegmentPreamble( _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>):stdgo.Error {
        @:recv var _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader> = _cdr;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L101"
        {
            var _err = (stdgo._internal.encoding.binary.Binary_read.read((@:checkr _cdr ?? throw "null pointer dereference")._mr, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _cdr ?? throw "null pointer dereference")._shdr) : stdgo.Ref<stdgo._internal.internal.coverage.Coverage_countersegmentheader.CounterSegmentHeader>)))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L102"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L104"
        if ((@:checkr _cdr ?? throw "null pointer dereference")._debug) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L105"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("=-= read counter segment header: %+v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _cdr ?? throw "null pointer dereference")._shdr)));
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L106"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), (" FcnEntries=0x%x StrTabLen=0x%x ArgsLen=0x%x\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _cdr ?? throw "null pointer dereference")._shdr.fcnEntries), stdgo.Go.toInterface((@:checkr _cdr ?? throw "null pointer dereference")._shdr.strTabLen), stdgo.Go.toInterface((@:checkr _cdr ?? throw "null pointer dereference")._shdr.argsLen));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L111"
        {
            var _err = (_cdr._readStringTable() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L112"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L114"
        {
            var _err = (_cdr._readArgs() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L115"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L118"
        {
            var __tmp__ = (@:checkr _cdr ?? throw "null pointer dereference")._mr.seek((0i64 : stdgo.GoInt64), (1 : stdgo.GoInt)), _of:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L119"
                return _err;
            } else {
                var _rem = (_of % (4i64 : stdgo.GoInt64) : stdgo.GoInt64);
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L122"
                if (_rem != ((0i64 : stdgo.GoInt64))) {
                    var _pad = ((4i64 : stdgo.GoInt64) - _rem : stdgo.GoInt64);
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L124"
                    {
                        var __tmp__ = (@:checkr _cdr ?? throw "null pointer dereference")._mr.seek(_pad, (1 : stdgo.GoInt)), __48:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L125"
                            return _err;
                        };
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L129"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readFooter( _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>):stdgo.Error {
        @:recv var _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader> = _cdr;
        var _ftrSize = (stdgo._internal.unsafe.Unsafe_sizeof.sizeof(stdgo.Go.toInterface((@:checkr _cdr ?? throw "null pointer dereference")._ftr)) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L82"
        {
            var __tmp__ = (@:checkr _cdr ?? throw "null pointer dereference")._mr.seek(-_ftrSize, (2 : stdgo.GoInt)), __20:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L83"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L85"
        {
            var _err = (stdgo._internal.encoding.binary.Binary_read.read((@:checkr _cdr ?? throw "null pointer dereference")._mr, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _cdr ?? throw "null pointer dereference")._ftr) : stdgo.Ref<stdgo._internal.internal.coverage.Coverage_counterfilefooter.CounterFileFooter>)))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L86"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L88"
        if (!stdgo._internal.internal.coverage.decodecounter.Decodecounter__checkmagic._checkMagic((@:checkr _cdr ?? throw "null pointer dereference")._ftr.magic?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L89"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("invalid magic string (not a counter data file)" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L91"
        if ((@:checkr _cdr ?? throw "null pointer dereference")._ftr.numSegments == ((0u32 : stdgo.GoUInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L92"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("invalid counter data file (no segments)" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L94"
        return (null : stdgo.Error);
    }
}
