package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.LineReader_asInterface) class LineReader_static_extension {
    @:keep
    @:tdfield
    static public function seekPC( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader>, _pc:stdgo.GoUInt64, _entry:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_lineentry.LineEntry>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L745"
        {
            var _err = (_r.next(_entry) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L746"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L748"
        if (((@:checkr _entry ?? throw "null pointer dereference").address > _pc : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L750"
            _r.reset();
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L751"
            {
                var _err = (_r.next(_entry) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L752"
                    return _err;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L754"
            if (((@:checkr _entry ?? throw "null pointer dereference").address > _pc : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L756"
                _r.reset();
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L757"
                return stdgo._internal.debug.dwarf.Dwarf_errunknownpc.errUnknownPC;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L762"
        while (true) {
            var _next:stdgo._internal.debug.dwarf.Dwarf_lineentry.LineEntry = ({} : stdgo._internal.debug.dwarf.Dwarf_lineentry.LineEntry);
            var _pos = (_r.tell()?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_linereaderpos.LineReaderPos);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L765"
            {
                var _err = (_r.next((stdgo.Go.setRef(_next) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_lineentry.LineEntry>)) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L766"
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L767"
                        return stdgo._internal.debug.dwarf.Dwarf_errunknownpc.errUnknownPC;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L769"
                    return _err;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L771"
            if ((_next.address > _pc : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L772"
                if ((@:checkr _entry ?? throw "null pointer dereference").endSequence) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L774"
                    return stdgo._internal.debug.dwarf.Dwarf_errunknownpc.errUnknownPC;
                };
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L778"
                _r.seek(_pos?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L779"
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
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L725"
        return (@:checkr _r ?? throw "null pointer dereference")._fileEntries;
    }
    @:keep
    @:tdfield
    static public function _resetState( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._state = ({ address : (0i64 : stdgo.GoUInt64), opIndex : (0 : stdgo.GoInt), file : null, line : (1 : stdgo.GoInt), column : (0 : stdgo.GoInt), isStmt : (@:checkr _r ?? throw "null pointer dereference")._defaultIsStmt, basicBlock : false, prologueEnd : false, epilogueBegin : false, iSA : (0 : stdgo.GoInt), discriminator : (0 : stdgo.GoInt) } : stdgo._internal.debug.dwarf.Dwarf_lineentry.LineEntry);
        (@:checkr _r ?? throw "null pointer dereference")._fileIndex = (1 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L709"
        _r._updateFile();
    }
    @:keep
    @:tdfield
    static public function reset( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._buf._off = (@:checkr _r ?? throw "null pointer dereference")._programOffset;
        (@:checkr _r ?? throw "null pointer dereference")._buf._data = ((@:checkr _r ?? throw "null pointer dereference")._section.__slice__((@:checkr _r ?? throw "null pointer dereference")._buf._off, (@:checkr _r ?? throw "null pointer dereference")._endOffset) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _r ?? throw "null pointer dereference")._fileEntries = ((@:checkr _r ?? throw "null pointer dereference")._fileEntries.__slice__(0, (@:checkr _r ?? throw "null pointer dereference")._initialFileEntries) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile>>);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L688"
        _r._resetState();
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
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L662"
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
        var _err_7:stdgo.Error = (null : stdgo.Error);
        var _done_6:Bool = false;
        var _lineDelta_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _length_3:stdgo._internal.debug.dwarf.Dwarf_offset.Offset = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
        var _adjustedOpcode_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _opcode_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _opcode_5:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _startOff_4:stdgo._internal.debug.dwarf.Dwarf_offset.Offset = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _opcode_0 = ((@:checkr _r ?? throw "null pointer dereference")._buf._uint8() : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L526"
                    if ((_opcode_0 >= (@:checkr _r ?? throw "null pointer dereference")._opcodeBase : Bool)) {
                        _gotoNext = 3680381i64;
                    } else {
                        _gotoNext = 3680622i64;
                    };
                } else if (__value__ == (3680381i64)) {
                    _adjustedOpcode_1 = (_opcode_0 - (@:checkr _r ?? throw "null pointer dereference")._opcodeBase : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L529"
                    _r._advancePC((_adjustedOpcode_1 / (@:checkr _r ?? throw "null pointer dereference")._lineRange : stdgo.GoInt));
                    _lineDelta_2 = ((@:checkr _r ?? throw "null pointer dereference")._lineBase + (_adjustedOpcode_1 % (@:checkr _r ?? throw "null pointer dereference")._lineRange : stdgo.GoInt) : stdgo.GoInt);
                    (@:checkr _r ?? throw "null pointer dereference")._state.line = ((@:checkr _r ?? throw "null pointer dereference")._state.line + (_lineDelta_2) : stdgo.GoInt);
                    _gotoNext = 3682631i64;
                } else if (__value__ == (3680622i64)) {
                    _gotoNext = 3680622i64;
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L535"
                    {
                        final __value__ = _opcode_0;
                        if (__value__ == ((0 : stdgo.GoInt))) {
                            _gotoNext = 3680639i64;
                        } else if (__value__ == ((1 : stdgo.GoInt))) {
                            _gotoNext = 3681698i64;
                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                            _gotoNext = 3681726i64;
                        } else if (__value__ == ((3 : stdgo.GoInt))) {
                            _gotoNext = 3681780i64;
                        } else if (__value__ == ((4 : stdgo.GoInt))) {
                            _gotoNext = 3681838i64;
                        } else if (__value__ == ((5 : stdgo.GoInt))) {
                            _gotoNext = 3681908i64;
                        } else if (__value__ == ((6 : stdgo.GoInt))) {
                            _gotoNext = 3681966i64;
                        } else if (__value__ == ((7 : stdgo.GoInt))) {
                            _gotoNext = 3682023i64;
                        } else if (__value__ == ((8 : stdgo.GoInt))) {
                            _gotoNext = 3682076i64;
                        } else if (__value__ == ((9 : stdgo.GoInt))) {
                            _gotoNext = 3682148i64;
                        } else if (__value__ == ((10 : stdgo.GoInt))) {
                            _gotoNext = 3682263i64;
                        } else if (__value__ == ((11 : stdgo.GoInt))) {
                            _gotoNext = 3682318i64;
                        } else if (__value__ == ((12 : stdgo.GoInt))) {
                            _gotoNext = 3682377i64;
                        } else {
                            _gotoNext = 3682429i64;
                        };
                    };
                } else if (__value__ == (3680639i64)) {
                    _length_3 = ((@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
                    _startOff_4 = (@:checkr _r ?? throw "null pointer dereference")._buf._off;
                    _opcode_5 = (@:checkr _r ?? throw "null pointer dereference")._buf._uint8();
                    _gotoNext = 3680771i64;
                } else if (__value__ == (3680771i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L542"
                    {
                        final __value__ = _opcode_5;
                        if (__value__ == ((1 : stdgo.GoUInt8))) {
                            _gotoNext = 3680789i64;
                        } else if (__value__ == ((2 : stdgo.GoUInt8))) {
                            _gotoNext = 3680881i64;
                        } else if (__value__ == ((3 : stdgo.GoUInt8))) {
                            _gotoNext = 3681199i64;
                        } else if (__value__ == ((4 : stdgo.GoUInt8))) {
                            _gotoNext = 3681458i64;
                        } else {
                            _gotoNext = 3681559i64;
                        };
                    };
                } else if (__value__ == (3680789i64)) {
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
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L546"
                    _r._resetState();
                    _gotoNext = 3681559i64;
                } else if (__value__ == (3680881i64)) {
                    _gotoNext = 3680904i64;
                } else if (__value__ == (3680904i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L549"
                    {
                        final __value__ = (@:checkr _r ?? throw "null pointer dereference")._addrsize;
                        if (__value__ == ((1 : stdgo.GoInt))) {
                            _gotoNext = 3680927i64;
                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                            _gotoNext = 3680982i64;
                        } else if (__value__ == ((4 : stdgo.GoInt))) {
                            _gotoNext = 3681038i64;
                        } else if (__value__ == ((8 : stdgo.GoInt))) {
                            _gotoNext = 3681094i64;
                        } else {
                            _gotoNext = 3681142i64;
                        };
                    };
                } else if (__value__ == (3680927i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.address = ((@:checkr _r ?? throw "null pointer dereference")._buf._uint8() : stdgo.GoUInt64);
                    _gotoNext = 3681559i64;
                } else if (__value__ == (3680982i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.address = ((@:checkr _r ?? throw "null pointer dereference")._buf._uint16() : stdgo.GoUInt64);
                    _gotoNext = 3681559i64;
                } else if (__value__ == (3681038i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.address = ((@:checkr _r ?? throw "null pointer dereference")._buf._uint32() : stdgo.GoUInt64);
                    _gotoNext = 3681559i64;
                } else if (__value__ == (3681094i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.address = (@:checkr _r ?? throw "null pointer dereference")._buf._uint64();
                    _gotoNext = 3681559i64;
                } else if (__value__ == (3681142i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L559"
                    (@:checkr _r ?? throw "null pointer dereference")._buf._error(("unknown address size" : stdgo.GoString));
                    _gotoNext = 3681559i64;
                } else if (__value__ == (3681199i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L563"
                    {
                        {
                            var __tmp__ = _r._readFileEntry();
                            _done_6 = @:tmpset0 __tmp__._0;
                            _err_7 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_7 != null) {
                            _gotoNext = 3681268i64;
                        } else if (_done_6) {
                            _gotoNext = 3681325i64;
                        } else {
                            _gotoNext = 3681440i64;
                        };
                    };
                } else if (__value__ == (3681268i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._buf._err = _err_7;
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L565"
                    return false;
                    _gotoNext = 3681440i64;
                } else if (__value__ == (3681325i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._buf._err = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(("line" : stdgo.GoString), _startOff_4, ("malformed DW_LNE_define_file operation" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L568"
                    return false;
                    _gotoNext = 3681440i64;
                } else if (__value__ == (3681440i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L570"
                    _r._updateFile();
                    _gotoNext = 3681559i64;
                } else if (__value__ == (3681458i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.discriminator = ((@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo.GoInt);
                    _gotoNext = 3681559i64;
                } else if (__value__ == (3681559i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L577"
                    (@:checkr _r ?? throw "null pointer dereference")._buf._skip((((_startOff_4 + _length_3 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) - (@:checkr _r ?? throw "null pointer dereference")._buf._off : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) : stdgo.GoInt));
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L579"
                    if (_opcode_5 == ((1 : stdgo.GoUInt8))) {
                        _gotoNext = 3681637i64;
                    } else {
                        _gotoNext = 3682617i64;
                    };
                } else if (__value__ == (3681637i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L580"
                    return true;
                    _gotoNext = 3682617i64;
                } else if (__value__ == (3681698i64)) {
                    _gotoNext = 3682631i64;
                } else if (__value__ == (3681726i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L588"
                    _r._advancePC(((@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo.GoInt));
                    _gotoNext = 3682617i64;
                } else if (__value__ == (3681780i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.line = ((@:checkr _r ?? throw "null pointer dereference")._state.line + (((@:checkr _r ?? throw "null pointer dereference")._buf._int() : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 3682617i64;
                } else if (__value__ == (3681838i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._fileIndex = ((@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L595"
                    _r._updateFile();
                    _gotoNext = 3682617i64;
                } else if (__value__ == (3681908i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.column = ((@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo.GoInt);
                    _gotoNext = 3682617i64;
                } else if (__value__ == (3681966i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.isStmt = !(@:checkr _r ?? throw "null pointer dereference")._state.isStmt;
                    _gotoNext = 3682617i64;
                } else if (__value__ == (3682023i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.basicBlock = true;
                    _gotoNext = 3682617i64;
                } else if (__value__ == (3682076i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L607"
                    _r._advancePC(((((255 : stdgo.GoInt) - (@:checkr _r ?? throw "null pointer dereference")._opcodeBase : stdgo.GoInt)) / (@:checkr _r ?? throw "null pointer dereference")._lineRange : stdgo.GoInt));
                    _gotoNext = 3682617i64;
                } else if (__value__ == (3682148i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.address = ((@:checkr _r ?? throw "null pointer dereference")._state.address + (((@:checkr _r ?? throw "null pointer dereference")._buf._uint16() : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _gotoNext = 3682617i64;
                } else if (__value__ == (3682263i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.prologueEnd = true;
                    _gotoNext = 3682617i64;
                } else if (__value__ == (3682318i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.epilogueBegin = true;
                    _gotoNext = 3682617i64;
                } else if (__value__ == (3682377i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._state.iSA = ((@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo.GoInt);
                    _gotoNext = 3682617i64;
                } else if (__value__ == (3682429i64)) {
                    _i_8 = (0 : stdgo.GoInt);
                    _gotoNext = 3682546i64;
                } else if (__value__ == (3682546i64)) {
                    //"file://#L0"
                    if ((_i_8 < (@:checkr _r ?? throw "null pointer dereference")._opcodeLengths[(_opcode_0 : stdgo.GoInt)] : Bool)) {
                        _gotoNext = 3682591i64;
                    } else {
                        _gotoNext = 3682617i64;
                    };
                } else if (__value__ == (3682591i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L626"
                    (@:checkr _r ?? throw "null pointer dereference")._buf._uint();
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L625"
                    _i_8++;
                    _gotoNext = 3682546i64;
                } else if (__value__ == (3682617i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L629"
                    return false;
                    _gotoNext = 3682631i64;
                } else if (__value__ == (3682631i64)) {
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
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L637"
                    return true;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function next( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader>, _entry:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_lineentry.LineEntry>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L482"
        if ((@:checkr _r ?? throw "null pointer dereference")._buf._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L483"
            return (@:checkr _r ?? throw "null pointer dereference")._buf._err;
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L488"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L489"
            if (((@:checkr _r ?? throw "null pointer dereference")._buf._data.length) == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L490"
                return stdgo._internal.io.Io_eof.eOF;
            };
            var _emit = (_r._step(_entry) : Bool);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L493"
            if ((@:checkr _r ?? throw "null pointer dereference")._buf._err != null) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L494"
                return (@:checkr _r ?? throw "null pointer dereference")._buf._err;
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L496"
            if (_emit) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L497"
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _updateFile( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L468"
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
        var _name = ((@:checkr _r ?? throw "null pointer dereference")._buf._string()?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L431"
        if ((@:checkr _r ?? throw "null pointer dereference")._buf._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L432"
            return { _0 : false, _1 : (@:checkr _r ?? throw "null pointer dereference")._buf._err };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L434"
        if ((_name.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L435"
            return { _0 : true, _1 : (null : stdgo.Error) };
        };
        var _off = ((@:checkr _r ?? throw "null pointer dereference")._buf._off : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
        var _dirIndex = ((@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L439"
        if (!stdgo._internal.debug.dwarf.Dwarf__pathisabs._pathIsAbs(_name?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L440"
            if ((_dirIndex >= ((@:checkr _r ?? throw "null pointer dereference")._directories.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L441"
                return { _0 : false, _1 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(("line" : stdgo.GoString), _off, ("directory index too large" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError)) };
            };
            _name = stdgo._internal.debug.dwarf.Dwarf__pathjoin._pathJoin((@:checkr _r ?? throw "null pointer dereference")._directories[(_dirIndex : stdgo.GoInt)]?.__copy__(), _name?.__copy__())?.__copy__();
        };
        var _mtime = ((@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo.GoUInt64);
        var _length = ((@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L453"
        if ((((@:checkr _r ?? throw "null pointer dereference")._fileEntries.length) < (@:checkr _r ?? throw "null pointer dereference")._fileEntries.capacity : Bool)) {
            var _fe = ((@:checkr _r ?? throw "null pointer dereference")._fileEntries.__slice__(0, (((@:checkr _r ?? throw "null pointer dereference")._fileEntries.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile>>);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L455"
            if (({
                final value = _fe[((_fe.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                (@:checkr _r ?? throw "null pointer dereference")._fileEntries = _fe;
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L458"
                return { _0 : false, _1 : (null : stdgo.Error) };
            };
        };
        (@:checkr _r ?? throw "null pointer dereference")._fileEntries = ((@:checkr _r ?? throw "null pointer dereference")._fileEntries.__append__((stdgo.Go.setRef((new stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile(_name?.__copy__(), _mtime, _length) : stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile>>);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L462"
        return { _0 : false, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _readLNCT( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader>, _s:stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_lnctform.T_lnctForm>, _dwarf64:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.GoUInt64; var _2 : stdgo.GoUInt64; var _3 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader> = _r;
        var _path = ("" : stdgo.GoString), _mtime = (0 : stdgo.GoUInt64), _size = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _dir:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L341"
        for (__3 => _lf in _s) {
            var _str:stdgo.GoString = ("" : stdgo.GoString);
            var _val:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L344"
            {
                final __value__ = _lf._form;
                if (__value__ == ((8u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    _str = (@:checkr _r ?? throw "null pointer dereference")._buf._string()?.__copy__();
                } else if (__value__ == ((14u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((31u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    var _off:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L349"
                    if (_dwarf64) {
                        _off = (@:checkr _r ?? throw "null pointer dereference")._buf._uint64();
                    } else {
                        _off = ((@:checkr _r ?? throw "null pointer dereference")._buf._uint32() : stdgo.GoUInt64);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L354"
                    if (((_off : stdgo.GoInt) : stdgo.GoUInt64) != (_off)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L355"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoUInt64; var _2 : stdgo.GoUInt64; var _3 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (0i64 : stdgo.GoUInt64), _2 : (0i64 : stdgo.GoUInt64), _3 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(("line" : stdgo.GoString), (@:checkr _r ?? throw "null pointer dereference")._buf._off, ("strp/line_strp offset out of range" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError)) };
                            _path = __tmp__._0;
                            _mtime = __tmp__._1;
                            _size = __tmp__._2;
                            _err = __tmp__._3;
                            __tmp__;
                        };
                    };
                    var _b1:stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf = ({} : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L358"
                    if (_lf._form == ((14u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                        _b1 = stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf((@:checkr _r ?? throw "null pointer dereference")._buf._dwarf, (@:checkr _r ?? throw "null pointer dereference")._buf._format, ("str" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), (@:checkr _r ?? throw "null pointer dereference")._str)?.__copy__();
                    } else {
                        _b1 = stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf((@:checkr _r ?? throw "null pointer dereference")._buf._dwarf, (@:checkr _r ?? throw "null pointer dereference")._buf._format, ("line_str" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), (@:checkr _r ?? throw "null pointer dereference")._lineStr)?.__copy__();
                    };
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L363"
                    _b1._skip((_off : stdgo.GoInt));
                    _str = _b1._string()?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L365"
                    if (_b1._err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L366"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoUInt64; var _2 : stdgo.GoUInt64; var _3 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (0i64 : stdgo.GoUInt64), _2 : (0i64 : stdgo.GoUInt64), _3 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(("line" : stdgo.GoString), (@:checkr _r ?? throw "null pointer dereference")._buf._off, _b1._err.error()?.__copy__()) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError)) };
                            _path = __tmp__._0;
                            _mtime = __tmp__._1;
                            _size = __tmp__._2;
                            _err = __tmp__._3;
                            __tmp__;
                        };
                    };
                } else if (__value__ == ((29u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L370"
                    if (_dwarf64) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L371"
                        (@:checkr _r ?? throw "null pointer dereference")._buf._uint64();
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L373"
                        (@:checkr _r ?? throw "null pointer dereference")._buf._uint32();
                    };
                } else if (__value__ == ((26u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L377"
                    (@:checkr _r ?? throw "null pointer dereference")._buf._uint();
                } else if (__value__ == ((37u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L379"
                    (@:checkr _r ?? throw "null pointer dereference")._buf._uint8();
                } else if (__value__ == ((38u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L381"
                    (@:checkr _r ?? throw "null pointer dereference")._buf._uint16();
                } else if (__value__ == ((39u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L383"
                    (@:checkr _r ?? throw "null pointer dereference")._buf._uint24();
                } else if (__value__ == ((40u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L385"
                    (@:checkr _r ?? throw "null pointer dereference")._buf._uint32();
                } else if (__value__ == ((11u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    _val = ((@:checkr _r ?? throw "null pointer dereference")._buf._uint8() : stdgo.GoUInt64);
                } else if (__value__ == ((5u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    _val = ((@:checkr _r ?? throw "null pointer dereference")._buf._uint16() : stdgo.GoUInt64);
                } else if (__value__ == ((6u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    _val = ((@:checkr _r ?? throw "null pointer dereference")._buf._uint32() : stdgo.GoUInt64);
                } else if (__value__ == ((7u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    _val = (@:checkr _r ?? throw "null pointer dereference")._buf._uint64();
                } else if (__value__ == ((30u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L395"
                    (@:checkr _r ?? throw "null pointer dereference")._buf._bytes((16 : stdgo.GoInt));
                } else if (__value__ == ((9u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L397"
                    (@:checkr _r ?? throw "null pointer dereference")._buf._bytes(((@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo.GoInt));
                } else if (__value__ == ((15u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    _val = (@:checkr _r ?? throw "null pointer dereference")._buf._uint();
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L402"
            {
                final __value__ = _lf._lnct;
                if (__value__ == ((1 : stdgo.GoInt))) {
                    _path = _str?.__copy__();
                } else if (__value__ == ((2 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L406"
                    if ((_val >= ((@:checkr _r ?? throw "null pointer dereference")._directories.length : stdgo.GoUInt64) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L407"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoUInt64; var _2 : stdgo.GoUInt64; var _3 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (0i64 : stdgo.GoUInt64), _2 : (0i64 : stdgo.GoUInt64), _3 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(("line" : stdgo.GoString), (@:checkr _r ?? throw "null pointer dereference")._buf._off, ("directory index out of range" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError)) };
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
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L419"
        if (((_dir != (stdgo.Go.str() : stdgo.GoString)) && (_path != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            _path = stdgo._internal.debug.dwarf.Dwarf__pathjoin._pathJoin(_dir?.__copy__(), _path?.__copy__())?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L423"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoUInt64; var _2 : stdgo.GoUInt64; var _3 : stdgo.Error; } = { _0 : _path?.__copy__(), _1 : _mtime, _2 : _size, _3 : (null : stdgo.Error) };
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
        var _c = ((@:checkr _r ?? throw "null pointer dereference")._buf._uint8() : stdgo.GoUInt8);
        var _ret = (new stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_lnctform.T_lnctForm>((_c : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_c : stdgo.GoInt).toBasic() > 0 ? (_c : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.dwarf.Dwarf_t_lnctform.T_lnctForm)]) : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_lnctform.T_lnctForm>);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L331"
        for (_i => _ in _ret) {
            _ret[(_i : stdgo.GoInt)]._lnct = ((@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo.GoInt);
            _ret[(_i : stdgo.GoInt)]._form = ((@:checkr _r ?? throw "null pointer dereference")._buf._uint() : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format);
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L335"
        return _ret;
    }
    @:keep
    @:tdfield
    static public function _readHeader( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader>, _compDir:stdgo.GoString):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linereader.LineReader> = _r;
        var _buf = (stdgo.Go.setRef((@:checkr _r ?? throw "null pointer dereference")._buf) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>);
        var _hdrOffset = ((@:checkr _buf ?? throw "null pointer dereference")._off : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
        var __tmp__ = _buf._unitLength(), _unitLength:stdgo._internal.debug.dwarf.Dwarf_offset.Offset = __tmp__._0, _dwarf64:Bool = __tmp__._1;
        (@:checkr _r ?? throw "null pointer dereference")._endOffset = ((@:checkr _buf ?? throw "null pointer dereference")._off + _unitLength : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L193"
        if (((@:checkr _r ?? throw "null pointer dereference")._endOffset > ((@:checkr _buf ?? throw "null pointer dereference")._off + ((@:checkr _buf ?? throw "null pointer dereference")._data.length : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L194"
            return stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(("line" : stdgo.GoString), _hdrOffset, stdgo._internal.fmt.Fmt_sprintf.sprintf(("line table end %d exceeds section size %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._endOffset), stdgo.Go.toInterface(((@:checkr _buf ?? throw "null pointer dereference")._off + ((@:checkr _buf ?? throw "null pointer dereference")._data.length : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset)))?.__copy__()) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
        };
        (@:checkr _r ?? throw "null pointer dereference")._version = _buf._uint16();
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L197"
        if ((((@:checkr _buf ?? throw "null pointer dereference")._err == null) && ((((@:checkr _r ?? throw "null pointer dereference")._version < (2 : stdgo.GoUInt16) : Bool) || ((@:checkr _r ?? throw "null pointer dereference")._version > (5 : stdgo.GoUInt16) : Bool) : Bool)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L203"
            return stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(("line" : stdgo.GoString), _hdrOffset, stdgo._internal.fmt.Fmt_sprintf.sprintf(("unknown line table version %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._version))?.__copy__()) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L205"
        if (((@:checkr _r ?? throw "null pointer dereference")._version >= (5 : stdgo.GoUInt16) : Bool)) {
            (@:checkr _r ?? throw "null pointer dereference")._addrsize = (_buf._uint8() : stdgo.GoInt);
            (@:checkr _r ?? throw "null pointer dereference")._segmentSelectorSize = (_buf._uint8() : stdgo.GoInt);
        } else {
            (@:checkr _r ?? throw "null pointer dereference")._addrsize = (@:checkr _buf ?? throw "null pointer dereference")._format._addrsize();
            (@:checkr _r ?? throw "null pointer dereference")._segmentSelectorSize = (0 : stdgo.GoInt);
        };
        var _headerLength:stdgo._internal.debug.dwarf.Dwarf_offset.Offset = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L213"
        if (_dwarf64) {
            _headerLength = (_buf._uint64() : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
        } else {
            _headerLength = (_buf._uint32() : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
        };
        var _programOffset = ((@:checkr _buf ?? throw "null pointer dereference")._off + _headerLength : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L219"
        if ((_programOffset > (@:checkr _r ?? throw "null pointer dereference")._endOffset : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L220"
            return stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(("line" : stdgo.GoString), _hdrOffset, stdgo._internal.fmt.Fmt_sprintf.sprintf(("malformed line table: program offset %d exceeds end offset %d" : stdgo.GoString), stdgo.Go.toInterface(_programOffset), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._endOffset))?.__copy__()) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
        };
        (@:checkr _r ?? throw "null pointer dereference")._programOffset = _programOffset;
        (@:checkr _r ?? throw "null pointer dereference")._minInstructionLength = (_buf._uint8() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L224"
        if (((@:checkr _r ?? throw "null pointer dereference")._version >= (4 : stdgo.GoUInt16) : Bool)) {
            (@:checkr _r ?? throw "null pointer dereference")._maxOpsPerInstruction = (_buf._uint8() : stdgo.GoInt);
        } else {
            (@:checkr _r ?? throw "null pointer dereference")._maxOpsPerInstruction = (1 : stdgo.GoInt);
        };
        (@:checkr _r ?? throw "null pointer dereference")._defaultIsStmt = _buf._uint8() != ((0 : stdgo.GoUInt8));
        (@:checkr _r ?? throw "null pointer dereference")._lineBase = ((_buf._uint8() : stdgo.GoInt8) : stdgo.GoInt);
        (@:checkr _r ?? throw "null pointer dereference")._lineRange = (_buf._uint8() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L235"
        if ((@:checkr _buf ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L236"
            return (@:checkr _buf ?? throw "null pointer dereference")._err;
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L238"
        if ((@:checkr _r ?? throw "null pointer dereference")._maxOpsPerInstruction == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L239"
            return stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(("line" : stdgo.GoString), _hdrOffset, ("invalid maximum operations per instruction: 0" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L241"
        if ((@:checkr _r ?? throw "null pointer dereference")._lineRange == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L242"
            return stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(("line" : stdgo.GoString), _hdrOffset, ("invalid line range: 0" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
        };
        (@:checkr _r ?? throw "null pointer dereference")._opcodeBase = (_buf._uint8() : stdgo.GoInt);
        (@:checkr _r ?? throw "null pointer dereference")._opcodeLengths = (new stdgo.Slice<stdgo.GoInt>(((@:checkr _r ?? throw "null pointer dereference")._opcodeBase : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L248"
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (@:checkr _r ?? throw "null pointer dereference")._opcodeBase : Bool)) {
                (@:checkr _r ?? throw "null pointer dereference")._opcodeLengths[(_i : stdgo.GoInt)] = (_buf._uint8() : stdgo.GoInt);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L253"
        if ((@:checkr _buf ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L254"
            return (@:checkr _buf ?? throw "null pointer dereference")._err;
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L256"
        for (_i => _length in (@:checkr _r ?? throw "null pointer dereference")._opcodeLengths) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L257"
            {
                var __tmp__ = (stdgo._internal.debug.dwarf.Dwarf__knownopcodelengths._knownOpcodeLengths != null && stdgo._internal.debug.dwarf.Dwarf__knownopcodelengths._knownOpcodeLengths.__exists__(_i) ? { _0 : stdgo._internal.debug.dwarf.Dwarf__knownopcodelengths._knownOpcodeLengths[_i], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _known:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                if ((_ok && (_known != _length) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L258"
                    return stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError(("line" : stdgo.GoString), _hdrOffset, stdgo._internal.fmt.Fmt_sprintf.sprintf(("opcode %d expected to have length %d, but has length %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_known), stdgo.Go.toInterface(_length))?.__copy__()) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L262"
        if (((@:checkr _r ?? throw "null pointer dereference")._version < (5 : stdgo.GoUInt16) : Bool)) {
            (@:checkr _r ?? throw "null pointer dereference")._directories = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_compDir?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L265"
            while (true) {
                var _directory = (_buf._string()?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L267"
                if ((@:checkr _buf ?? throw "null pointer dereference")._err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L268"
                    return (@:checkr _buf ?? throw "null pointer dereference")._err;
                };
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L270"
                if ((_directory.length) == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L271"
                    break;
                };
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L273"
                if (!stdgo._internal.debug.dwarf.Dwarf__pathisabs._pathIsAbs(_directory?.__copy__())) {
                    _directory = stdgo._internal.debug.dwarf.Dwarf__pathjoin._pathJoin(_compDir?.__copy__(), _directory?.__copy__())?.__copy__();
                };
                (@:checkr _r ?? throw "null pointer dereference")._directories = ((@:checkr _r ?? throw "null pointer dereference")._directories.__append__(_directory?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
            (@:checkr _r ?? throw "null pointer dereference")._fileEntries = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile>>((1 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile>>);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L284"
            while (true) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L285"
                {
                    var __tmp__ = _r._readFileEntry(), _done:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L286"
                        return _err;
                    } else if (_done) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L288"
                        break;
                    };
                };
            };
        } else {
            var _dirFormat = _r._readLNCTFormat();
            var _c = (_buf._uint() : stdgo.GoUInt64);
            (@:checkr _r ?? throw "null pointer dereference")._directories = (new stdgo.Slice<stdgo.GoString>((_c : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L295"
            for (_i => _ in (@:checkr _r ?? throw "null pointer dereference")._directories) {
                var __tmp__ = _r._readLNCT(_dirFormat, _dwarf64), _dir:stdgo.GoString = __tmp__._0, __3:stdgo.GoUInt64 = __tmp__._1, __4:stdgo.GoUInt64 = __tmp__._2, _err:stdgo.Error = __tmp__._3;
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L297"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L298"
                    return _err;
                };
                (@:checkr _r ?? throw "null pointer dereference")._directories[(_i : stdgo.GoInt)] = _dir?.__copy__();
            };
            var _fileFormat = _r._readLNCTFormat();
            _c = _buf._uint();
            (@:checkr _r ?? throw "null pointer dereference")._fileEntries = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile>>((_c : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile>>);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L305"
            for (_i => _ in (@:checkr _r ?? throw "null pointer dereference")._fileEntries) {
                var __tmp__ = _r._readLNCT(_fileFormat, _dwarf64), _name:stdgo.GoString = __tmp__._0, _mtime:stdgo.GoUInt64 = __tmp__._1, _size:stdgo.GoUInt64 = __tmp__._2, _err:stdgo.Error = __tmp__._3;
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L307"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L308"
                    return _err;
                };
                (@:checkr _r ?? throw "null pointer dereference")._fileEntries[(_i : stdgo.GoInt)] = (stdgo.Go.setRef((new stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile(_name?.__copy__(), _mtime, (_size : stdgo.GoInt)) : stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile>);
            };
        };
        (@:checkr _r ?? throw "null pointer dereference")._initialFileEntries = ((@:checkr _r ?? throw "null pointer dereference")._fileEntries.length);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L316"
        return (@:checkr _buf ?? throw "null pointer dereference")._err;
    }
}
