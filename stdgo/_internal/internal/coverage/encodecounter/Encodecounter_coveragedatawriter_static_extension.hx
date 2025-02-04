package stdgo._internal.internal.coverage.encodecounter;
@:keep @:allow(stdgo._internal.internal.coverage.encodecounter.Encodecounter.CoverageDataWriter_asInterface) class CoverageDataWriter_static_extension {
    @:keep
    @:tdfield
    static public function _writeFooter( _cfw:stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter>):stdgo.Error {
        @:recv var _cfw:stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter> = _cfw;
        (@:checkr _cfw ?? throw "null pointer dereference")._segs++;
        var _cf = ({ magic : stdgo._internal.internal.coverage.Coverage_covcountermagic.covCounterMagic?.__copy__(), numSegments : (@:checkr _cfw ?? throw "null pointer dereference")._segs } : stdgo._internal.internal.coverage.Coverage_counterfilefooter.CounterFileFooter);
        {
            var _err = (stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface((@:checkr _cfw ?? throw "null pointer dereference")._w), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_cf))) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _writeCounters( _cfw:stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter>, _visitor:stdgo._internal.internal.coverage.encodecounter.Encodecounter_countervisitor.CounterVisitor, _ws:stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker>):stdgo.Error {
        @:recv var _cfw:stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter> = _cfw;
        var _ctrb = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _wrval = (function(_val:stdgo.GoUInt32):stdgo.Error {
            var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            var _towr:stdgo.GoInt = (0 : stdgo.GoInt);
            if ((@:checkr _cfw ?? throw "null pointer dereference")._cflavor == ((1 : stdgo._internal.internal.coverage.Coverage_counterflavor.CounterFlavor))) {
                stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.putUint32(_ctrb, _val);
                _buf = _ctrb;
                _towr = (4 : stdgo.GoInt);
            } else if ((@:checkr _cfw ?? throw "null pointer dereference")._cflavor == ((2 : stdgo._internal.internal.coverage.Coverage_counterflavor.CounterFlavor))) {
                (@:checkr _cfw ?? throw "null pointer dereference")._tmp = ((@:checkr _cfw ?? throw "null pointer dereference")._tmp.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                (@:checkr _cfw ?? throw "null pointer dereference")._tmp = stdgo._internal.internal.coverage.uleb128.Uleb128_appenduleb128.appendUleb128((@:checkr _cfw ?? throw "null pointer dereference")._tmp, (_val : stdgo.GoUInt));
                _buf = (@:checkr _cfw ?? throw "null pointer dereference")._tmp;
                _towr = (_buf.length);
            } else {
                throw stdgo.Go.toInterface(("internal error: bad counter flavor" : stdgo.GoString));
            };
            {
                var __tmp__ = @:check2r _ws.write(_buf), _sz:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                } else if (_sz != (_towr)) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("writing counters: short write" : stdgo.GoString));
                };
            };
            return (null : stdgo.Error);
        } : stdgo.GoUInt32 -> stdgo.Error);
        var _emitter = function(_pkid:stdgo.GoUInt32, _funcid:stdgo.GoUInt32, _counters:stdgo.Slice<stdgo.GoUInt32>):stdgo.Error {
            (@:checkr _cfw ?? throw "null pointer dereference")._csh.fcnEntries++;
            {
                var _err = (_wrval((_counters.length : stdgo.GoUInt32)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err = (_wrval(_pkid) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err = (_wrval(_funcid) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            for (__0 => _val in _counters) {
                {
                    var _err = (_wrval(_val) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
            };
            return (null : stdgo.Error);
        };
        {
            var _err = (_visitor.visitFuncs(_emitter) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _writeBytes( _cfw:stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _cfw:stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter> = _cfw;
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Error);
        };
        var __tmp__ = @:check2r (@:checkr _cfw ?? throw "null pointer dereference")._w.write(_b), _nw:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("error writing counter data: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((_b.length) != (_nw)) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("error writing counter data: short write" : stdgo.GoString));
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _writeHeader( _cfw:stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter>, _metaFileHash:stdgo.GoArray<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _cfw:stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter> = _cfw;
        var _ch = ({ magic : stdgo._internal.internal.coverage.Coverage_covcountermagic.covCounterMagic?.__copy__(), version : (1u32 : stdgo.GoUInt32), metaHash : _metaFileHash?.__copy__(), cFlavor : (@:checkr _cfw ?? throw "null pointer dereference")._cflavor, bigEndian : false } : stdgo._internal.internal.coverage.Coverage_counterfileheader.CounterFileHeader);
        {
            var _err = (stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface((@:checkr _cfw ?? throw "null pointer dereference")._w), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_ch))) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function appendSegment( _cfw:stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter>, _args:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, _visitor:stdgo._internal.internal.coverage.encodecounter.Encodecounter_countervisitor.CounterVisitor):stdgo.Error {
        @:recv var _cfw:stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter> = _cfw;
        (@:checkr _cfw ?? throw "null pointer dereference")._stab = (stdgo.Go.setRef((new stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer() : stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer)) : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer>);
        @:check2r (@:checkr _cfw ?? throw "null pointer dereference")._stab.initWriter();
        @:check2r (@:checkr _cfw ?? throw "null pointer dereference")._stab.lookup((stdgo.Go.str() : stdgo.GoString)?.__copy__());
        var _err:stdgo.Error = (null : stdgo.Error);
        for (_k => _v in _args) {
            @:check2r (@:checkr _cfw ?? throw "null pointer dereference")._stab.lookup(_k?.__copy__());
            @:check2r (@:checkr _cfw ?? throw "null pointer dereference")._stab.lookup(_v?.__copy__());
        };
        var _ws = (stdgo.Go.setRef((new stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker() : stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker)) : stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker>);
        {
            _err = @:check2r _cfw._writeSegmentPreamble(_args, _ws);
            if (_err != null) {
                return _err;
            };
        };
        {
            _err = @:check2r _cfw._writeCounters(_visitor, _ws);
            if (_err != null) {
                return _err;
            };
        };
        {
            _err = @:check2r _cfw._patchSegmentHeader(_ws);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (@:check2r _cfw._writeBytes(@:check2r _ws.bytesWritten()) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            _err = @:check2r _cfw._writeFooter();
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (@:check2r (@:checkr _cfw ?? throw "null pointer dereference")._w.flush() : stdgo.Error);
            if (_err != null) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("write error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        (@:checkr _cfw ?? throw "null pointer dereference")._stab = null;
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _writeSegmentPreamble( _cfw:stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter>, _args:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, _ws:stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker>):stdgo.Error {
        @:recv var _cfw:stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter> = _cfw;
        {
            var _err = (stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface(_ws), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _cfw ?? throw "null pointer dereference")._csh))) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _hdrsz = (@:check2r _ws.bytesWritten().length : stdgo.GoUInt32);
        @:check2r (@:checkr _cfw ?? throw "null pointer dereference")._stab.freeze();
        {
            var _err = (@:check2r (@:checkr _cfw ?? throw "null pointer dereference")._stab.write(stdgo.Go.asInterface(_ws)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        (@:checkr _cfw ?? throw "null pointer dereference")._csh.strTabLen = ((@:check2r _ws.bytesWritten().length : stdgo.GoUInt32) - _hdrsz : stdgo.GoUInt32);
        var _akeys = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (_args.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_k => _ in _args) {
            _akeys = (_akeys.__append__(_k?.__copy__()));
        };
        stdgo._internal.sort.Sort_strings.strings(_akeys);
        var _wrULEB128 = (function(_v:stdgo.GoUInt):stdgo.Error {
            (@:checkr _cfw ?? throw "null pointer dereference")._tmp = ((@:checkr _cfw ?? throw "null pointer dereference")._tmp.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _cfw ?? throw "null pointer dereference")._tmp = stdgo._internal.internal.coverage.uleb128.Uleb128_appenduleb128.appendUleb128((@:checkr _cfw ?? throw "null pointer dereference")._tmp, _v);
            {
                var __tmp__ = @:check2r _ws.write((@:checkr _cfw ?? throw "null pointer dereference")._tmp), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            return (null : stdgo.Error);
        } : stdgo.GoUInt -> stdgo.Error);
        {
            var _err = (_wrULEB128((_args.length : stdgo.GoUInt)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        for (__0 => _k in _akeys) {
            var _ki = (@:check2r (@:checkr _cfw ?? throw "null pointer dereference")._stab.lookup(_k?.__copy__()) : stdgo.GoUInt);
            {
                var _err = (_wrULEB128(_ki) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            var _v = ((_args[_k] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            var _vi = (@:check2r (@:checkr _cfw ?? throw "null pointer dereference")._stab.lookup(_v?.__copy__()) : stdgo.GoUInt);
            {
                var _err = (_wrULEB128(_vi) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        {
            var _err = (stdgo._internal.internal.coverage.encodecounter.Encodecounter__padtofourbyteboundary._padToFourByteBoundary(_ws) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        (@:checkr _cfw ?? throw "null pointer dereference")._csh.argsLen = ((@:check2r _ws.bytesWritten().length : stdgo.GoUInt32) - (((@:checkr _cfw ?? throw "null pointer dereference")._csh.strTabLen + _hdrsz : stdgo.GoUInt32)) : stdgo.GoUInt32);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _patchSegmentHeader( _cfw:stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter>, _ws:stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker>):stdgo.Error {
        @:recv var _cfw:stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter> = _cfw;
        var __tmp__ = @:check2r _ws.seek((0i64 : stdgo.GoInt64), (1 : stdgo.GoInt)), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("error seeking in patchSegmentHeader: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = @:check2r _ws.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("error seeking in patchSegmentHeader: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        if ((@:checkr _cfw ?? throw "null pointer dereference")._debug) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("=-= writing counter segment header: %+v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _cfw ?? throw "null pointer dereference")._csh)));
        };
        {
            var _err = (stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface(_ws), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _cfw ?? throw "null pointer dereference")._csh))) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = @:check2r _ws.seek(_off, (0 : stdgo.GoInt)), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("error seeking in patchSegmentHeader: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function write( _cfw:stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter>, _metaFileHash:stdgo.GoArray<stdgo.GoUInt8>, _args:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, _visitor:stdgo._internal.internal.coverage.encodecounter.Encodecounter_countervisitor.CounterVisitor):stdgo.Error {
        @:recv var _cfw:stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter> = _cfw;
        {
            var _err = (@:check2r _cfw._writeHeader(_metaFileHash?.__copy__()) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        return @:check2r _cfw.appendSegment(_args, _visitor);
    }
}
