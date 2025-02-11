package stdgo._internal.internal.coverage.decodecounter;
@:keep @:allow(stdgo._internal.internal.coverage.decodecounter.Decodecounter.CounterDataReader_asInterface) class CounterDataReader_static_extension {
    @:keep
    @:tdfield
    static public function nextFunc( _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>, _p:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_funcpayload.FuncPayload>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader> = _cdr;
        if (((@:checkr _cdr ?? throw "null pointer dereference")._fcnCount >= ((@:checkr _cdr ?? throw "null pointer dereference")._shdr.fcnEntries : stdgo.GoUInt32) : Bool)) {
            return { _0 : false, _1 : (null : stdgo.Error) };
        };
        (@:checkr _cdr ?? throw "null pointer dereference")._fcnCount++;
        var _rdu32:() -> { var _0 : stdgo.GoUInt32; var _1 : stdgo.Error; } = null;
        if ((@:checkr _cdr ?? throw "null pointer dereference")._hdr.cFlavor == ((2 : stdgo._internal.internal.coverage.Coverage_counterflavor.CounterFlavor))) {
            _rdu32 = function():{ var _0 : stdgo.GoUInt32; var _1 : stdgo.Error; } {
                var _shift:stdgo.GoUInt = (0 : stdgo.GoUInt);
                var _value:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                while (true) {
                    var __tmp__ = (@:checkr _cdr ?? throw "null pointer dereference")._mr.read((@:checkr _cdr ?? throw "null pointer dereference")._u8b), __43:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : (0u32 : stdgo.GoUInt32), _1 : _err };
                    };
                    var _b = ((@:checkr _cdr ?? throw "null pointer dereference")._u8b[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
                    _value = (_value | ((((_b & (127 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64) << _shift : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    if ((_b & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
                        break;
                    };
                    _shift = (_shift + ((7u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                };
                return { _0 : (_value : stdgo.GoUInt32), _1 : (null : stdgo.Error) };
            };
        } else if ((@:checkr _cdr ?? throw "null pointer dereference")._hdr.cFlavor == ((1 : stdgo._internal.internal.coverage.Coverage_counterflavor.CounterFlavor))) {
            if ((@:checkr _cdr ?? throw "null pointer dereference")._hdr.bigEndian) {
                _rdu32 = function():{ var _0 : stdgo.GoUInt32; var _1 : stdgo.Error; } {
                    var __tmp__ = (@:checkr _cdr ?? throw "null pointer dereference")._mr.read((@:checkr _cdr ?? throw "null pointer dereference")._u32b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : (0u32 : stdgo.GoUInt32), _1 : _err };
                    };
                    if (_n != ((4 : stdgo.GoInt))) {
                        return { _0 : (0u32 : stdgo.GoUInt32), _1 : stdgo._internal.io.Io_eof.eOF };
                    };
                    return { _0 : stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32((@:checkr _cdr ?? throw "null pointer dereference")._u32b), _1 : (null : stdgo.Error) };
                };
            } else {
                _rdu32 = function():{ var _0 : stdgo.GoUInt32; var _1 : stdgo.Error; } {
                    var __tmp__ = (@:checkr _cdr ?? throw "null pointer dereference")._mr.read((@:checkr _cdr ?? throw "null pointer dereference")._u32b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : (0u32 : stdgo.GoUInt32), _1 : _err };
                    };
                    if (_n != ((4 : stdgo.GoInt))) {
                        return { _0 : (0u32 : stdgo.GoUInt32), _1 : stdgo._internal.io.Io_eof.eOF };
                    };
                    return { _0 : stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((@:checkr _cdr ?? throw "null pointer dereference")._u32b), _1 : (null : stdgo.Error) };
                };
            };
        } else {
            throw stdgo.Go.toInterface(("internal error: unknown counter flavor" : stdgo.GoString));
        };
        var _nc:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _err:stdgo.Error = (null : stdgo.Error);
        if (false) {
            while (true) {
                {
                    var __tmp__ = _rdu32();
                    _nc = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                    return { _0 : false, _1 : stdgo._internal.io.Io_eof.eOF };
                } else if (_err != null) {
                    break;
                };
                if (_nc != ((0u32 : stdgo.GoUInt32))) {
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
        if (_err != null) {
            return { _0 : false, _1 : _err };
        };
        {
            var __tmp__ = _rdu32();
            (@:checkr _p ?? throw "null pointer dereference").pkgIdx = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return { _0 : false, _1 : _err };
        };
        {
            var __tmp__ = _rdu32();
            (@:checkr _p ?? throw "null pointer dereference").funcIdx = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return { _0 : false, _1 : _err };
        };
        if (((@:checkr _p ?? throw "null pointer dereference").counters.capacity < (1024 : stdgo.GoInt) : Bool)) {
            (@:checkr _p ?? throw "null pointer dereference").counters = (new stdgo.Slice<stdgo.GoUInt32>((0 : stdgo.GoInt).toBasic(), (1024 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        };
        (@:checkr _p ?? throw "null pointer dereference").counters = ((@:checkr _p ?? throw "null pointer dereference").counters.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt32>);
        {
            var _i = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            while ((_i < _nc : Bool)) {
                var __tmp__ = _rdu32(), _v:stdgo.GoUInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
if (_err != null) {
                    return { _0 : false, _1 : _err };
                };
(@:checkr _p ?? throw "null pointer dereference").counters = ((@:checkr _p ?? throw "null pointer dereference").counters.__append__(_v));
                _i++;
            };
        };
        return { _0 : true, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function numFunctionsInSegment( _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>):stdgo.GoUInt32 {
        @:recv var _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader> = _cdr;
        return ((@:checkr _cdr ?? throw "null pointer dereference")._shdr.fcnEntries : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function beginNextSegment( _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader> = _cdr;
        if (((@:checkr _cdr ?? throw "null pointer dereference")._segCount >= (@:checkr _cdr ?? throw "null pointer dereference")._ftr.numSegments : Bool)) {
            return { _0 : false, _1 : (null : stdgo.Error) };
        };
        (@:checkr _cdr ?? throw "null pointer dereference")._segCount++;
        (@:checkr _cdr ?? throw "null pointer dereference")._fcnCount = (0u32 : stdgo.GoUInt32);
        var _ftrSize = (stdgo._internal.unsafe.Unsafe_sizeof.sizeof(stdgo.Go.toInterface((@:checkr _cdr ?? throw "null pointer dereference")._ftr)) : stdgo.GoInt64);
        {
            var __tmp__ = (@:checkr _cdr ?? throw "null pointer dereference")._mr.seek(_ftrSize, (1 : stdgo.GoInt)), __46:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : false, _1 : _err };
            };
        };
        {
            var _err = (@:check2r _cdr._readSegmentPreamble() : stdgo.Error);
            if (_err != null) {
                return { _0 : false, _1 : _err };
            };
        };
        return { _0 : true, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function numSegments( _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>):stdgo.GoUInt32 {
        @:recv var _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader> = _cdr;
        return (@:checkr _cdr ?? throw "null pointer dereference")._ftr.numSegments;
    }
    @:keep
    @:tdfield
    static public function goarch( _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>):stdgo.GoString {
        @:recv var _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader> = _cdr;
        return (@:checkr _cdr ?? throw "null pointer dereference")._goarch?.__copy__();
    }
    @:keep
    @:tdfield
    static public function goos( _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>):stdgo.GoString {
        @:recv var _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader> = _cdr;
        return (@:checkr _cdr ?? throw "null pointer dereference")._goos?.__copy__();
    }
    @:keep
    @:tdfield
    static public function osArgs( _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>):stdgo.Slice<stdgo.GoString> {
        @:recv var _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader> = _cdr;
        return (@:checkr _cdr ?? throw "null pointer dereference")._osargs;
    }
    @:keep
    @:tdfield
    static public function _readArgs( _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>):stdgo.Error {
        @:recv var _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader> = _cdr;
        var _b = (new stdgo.Slice<stdgo.GoUInt8>(((@:checkr _cdr ?? throw "null pointer dereference")._shdr.argsLen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = (@:checkr _cdr ?? throw "null pointer dereference")._mr.read(_b), _nr:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        if (_nr != (((@:checkr _cdr ?? throw "null pointer dereference")._shdr.argsLen : stdgo.GoInt))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("error: short read on args table" : stdgo.GoString));
        };
        var _slr = stdgo._internal.internal.coverage.slicereader.Slicereader_newreader.newReader(_b, false);
        var _sget = (function():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
            var _kidx = (@:check2r _slr.readULEB128() : stdgo.GoUInt64);
            if (((_kidx : stdgo.GoInt) >= @:check2r (@:checkr _cdr ?? throw "null pointer dereference")._stab.entries() : Bool)) {
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("malformed string table ref" : stdgo.GoString)) };
            };
            return { _0 : @:check2r (@:checkr _cdr ?? throw "null pointer dereference")._stab.get((_kidx : stdgo.GoUInt32))?.__copy__(), _1 : (null : stdgo.Error) };
        } : () -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; });
        var _nents = (@:check2r _slr.readULEB128() : stdgo.GoUInt64);
        (@:checkr _cdr ?? throw "null pointer dereference")._args = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        {
            var _i = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            while ((_i < _nents : Bool)) {
                var __tmp__ = _sget(), _k:stdgo.GoString = __tmp__._0, _errk:stdgo.Error = __tmp__._1;
if (_errk != null) {
                    return _errk;
                };
var __tmp__ = _sget(), _v:stdgo.GoString = __tmp__._0, _errv:stdgo.Error = __tmp__._1;
if (_errv != null) {
                    return _errv;
                };
{
                    var __tmp__ = ((@:checkr _cdr ?? throw "null pointer dereference")._args != null && (@:checkr _cdr ?? throw "null pointer dereference")._args.__exists__(_k.__copy__()) ? { _0 : (@:checkr _cdr ?? throw "null pointer dereference")._args[_k.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), __42:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("malformed args table" : stdgo.GoString));
                    };
                };
(@:checkr _cdr ?? throw "null pointer dereference")._args[_k] = _v.__copy__();
                _i++;
            };
        };
        {
            var __tmp__ = ((@:checkr _cdr ?? throw "null pointer dereference")._args != null && (@:checkr _cdr ?? throw "null pointer dereference")._args.__exists__(("argc" : stdgo.GoString)) ? { _0 : (@:checkr _cdr ?? throw "null pointer dereference")._args[("argc" : stdgo.GoString)], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _argcs:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_argcs?.__copy__()), _argc:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("malformed argc in counter data file args section" : stdgo.GoString));
                };
                (@:checkr _cdr ?? throw "null pointer dereference")._osargs = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), _argc).__setString__() : stdgo.Slice<stdgo.GoString>);
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _argc : Bool)) {
                        var _arg = (((@:checkr _cdr ?? throw "null pointer dereference")._args[stdgo._internal.fmt.Fmt_sprintf.sprintf(("argv%d" : stdgo.GoString), stdgo.Go.toInterface(_i))] ?? ("" : stdgo.GoString)).__copy__() : stdgo.GoString);
(@:checkr _cdr ?? throw "null pointer dereference")._osargs = ((@:checkr _cdr ?? throw "null pointer dereference")._osargs.__append__(_arg.__copy__()));
                        _i++;
                    };
                };
            };
        };
        {
            var __tmp__ = ((@:checkr _cdr ?? throw "null pointer dereference")._args != null && (@:checkr _cdr ?? throw "null pointer dereference")._args.__exists__(("GOOS" : stdgo.GoString)) ? { _0 : (@:checkr _cdr ?? throw "null pointer dereference")._args[("GOOS" : stdgo.GoString)], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _goos:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                (@:checkr _cdr ?? throw "null pointer dereference")._goos = _goos?.__copy__();
            };
        };
        {
            var __tmp__ = ((@:checkr _cdr ?? throw "null pointer dereference")._args != null && (@:checkr _cdr ?? throw "null pointer dereference")._args.__exists__(("GOARCH" : stdgo.GoString)) ? { _0 : (@:checkr _cdr ?? throw "null pointer dereference")._args[("GOARCH" : stdgo.GoString)], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _goarch:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                (@:checkr _cdr ?? throw "null pointer dereference")._goarch = _goarch?.__copy__();
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readStringTable( _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>):stdgo.Error {
        @:recv var _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader> = _cdr;
        var _b = (new stdgo.Slice<stdgo.GoUInt8>(((@:checkr _cdr ?? throw "null pointer dereference")._shdr.strTabLen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = (@:checkr _cdr ?? throw "null pointer dereference")._mr.read(_b), _nr:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        if (_nr != (((@:checkr _cdr ?? throw "null pointer dereference")._shdr.strTabLen : stdgo.GoInt))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("error: short read on string table" : stdgo.GoString));
        };
        var _slr = stdgo._internal.internal.coverage.slicereader.Slicereader_newreader.newReader(_b, false);
        (@:checkr _cdr ?? throw "null pointer dereference")._stab = stdgo._internal.internal.coverage.stringtab.Stringtab_newreader.newReader(_slr);
        @:check2r (@:checkr _cdr ?? throw "null pointer dereference")._stab.read();
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readSegmentPreamble( _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>):stdgo.Error {
        @:recv var _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader> = _cdr;
        {
            var _err = (stdgo._internal.encoding.binary.Binary_read.read((@:checkr _cdr ?? throw "null pointer dereference")._mr, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _cdr ?? throw "null pointer dereference")._shdr) : stdgo.Ref<stdgo._internal.internal.coverage.Coverage_countersegmentheader.CounterSegmentHeader>)))) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if ((@:checkr _cdr ?? throw "null pointer dereference")._debug) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("=-= read counter segment header: %+v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _cdr ?? throw "null pointer dereference")._shdr)));
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), (" FcnEntries=0x%x StrTabLen=0x%x ArgsLen=0x%x\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _cdr ?? throw "null pointer dereference")._shdr.fcnEntries), stdgo.Go.toInterface((@:checkr _cdr ?? throw "null pointer dereference")._shdr.strTabLen), stdgo.Go.toInterface((@:checkr _cdr ?? throw "null pointer dereference")._shdr.argsLen));
        };
        {
            var _err = (@:check2r _cdr._readStringTable() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (@:check2r _cdr._readArgs() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = (@:checkr _cdr ?? throw "null pointer dereference")._mr.seek((0i64 : stdgo.GoInt64), (1 : stdgo.GoInt)), _of:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            } else {
                var _rem = (_of % (4i64 : stdgo.GoInt64) : stdgo.GoInt64);
                if (_rem != ((0i64 : stdgo.GoInt64))) {
                    var _pad = ((4i64 : stdgo.GoInt64) - _rem : stdgo.GoInt64);
                    {
                        var __tmp__ = (@:checkr _cdr ?? throw "null pointer dereference")._mr.seek(_pad, (1 : stdgo.GoInt)), __48:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            return _err;
                        };
                    };
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readFooter( _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>):stdgo.Error {
        @:recv var _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader> = _cdr;
        var _ftrSize = (stdgo._internal.unsafe.Unsafe_sizeof.sizeof(stdgo.Go.toInterface((@:checkr _cdr ?? throw "null pointer dereference")._ftr)) : stdgo.GoInt64);
        {
            var __tmp__ = (@:checkr _cdr ?? throw "null pointer dereference")._mr.seek(-_ftrSize, (2 : stdgo.GoInt)), __20:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (stdgo._internal.encoding.binary.Binary_read.read((@:checkr _cdr ?? throw "null pointer dereference")._mr, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _cdr ?? throw "null pointer dereference")._ftr) : stdgo.Ref<stdgo._internal.internal.coverage.Coverage_counterfilefooter.CounterFileFooter>)))) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if (!stdgo._internal.internal.coverage.decodecounter.Decodecounter__checkmagic._checkMagic((@:checkr _cdr ?? throw "null pointer dereference")._ftr.magic?.__copy__())) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("invalid magic string (not a counter data file)" : stdgo.GoString));
        };
        if ((@:checkr _cdr ?? throw "null pointer dereference")._ftr.numSegments == ((0u32 : stdgo.GoUInt32))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("invalid counter data file (no segments)" : stdgo.GoString));
        };
        return (null : stdgo.Error);
    }
}
