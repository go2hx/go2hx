package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.LineReader_asInterface) class LineReader_static_extension {
    @:keep
    @:tdfield
    static public function seekPC( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader>, _pc:stdgo.GoUInt64, _entry:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_lineentry.LineEntry>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader> = _r;
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
                return stdgo._internal.debug.dwarf.Dwarf_errunknownpc.errUnknownPC;
            };
        };
        while (true) {
            var _next:stdgo._internal.debug.dwarf.Dwarf_lineentry.LineEntry = ({} : stdgo._internal.debug.dwarf.Dwarf_lineentry.LineEntry);
            var _pos = (@:check2r _r.tell()?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_linereaderpos.LineReaderPos);
            {
                var _err = (@:check2r _r.next((stdgo.Go.setRef(_next) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_lineentry.LineEntry>)) : stdgo.Error);
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        return stdgo._internal.debug.dwarf.Dwarf_errunknownpc.errUnknownPC;
                    };
                    return _err;
                };
            };
            if ((_next.address > _pc : Bool)) {
                if ((@:checkr _entry ?? throw "null pointer dereference").endSequence) {
                    return stdgo._internal.debug.dwarf.Dwarf_errunknownpc.errUnknownPC;
                };
                @:check2r _r.seek(_pos?.__copy__());
                return (null : stdgo.Error);
            };
            {
                var __tmp__ = _next?.__copy__();
                var x = (_entry : stdgo._internal.debug.dwarf.Dwarf_lineentry.LineEntry);
                x.address = __tmp__?.address;
                x.opIndex = __tmp__?.opIndex;
                x.file = __tmp__?.file;
                x.line = __tmp__?.line;
                x.column = __tmp__?.column;
                x.isStmt = __tmp__?.isStmt;
                x.basicBlock = __tmp__?.basicBlock;
                x.prologueEnd = __tmp__?.prologueEnd;
                x.epilogueBegin = __tmp__?.epilogueBegin;
                x.iSA = __tmp__?.iSA;
                x.discriminator = __tmp__?.discriminator;
                x.endSequence = __tmp__?.endSequence;
            };
        };
    }
    @:keep
    @:tdfield
    static public function files( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader>):stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile>> {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader> = _r;
        return (@:checkr _r ?? throw "null pointer dereference")._fileEntries;
    }
    @:keep
    @:tdfield
    static public function _resetState( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._state = ({ address : (0i64 : stdgo.GoUInt64), opIndex : (0 : stdgo.GoInt), file : null, line : (1 : stdgo.GoInt), column : (0 : stdgo.GoInt), isStmt : (@:checkr _r ?? throw "null pointer dereference")._defaultIsStmt, basicBlock : false, prologueEnd : false, epilogueBegin : false, iSA : (0 : stdgo.GoInt), discriminator : (0 : stdgo.GoInt) } : stdgo._internal.debug.dwarf.Dwarf_lineentry.LineEntry);
        (@:checkr _r ?? throw "null pointer dereference")._fileIndex = (1 : stdgo.GoInt);
        @:check2r _r._updateFile();
    }
    @:keep
    @:tdfield
    static public function reset( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._buf._off = (@:checkr _r ?? throw "null pointer dereference")._programOffset;
        (@:checkr _r ?? throw "null pointer dereference")._buf._data = ((@:checkr _r ?? throw "null pointer dereference")._section.__slice__((@:checkr _r ?? throw "null pointer dereference")._buf._off, (@:checkr _r ?? throw "null pointer dereference")._endOffset) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _r ?? throw "null pointer dereference")._fileEntries = ((@:checkr _r ?? throw "null pointer dereference")._fileEntries.__slice__(0, (@:checkr _r ?? throw "null pointer dereference")._initialFileEntries) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile>>);
        @:check2r _r._resetState();
    }
    @:keep
    @:tdfield
    static public function seek( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader>, _pos:stdgo._internal.debug.dwarf.Dwarf_linereaderpos.LineReaderPos):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._buf._off = _pos._off;
        (@:checkr _r ?? throw "null pointer dereference")._buf._data = ((@:checkr _r ?? throw "null pointer dereference")._section.__slice__((@:checkr _r ?? throw "null pointer dereference")._buf._off, (@:checkr _r ?? throw "null pointer dereference")._endOffset) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _r ?? throw "null pointer dereference")._fileEntries = ((@:checkr _r ?? throw "null pointer dereference")._fileEntries.__slice__(0, _pos._numFileEntries) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile>>);
        (@:checkr _r ?? throw "null pointer dereference")._state = _pos._state?.__copy__();
        (@:checkr _r ?? throw "null pointer dereference")._fileIndex = _pos._fileIndex;
    }
    @:keep
    @:tdfield
    static public function tell( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader>):stdgo._internal.debug.dwarf.Dwarf_linereaderpos.LineReaderPos {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader> = _r;
        return (new stdgo._internal.debug.dwarf.Dwarf_linereaderpos.LineReaderPos((@:checkr _r ?? throw "null pointer dereference")._buf._off, ((@:checkr _r ?? throw "null pointer dereference")._fileEntries.length), (@:checkr _r ?? throw "null pointer dereference")._state?.__copy__(), (@:checkr _r ?? throw "null pointer dereference")._fileIndex) : stdgo._internal.debug.dwarf.Dwarf_linereaderpos.LineReaderPos);
    }
    @:keep
    @:tdfield
    static public function _advancePC( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader>, _opAdvance:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader> = _r;
        var _opIndex = ((@:checkr _r ?? throw "null pointer dereference")._state.opIndex + _opAdvance : stdgo.GoInt);
        (@:checkr _r ?? throw "null pointer dereference")._state.address = ((@:checkr _r ?? throw "null pointer dereference")._state.address + ((((@:checkr _r ?? throw "null pointer dereference")._minInstructionLength * ((_opIndex / (@:checkr _r ?? throw "null pointer dereference")._maxOpsPerInstruction : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _r ?? throw "null pointer dereference")._state.opIndex = (_opIndex % (@:checkr _r ?? throw "null pointer dereference")._maxOpsPerInstruction : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _step( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader>, _entry:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_lineentry.LineEntry>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader> = _r;
        var _length_3658770:stdgo._internal.debug.dwarf.Dwarf_offset.Offset = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
        var _lineDelta_3658607:stdgo.GoInt = (0 : stdgo.GoInt);
        var _adjustedOpcode_3658521:stdgo.GoInt = (0 : stdgo.GoInt);
        var _opcode_3658407:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3660633:stdgo.GoInt = (0 : stdgo.GoInt);
        var _done_3659308:Bool = false;
        var _err_3659314:stdgo.Error = (null : stdgo.Error);
        var _opcode_3658827:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _startOff_3658803:stdgo._internal.debug.dwarf.Dwarf_offset.Offset = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _opcode_3658407 = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint8() : stdgo.GoInt);
                    if ((_opcode_3658407 >= (@:checkr _r ?? throw "null pointer dereference")._opcodeBase : Bool)) {
                        _gotoNext = 3658464i32;
                    } else {
                        _gotoNext = 3658705i32;
                    };
                } else if (__value__ == (3658464i32)) {
                    _adjustedOpcode_3658521 = (_opcode_3658407 - (@:checkr _r ?? throw "null pointer dereference")._opcodeBase : stdgo.GoInt);
                    @:check2r _r._advancePC((_adjustedOpcode_3658521 / (@:checkr _r ?? throw "null pointer dereference")._lineRange : stdgo.GoInt));
                    _lineDelta_3658607 = ((@:checkr _r ?? throw "null pointer dereference")._lineBase + (_adjustedOpcode_3658521 % (@:checkr _r ?? throw "null pointer dereference")._lineRange : stdgo.GoInt) : stdgo.GoInt);
                    (@:checkr _r ?? throw "null pointer dereference")._state.line = ((@:checkr _r ?? throw "null pointer dereference")._state.line + (_lineDelta_3658607) : stdgo.GoInt);
                    _gotoNext = 3660714i32;
                } else if (__value__ == (3658705i32)) {
                    _gotoNext = 3658705i32;
                    {
                        final __value__ = _opcode_3658407;
                        if (__value__ == ((0 : stdgo.GoInt))) {
                            _gotoNext = 3658722i32;
                        } else if (__value__ == ((1 : stdgo.GoInt))) {
                            _gotoNext = 3659781i32;
                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                            _gotoNext = 3659809i32;
                        } else if (__value__ == ((3 : stdgo.GoInt))) {
                            _gotoNext = 3659863i32;
                        } else if (__value__ == ((4 : stdgo.GoInt))) {
                            _gotoNext = 3659921i32;
                        } else if (__value__ == ((5 : stdgo.GoInt))) {
                            _gotoNext = 3659991i32;
                        } else if (__value__ == ((6 : stdgo.GoInt))) {
                            _gotoNext = 3660049i32;
                        } else if (__value__ == ((7 : stdgo.GoInt))) {
                            _gotoNext = 3660106i32;
                        } else if (__value__ == ((8 : stdgo.GoInt))) {
                            _gotoNext = 3660159i32;
                        } else if (__value__ == ((9 : stdgo.GoInt))) {
                            _gotoNext = 3660231i32;
                        } else if (__value__ == ((10 : stdgo.GoInt))) {
                            _gotoNext = 3660346i32;
                        } else if (__value__ == ((11 : stdgo.GoInt))) {
                            _gotoNext = 3660401i32;
                        } else if (__value__ == ((12 : stdgo.GoInt))) {
                            _gotoNext = 3660460i32;
                        } else {
                            _gotoNext = 3660512i32;
                        };
                    };
                } else if (__value__ == (3658722i32)) {
                    _length_3658770 = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
                    _startOff_3658803 = (@:checkr _r ?? throw "null pointer dereference")._buf._off;
                    _opcode_3658827 = @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint8();
                    _gotoNext = 3658854i32;
                } else if (__value__ == (3658854i32)) {
                    {
                        final __value__ = _opcode_3658827;
                        if (__value__ == ((1 : stdgo.GoUInt8))) {
                            _gotoNext = 3658872i32;
                        } else if (__value__ == ((2 : stdgo.GoUInt8))) {
                            _gotoNext = 3658964i32;
                        } else if (__value__ == ((3 : stdgo.GoUInt8))) {
                            _gotoNext = 3659282i32;
                        } else if (__value__ == ((4 : stdgo.GoUInt8))) {
                            _gotoNext = 3659541i32;
                        } else {
                            _gotoNext = 3659642i32;
                        };
                    };
                } else if (__value__ == (3658872i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.endSequence = true;
                    {
                        var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._state?.__copy__();
                        var x = (_entry : stdgo._internal.debug.dwarf.Dwarf_lineentry.LineEntry);
                        x.address = __tmp__?.address;
                        x.opIndex = __tmp__?.opIndex;
                        x.file = __tmp__?.file;
                        x.line = __tmp__?.line;
                        x.column = __tmp__?.column;
                        x.isStmt = __tmp__?.isStmt;
                        x.basicBlock = __tmp__?.basicBlock;
                        x.prologueEnd = __tmp__?.prologueEnd;
                        x.epilogueBegin = __tmp__?.epilogueBegin;
                        x.iSA = __tmp__?.iSA;
                        x.discriminator = __tmp__?.discriminator;
                        x.endSequence = __tmp__?.endSequence;
                    };
                    @:check2r _r._resetState();
                    _gotoNext = 3659642i32;
                } else if (__value__ == (3658964i32)) {
                    _gotoNext = 3658987i32;
                } else if (__value__ == (3658987i32)) {
                    {
                        final __value__ = (@:checkr _r ?? throw "null pointer dereference")._addrsize;
                        if (__value__ == ((1 : stdgo.GoInt))) {
                            _gotoNext = 3659010i32;
                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                            _gotoNext = 3659065i32;
                        } else if (__value__ == ((4 : stdgo.GoInt))) {
                            _gotoNext = 3659121i32;
                        } else if (__value__ == ((8 : stdgo.GoInt))) {
                            _gotoNext = 3659177i32;
                        } else {
                            _gotoNext = 3659225i32;
                        };
                    };
                } else if (__value__ == (3659010i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.address = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint8() : stdgo.GoUInt64);
                    _gotoNext = 3659642i32;
                } else if (__value__ == (3659065i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.address = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint16() : stdgo.GoUInt64);
                    _gotoNext = 3659642i32;
                } else if (__value__ == (3659121i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.address = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint32() : stdgo.GoUInt64);
                    _gotoNext = 3659642i32;
                } else if (__value__ == (3659177i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.address = @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint64();
                    _gotoNext = 3659642i32;
                } else if (__value__ == (3659225i32)) {
                    @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._error(("unknown address size" : stdgo.GoString));
                    _gotoNext = 3659642i32;
                } else if (__value__ == (3659282i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _r._readFileEntry();
                            _done_3659308 = @:tmpset0 __tmp__._0;
                            _err_3659314 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3659314 != null) {
                            _gotoNext = 3659351i32;
                        } else if (_done_3659308) {
                            _gotoNext = 3659408i32;
                        } else {
                            _gotoNext = 3659523i32;
                        };
                    };
                } else if (__value__ == (3659351i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._buf._err = _err_3659314;
                    return false;
                    _gotoNext = 3659523i32;
                } else if (__value__ == (3659408i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._buf._err = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(("line" : stdgo.GoString), _startOff_3658803, ("malformed DW_LNE_define_file operation" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
                    return false;
                    _gotoNext = 3659523i32;
                } else if (__value__ == (3659523i32)) {
                    @:check2r _r._updateFile();
                    _gotoNext = 3659642i32;
                } else if (__value__ == (3659541i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.discriminator = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo.GoInt);
                    _gotoNext = 3659642i32;
                } else if (__value__ == (3659642i32)) {
                    @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._skip((((_startOff_3658803 + _length_3658770 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) - (@:checkr _r ?? throw "null pointer dereference")._buf._off : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) : stdgo.GoInt));
                    if (_opcode_3658827 == ((1 : stdgo.GoUInt8))) {
                        _gotoNext = 3659720i32;
                    } else {
                        _gotoNext = 3660700i32;
                    };
                } else if (__value__ == (3659720i32)) {
                    return true;
                    _gotoNext = 3660700i32;
                } else if (__value__ == (3659781i32)) {
                    _gotoNext = 3660714i32;
                } else if (__value__ == (3659809i32)) {
                    @:check2r _r._advancePC((@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo.GoInt));
                    _gotoNext = 3660700i32;
                } else if (__value__ == (3659863i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.line = ((@:checkr _r ?? throw "null pointer dereference")._state.line + ((@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._int() : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 3660700i32;
                } else if (__value__ == (3659921i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._fileIndex = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo.GoInt);
                    @:check2r _r._updateFile();
                    _gotoNext = 3660700i32;
                } else if (__value__ == (3659991i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.column = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo.GoInt);
                    _gotoNext = 3660700i32;
                } else if (__value__ == (3660049i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.isStmt = !(@:checkr _r ?? throw "null pointer dereference")._state.isStmt;
                    _gotoNext = 3660700i32;
                } else if (__value__ == (3660106i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.basicBlock = true;
                    _gotoNext = 3660700i32;
                } else if (__value__ == (3660159i32)) {
                    @:check2r _r._advancePC(((((255 : stdgo.GoInt) - (@:checkr _r ?? throw "null pointer dereference")._opcodeBase : stdgo.GoInt)) / (@:checkr _r ?? throw "null pointer dereference")._lineRange : stdgo.GoInt));
                    _gotoNext = 3660700i32;
                } else if (__value__ == (3660231i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.address = ((@:checkr _r ?? throw "null pointer dereference")._state.address + ((@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint16() : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _gotoNext = 3660700i32;
                } else if (__value__ == (3660346i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.prologueEnd = true;
                    _gotoNext = 3660700i32;
                } else if (__value__ == (3660401i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.epilogueBegin = true;
                    _gotoNext = 3660700i32;
                } else if (__value__ == (3660460i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.iSA = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo.GoInt);
                    _gotoNext = 3660700i32;
                } else if (__value__ == (3660512i32)) {
                    _i_3660633 = (0 : stdgo.GoInt);
                    _gotoNext = 3660629i32;
                } else if (__value__ == (3660629i32)) {
                    if ((_i_3660633 < (@:checkr _r ?? throw "null pointer dereference")._opcodeLengths[(_opcode_3658407 : stdgo.GoInt)] : Bool)) {
                        _gotoNext = 3660674i32;
                    } else {
                        _gotoNext = 3660700i32;
                    };
                } else if (__value__ == (3660674i32)) {
                    @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint();
                    _i_3660633++;
                    _gotoNext = 3660629i32;
                } else if (__value__ == (3660700i32)) {
                    return false;
                    _gotoNext = 3660714i32;
                } else if (__value__ == (3660714i32)) {
                    {
                        var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._state?.__copy__();
                        var x = (_entry : stdgo._internal.debug.dwarf.Dwarf_lineentry.LineEntry);
                        x.address = __tmp__?.address;
                        x.opIndex = __tmp__?.opIndex;
                        x.file = __tmp__?.file;
                        x.line = __tmp__?.line;
                        x.column = __tmp__?.column;
                        x.isStmt = __tmp__?.isStmt;
                        x.basicBlock = __tmp__?.basicBlock;
                        x.prologueEnd = __tmp__?.prologueEnd;
                        x.epilogueBegin = __tmp__?.epilogueBegin;
                        x.iSA = __tmp__?.iSA;
                        x.discriminator = __tmp__?.discriminator;
                        x.endSequence = __tmp__?.endSequence;
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
    static public function next( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader>, _entry:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_lineentry.LineEntry>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference")._buf._err != null) {
            return (@:checkr _r ?? throw "null pointer dereference")._buf._err;
        };
        while (true) {
            if (((@:checkr _r ?? throw "null pointer dereference")._buf._data.length) == ((0 : stdgo.GoInt))) {
                return stdgo._internal.io.Io_eof.eOF;
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
    static public function _updateFile( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader> = _r;
        if (((@:checkr _r ?? throw "null pointer dereference")._fileIndex < ((@:checkr _r ?? throw "null pointer dereference")._fileEntries.length) : Bool)) {
            (@:checkr _r ?? throw "null pointer dereference")._state.file = (@:checkr _r ?? throw "null pointer dereference")._fileEntries[((@:checkr _r ?? throw "null pointer dereference")._fileIndex : stdgo.GoInt)];
        } else {
            (@:checkr _r ?? throw "null pointer dereference")._state.file = null;
        };
    }
    @:keep
    @:tdfield
    static public function _readFileEntry( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader> = _r;
        var _name = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._string()?.__copy__() : stdgo.GoString);
        if ((@:checkr _r ?? throw "null pointer dereference")._buf._err != null) {
            return { _0 : false, _1 : (@:checkr _r ?? throw "null pointer dereference")._buf._err };
        };
        if ((_name.length) == ((0 : stdgo.GoInt))) {
            return { _0 : true, _1 : (null : stdgo.Error) };
        };
        var _off = ((@:checkr _r ?? throw "null pointer dereference")._buf._off : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
        var _dirIndex = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo.GoInt);
        if (!stdgo._internal.debug.dwarf.Dwarf__pathisabs._pathIsAbs(_name?.__copy__())) {
            if ((_dirIndex >= ((@:checkr _r ?? throw "null pointer dereference")._directories.length) : Bool)) {
                return { _0 : false, _1 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(("line" : stdgo.GoString), _off, ("directory index too large" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError)) };
            };
            _name = stdgo._internal.debug.dwarf.Dwarf__pathjoin._pathJoin((@:checkr _r ?? throw "null pointer dereference")._directories[(_dirIndex : stdgo.GoInt)]?.__copy__(), _name?.__copy__())?.__copy__();
        };
        var _mtime = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo.GoUInt64);
        var _length = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo.GoInt);
        if ((((@:checkr _r ?? throw "null pointer dereference")._fileEntries.length) < (@:checkr _r ?? throw "null pointer dereference")._fileEntries.capacity : Bool)) {
            var _fe = ((@:checkr _r ?? throw "null pointer dereference")._fileEntries.__slice__(0, (((@:checkr _r ?? throw "null pointer dereference")._fileEntries.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile>>);
            if ((_fe[((_fe.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != null && ((_fe[((_fe.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : Dynamic).__nil__ == null || !(_fe[((_fe.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : Dynamic).__nil__))) {
                (@:checkr _r ?? throw "null pointer dereference")._fileEntries = _fe;
                return { _0 : false, _1 : (null : stdgo.Error) };
            };
        };
        (@:checkr _r ?? throw "null pointer dereference")._fileEntries = ((@:checkr _r ?? throw "null pointer dereference")._fileEntries.__append__((stdgo.Go.setRef((new stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile(_name?.__copy__(), _mtime, _length) : stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile>)));
        return { _0 : false, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _readLNCT( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader>, _s:stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_lnctform.T_lnctForm>, _dwarf64:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.GoUInt64; var _2 : stdgo.GoUInt64; var _3 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader> = _r;
        var _path = ("" : stdgo.GoString), _mtime = (0 : stdgo.GoUInt64), _size = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _dir:stdgo.GoString = ("" : stdgo.GoString);
        for (__3 => _lf in _s) {
            var _str:stdgo.GoString = ("" : stdgo.GoString);
            var _val:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            {
                final __value__ = _lf._form;
                if (__value__ == ((8u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    _str = @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._string()?.__copy__();
                } else if (__value__ == ((14u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((31u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    var _off:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                    if (_dwarf64) {
                        _off = @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint64();
                    } else {
                        _off = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint32() : stdgo.GoUInt64);
                    };
                    if (((_off : stdgo.GoInt) : stdgo.GoUInt64) != (_off)) {
                        return {
                            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoUInt64; var _2 : stdgo.GoUInt64; var _3 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (0i64 : stdgo.GoUInt64), _2 : (0i64 : stdgo.GoUInt64), _3 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(("line" : stdgo.GoString), (@:checkr _r ?? throw "null pointer dereference")._buf._off, ("strp/line_strp offset out of range" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError)) };
                            _path = __tmp__._0;
                            _mtime = __tmp__._1;
                            _size = __tmp__._2;
                            _err = __tmp__._3;
                            __tmp__;
                        };
                    };
                    var _b1:stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf = ({} : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
                    if (_lf._form == ((14u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                        _b1 = stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf((@:checkr _r ?? throw "null pointer dereference")._buf._dwarf, (@:checkr _r ?? throw "null pointer dereference")._buf._format, ("str" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), (@:checkr _r ?? throw "null pointer dereference")._str)?.__copy__();
                    } else {
                        _b1 = stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf((@:checkr _r ?? throw "null pointer dereference")._buf._dwarf, (@:checkr _r ?? throw "null pointer dereference")._buf._format, ("line_str" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), (@:checkr _r ?? throw "null pointer dereference")._lineStr)?.__copy__();
                    };
                    @:check2 _b1._skip((_off : stdgo.GoInt));
                    _str = @:check2 _b1._string()?.__copy__();
                    if (_b1._err != null) {
                        return {
                            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoUInt64; var _2 : stdgo.GoUInt64; var _3 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (0i64 : stdgo.GoUInt64), _2 : (0i64 : stdgo.GoUInt64), _3 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(("line" : stdgo.GoString), (@:checkr _r ?? throw "null pointer dereference")._buf._off, _b1._err.error()?.__copy__()) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError)) };
                            _path = __tmp__._0;
                            _mtime = __tmp__._1;
                            _size = __tmp__._2;
                            _err = __tmp__._3;
                            __tmp__;
                        };
                    };
                } else if (__value__ == ((29u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    if (_dwarf64) {
                        @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint64();
                    } else {
                        @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint32();
                    };
                } else if (__value__ == ((26u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint();
                } else if (__value__ == ((37u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint8();
                } else if (__value__ == ((38u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint16();
                } else if (__value__ == ((39u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint24();
                } else if (__value__ == ((40u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint32();
                } else if (__value__ == ((11u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    _val = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint8() : stdgo.GoUInt64);
                } else if (__value__ == ((5u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    _val = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint16() : stdgo.GoUInt64);
                } else if (__value__ == ((6u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    _val = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint32() : stdgo.GoUInt64);
                } else if (__value__ == ((7u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    _val = @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint64();
                } else if (__value__ == ((30u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._bytes((16 : stdgo.GoInt));
                } else if (__value__ == ((9u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    @:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._bytes((@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo.GoInt));
                } else if (__value__ == ((15u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
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
                            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoUInt64; var _2 : stdgo.GoUInt64; var _3 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (0i64 : stdgo.GoUInt64), _2 : (0i64 : stdgo.GoUInt64), _3 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(("line" : stdgo.GoString), (@:checkr _r ?? throw "null pointer dereference")._buf._off, ("directory index out of range" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError)) };
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
        if (((_dir != (stdgo.Go.str() : stdgo.GoString)) && (_path != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            _path = stdgo._internal.debug.dwarf.Dwarf__pathjoin._pathJoin(_dir?.__copy__(), _path?.__copy__())?.__copy__();
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
    static public function _readLNCTFormat( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader>):stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_lnctform.T_lnctForm> {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader> = _r;
        var _c = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint8() : stdgo.GoUInt8);
        var _ret = (new stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_lnctform.T_lnctForm>((_c : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_c : stdgo.GoInt).toBasic() > 0 ? (_c : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.dwarf.Dwarf_t_lnctform.T_lnctForm)]) : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_lnctform.T_lnctForm>);
        for (_i => _ in _ret) {
            _ret[(_i : stdgo.GoInt)]._lnct = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo.GoInt);
            _ret[(_i : stdgo.GoInt)]._form = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format);
        };
        return _ret;
    }
    @:keep
    @:tdfield
    static public function _readHeader( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader>, _compDir:stdgo.GoString):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader> = _r;
        var _buf = (stdgo.Go.setRef((@:checkr _r ?? throw "null pointer dereference")._buf) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>);
        var _hdrOffset = ((@:checkr _buf ?? throw "null pointer dereference")._off : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
        var __tmp__ = @:check2r _buf._unitLength(), _unitLength:stdgo._internal.debug.dwarf.Dwarf_offset.Offset = __tmp__._0, _dwarf64:Bool = __tmp__._1;
        (@:checkr _r ?? throw "null pointer dereference")._endOffset = ((@:checkr _buf ?? throw "null pointer dereference")._off + _unitLength : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
        if (((@:checkr _r ?? throw "null pointer dereference")._endOffset > ((@:checkr _buf ?? throw "null pointer dereference")._off + ((@:checkr _buf ?? throw "null pointer dereference")._data.length : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) : Bool)) {
            return stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(("line" : stdgo.GoString), _hdrOffset, stdgo._internal.fmt.Fmt_sprintf.sprintf(("line table end %d exceeds section size %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._endOffset), stdgo.Go.toInterface(((@:checkr _buf ?? throw "null pointer dereference")._off + ((@:checkr _buf ?? throw "null pointer dereference")._data.length : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset)))?.__copy__()) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
        };
        (@:checkr _r ?? throw "null pointer dereference")._version = @:check2r _buf._uint16();
        if ((((@:checkr _buf ?? throw "null pointer dereference")._err == null) && ((((@:checkr _r ?? throw "null pointer dereference")._version < (2 : stdgo.GoUInt16) : Bool) || ((@:checkr _r ?? throw "null pointer dereference")._version > (5 : stdgo.GoUInt16) : Bool) : Bool)) : Bool)) {
            return stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(("line" : stdgo.GoString), _hdrOffset, stdgo._internal.fmt.Fmt_sprintf.sprintf(("unknown line table version %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._version))?.__copy__()) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
        };
        if (((@:checkr _r ?? throw "null pointer dereference")._version >= (5 : stdgo.GoUInt16) : Bool)) {
            (@:checkr _r ?? throw "null pointer dereference")._addrsize = (@:check2r _buf._uint8() : stdgo.GoInt);
            (@:checkr _r ?? throw "null pointer dereference")._segmentSelectorSize = (@:check2r _buf._uint8() : stdgo.GoInt);
        } else {
            (@:checkr _r ?? throw "null pointer dereference")._addrsize = (@:checkr _buf ?? throw "null pointer dereference")._format._addrsize();
            (@:checkr _r ?? throw "null pointer dereference")._segmentSelectorSize = (0 : stdgo.GoInt);
        };
        var _headerLength:stdgo._internal.debug.dwarf.Dwarf_offset.Offset = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
        if (_dwarf64) {
            _headerLength = (@:check2r _buf._uint64() : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
        } else {
            _headerLength = (@:check2r _buf._uint32() : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
        };
        var _programOffset = ((@:checkr _buf ?? throw "null pointer dereference")._off + _headerLength : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
        if ((_programOffset > (@:checkr _r ?? throw "null pointer dereference")._endOffset : Bool)) {
            return stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(("line" : stdgo.GoString), _hdrOffset, stdgo._internal.fmt.Fmt_sprintf.sprintf(("malformed line table: program offset %d exceeds end offset %d" : stdgo.GoString), stdgo.Go.toInterface(_programOffset), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._endOffset))?.__copy__()) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
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
            return stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(("line" : stdgo.GoString), _hdrOffset, ("invalid maximum operations per instruction: 0" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
        };
        if ((@:checkr _r ?? throw "null pointer dereference")._lineRange == ((0 : stdgo.GoInt))) {
            return stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(("line" : stdgo.GoString), _hdrOffset, ("invalid line range: 0" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
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
                var __tmp__ = (stdgo._internal.debug.dwarf.Dwarf__knownopcodelengths._knownOpcodeLengths != null && stdgo._internal.debug.dwarf.Dwarf__knownopcodelengths._knownOpcodeLengths.exists(_i) ? { _0 : stdgo._internal.debug.dwarf.Dwarf__knownopcodelengths._knownOpcodeLengths[_i], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _known:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                if ((_ok && (_known != _length) : Bool)) {
                    return stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(("line" : stdgo.GoString), _hdrOffset, stdgo._internal.fmt.Fmt_sprintf.sprintf(("opcode %d expected to have length %d, but has length %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_known), stdgo.Go.toInterface(_length))?.__copy__()) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
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
                if (!stdgo._internal.debug.dwarf.Dwarf__pathisabs._pathIsAbs(_directory?.__copy__())) {
                    _directory = stdgo._internal.debug.dwarf.Dwarf__pathjoin._pathJoin(_compDir?.__copy__(), _directory?.__copy__())?.__copy__();
                };
                (@:checkr _r ?? throw "null pointer dereference")._directories = ((@:checkr _r ?? throw "null pointer dereference")._directories.__append__(_directory?.__copy__()));
            };
            (@:checkr _r ?? throw "null pointer dereference")._fileEntries = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile>>((1 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile>>);
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
            (@:checkr _r ?? throw "null pointer dereference")._fileEntries = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile>>((_c : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile>>);
            for (_i => _ in (@:checkr _r ?? throw "null pointer dereference")._fileEntries) {
                var __tmp__ = @:check2r _r._readLNCT(_fileFormat, _dwarf64), _name:stdgo.GoString = __tmp__._0, _mtime:stdgo.GoUInt64 = __tmp__._1, _size:stdgo.GoUInt64 = __tmp__._2, _err:stdgo.Error = __tmp__._3;
                if (_err != null) {
                    return _err;
                };
                (@:checkr _r ?? throw "null pointer dereference")._fileEntries[(_i : stdgo.GoInt)] = (stdgo.Go.setRef((new stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile(_name?.__copy__(), _mtime, (_size : stdgo.GoInt)) : stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile>);
            };
        };
        (@:checkr _r ?? throw "null pointer dereference")._initialFileEntries = ((@:checkr _r ?? throw "null pointer dereference")._fileEntries.length);
        return (@:checkr _buf ?? throw "null pointer dereference")._err;
    }
}
