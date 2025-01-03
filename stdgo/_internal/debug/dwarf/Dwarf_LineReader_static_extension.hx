package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.LineReader_asInterface) class LineReader_static_extension {
    @:keep
    @:tdfield
    static public function seekPC( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>, _pc:stdgo.GoUInt64, _entry:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader> = _r;
        {
            var _err = (@:check2r _r.next(_entry) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if (((@:checkr _entry ?? throw "null pointer dereference").address > _pc : Bool)) {
            @:check2r _r.reset();
            {
                var _err = (@:check2r _r.next(_entry) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            if (((@:checkr _entry ?? throw "null pointer dereference").address > _pc : Bool)) {
                @:check2r _r.reset();
                return stdgo._internal.debug.dwarf.Dwarf_errUnknownPC.errUnknownPC;
            };
        };
        while (true) {
            var _next:stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry = ({} : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry);
            var _pos = (@:check2r _r.tell()?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_LineReaderPos.LineReaderPos);
            {
                var _err = (@:check2r _r.next((stdgo.Go.setRef(_next) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry>)) : stdgo.Error);
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
                        return stdgo._internal.debug.dwarf.Dwarf_errUnknownPC.errUnknownPC;
                    };
                    return _err;
                };
            };
            if ((_next.address > _pc : Bool)) {
                if ((@:checkr _entry ?? throw "null pointer dereference").endSequence) {
                    return stdgo._internal.debug.dwarf.Dwarf_errUnknownPC.errUnknownPC;
                };
                @:check2r _r.seek(_pos?.__copy__());
                return (null : stdgo.Error);
            };
            {
                var __tmp__ = _next?.__copy__();
                var x = (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry);
                x.address = __tmp__.address;
                x.opIndex = __tmp__.opIndex;
                x.file = __tmp__.file;
                x.line = __tmp__.line;
                x.column = __tmp__.column;
                x.isStmt = __tmp__.isStmt;
                x.basicBlock = __tmp__.basicBlock;
                x.prologueEnd = __tmp__.prologueEnd;
                x.epilogueBegin = __tmp__.epilogueBegin;
                x.iSA = __tmp__.iSA;
                x.discriminator = __tmp__.discriminator;
                x.endSequence = __tmp__.endSequence;
            };
        };
    }
    @:keep
    @:tdfield
    static public function files( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>):stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile>> {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader> = _r;
        return (@:checkr _r ?? throw "null pointer dereference")._fileEntries;
    }
    @:keep
    @:tdfield
    static public function _resetState( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._state = ({ address : (0i64 : stdgo.GoUInt64), opIndex : (0 : stdgo.GoInt), file : null, line : (1 : stdgo.GoInt), column : (0 : stdgo.GoInt), isStmt : (@:checkr _r ?? throw "null pointer dereference")._defaultIsStmt, basicBlock : false, prologueEnd : false, epilogueBegin : false, iSA : (0 : stdgo.GoInt), discriminator : (0 : stdgo.GoInt) } : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry);
        (@:checkr _r ?? throw "null pointer dereference")._fileIndex = (1 : stdgo.GoInt);
        @:check2r _r._updateFile();
    }
    @:keep
    @:tdfield
    static public function reset( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._buf._off = (@:checkr _r ?? throw "null pointer dereference")._programOffset;
        (@:checkr _r ?? throw "null pointer dereference")._buf._data = ((@:checkr _r ?? throw "null pointer dereference")._section.__slice__((@:checkr _r ?? throw "null pointer dereference")._buf._off, (@:checkr _r ?? throw "null pointer dereference")._endOffset) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _r ?? throw "null pointer dereference")._fileEntries = ((@:checkr _r ?? throw "null pointer dereference")._fileEntries.__slice__(0, (@:checkr _r ?? throw "null pointer dereference")._initialFileEntries) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile>>);
        @:check2r _r._resetState();
    }
    @:keep
    @:tdfield
    static public function seek( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>, _pos:stdgo._internal.debug.dwarf.Dwarf_LineReaderPos.LineReaderPos):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._buf._off = _pos._off;
        (@:checkr _r ?? throw "null pointer dereference")._buf._data = ((@:checkr _r ?? throw "null pointer dereference")._section.__slice__((@:checkr _r ?? throw "null pointer dereference")._buf._off, (@:checkr _r ?? throw "null pointer dereference")._endOffset) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _r ?? throw "null pointer dereference")._fileEntries = ((@:checkr _r ?? throw "null pointer dereference")._fileEntries.__slice__(0, _pos._numFileEntries) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile>>);
        (@:checkr _r ?? throw "null pointer dereference")._state = _pos._state?.__copy__();
        (@:checkr _r ?? throw "null pointer dereference")._fileIndex = _pos._fileIndex;
    }
    @:keep
    @:tdfield
    static public function tell( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>):stdgo._internal.debug.dwarf.Dwarf_LineReaderPos.LineReaderPos {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader> = _r;
        return (new stdgo._internal.debug.dwarf.Dwarf_LineReaderPos.LineReaderPos((@:checkr _r ?? throw "null pointer dereference")._buf._off, ((@:checkr _r ?? throw "null pointer dereference")._fileEntries.length), (@:checkr _r ?? throw "null pointer dereference")._state?.__copy__(), (@:checkr _r ?? throw "null pointer dereference")._fileIndex) : stdgo._internal.debug.dwarf.Dwarf_LineReaderPos.LineReaderPos);
    }
    @:keep
    @:tdfield
    static public function _advancePC( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>, _opAdvance:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader> = _r;
        var _opIndex = ((@:checkr _r ?? throw "null pointer dereference")._state.opIndex + _opAdvance : stdgo.GoInt);
        (@:checkr _r ?? throw "null pointer dereference")._state.address = ((@:checkr _r ?? throw "null pointer dereference")._state.address + ((((@:checkr _r ?? throw "null pointer dereference")._minInstructionLength * ((_opIndex / (@:checkr _r ?? throw "null pointer dereference")._maxOpsPerInstruction : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _r ?? throw "null pointer dereference")._state.opIndex = (_opIndex % (@:checkr _r ?? throw "null pointer dereference")._maxOpsPerInstruction : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _step( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>, _entry:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader> = _r;
        var _startOff_3654382:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
        var _lineDelta_3654186:stdgo.GoInt = (0 : stdgo.GoInt);
        var _adjustedOpcode_3654100:stdgo.GoInt = (0 : stdgo.GoInt);
        var _opcode_3653986:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3656212:stdgo.GoInt = (0 : stdgo.GoInt);
        var _done_3654887:Bool = false;
        var _opcode_3654406:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _err_3654893:stdgo.Error = (null : stdgo.Error);
        var _length_3654349:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _opcode_3653986 = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint8() : stdgo.GoInt);
                    if ((_opcode_3653986 >= (@:checkr _r ?? throw "null pointer dereference")._opcodeBase : Bool)) {
                        _gotoNext = 3654043i32;
                    } else {
                        _gotoNext = 3654284i32;
                    };
                } else if (__value__ == (3654043i32)) {
                    _adjustedOpcode_3654100 = (_opcode_3653986 - (@:checkr _r ?? throw "null pointer dereference")._opcodeBase : stdgo.GoInt);
                    @:check2r _r._advancePC((_adjustedOpcode_3654100 / (@:checkr _r ?? throw "null pointer dereference")._lineRange : stdgo.GoInt));
                    _lineDelta_3654186 = ((@:checkr _r ?? throw "null pointer dereference")._lineBase + (_adjustedOpcode_3654100 % (@:checkr _r ?? throw "null pointer dereference")._lineRange : stdgo.GoInt) : stdgo.GoInt);
                    (@:checkr _r ?? throw "null pointer dereference")._state.line = ((@:checkr _r ?? throw "null pointer dereference")._state.line + (_lineDelta_3654186) : stdgo.GoInt);
                    _gotoNext = 3656293i32;
                } else if (__value__ == (3654284i32)) {
                    _gotoNext = 3654284i32;
                    {
                        final __value__ = _opcode_3653986;
                        if (__value__ == ((0 : stdgo.GoInt))) {
                            _gotoNext = 3654301i32;
                        } else if (__value__ == ((1 : stdgo.GoInt))) {
                            _gotoNext = 3655360i32;
                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                            _gotoNext = 3655388i32;
                        } else if (__value__ == ((3 : stdgo.GoInt))) {
                            _gotoNext = 3655442i32;
                        } else if (__value__ == ((4 : stdgo.GoInt))) {
                            _gotoNext = 3655500i32;
                        } else if (__value__ == ((5 : stdgo.GoInt))) {
                            _gotoNext = 3655570i32;
                        } else if (__value__ == ((6 : stdgo.GoInt))) {
                            _gotoNext = 3655628i32;
                        } else if (__value__ == ((7 : stdgo.GoInt))) {
                            _gotoNext = 3655685i32;
                        } else if (__value__ == ((8 : stdgo.GoInt))) {
                            _gotoNext = 3655738i32;
                        } else if (__value__ == ((9 : stdgo.GoInt))) {
                            _gotoNext = 3655810i32;
                        } else if (__value__ == ((10 : stdgo.GoInt))) {
                            _gotoNext = 3655925i32;
                        } else if (__value__ == ((11 : stdgo.GoInt))) {
                            _gotoNext = 3655980i32;
                        } else if (__value__ == ((12 : stdgo.GoInt))) {
                            _gotoNext = 3656039i32;
                        } else {
                            _gotoNext = 3656091i32;
                        };
                    };
                } else if (__value__ == (3654301i32)) {
                    _length_3654349 = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
                    _startOff_3654382 = (@:checkr _r ?? throw "null pointer dereference")._buf._off;
                    _opcode_3654406 = @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint8();
                    _gotoNext = 3654433i32;
                } else if (__value__ == (3654433i32)) {
                    {
                        final __value__ = _opcode_3654406;
                        if (__value__ == ((1 : stdgo.GoUInt8))) {
                            _gotoNext = 3654451i32;
                        } else if (__value__ == ((2 : stdgo.GoUInt8))) {
                            _gotoNext = 3654543i32;
                        } else if (__value__ == ((3 : stdgo.GoUInt8))) {
                            _gotoNext = 3654861i32;
                        } else if (__value__ == ((4 : stdgo.GoUInt8))) {
                            _gotoNext = 3655120i32;
                        } else {
                            _gotoNext = 3655221i32;
                        };
                    };
                } else if (__value__ == (3654451i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.endSequence = true;
                    {
                        var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._state?.__copy__();
                        var x = (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry);
                        x.address = __tmp__.address;
                        x.opIndex = __tmp__.opIndex;
                        x.file = __tmp__.file;
                        x.line = __tmp__.line;
                        x.column = __tmp__.column;
                        x.isStmt = __tmp__.isStmt;
                        x.basicBlock = __tmp__.basicBlock;
                        x.prologueEnd = __tmp__.prologueEnd;
                        x.epilogueBegin = __tmp__.epilogueBegin;
                        x.iSA = __tmp__.iSA;
                        x.discriminator = __tmp__.discriminator;
                        x.endSequence = __tmp__.endSequence;
                    };
                    @:check2r _r._resetState();
                    _gotoNext = 3655221i32;
                } else if (__value__ == (3654543i32)) {
                    _gotoNext = 3654566i32;
                } else if (__value__ == (3654566i32)) {
                    {
                        final __value__ = (@:checkr _r ?? throw "null pointer dereference")._addrsize;
                        if (__value__ == ((1 : stdgo.GoInt))) {
                            _gotoNext = 3654589i32;
                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                            _gotoNext = 3654644i32;
                        } else if (__value__ == ((4 : stdgo.GoInt))) {
                            _gotoNext = 3654700i32;
                        } else if (__value__ == ((8 : stdgo.GoInt))) {
                            _gotoNext = 3654756i32;
                        } else {
                            _gotoNext = 3654804i32;
                        };
                    };
                } else if (__value__ == (3654589i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.address = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint8() : stdgo.GoUInt64);
                    _gotoNext = 3655221i32;
                } else if (__value__ == (3654644i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.address = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint16() : stdgo.GoUInt64);
                    _gotoNext = 3655221i32;
                } else if (__value__ == (3654700i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.address = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint32() : stdgo.GoUInt64);
                    _gotoNext = 3655221i32;
                } else if (__value__ == (3654756i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.address = @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint64();
                    _gotoNext = 3655221i32;
                } else if (__value__ == (3654804i32)) {
                    @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._error(("unknown address size" : stdgo.GoString));
                    _gotoNext = 3655221i32;
                } else if (__value__ == (3654861i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _r._readFileEntry();
                            _done_3654887 = __tmp__._0;
                            _err_3654893 = __tmp__._1;
                        };
                        if (_err_3654893 != null) {
                            _gotoNext = 3654930i32;
                        } else if (_done_3654887) {
                            _gotoNext = 3654987i32;
                        } else {
                            _gotoNext = 3655102i32;
                        };
                    };
                } else if (__value__ == (3654930i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._buf._err = _err_3654893;
                    return false;
                    _gotoNext = 3655102i32;
                } else if (__value__ == (3654987i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._buf._err = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(("line" : stdgo.GoString), _startOff_3654382, ("malformed DW_LNE_define_file operation" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
                    return false;
                    _gotoNext = 3655102i32;
                } else if (__value__ == (3655102i32)) {
                    @:check2r _r._updateFile();
                    _gotoNext = 3655221i32;
                } else if (__value__ == (3655120i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.discriminator = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo.GoInt);
                    _gotoNext = 3655221i32;
                } else if (__value__ == (3655221i32)) {
                    @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._skip((((_startOff_3654382 + _length_3654349 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) - (@:checkr _r ?? throw "null pointer dereference")._buf._off : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : stdgo.GoInt));
                    if (_opcode_3654406 == ((1 : stdgo.GoUInt8))) {
                        _gotoNext = 3655299i32;
                    } else {
                        _gotoNext = 3656279i32;
                    };
                } else if (__value__ == (3655299i32)) {
                    return true;
                    _gotoNext = 3656279i32;
                } else if (__value__ == (3655360i32)) {
                    _gotoNext = 3656293i32;
                } else if (__value__ == (3655388i32)) {
                    @:check2r _r._advancePC((@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo.GoInt));
                    _gotoNext = 3656279i32;
                } else if (__value__ == (3655442i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.line = ((@:checkr _r ?? throw "null pointer dereference")._state.line + ((@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._int() : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 3656279i32;
                } else if (__value__ == (3655500i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._fileIndex = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo.GoInt);
                    @:check2r _r._updateFile();
                    _gotoNext = 3656279i32;
                } else if (__value__ == (3655570i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.column = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo.GoInt);
                    _gotoNext = 3656279i32;
                } else if (__value__ == (3655628i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.isStmt = !(@:checkr _r ?? throw "null pointer dereference")._state.isStmt;
                    _gotoNext = 3656279i32;
                } else if (__value__ == (3655685i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.basicBlock = true;
                    _gotoNext = 3656279i32;
                } else if (__value__ == (3655738i32)) {
                    @:check2r _r._advancePC(((((255 : stdgo.GoInt) - (@:checkr _r ?? throw "null pointer dereference")._opcodeBase : stdgo.GoInt)) / (@:checkr _r ?? throw "null pointer dereference")._lineRange : stdgo.GoInt));
                    _gotoNext = 3656279i32;
                } else if (__value__ == (3655810i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.address = ((@:checkr _r ?? throw "null pointer dereference")._state.address + ((@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint16() : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _gotoNext = 3656279i32;
                } else if (__value__ == (3655925i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.prologueEnd = true;
                    _gotoNext = 3656279i32;
                } else if (__value__ == (3655980i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.epilogueBegin = true;
                    _gotoNext = 3656279i32;
                } else if (__value__ == (3656039i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.iSA = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo.GoInt);
                    _gotoNext = 3656279i32;
                } else if (__value__ == (3656091i32)) {
                    _i_3656212 = (0 : stdgo.GoInt);
                    _gotoNext = 3656208i32;
                } else if (__value__ == (3656208i32)) {
                    if ((_i_3656212 < (@:checkr _r ?? throw "null pointer dereference")._opcodeLengths[(_opcode_3653986 : stdgo.GoInt)] : Bool)) {
                        _gotoNext = 3656253i32;
                    } else {
                        _gotoNext = 3656279i32;
                    };
                } else if (__value__ == (3656253i32)) {
                    @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint();
                    _i_3656212++;
                    _gotoNext = 3656208i32;
                } else if (__value__ == (3656279i32)) {
                    return false;
                    _gotoNext = 3656293i32;
                } else if (__value__ == (3656293i32)) {
                    {
                        var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._state?.__copy__();
                        var x = (_entry : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry);
                        x.address = __tmp__.address;
                        x.opIndex = __tmp__.opIndex;
                        x.file = __tmp__.file;
                        x.line = __tmp__.line;
                        x.column = __tmp__.column;
                        x.isStmt = __tmp__.isStmt;
                        x.basicBlock = __tmp__.basicBlock;
                        x.prologueEnd = __tmp__.prologueEnd;
                        x.epilogueBegin = __tmp__.epilogueBegin;
                        x.iSA = __tmp__.iSA;
                        x.discriminator = __tmp__.discriminator;
                        x.endSequence = __tmp__.endSequence;
                    };
                    (@:checkr _r ?? throw "null pointer dereference")._state.basicBlock = false;
                    (@:checkr _r ?? throw "null pointer dereference")._state.prologueEnd = false;
                    (@:checkr _r ?? throw "null pointer dereference")._state.epilogueBegin = false;
                    (@:checkr _r ?? throw "null pointer dereference")._state.discriminator = (0 : stdgo.GoInt);
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function next( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>, _entry:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference")._buf._err != null) {
            return (@:checkr _r ?? throw "null pointer dereference")._buf._err;
        };
        while (true) {
            if (((@:checkr _r ?? throw "null pointer dereference")._buf._data.length) == ((0 : stdgo.GoInt))) {
                return stdgo._internal.io.Io_eOF.eOF;
            };
            var _emit = (@:check2r _r._step(_entry) : Bool);
            if ((@:checkr _r ?? throw "null pointer dereference")._buf._err != null) {
                return (@:checkr _r ?? throw "null pointer dereference")._buf._err;
            };
            if (_emit) {
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _updateFile( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader> = _r;
        if (((@:checkr _r ?? throw "null pointer dereference")._fileIndex < ((@:checkr _r ?? throw "null pointer dereference")._fileEntries.length) : Bool)) {
            (@:checkr _r ?? throw "null pointer dereference")._state.file = (@:checkr _r ?? throw "null pointer dereference")._fileEntries[((@:checkr _r ?? throw "null pointer dereference")._fileIndex : stdgo.GoInt)];
        } else {
            (@:checkr _r ?? throw "null pointer dereference")._state.file = null;
        };
    }
    @:keep
    @:tdfield
    static public function _readFileEntry( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader> = _r;
        var _name = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._string()?.__copy__() : stdgo.GoString);
        if ((@:checkr _r ?? throw "null pointer dereference")._buf._err != null) {
            return { _0 : false, _1 : (@:checkr _r ?? throw "null pointer dereference")._buf._err };
        };
        if ((_name.length) == ((0 : stdgo.GoInt))) {
            return { _0 : true, _1 : (null : stdgo.Error) };
        };
        var _off = ((@:checkr _r ?? throw "null pointer dereference")._buf._off : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
        var _dirIndex = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo.GoInt);
        if (!stdgo._internal.debug.dwarf.Dwarf__pathIsAbs._pathIsAbs(_name?.__copy__())) {
            if ((_dirIndex >= ((@:checkr _r ?? throw "null pointer dereference")._directories.length) : Bool)) {
                return { _0 : false, _1 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(("line" : stdgo.GoString), _off, ("directory index too large" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError)) };
            };
            _name = stdgo._internal.debug.dwarf.Dwarf__pathJoin._pathJoin((@:checkr _r ?? throw "null pointer dereference")._directories[(_dirIndex : stdgo.GoInt)]?.__copy__(), _name?.__copy__())?.__copy__();
        };
        var _mtime = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo.GoUInt64);
        var _length = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo.GoInt);
        if ((((@:checkr _r ?? throw "null pointer dereference")._fileEntries.length) < (@:checkr _r ?? throw "null pointer dereference")._fileEntries.capacity : Bool)) {
            var _fe = ((@:checkr _r ?? throw "null pointer dereference")._fileEntries.__slice__(0, (((@:checkr _r ?? throw "null pointer dereference")._fileEntries.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile>>);
            if ((_fe[((_fe.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != null && ((_fe[((_fe.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : Dynamic).__nil__ == null || !(_fe[((_fe.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : Dynamic).__nil__))) {
                (@:checkr _r ?? throw "null pointer dereference")._fileEntries = _fe;
                return { _0 : false, _1 : (null : stdgo.Error) };
            };
        };
        (@:checkr _r ?? throw "null pointer dereference")._fileEntries = ((@:checkr _r ?? throw "null pointer dereference")._fileEntries.__append__((stdgo.Go.setRef((new stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile(_name?.__copy__(), _mtime, _length) : stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile>)));
        return { _0 : false, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
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
                    _str = @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._string()?.__copy__();
                } else if (__value__ == ((14u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format)) || __value__ == ((31u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    var _off:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                    if (_dwarf64) {
                        _off = @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint64();
                    } else {
                        _off = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint32() : stdgo.GoUInt64);
                    };
                    if (((_off : stdgo.GoInt) : stdgo.GoUInt64) != (_off)) {
                        return {
                            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoUInt64; var _2 : stdgo.GoUInt64; var _3 : stdgo.Error; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : (0i64 : stdgo.GoUInt64), _2 : (0i64 : stdgo.GoUInt64), _3 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(("line" : stdgo.GoString), (@:checkr _r ?? throw "null pointer dereference")._buf._off, ("strp/line_strp offset out of range" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError)) };
                            _path = __tmp__._0;
                            _mtime = __tmp__._1;
                            _size = __tmp__._2;
                            _err = __tmp__._3;
                            __tmp__;
                        };
                    };
                    var _b1:stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf = ({} : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
                    if (_lf._form == ((14u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                        _b1 = stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf((@:checkr _r ?? throw "null pointer dereference")._buf._dwarf, (@:checkr _r ?? throw "null pointer dereference")._buf._format, ("str" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), (@:checkr _r ?? throw "null pointer dereference")._str)?.__copy__();
                    } else {
                        _b1 = stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf((@:checkr _r ?? throw "null pointer dereference")._buf._dwarf, (@:checkr _r ?? throw "null pointer dereference")._buf._format, ("line_str" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), (@:checkr _r ?? throw "null pointer dereference")._lineStr)?.__copy__();
                    };
                    @:check2 _b1._skip((_off : stdgo.GoInt));
                    _str = @:check2 _b1._string()?.__copy__();
                    if (_b1._err != null) {
                        return {
                            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoUInt64; var _2 : stdgo.GoUInt64; var _3 : stdgo.Error; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : (0i64 : stdgo.GoUInt64), _2 : (0i64 : stdgo.GoUInt64), _3 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(("line" : stdgo.GoString), (@:checkr _r ?? throw "null pointer dereference")._buf._off, _b1._err.error()?.__copy__()) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError)) };
                            _path = __tmp__._0;
                            _mtime = __tmp__._1;
                            _size = __tmp__._2;
                            _err = __tmp__._3;
                            __tmp__;
                        };
                    };
                } else if (__value__ == ((29u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    if (_dwarf64) {
                        @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint64();
                    } else {
                        @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint32();
                    };
                } else if (__value__ == ((26u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint();
                } else if (__value__ == ((37u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint8();
                } else if (__value__ == ((38u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint16();
                } else if (__value__ == ((39u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint24();
                } else if (__value__ == ((40u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint32();
                } else if (__value__ == ((11u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    _val = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint8() : stdgo.GoUInt64);
                } else if (__value__ == ((5u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    _val = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint16() : stdgo.GoUInt64);
                } else if (__value__ == ((6u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    _val = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint32() : stdgo.GoUInt64);
                } else if (__value__ == ((7u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    _val = @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint64();
                } else if (__value__ == ((30u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._bytes((16 : stdgo.GoInt));
                } else if (__value__ == ((9u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._bytes((@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo.GoInt));
                } else if (__value__ == ((15u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    _val = @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint();
                };
            };
            {
                final __value__ = _lf._lnct;
                if (__value__ == ((1 : stdgo.GoInt))) {
                    _path = _str?.__copy__();
                } else if (__value__ == ((2 : stdgo.GoInt))) {
                    if ((_val >= ((@:checkr _r ?? throw "null pointer dereference")._directories.length : stdgo.GoUInt64) : Bool)) {
                        return {
                            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoUInt64; var _2 : stdgo.GoUInt64; var _3 : stdgo.Error; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : (0i64 : stdgo.GoUInt64), _2 : (0i64 : stdgo.GoUInt64), _3 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(("line" : stdgo.GoString), (@:checkr _r ?? throw "null pointer dereference")._buf._off, ("directory index out of range" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError)) };
                            _path = __tmp__._0;
                            _mtime = __tmp__._1;
                            _size = __tmp__._2;
                            _err = __tmp__._3;
                            __tmp__;
                        };
                    };
                    _dir = (@:checkr _r ?? throw "null pointer dereference")._directories[(_val : stdgo.GoInt)]?.__copy__();
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
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoUInt64; var _2 : stdgo.GoUInt64; var _3 : stdgo.Error; } = { _0 : _path?.__copy__(), _1 : _mtime, _2 : _size, _3 : (null : stdgo.Error) };
            _path = __tmp__._0;
            _mtime = __tmp__._1;
            _size = __tmp__._2;
            _err = __tmp__._3;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _readLNCTFormat( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>):stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_lnctForm.T_lnctForm> {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader> = _r;
        var _c = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint8() : stdgo.GoUInt8);
        var _ret = (new stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_lnctForm.T_lnctForm>((_c : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_c : stdgo.GoInt).toBasic() > 0 ? (_c : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.dwarf.Dwarf_T_lnctForm.T_lnctForm)]) : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_lnctForm.T_lnctForm>);
        for (_i => _ in _ret) {
            _ret[(_i : stdgo.GoInt)]._lnct = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo.GoInt);
            _ret[(_i : stdgo.GoInt)]._form = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format);
        };
        return _ret;
    }
    @:keep
    @:tdfield
    static public function _readHeader( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>, _compDir:stdgo.GoString):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader> = _r;
        var _buf = (stdgo.Go.setRef((@:checkr _r ?? throw "null pointer dereference")._buf) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>);
        var _hdrOffset = ((@:checkr _buf ?? throw "null pointer dereference")._off : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
        var __tmp__ = @:check2r _buf._unitLength(), _unitLength:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset = __tmp__._0, _dwarf64:Bool = __tmp__._1;
        (@:checkr _r ?? throw "null pointer dereference")._endOffset = ((@:checkr _buf ?? throw "null pointer dereference")._off + _unitLength : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
        if (((@:checkr _r ?? throw "null pointer dereference")._endOffset > ((@:checkr _buf ?? throw "null pointer dereference")._off + ((@:checkr _buf ?? throw "null pointer dereference")._data.length : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : Bool)) {
            return stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(("line" : stdgo.GoString), _hdrOffset, stdgo._internal.fmt.Fmt_sprintf.sprintf(("line table end %d exceeds section size %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._endOffset), stdgo.Go.toInterface(((@:checkr _buf ?? throw "null pointer dereference")._off + ((@:checkr _buf ?? throw "null pointer dereference")._data.length : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset)))?.__copy__()) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
        };
        (@:checkr _r ?? throw "null pointer dereference")._version = @:check2r _buf._uint16();
        if ((((@:checkr _buf ?? throw "null pointer dereference")._err == null) && ((((@:checkr _r ?? throw "null pointer dereference")._version < (2 : stdgo.GoUInt16) : Bool) || ((@:checkr _r ?? throw "null pointer dereference")._version > (5 : stdgo.GoUInt16) : Bool) : Bool)) : Bool)) {
            return stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(("line" : stdgo.GoString), _hdrOffset, stdgo._internal.fmt.Fmt_sprintf.sprintf(("unknown line table version %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._version))?.__copy__()) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
        };
        if (((@:checkr _r ?? throw "null pointer dereference")._version >= (5 : stdgo.GoUInt16) : Bool)) {
            (@:checkr _r ?? throw "null pointer dereference")._addrsize = (@:check2r _buf._uint8() : stdgo.GoInt);
            (@:checkr _r ?? throw "null pointer dereference")._segmentSelectorSize = (@:check2r _buf._uint8() : stdgo.GoInt);
        } else {
            (@:checkr _r ?? throw "null pointer dereference")._addrsize = (@:checkr _buf ?? throw "null pointer dereference")._format._addrsize();
            (@:checkr _r ?? throw "null pointer dereference")._segmentSelectorSize = (0 : stdgo.GoInt);
        };
        var _headerLength:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
        if (_dwarf64) {
            _headerLength = (@:check2r _buf._uint64() : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
        } else {
            _headerLength = (@:check2r _buf._uint32() : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
        };
        var _programOffset = ((@:checkr _buf ?? throw "null pointer dereference")._off + _headerLength : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
        if ((_programOffset > (@:checkr _r ?? throw "null pointer dereference")._endOffset : Bool)) {
            return stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(("line" : stdgo.GoString), _hdrOffset, stdgo._internal.fmt.Fmt_sprintf.sprintf(("malformed line table: program offset %d exceeds end offset %d" : stdgo.GoString), stdgo.Go.toInterface(_programOffset), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._endOffset))?.__copy__()) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
        };
        (@:checkr _r ?? throw "null pointer dereference")._programOffset = _programOffset;
        (@:checkr _r ?? throw "null pointer dereference")._minInstructionLength = (@:check2r _buf._uint8() : stdgo.GoInt);
        if (((@:checkr _r ?? throw "null pointer dereference")._version >= (4 : stdgo.GoUInt16) : Bool)) {
            (@:checkr _r ?? throw "null pointer dereference")._maxOpsPerInstruction = (@:check2r _buf._uint8() : stdgo.GoInt);
        } else {
            (@:checkr _r ?? throw "null pointer dereference")._maxOpsPerInstruction = (1 : stdgo.GoInt);
        };
        (@:checkr _r ?? throw "null pointer dereference")._defaultIsStmt = @:check2r _buf._uint8() != ((0 : stdgo.GoUInt8));
        (@:checkr _r ?? throw "null pointer dereference")._lineBase = ((@:check2r _buf._uint8() : stdgo.GoInt8) : stdgo.GoInt);
        (@:checkr _r ?? throw "null pointer dereference")._lineRange = (@:check2r _buf._uint8() : stdgo.GoInt);
        if ((@:checkr _buf ?? throw "null pointer dereference")._err != null) {
            return (@:checkr _buf ?? throw "null pointer dereference")._err;
        };
        if ((@:checkr _r ?? throw "null pointer dereference")._maxOpsPerInstruction == ((0 : stdgo.GoInt))) {
            return stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(("line" : stdgo.GoString), _hdrOffset, ("invalid maximum operations per instruction: 0" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
        };
        if ((@:checkr _r ?? throw "null pointer dereference")._lineRange == ((0 : stdgo.GoInt))) {
            return stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(("line" : stdgo.GoString), _hdrOffset, ("invalid line range: 0" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
        };
        (@:checkr _r ?? throw "null pointer dereference")._opcodeBase = (@:check2r _buf._uint8() : stdgo.GoInt);
        (@:checkr _r ?? throw "null pointer dereference")._opcodeLengths = (new stdgo.Slice<stdgo.GoInt>(((@:checkr _r ?? throw "null pointer dereference")._opcodeBase : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (@:checkr _r ?? throw "null pointer dereference")._opcodeBase : Bool)) {
                (@:checkr _r ?? throw "null pointer dereference")._opcodeLengths[(_i : stdgo.GoInt)] = (@:check2r _buf._uint8() : stdgo.GoInt);
                _i++;
            };
        };
        if ((@:checkr _buf ?? throw "null pointer dereference")._err != null) {
            return (@:checkr _buf ?? throw "null pointer dereference")._err;
        };
        for (_i => _length in (@:checkr _r ?? throw "null pointer dereference")._opcodeLengths) {
            {
                var __tmp__ = (stdgo._internal.debug.dwarf.Dwarf__knownOpcodeLengths._knownOpcodeLengths != null && stdgo._internal.debug.dwarf.Dwarf__knownOpcodeLengths._knownOpcodeLengths.exists(_i) ? { _0 : stdgo._internal.debug.dwarf.Dwarf__knownOpcodeLengths._knownOpcodeLengths[_i], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _known:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                if ((_ok && (_known != _length) : Bool)) {
                    return stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(("line" : stdgo.GoString), _hdrOffset, stdgo._internal.fmt.Fmt_sprintf.sprintf(("opcode %d expected to have length %d, but has length %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_known), stdgo.Go.toInterface(_length))?.__copy__()) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
                };
            };
        };
        if (((@:checkr _r ?? throw "null pointer dereference")._version < (5 : stdgo.GoUInt16) : Bool)) {
            (@:checkr _r ?? throw "null pointer dereference")._directories = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_compDir?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
            while (true) {
                var _directory = (@:check2r _buf._string()?.__copy__() : stdgo.GoString);
                if ((@:checkr _buf ?? throw "null pointer dereference")._err != null) {
                    return (@:checkr _buf ?? throw "null pointer dereference")._err;
                };
                if ((_directory.length) == ((0 : stdgo.GoInt))) {
                    break;
                };
                if (!stdgo._internal.debug.dwarf.Dwarf__pathIsAbs._pathIsAbs(_directory?.__copy__())) {
                    _directory = stdgo._internal.debug.dwarf.Dwarf__pathJoin._pathJoin(_compDir?.__copy__(), _directory?.__copy__())?.__copy__();
                };
                (@:checkr _r ?? throw "null pointer dereference")._directories = ((@:checkr _r ?? throw "null pointer dereference")._directories.__append__(_directory?.__copy__()));
            };
            (@:checkr _r ?? throw "null pointer dereference")._fileEntries = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile>>((1 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile>>);
            while (true) {
                {
                    var __tmp__ = @:check2r _r._readFileEntry(), _done:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    } else if (_done) {
                        break;
                    };
                };
            };
        } else {
            var _dirFormat = @:check2r _r._readLNCTFormat();
            var _c = (@:check2r _buf._uint() : stdgo.GoUInt64);
            (@:checkr _r ?? throw "null pointer dereference")._directories = (new stdgo.Slice<stdgo.GoString>((_c : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
            for (_i => _ in (@:checkr _r ?? throw "null pointer dereference")._directories) {
                var __tmp__ = @:check2r _r._readLNCT(_dirFormat, _dwarf64), _dir:stdgo.GoString = __tmp__._0, __3:stdgo.GoUInt64 = __tmp__._1, __4:stdgo.GoUInt64 = __tmp__._2, _err:stdgo.Error = __tmp__._3;
                if (_err != null) {
                    return _err;
                };
                (@:checkr _r ?? throw "null pointer dereference")._directories[(_i : stdgo.GoInt)] = _dir?.__copy__();
            };
            var _fileFormat = @:check2r _r._readLNCTFormat();
            _c = @:check2r _buf._uint();
            (@:checkr _r ?? throw "null pointer dereference")._fileEntries = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile>>((_c : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile>>);
            for (_i => _ in (@:checkr _r ?? throw "null pointer dereference")._fileEntries) {
                var __tmp__ = @:check2r _r._readLNCT(_fileFormat, _dwarf64), _name:stdgo.GoString = __tmp__._0, _mtime:stdgo.GoUInt64 = __tmp__._1, _size:stdgo.GoUInt64 = __tmp__._2, _err:stdgo.Error = __tmp__._3;
                if (_err != null) {
                    return _err;
                };
                (@:checkr _r ?? throw "null pointer dereference")._fileEntries[(_i : stdgo.GoInt)] = (stdgo.Go.setRef((new stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile(_name?.__copy__(), _mtime, (_size : stdgo.GoInt)) : stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile>);
            };
        };
        (@:checkr _r ?? throw "null pointer dereference")._initialFileEntries = ((@:checkr _r ?? throw "null pointer dereference")._fileEntries.length);
        return (@:checkr _buf ?? throw "null pointer dereference")._err;
    }
}
