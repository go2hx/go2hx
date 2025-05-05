package stdgo._internal.internal.coverage.encodecounter;
@:keep @:allow(stdgo._internal.internal.coverage.encodecounter.Encodecounter.CoverageDataWriter_asInterface) class CoverageDataWriter_static_extension {
    @:keep
    @:tdfield
    static public function _writeFooter( _cfw:stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter>):stdgo.Error {
        @:recv var _cfw:stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter> = _cfw;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L288"
        (@:checkr _cfw ?? throw "null pointer dereference")._segs++;
        var _cf = ({ magic : stdgo._internal.internal.coverage.Coverage_covcountermagic.covCounterMagic?.__copy__(), numSegments : (@:checkr _cfw ?? throw "null pointer dereference")._segs } : stdgo._internal.internal.coverage.Coverage_counterfilefooter.CounterFileFooter);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L293"
        {
            var _err = (stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface((@:checkr _cfw ?? throw "null pointer dereference")._w), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_cf))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L294"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L296"
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
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L240"
            if ((@:checkr _cfw ?? throw "null pointer dereference")._cflavor == ((1 : stdgo._internal.internal.coverage.Coverage_counterflavor.CounterFlavor))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L241"
                stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.putUint32(_ctrb, _val);
                _buf = _ctrb;
                _towr = (4 : stdgo.GoInt);
            } else if ((@:checkr _cfw ?? throw "null pointer dereference")._cflavor == ((2 : stdgo._internal.internal.coverage.Coverage_counterflavor.CounterFlavor))) {
                (@:checkr _cfw ?? throw "null pointer dereference")._tmp = ((@:checkr _cfw ?? throw "null pointer dereference")._tmp.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                (@:checkr _cfw ?? throw "null pointer dereference")._tmp = stdgo._internal.internal.coverage.uleb128.Uleb128_appenduleb128.appendUleb128((@:checkr _cfw ?? throw "null pointer dereference")._tmp, (_val : stdgo.GoUInt));
                _buf = (@:checkr _cfw ?? throw "null pointer dereference")._tmp;
                _towr = (_buf.length);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L250"
                throw stdgo.Go.toInterface(("internal error: bad counter flavor" : stdgo.GoString));
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L252"
            {
                var __tmp__ = _ws.write(_buf), _sz:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L253"
                    return _err;
                } else if (_sz != (_towr)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L255"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("writing counters: short write" : stdgo.GoString));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L257"
            return (null : stdgo.Error);
        } : stdgo.GoUInt32 -> stdgo.Error);
        var _emitter = function(_pkid:stdgo.GoUInt32, _funcid:stdgo.GoUInt32, _counters:stdgo.Slice<stdgo.GoUInt32>):stdgo.Error {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L262"
            (@:checkr _cfw ?? throw "null pointer dereference")._csh.fcnEntries++;
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L263"
            {
                var _err = (_wrval((_counters.length : stdgo.GoUInt32)) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L264"
                    return _err;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L267"
            {
                var _err = (_wrval(_pkid) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L268"
                    return _err;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L271"
            {
                var _err = (_wrval(_funcid) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L272"
                    return _err;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L274"
            for (__0 => _val in _counters) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L275"
                {
                    var _err = (_wrval(_val) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L276"
                        return _err;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L279"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L281"
        {
            var _err = (_visitor.visitFuncs(_emitter) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L282"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L284"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _writeBytes( _cfw:stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _cfw:stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter> = _cfw;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L216"
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L217"
            return (null : stdgo.Error);
        };
        var __tmp__ = (@:checkr _cfw ?? throw "null pointer dereference")._w.write(_b), _nw:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L220"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L221"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("error writing counter data: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L223"
        if ((_b.length) != (_nw)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L224"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("error writing counter data: short write" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L226"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _writeHeader( _cfw:stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter>, _metaFileHash:stdgo.GoArray<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _cfw:stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter> = _cfw;
        var _ch = ({ magic : stdgo._internal.internal.coverage.Coverage_covcountermagic.covCounterMagic?.__copy__(), version : (1u32 : stdgo.GoUInt32), metaHash : _metaFileHash?.__copy__(), cFlavor : (@:checkr _cfw ?? throw "null pointer dereference")._cflavor, bigEndian : false } : stdgo._internal.internal.coverage.Coverage_counterfileheader.CounterFileHeader);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L209"
        {
            var _err = (stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface((@:checkr _cfw ?? throw "null pointer dereference")._w), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_ch))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L210"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L212"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function appendSegment( _cfw:stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter>, _args:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, _visitor:stdgo._internal.internal.coverage.encodecounter.Encodecounter_countervisitor.CounterVisitor):stdgo.Error {
        @:recv var _cfw:stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter> = _cfw;
        (@:checkr _cfw ?? throw "null pointer dereference")._stab = (stdgo.Go.setRef((new stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer() : stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer)) : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer>);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L168"
        (@:checkr _cfw ?? throw "null pointer dereference")._stab.initWriter();
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L169"
        (@:checkr _cfw ?? throw "null pointer dereference")._stab.lookup((stdgo.Go.str() : stdgo.GoString)?.__copy__());
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L172"
        for (_k => _v in _args) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L173"
            (@:checkr _cfw ?? throw "null pointer dereference")._stab.lookup(_k?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L174"
            (@:checkr _cfw ?? throw "null pointer dereference")._stab.lookup(_v?.__copy__());
        };
        var _ws = (stdgo.Go.setRef((new stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker() : stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker)) : stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker>);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L178"
        {
            _err = _cfw._writeSegmentPreamble(_args, _ws);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L179"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L181"
        {
            _err = _cfw._writeCounters(_visitor, _ws);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L182"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L184"
        {
            _err = _cfw._patchSegmentHeader(_ws);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L185"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L187"
        {
            var _err = (_cfw._writeBytes(_ws.bytesWritten()) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L188"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L190"
        {
            _err = _cfw._writeFooter();
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L191"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L193"
        {
            var _err = ((@:checkr _cfw ?? throw "null pointer dereference")._w.flush() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L194"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("write error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        (@:checkr _cfw ?? throw "null pointer dereference")._stab = null;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L197"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _writeSegmentPreamble( _cfw:stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter>, _args:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, _ws:stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker>):stdgo.Error {
        @:recv var _cfw:stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter> = _cfw;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L111"
        {
            var _err = (stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface(_ws), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _cfw ?? throw "null pointer dereference")._csh))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L112"
                return _err;
            };
        };
        var _hdrsz = (_ws.bytesWritten().length : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L119"
        (@:checkr _cfw ?? throw "null pointer dereference")._stab.freeze();
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L120"
        {
            var _err = ((@:checkr _cfw ?? throw "null pointer dereference")._stab.write(stdgo.Go.asInterface(_ws)) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L121"
                return _err;
            };
        };
        (@:checkr _cfw ?? throw "null pointer dereference")._csh.strTabLen = ((_ws.bytesWritten().length : stdgo.GoUInt32) - _hdrsz : stdgo.GoUInt32);
        var _akeys = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (_args.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L126"
        for (_k => _ in _args) {
            _akeys = (_akeys.__append__(_k?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L129"
        stdgo._internal.sort.Sort_strings.strings(_akeys);
        var _wrULEB128 = (function(_v:stdgo.GoUInt):stdgo.Error {
            (@:checkr _cfw ?? throw "null pointer dereference")._tmp = ((@:checkr _cfw ?? throw "null pointer dereference")._tmp.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _cfw ?? throw "null pointer dereference")._tmp = stdgo._internal.internal.coverage.uleb128.Uleb128_appenduleb128.appendUleb128((@:checkr _cfw ?? throw "null pointer dereference")._tmp, _v);
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L134"
            {
                var __tmp__ = _ws.write((@:checkr _cfw ?? throw "null pointer dereference")._tmp), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L135"
                    return _err;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L137"
            return (null : stdgo.Error);
        } : stdgo.GoUInt -> stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L141"
        {
            var _err = (_wrULEB128((_args.length : stdgo.GoUInt)) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L142"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L145"
        for (__0 => _k in _akeys) {
            var _ki = ((@:checkr _cfw ?? throw "null pointer dereference")._stab.lookup(_k?.__copy__()) : stdgo.GoUInt);
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L147"
            {
                var _err = (_wrULEB128(_ki) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L148"
                    return _err;
                };
            };
            var _v = ((_args[_k] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            var _vi = ((@:checkr _cfw ?? throw "null pointer dereference")._stab.lookup(_v?.__copy__()) : stdgo.GoUInt);
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L152"
            {
                var _err = (_wrULEB128(_vi) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L153"
                    return _err;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L156"
        {
            var _err = (stdgo._internal.internal.coverage.encodecounter.Encodecounter__padtofourbyteboundary._padToFourByteBoundary(_ws) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L157"
                return _err;
            };
        };
        (@:checkr _cfw ?? throw "null pointer dereference")._csh.argsLen = ((_ws.bytesWritten().length : stdgo.GoUInt32) - (((@:checkr _cfw ?? throw "null pointer dereference")._csh.strTabLen + _hdrsz : stdgo.GoUInt32)) : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L161"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _patchSegmentHeader( _cfw:stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter>, _ws:stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker>):stdgo.Error {
        @:recv var _cfw:stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter> = _cfw;
        var __tmp__ = _ws.seek((0i64 : stdgo.GoInt64), (1 : stdgo.GoInt)), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L90"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L91"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("error seeking in patchSegmentHeader: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L94"
        {
            var __tmp__ = _ws.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L95"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("error seeking in patchSegmentHeader: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L97"
        if ((@:checkr _cfw ?? throw "null pointer dereference")._debug) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L98"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("=-= writing counter segment header: %+v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _cfw ?? throw "null pointer dereference")._csh)));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L100"
        {
            var _err = (stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface(_ws), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _cfw ?? throw "null pointer dereference")._csh))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L101"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L104"
        {
            var __tmp__ = _ws.seek(_off, (0 : stdgo.GoInt)), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L105"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("error seeking in patchSegmentHeader: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L107"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function write( _cfw:stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter>, _metaFileHash:stdgo.GoArray<stdgo.GoUInt8>, _args:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, _visitor:stdgo._internal.internal.coverage.encodecounter.Encodecounter_countervisitor.CounterVisitor):stdgo.Error {
        @:recv var _cfw:stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter> = _cfw;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L66"
        {
            var _err = (_cfw._writeHeader(_metaFileHash?.__copy__()) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L67"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodecounter/encode.go#L69"
        return _cfw.appendSegment(_args, _visitor);
    }
}
