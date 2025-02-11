package stdgo._internal.runtime.coverage;
@:keep @:allow(stdgo._internal.runtime.coverage.Coverage.T_emitState_asInterface) class T_emitState_static_extension {
    @:keep
    @:tdfield
    static public function _emitCounterDataFile( _s:stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState>, _finalHash:stdgo.GoArray<stdgo.GoUInt8>, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState> = _s;
        var _cfw = stdgo._internal.internal.coverage.encodecounter.Encodecounter_newcoveragedatawriter.newCoverageDataWriter(_w, (2 : stdgo._internal.internal.coverage.Coverage_counterflavor.CounterFlavor));
        {
            var _err = (@:check2r _cfw.write(_finalHash?.__copy__(), stdgo._internal.runtime.coverage.Coverage__capturedosargs._capturedOsArgs, stdgo.Go.asInterface(_s)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function visitFuncs( _s:stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState>, _f:stdgo._internal.internal.coverage.encodecounter.Encodecounter_countervisitorfn.CounterVisitorFn):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState> = _s;
        var _sd:stdgo.Slice<stdgo._internal.sync.atomic_.Atomic__uint32.Uint32> = (null : stdgo.Slice<stdgo._internal.sync.atomic_.Atomic__uint32.Uint32>);
        var _tcounters:stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
        var _bufHdr = ((stdgo.Go.toInterface((stdgo.Go.setRef(_sd) : stdgo.Ref<stdgo.Slice<stdgo._internal.sync.atomic_.Atomic__uint32.Uint32>>)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_sliceheader.SliceHeader", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }, { name : "len", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }, { name : "cap", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.reflect.Reflect_sliceheader.SliceHeader>);
        var _rdCounters = function(_actrs:stdgo.Slice<stdgo._internal.sync.atomic_.Atomic__uint32.Uint32>, _ctrs:stdgo.Slice<stdgo.GoUInt32>):stdgo.Slice<stdgo.GoUInt32> {
            _ctrs = (_ctrs.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt32>);
            for (_i => _ in _actrs) {
                _ctrs = (_ctrs.__append__(@:check2 _actrs[(_i : stdgo.GoInt)].load()));
            };
            return _ctrs;
        };
        var _dpkg = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        for (__7 => _c in (@:checkr _s ?? throw "null pointer dereference")._counterlist) {
            (@:checkr _bufHdr ?? throw "null pointer dereference").data = (new stdgo.GoUIntptr((stdgo.Go.toInterface(_c.counters) : stdgo._internal.unsafe.Unsafe.UnsafePointer)) : stdgo.GoUIntptr);
            (@:checkr _bufHdr ?? throw "null pointer dereference").len = (_c.len : stdgo.GoInt);
            (@:checkr _bufHdr ?? throw "null pointer dereference").cap = (_c.len : stdgo.GoInt);
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (_sd.length) : Bool)) {
                    var _sdi = (@:check2 _sd[(_i : stdgo.GoInt)].load() : stdgo.GoUInt32);
if (_sdi == ((0u32 : stdgo.GoUInt32))) {
                        {
                            _i++;
                            continue;
                        };
                    };
var _nCtrs = (@:check2 _sd[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)].load() : stdgo.GoUInt32);
var _pkgId = (@:check2 _sd[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].load() : stdgo.GoUInt32);
var _funcId = (@:check2 _sd[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)].load() : stdgo.GoUInt32);
var _cst = (_i + (3 : stdgo.GoInt) : stdgo.GoInt);
var _counters = (_sd.__slice__(_cst, (_cst + (_nCtrs : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.sync.atomic_.Atomic__uint32.Uint32>);
var _isLive = (false : Bool);
{
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < (_counters.length) : Bool)) {
                            if (@:check2 _counters[(_i : stdgo.GoInt)].load() != ((0u32 : stdgo.GoUInt32))) {
                                _isLive = true;
                                break;
                            };
                            _i++;
                        };
                    };
if (!_isLive) {
                        _i = (_i + ((((3 : stdgo.GoInt) + (_nCtrs : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                        {
                            _i++;
                            continue;
                        };
                    };
if ((@:checkr _s ?? throw "null pointer dereference")._debug) {
                        if (_pkgId != (_dpkg)) {
                            _dpkg = _pkgId;
                            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("\n=+= %d: pk=%d visit live fcn" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_pkgId));
                        };
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), (" {i=%d F%d NC%d}" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_funcId), stdgo.Go.toInterface(_nCtrs));
                    };
var _ipk = (_pkgId : stdgo.GoInt32);
if (_ipk == ((0 : stdgo.GoInt32))) {
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("\n" : stdgo.GoString));
                        stdgo._internal.runtime.coverage.Coverage__reporterrorinhardcodedlist._reportErrorInHardcodedList((_i : stdgo.GoInt32), _ipk, _funcId, _nCtrs);
                    } else if ((_ipk < (0 : stdgo.GoInt32) : Bool)) {
                        {
                            var __tmp__ = ((@:checkr _s ?? throw "null pointer dereference")._pkgmap != null && (@:checkr _s ?? throw "null pointer dereference")._pkgmap.__exists__((_ipk : stdgo.GoInt)) ? { _0 : (@:checkr _s ?? throw "null pointer dereference")._pkgmap[(_ipk : stdgo.GoInt)], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _newId:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (_ok) {
                                _pkgId = (_newId : stdgo.GoUInt32);
                            } else {
                                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("\n" : stdgo.GoString));
                                stdgo._internal.runtime.coverage.Coverage__reporterrorinhardcodedlist._reportErrorInHardcodedList((_i : stdgo.GoInt32), _ipk, _funcId, _nCtrs);
                            };
                        };
                    } else {
                        _pkgId--;
                    };
_tcounters = _rdCounters(_counters, _tcounters);
{
                        var _err = (_f(_pkgId, _funcId, _tcounters) : stdgo.Error);
                        if (_err != null) {
                            return _err;
                        };
                    };
_i = (_i + ((((3 : stdgo.GoInt) + (_nCtrs : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                    _i++;
                };
            };
            if ((@:checkr _s ?? throw "null pointer dereference")._debug) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("\n" : stdgo.GoString));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _needMetaDataFile( _s:stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState> = _s;
        return ((@:checkr _s ?? throw "null pointer dereference")._mf != null && (((@:checkr _s ?? throw "null pointer dereference")._mf : Dynamic).__nil__ == null || !((@:checkr _s ?? throw "null pointer dereference")._mf : Dynamic).__nil__));
    }
    @:keep
    @:tdfield
    static public function _emitMetaDataFile( _s:stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState>, _finalHash:stdgo.GoArray<stdgo.GoUInt8>, _tlen:stdgo.GoUInt64):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState> = _s;
        {
            var _err = (stdgo._internal.runtime.coverage.Coverage__writemetadata._writeMetaData(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference")._mf), (@:checkr _s ?? throw "null pointer dereference")._metalist, stdgo._internal.runtime.coverage.Coverage__cmode._cmode, stdgo._internal.runtime.coverage.Coverage__cgran._cgran, _finalHash?.__copy__()) : stdgo.Error);
            if (_err != null) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("writing %s: %v\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference")._mftmp), stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (@:check2r (@:checkr _s ?? throw "null pointer dereference")._mf.close() : stdgo.Error);
            if (_err != null) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("closing meta data temp file: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (stdgo._internal.os.Os_rename.rename((@:checkr _s ?? throw "null pointer dereference")._mftmp?.__copy__(), (@:checkr _s ?? throw "null pointer dereference")._mfname?.__copy__()) : stdgo.Error);
            if (_err != null) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("writing %s: rename from %s failed: %v\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference")._mfname), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference")._mftmp), stdgo.Go.toInterface(_err));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _openOutputFiles( _s:stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState>, _metaHash:stdgo.GoArray<stdgo.GoUInt8>, _metaLen:stdgo.GoUInt64, _which:stdgo._internal.runtime.coverage.Coverage_t_filetype.T_fileType):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState> = _s;
        var __tmp__ = stdgo._internal.os.Os_stat.stat((@:checkr _s ?? throw "null pointer dereference")._outdir?.__copy__()), _fi:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("output directory %q inaccessible (err: %v); no coverage data written" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference")._outdir), stdgo.Go.toInterface(_err));
        };
        if (!_fi.isDir()) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("output directory %q not a directory; no coverage data written" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference")._outdir));
        };
        if (((_which & (2 : stdgo._internal.runtime.coverage.Coverage_t_filetype.T_fileType) : stdgo._internal.runtime.coverage.Coverage_t_filetype.T_fileType)) != ((0 : stdgo._internal.runtime.coverage.Coverage_t_filetype.T_fileType))) {
            {
                var _err = (@:check2r _s._openMetaFile(_metaHash?.__copy__(), _metaLen) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        if (((_which & (4 : stdgo._internal.runtime.coverage.Coverage_t_filetype.T_fileType) : stdgo._internal.runtime.coverage.Coverage_t_filetype.T_fileType)) != ((0 : stdgo._internal.runtime.coverage.Coverage_t_filetype.T_fileType))) {
            {
                var _err = (@:check2r _s._openCounterFile(_metaHash?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _openCounterFile( _s:stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState>, _metaHash:stdgo.GoArray<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState> = _s;
        var _processID = (stdgo._internal.os.Os_getpid.getpid() : stdgo.GoInt);
        var _fn = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s.%x.%d.%d" : stdgo.GoString), stdgo.Go.toInterface(("covcounters" : stdgo.GoString)), stdgo.Go.toInterface(_metaHash), stdgo.Go.toInterface(_processID), stdgo.Go.toInterface(stdgo._internal.time.Time_now.now().unixNano()))?.__copy__() : stdgo.GoString);
        (@:checkr _s ?? throw "null pointer dereference")._cfname = stdgo._internal.path.filepath.Filepath_join.join((@:checkr _s ?? throw "null pointer dereference")._outdir?.__copy__(), _fn?.__copy__())?.__copy__();
        (@:checkr _s ?? throw "null pointer dereference")._cftmp = stdgo._internal.path.filepath.Filepath_join.join((@:checkr _s ?? throw "null pointer dereference")._outdir?.__copy__(), (("tmp." : stdgo.GoString) + _fn?.__copy__() : stdgo.GoString)?.__copy__())?.__copy__();
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.os.Os_create.create((@:checkr _s ?? throw "null pointer dereference")._cftmp?.__copy__());
            (@:checkr _s ?? throw "null pointer dereference")._cf = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("creating counter data file %s: %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference")._cftmp), stdgo.Go.toInterface(_err));
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _openMetaFile( _s:stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState>, _metaHash:stdgo.GoArray<stdgo.GoUInt8>, _metaLen:stdgo.GoUInt64):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState> = _s;
        var _fn = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s.%x" : stdgo.GoString), stdgo.Go.toInterface(("covmeta" : stdgo.GoString)), stdgo.Go.toInterface(_metaHash))?.__copy__() : stdgo.GoString);
        (@:checkr _s ?? throw "null pointer dereference")._mfname = stdgo._internal.path.filepath.Filepath_join.join((@:checkr _s ?? throw "null pointer dereference")._outdir?.__copy__(), _fn?.__copy__())?.__copy__();
        var __tmp__ = stdgo._internal.os.Os_stat.stat((@:checkr _s ?? throw "null pointer dereference")._mfname?.__copy__()), _fi:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) || (_fi.size() != (_metaLen : stdgo.GoInt64)) : Bool)) {
            var _tname = (((("tmp." : stdgo.GoString) + _fn?.__copy__() : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt(stdgo._internal.time.Time_now.now().unixNano(), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            (@:checkr _s ?? throw "null pointer dereference")._mftmp = stdgo._internal.path.filepath.Filepath_join.join((@:checkr _s ?? throw "null pointer dereference")._outdir?.__copy__(), _tname?.__copy__())?.__copy__();
            {
                var __tmp__ = stdgo._internal.os.Os_create.create((@:checkr _s ?? throw "null pointer dereference")._mftmp?.__copy__());
                (@:checkr _s ?? throw "null pointer dereference")._mf = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("creating meta-data file %s: %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference")._mftmp), stdgo.Go.toInterface(_err));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _emitCounterDataToWriter( _s:stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState>, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState> = _s;
        {
            var _err = (@:check2r _s._emitCounterDataFile(stdgo._internal.runtime.coverage.Coverage__finalhash._finalHash?.__copy__(), _w) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        return (null : stdgo.Error);
    }
}
