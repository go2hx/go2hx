package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.LineReader_asInterface) class LineReader_static_extension {
    @:keep
    static public function seekPC( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>, _pc:stdgo.GoUInt64, _entry:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader> = _r;
        {
            var _err = (_r.next(_entry) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if ((_entry.address > _pc : Bool)) {
            _r.reset();
            {
                var _err = (_r.next(_entry) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            if ((_entry.address > _pc : Bool)) {
                _r.reset();
                return stdgo._internal.debug.dwarf.Dwarf_errUnknownPC.errUnknownPC;
            };
        };
        while (true) {
            var _next:stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry = ({} : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry);
            var _pos = (_r.tell()?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_LineReaderPos.LineReaderPos);
            {
                var _err = (_r.next((stdgo.Go.setRef(_next) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry>)) : stdgo.Error);
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                        return stdgo._internal.debug.dwarf.Dwarf_errUnknownPC.errUnknownPC;
                    };
                    return _err;
                };
            };
            if ((_next.address > _pc : Bool)) {
                if (_entry.endSequence) {
                    return stdgo._internal.debug.dwarf.Dwarf_errUnknownPC.errUnknownPC;
                };
                _r.seek(_pos?.__copy__());
                return (null : stdgo.Error);
            };
            {
                var __tmp__ = _next?.__copy__();
                (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).address = __tmp__.address;
                (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).opIndex = __tmp__.opIndex;
                (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).file = __tmp__.file;
                (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).line = __tmp__.line;
                (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).column = __tmp__.column;
                (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).isStmt = __tmp__.isStmt;
                (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).basicBlock = __tmp__.basicBlock;
                (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).prologueEnd = __tmp__.prologueEnd;
                (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).epilogueBegin = __tmp__.epilogueBegin;
                (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).isa = __tmp__.isa;
                (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).discriminator = __tmp__.discriminator;
                (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).endSequence = __tmp__.endSequence;
            };
        };
    }
    @:keep
    static public function files( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>):stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile>> {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader> = _r;
        return _r._fileEntries;
    }
    @:keep
    static public function _resetState( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader> = _r;
        _r._state = ({ address : (0i64 : stdgo.GoUInt64), opIndex : (0 : stdgo.GoInt), file : null, line : (1 : stdgo.GoInt), column : (0 : stdgo.GoInt), isStmt : _r._defaultIsStmt, basicBlock : false, prologueEnd : false, epilogueBegin : false, isa : (0 : stdgo.GoInt), discriminator : (0 : stdgo.GoInt) } : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry);
        _r._fileIndex = (1 : stdgo.GoInt);
        _r._updateFile();
    }
    @:keep
    static public function reset( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader> = _r;
        _r._buf._off = _r._programOffset;
        _r._buf._data = (_r._section.__slice__(_r._buf._off, _r._endOffset) : stdgo.Slice<stdgo.GoUInt8>);
        _r._fileEntries = (_r._fileEntries.__slice__(0, _r._initialFileEntries) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile>>);
        _r._resetState();
    }
    @:keep
    static public function seek( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>, _pos:stdgo._internal.debug.dwarf.Dwarf_LineReaderPos.LineReaderPos):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader> = _r;
        _r._buf._off = _pos._off;
        _r._buf._data = (_r._section.__slice__(_r._buf._off, _r._endOffset) : stdgo.Slice<stdgo.GoUInt8>);
        _r._fileEntries = (_r._fileEntries.__slice__(0, _pos._numFileEntries) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile>>);
        _r._state = _pos._state?.__copy__();
        _r._fileIndex = _pos._fileIndex;
    }
    @:keep
    static public function tell( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>):stdgo._internal.debug.dwarf.Dwarf_LineReaderPos.LineReaderPos {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader> = _r;
        return (new stdgo._internal.debug.dwarf.Dwarf_LineReaderPos.LineReaderPos(_r._buf._off, (_r._fileEntries.length), _r._state?.__copy__(), _r._fileIndex) : stdgo._internal.debug.dwarf.Dwarf_LineReaderPos.LineReaderPos);
    }
    @:keep
    static public function _advancePC( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>, _opAdvance:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader> = _r;
        var _opIndex = (_r._state.opIndex + _opAdvance : stdgo.GoInt);
        _r._state.address = (_r._state.address + (((_r._minInstructionLength * ((_opIndex / _r._maxOpsPerInstruction : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _r._state.opIndex = (_opIndex % _r._maxOpsPerInstruction : stdgo.GoInt);
    }
    @:keep
    static public function _step( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>, _entry:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader> = _r;
        var _i_3659247:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3657928:stdgo.Error = (null : stdgo.Error);
        var _done_3657922:Bool = false;
        var _startOff_3657417:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
        var _length_3657384:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
        var _opcode_3657441:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _lineDelta_3657221:stdgo.GoInt = (0 : stdgo.GoInt);
        var _adjustedOpcode_3657135:stdgo.GoInt = (0 : stdgo.GoInt);
        var _opcode_3657021:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _opcode_3657021 = (_r._buf._uint8() : stdgo.GoInt);
                    if ((_opcode_3657021 >= _r._opcodeBase : Bool)) {
                        _gotoNext = 3657078i32;
                    } else {
                        _gotoNext = 3657319i32;
                    };
                } else if (__value__ == (3657078i32)) {
                    _adjustedOpcode_3657135 = (_opcode_3657021 - _r._opcodeBase : stdgo.GoInt);
                    _r._advancePC((_adjustedOpcode_3657135 / _r._lineRange : stdgo.GoInt));
                    _lineDelta_3657221 = (_r._lineBase + (_adjustedOpcode_3657135 % _r._lineRange : stdgo.GoInt) : stdgo.GoInt);
                    _r._state.line = (_r._state.line + (_lineDelta_3657221) : stdgo.GoInt);
                    _gotoNext = 3659328i32;
                } else if (__value__ == (3657319i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3657319i32;
                    {
                        final __value__ = _opcode_3657021;
                        if (__value__ == ((0 : stdgo.GoInt))) {
                            _gotoNext = 3657336i32;
                        } else if (__value__ == ((1 : stdgo.GoInt))) {
                            _gotoNext = 3658395i32;
                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                            _gotoNext = 3658423i32;
                        } else if (__value__ == ((3 : stdgo.GoInt))) {
                            _gotoNext = 3658477i32;
                        } else if (__value__ == ((4 : stdgo.GoInt))) {
                            _gotoNext = 3658535i32;
                        } else if (__value__ == ((5 : stdgo.GoInt))) {
                            _gotoNext = 3658605i32;
                        } else if (__value__ == ((6 : stdgo.GoInt))) {
                            _gotoNext = 3658663i32;
                        } else if (__value__ == ((7 : stdgo.GoInt))) {
                            _gotoNext = 3658720i32;
                        } else if (__value__ == ((8 : stdgo.GoInt))) {
                            _gotoNext = 3658773i32;
                        } else if (__value__ == ((9 : stdgo.GoInt))) {
                            _gotoNext = 3658845i32;
                        } else if (__value__ == ((10 : stdgo.GoInt))) {
                            _gotoNext = 3658960i32;
                        } else if (__value__ == ((11 : stdgo.GoInt))) {
                            _gotoNext = 3659015i32;
                        } else if (__value__ == ((12 : stdgo.GoInt))) {
                            _gotoNext = 3659074i32;
                        } else {
                            _gotoNext = 3659126i32;
                        };
                    };
                } else if (__value__ == (3657336i32)) {
                    _length_3657384 = (_r._buf._uint() : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
                    _startOff_3657417 = _r._buf._off;
                    _opcode_3657441 = _r._buf._uint8();
                    var __blank__ = 0i32;
                    _gotoNext = 3657468i32;
                } else if (__value__ == (3657468i32)) {
                    {
                        final __value__ = _opcode_3657441;
                        if (__value__ == ((1 : stdgo.GoUInt8))) {
                            _gotoNext = 3657486i32;
                        } else if (__value__ == ((2 : stdgo.GoUInt8))) {
                            _gotoNext = 3657578i32;
                        } else if (__value__ == ((3 : stdgo.GoUInt8))) {
                            _gotoNext = 3657896i32;
                        } else if (__value__ == ((4 : stdgo.GoUInt8))) {
                            _gotoNext = 3658155i32;
                        } else {
                            _gotoNext = 3658256i32;
                        };
                    };
                } else if (__value__ == (3657486i32)) {
                    _r._state.endSequence = true;
                    {
                        var __tmp__ = _r._state?.__copy__();
                        (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).address = __tmp__.address;
                        (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).opIndex = __tmp__.opIndex;
                        (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).file = __tmp__.file;
                        (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).line = __tmp__.line;
                        (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).column = __tmp__.column;
                        (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).isStmt = __tmp__.isStmt;
                        (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).basicBlock = __tmp__.basicBlock;
                        (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).prologueEnd = __tmp__.prologueEnd;
                        (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).epilogueBegin = __tmp__.epilogueBegin;
                        (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).isa = __tmp__.isa;
                        (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).discriminator = __tmp__.discriminator;
                        (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).endSequence = __tmp__.endSequence;
                    };
                    _r._resetState();
                    _gotoNext = 3658256i32;
                } else if (__value__ == (3657578i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3657601i32;
                } else if (__value__ == (3657601i32)) {
                    {
                        final __value__ = _r._addrsize;
                        if (__value__ == ((1 : stdgo.GoInt))) {
                            _gotoNext = 3657624i32;
                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                            _gotoNext = 3657679i32;
                        } else if (__value__ == ((4 : stdgo.GoInt))) {
                            _gotoNext = 3657735i32;
                        } else if (__value__ == ((8 : stdgo.GoInt))) {
                            _gotoNext = 3657791i32;
                        } else {
                            _gotoNext = 3657839i32;
                        };
                    };
                } else if (__value__ == (3657624i32)) {
                    _r._state.address = (_r._buf._uint8() : stdgo.GoUInt64);
                    _gotoNext = 3658256i32;
                } else if (__value__ == (3657679i32)) {
                    _r._state.address = (_r._buf._uint16() : stdgo.GoUInt64);
                    _gotoNext = 3658256i32;
                } else if (__value__ == (3657735i32)) {
                    _r._state.address = (_r._buf._uint32() : stdgo.GoUInt64);
                    _gotoNext = 3658256i32;
                } else if (__value__ == (3657791i32)) {
                    _r._state.address = _r._buf._uint64();
                    _gotoNext = 3658256i32;
                } else if (__value__ == (3657839i32)) {
                    _r._buf._error(("unknown address size" : stdgo.GoString));
                    _gotoNext = 3658256i32;
                } else if (__value__ == (3657896i32)) {
                    {
                        {
                            var __tmp__ = _r._readFileEntry();
                            _done_3657922 = __tmp__._0;
                            _err_3657928 = __tmp__._1;
                        };
                        if (_err_3657928 != null) {
                            _gotoNext = 3657965i32;
                        } else if (_done_3657922) {
                            _gotoNext = 3658022i32;
                        } else {
                            _gotoNext = 3658137i32;
                        };
                    };
                } else if (__value__ == (3657965i32)) {
                    _r._buf._err = _err_3657928;
                    return false;
                    _gotoNext = 3658137i32;
                } else if (__value__ == (3658022i32)) {
                    _r._buf._err = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(("line" : stdgo.GoString), _startOff_3657417, ("malformed DW_LNE_define_file operation" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
                    return false;
                    _gotoNext = 3658137i32;
                } else if (__value__ == (3658137i32)) {
                    _r._updateFile();
                    _gotoNext = 3658256i32;
                } else if (__value__ == (3658155i32)) {
                    _r._state.discriminator = (_r._buf._uint() : stdgo.GoInt);
                    _gotoNext = 3658256i32;
                } else if (__value__ == (3658256i32)) {
                    _r._buf._skip((((_startOff_3657417 + _length_3657384 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) - _r._buf._off : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : stdgo.GoInt));
                    if (_opcode_3657441 == ((1 : stdgo.GoUInt8))) {
                        _gotoNext = 3658334i32;
                    } else {
                        _gotoNext = 3659314i32;
                    };
                } else if (__value__ == (3658334i32)) {
                    return true;
                    _gotoNext = 3659314i32;
                } else if (__value__ == (3658395i32)) {
                    _gotoNext = 3659328i32;
                } else if (__value__ == (3658423i32)) {
                    _r._advancePC((_r._buf._uint() : stdgo.GoInt));
                    _gotoNext = 3659314i32;
                } else if (__value__ == (3658477i32)) {
                    _r._state.line = (_r._state.line + ((_r._buf._int() : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 3659314i32;
                } else if (__value__ == (3658535i32)) {
                    _r._fileIndex = (_r._buf._uint() : stdgo.GoInt);
                    _r._updateFile();
                    _gotoNext = 3659314i32;
                } else if (__value__ == (3658605i32)) {
                    _r._state.column = (_r._buf._uint() : stdgo.GoInt);
                    _gotoNext = 3659314i32;
                } else if (__value__ == (3658663i32)) {
                    _r._state.isStmt = !_r._state.isStmt;
                    _gotoNext = 3659314i32;
                } else if (__value__ == (3658720i32)) {
                    _r._state.basicBlock = true;
                    _gotoNext = 3659314i32;
                } else if (__value__ == (3658773i32)) {
                    _r._advancePC(((((255 : stdgo.GoInt) - _r._opcodeBase : stdgo.GoInt)) / _r._lineRange : stdgo.GoInt));
                    _gotoNext = 3659314i32;
                } else if (__value__ == (3658845i32)) {
                    _r._state.address = (_r._state.address + ((_r._buf._uint16() : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _gotoNext = 3659314i32;
                } else if (__value__ == (3658960i32)) {
                    _r._state.prologueEnd = true;
                    _gotoNext = 3659314i32;
                } else if (__value__ == (3659015i32)) {
                    _r._state.epilogueBegin = true;
                    _gotoNext = 3659314i32;
                } else if (__value__ == (3659074i32)) {
                    _r._state.isa = (_r._buf._uint() : stdgo.GoInt);
                    _gotoNext = 3659314i32;
                } else if (__value__ == (3659126i32)) {
                    _i_3659247 = (0 : stdgo.GoInt);
                    _gotoNext = 3659243i32;
                } else if (__value__ == (3659243i32)) {
                    if ((_i_3659247 < _r._opcodeLengths[(_opcode_3657021 : stdgo.GoInt)] : Bool)) {
                        _gotoNext = 3659288i32;
                    } else {
                        _gotoNext = 3659314i32;
                    };
                } else if (__value__ == (3659288i32)) {
                    _r._buf._uint();
                    _i_3659247++;
                    _gotoNext = 3659243i32;
                } else if (__value__ == (3659314i32)) {
                    return false;
                    _gotoNext = 3659328i32;
                } else if (__value__ == (3659328i32)) {
                    {
                        var __tmp__ = _r._state?.__copy__();
                        (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).address = __tmp__.address;
                        (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).opIndex = __tmp__.opIndex;
                        (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).file = __tmp__.file;
                        (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).line = __tmp__.line;
                        (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).column = __tmp__.column;
                        (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).isStmt = __tmp__.isStmt;
                        (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).basicBlock = __tmp__.basicBlock;
                        (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).prologueEnd = __tmp__.prologueEnd;
                        (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).epilogueBegin = __tmp__.epilogueBegin;
                        (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).isa = __tmp__.isa;
                        (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).discriminator = __tmp__.discriminator;
                        (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry).endSequence = __tmp__.endSequence;
                    };
                    _r._state.basicBlock = false;
                    _r._state.prologueEnd = false;
                    _r._state.epilogueBegin = false;
                    _r._state.discriminator = (0 : stdgo.GoInt);
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    static public function next( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>, _entry:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader> = _r;
        if (_r._buf._err != null) {
            return _r._buf._err;
        };
        while (true) {
            if ((_r._buf._data.length) == ((0 : stdgo.GoInt))) {
                return stdgo._internal.io.Io_eof.eof;
            };
            var _emit = (_r._step(_entry) : Bool);
            if (_r._buf._err != null) {
                return _r._buf._err;
            };
            if (_emit) {
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    static public function _updateFile( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader> = _r;
        if ((_r._fileIndex < (_r._fileEntries.length) : Bool)) {
            _r._state.file = _r._fileEntries[(_r._fileIndex : stdgo.GoInt)];
        } else {
            _r._state.file = null;
        };
    }
    @:keep
    static public function _readFileEntry( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader> = _r;
        var _name = (_r._buf._string()?.__copy__() : stdgo.GoString);
        if (_r._buf._err != null) {
            return { _0 : false, _1 : _r._buf._err };
        };
        if ((_name.length) == ((0 : stdgo.GoInt))) {
            return { _0 : true, _1 : (null : stdgo.Error) };
        };
        var _off = (_r._buf._off : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
        var _dirIndex = (_r._buf._uint() : stdgo.GoInt);
        if (!stdgo._internal.debug.dwarf.Dwarf__pathIsAbs._pathIsAbs(_name?.__copy__())) {
            if ((_dirIndex >= (_r._directories.length) : Bool)) {
                return { _0 : false, _1 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(("line" : stdgo.GoString), _off, ("directory index too large" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError)) };
            };
            _name = stdgo._internal.debug.dwarf.Dwarf__pathJoin._pathJoin(_r._directories[(_dirIndex : stdgo.GoInt)]?.__copy__(), _name?.__copy__())?.__copy__();
        };
        var _mtime = (_r._buf._uint() : stdgo.GoUInt64);
        var _length = (_r._buf._uint() : stdgo.GoInt);
        if (((_r._fileEntries.length) < _r._fileEntries.capacity : Bool)) {
            var _fe = (_r._fileEntries.__slice__(0, ((_r._fileEntries.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile>>);
            if ((_fe[((_fe.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != null && ((_fe[((_fe.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : Dynamic).__nil__ == null || !(_fe[((_fe.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : Dynamic).__nil__))) {
                _r._fileEntries = _fe;
                return { _0 : false, _1 : (null : stdgo.Error) };
            };
        };
        _r._fileEntries = (_r._fileEntries.__append__((stdgo.Go.setRef((new stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile(_name?.__copy__(), _mtime, _length) : stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile>)));
        return { _0 : false, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _readLNCT( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>, _s:stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_lnctForm.T_lnctForm>, _dwarf64:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.GoUInt64; var _2 : stdgo.GoUInt64; var _3 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader> = _r;
        var _path = ("" : stdgo.GoString), _mtime = (0 : stdgo.GoUInt64), _size = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _dir:stdgo.GoString = ("" : stdgo.GoString);
        for (__3 => _lf in _s) {
            var _str:stdgo.GoString = ("" : stdgo.GoString);
            var _val:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            {
                final __value__ = _lf._form;
                if (__value__ == ((8u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    _str = _r._buf._string()?.__copy__();
                } else if (__value__ == ((14u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format)) || __value__ == ((31u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    var _off:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                    if (_dwarf64) {
                        _off = _r._buf._uint64();
                    } else {
                        _off = (_r._buf._uint32() : stdgo.GoUInt64);
                    };
                    if (((_off : stdgo.GoInt) : stdgo.GoUInt64) != (_off)) {
                        return { _0 : stdgo.Go.str()?.__copy__(), _1 : (0i64 : stdgo.GoUInt64), _2 : (0i64 : stdgo.GoUInt64), _3 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(("line" : stdgo.GoString), _r._buf._off, ("strp/line_strp offset out of range" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError)) };
                    };
                    var _b1:stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf = ({} : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
                    if (_lf._form == ((14u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                        _b1 = stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_r._buf._dwarf, _r._buf._format, ("str" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), _r._str)?.__copy__();
                    } else {
                        _b1 = stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_r._buf._dwarf, _r._buf._format, ("line_str" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), _r._lineStr)?.__copy__();
                    };
                    _b1._skip((_off : stdgo.GoInt));
                    _str = _b1._string()?.__copy__();
                    if (_b1._err != null) {
                        return { _0 : stdgo.Go.str()?.__copy__(), _1 : (0i64 : stdgo.GoUInt64), _2 : (0i64 : stdgo.GoUInt64), _3 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(("line" : stdgo.GoString), _r._buf._off, _b1._err.error()?.__copy__()) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError)) };
                    };
                } else if (__value__ == ((29u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    if (_dwarf64) {
                        _r._buf._uint64();
                    } else {
                        _r._buf._uint32();
                    };
                } else if (__value__ == ((26u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    _r._buf._uint();
                } else if (__value__ == ((37u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    _r._buf._uint8();
                } else if (__value__ == ((38u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    _r._buf._uint16();
                } else if (__value__ == ((39u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    _r._buf._uint24();
                } else if (__value__ == ((40u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    _r._buf._uint32();
                } else if (__value__ == ((11u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    _val = (_r._buf._uint8() : stdgo.GoUInt64);
                } else if (__value__ == ((5u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    _val = (_r._buf._uint16() : stdgo.GoUInt64);
                } else if (__value__ == ((6u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    _val = (_r._buf._uint32() : stdgo.GoUInt64);
                } else if (__value__ == ((7u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    _val = _r._buf._uint64();
                } else if (__value__ == ((30u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    _r._buf._bytes((16 : stdgo.GoInt));
                } else if (__value__ == ((9u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    _r._buf._bytes((_r._buf._uint() : stdgo.GoInt));
                } else if (__value__ == ((15u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    _val = _r._buf._uint();
                };
            };
            {
                final __value__ = _lf._lnct;
                if (__value__ == ((1 : stdgo.GoInt))) {
                    _path = _str?.__copy__();
                } else if (__value__ == ((2 : stdgo.GoInt))) {
                    if ((_val >= (_r._directories.length : stdgo.GoUInt64) : Bool)) {
                        return { _0 : stdgo.Go.str()?.__copy__(), _1 : (0i64 : stdgo.GoUInt64), _2 : (0i64 : stdgo.GoUInt64), _3 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(("line" : stdgo.GoString), _r._buf._off, ("directory index out of range" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError)) };
                    };
                    _dir = _r._directories[(_val : stdgo.GoInt)]?.__copy__();
                } else if (__value__ == ((3 : stdgo.GoInt))) {
                    _mtime = _val;
                } else if (__value__ == ((4 : stdgo.GoInt))) {
                    _size = _val;
                } else if (__value__ == ((5 : stdgo.GoInt))) {};
            };
        };
        if (((_dir != stdgo.Go.str()) && (_path != stdgo.Go.str()) : Bool)) {
            _path = stdgo._internal.debug.dwarf.Dwarf__pathJoin._pathJoin(_dir?.__copy__(), _path?.__copy__())?.__copy__();
        };
        return { _0 : _path?.__copy__(), _1 : _mtime, _2 : _size, _3 : (null : stdgo.Error) };
    }
    @:keep
    static public function _readLNCTFormat( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>):stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_lnctForm.T_lnctForm> {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader> = _r;
        var _c = (_r._buf._uint8() : stdgo.GoUInt8);
        var _ret = (new stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_lnctForm.T_lnctForm>((_c : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_c : stdgo.GoInt).toBasic() > 0 ? (_c : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.dwarf.Dwarf_T_lnctForm.T_lnctForm)]) : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_lnctForm.T_lnctForm>);
        for (_i => _ in _ret) {
            _ret[(_i : stdgo.GoInt)]._lnct = (_r._buf._uint() : stdgo.GoInt);
            _ret[(_i : stdgo.GoInt)]._form = (_r._buf._uint() : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format);
        };
        return _ret;
    }
    @:keep
    static public function _readHeader( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>, _compDir:stdgo.GoString):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader> = _r;
        var _buf = (stdgo.Go.setRef(_r._buf) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>);
        var _hdrOffset = (_buf._off : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
        var __tmp__ = _buf._unitLength(), _unitLength:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset = __tmp__._0, _dwarf64:Bool = __tmp__._1;
        _r._endOffset = (_buf._off + _unitLength : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
        if ((_r._endOffset > (_buf._off + (_buf._data.length : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : Bool)) {
            return stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(("line" : stdgo.GoString), _hdrOffset, stdgo._internal.fmt.Fmt_sprintf.sprintf(("line table end %d exceeds section size %d" : stdgo.GoString), stdgo.Go.toInterface(_r._endOffset), stdgo.Go.toInterface((_buf._off + (_buf._data.length : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset)))?.__copy__()) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
        };
        _r._version = _buf._uint16();
        if (((_buf._err == null) && (((_r._version < (2 : stdgo.GoUInt16) : Bool) || (_r._version > (5 : stdgo.GoUInt16) : Bool) : Bool)) : Bool)) {
            return stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(("line" : stdgo.GoString), _hdrOffset, stdgo._internal.fmt.Fmt_sprintf.sprintf(("unknown line table version %d" : stdgo.GoString), stdgo.Go.toInterface(_r._version))?.__copy__()) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
        };
        if ((_r._version >= (5 : stdgo.GoUInt16) : Bool)) {
            _r._addrsize = (_buf._uint8() : stdgo.GoInt);
            _r._segmentSelectorSize = (_buf._uint8() : stdgo.GoInt);
        } else {
            _r._addrsize = _buf._format._addrsize();
            _r._segmentSelectorSize = (0 : stdgo.GoInt);
        };
        var _headerLength:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
        if (_dwarf64) {
            _headerLength = (_buf._uint64() : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
        } else {
            _headerLength = (_buf._uint32() : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
        };
        var _programOffset = (_buf._off + _headerLength : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
        if ((_programOffset > _r._endOffset : Bool)) {
            return stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(("line" : stdgo.GoString), _hdrOffset, stdgo._internal.fmt.Fmt_sprintf.sprintf(("malformed line table: program offset %d exceeds end offset %d" : stdgo.GoString), stdgo.Go.toInterface(_programOffset), stdgo.Go.toInterface(_r._endOffset))?.__copy__()) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
        };
        _r._programOffset = _programOffset;
        _r._minInstructionLength = (_buf._uint8() : stdgo.GoInt);
        if ((_r._version >= (4 : stdgo.GoUInt16) : Bool)) {
            _r._maxOpsPerInstruction = (_buf._uint8() : stdgo.GoInt);
        } else {
            _r._maxOpsPerInstruction = (1 : stdgo.GoInt);
        };
        _r._defaultIsStmt = _buf._uint8() != ((0 : stdgo.GoUInt8));
        _r._lineBase = ((_buf._uint8() : stdgo.GoInt8) : stdgo.GoInt);
        _r._lineRange = (_buf._uint8() : stdgo.GoInt);
        if (_buf._err != null) {
            return _buf._err;
        };
        if (_r._maxOpsPerInstruction == ((0 : stdgo.GoInt))) {
            return stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(("line" : stdgo.GoString), _hdrOffset, ("invalid maximum operations per instruction: 0" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
        };
        if (_r._lineRange == ((0 : stdgo.GoInt))) {
            return stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(("line" : stdgo.GoString), _hdrOffset, ("invalid line range: 0" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
        };
        _r._opcodeBase = (_buf._uint8() : stdgo.GoInt);
        _r._opcodeLengths = (new stdgo.Slice<stdgo.GoInt>((_r._opcodeBase : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < _r._opcodeBase : Bool)) {
                _r._opcodeLengths[(_i : stdgo.GoInt)] = (_buf._uint8() : stdgo.GoInt);
                _i++;
            };
        };
        if (_buf._err != null) {
            return _buf._err;
        };
        for (_i => _length in _r._opcodeLengths) {
            {
                var __tmp__ = (stdgo._internal.debug.dwarf.Dwarf__knownOpcodeLengths._knownOpcodeLengths != null && stdgo._internal.debug.dwarf.Dwarf__knownOpcodeLengths._knownOpcodeLengths.exists(_i) ? { _0 : stdgo._internal.debug.dwarf.Dwarf__knownOpcodeLengths._knownOpcodeLengths[_i], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _known:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                if ((_ok && (_known != _length) : Bool)) {
                    return stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(("line" : stdgo.GoString), _hdrOffset, stdgo._internal.fmt.Fmt_sprintf.sprintf(("opcode %d expected to have length %d, but has length %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_known), stdgo.Go.toInterface(_length))?.__copy__()) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
                };
            };
        };
        if ((_r._version < (5 : stdgo.GoUInt16) : Bool)) {
            _r._directories = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_compDir?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
            while (true) {
                var _directory = (_buf._string()?.__copy__() : stdgo.GoString);
                if (_buf._err != null) {
                    return _buf._err;
                };
                if ((_directory.length) == ((0 : stdgo.GoInt))) {
                    break;
                };
                if (!stdgo._internal.debug.dwarf.Dwarf__pathIsAbs._pathIsAbs(_directory?.__copy__())) {
                    _directory = stdgo._internal.debug.dwarf.Dwarf__pathJoin._pathJoin(_compDir?.__copy__(), _directory?.__copy__())?.__copy__();
                };
                _r._directories = (_r._directories.__append__(_directory?.__copy__()));
            };
            _r._fileEntries = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile>>((1 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile>>);
            while (true) {
                {
                    var __tmp__ = _r._readFileEntry(), _done:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    } else if (_done) {
                        break;
                    };
                };
            };
        } else {
            var _dirFormat = _r._readLNCTFormat();
            var _c = (_buf._uint() : stdgo.GoUInt64);
            _r._directories = (new stdgo.Slice<stdgo.GoString>((_c : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
            for (_i => _ in _r._directories) {
                var __tmp__ = _r._readLNCT(_dirFormat, _dwarf64), _dir:stdgo.GoString = __tmp__._0, __3:stdgo.GoUInt64 = __tmp__._1, __4:stdgo.GoUInt64 = __tmp__._2, _err:stdgo.Error = __tmp__._3;
                if (_err != null) {
                    return _err;
                };
                _r._directories[(_i : stdgo.GoInt)] = _dir?.__copy__();
            };
            var _fileFormat = _r._readLNCTFormat();
            _c = _buf._uint();
            _r._fileEntries = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile>>((_c : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile>>);
            for (_i => _ in _r._fileEntries) {
                var __tmp__ = _r._readLNCT(_fileFormat, _dwarf64), _name:stdgo.GoString = __tmp__._0, _mtime:stdgo.GoUInt64 = __tmp__._1, _size:stdgo.GoUInt64 = __tmp__._2, _err:stdgo.Error = __tmp__._3;
                if (_err != null) {
                    return _err;
                };
                _r._fileEntries[(_i : stdgo.GoInt)] = (stdgo.Go.setRef((new stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile(_name?.__copy__(), _mtime, (_size : stdgo.GoInt)) : stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile>);
            };
        };
        _r._initialFileEntries = (_r._fileEntries.length);
        return _buf._err;
    }
}
