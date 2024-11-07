package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.T_buf_asInterface) class T_buf_static_extension {
    @:keep
    static public function _entry( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>, _cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>, _atab:stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable, _ubase:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, _vers:stdgo.GoInt):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf> = _b;
        var _off = (_b._off : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
        var _id = (_b._uint() : stdgo.GoUInt32);
        if (_id == ((0u32 : stdgo.GoUInt32))) {
            return (stdgo.Go.setRef((new stdgo._internal.debug.dwarf.Dwarf_Entry.Entry() : stdgo._internal.debug.dwarf.Dwarf_Entry.Entry)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
        };
        var __tmp__ = (_atab != null && _atab.exists(_id) ? { _0 : _atab[_id], _1 : true } : { _0 : ({} : stdgo._internal.debug.dwarf.Dwarf_T_abbrev.T_abbrev), _1 : false }), _a:stdgo._internal.debug.dwarf.Dwarf_T_abbrev.T_abbrev = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _b._error(("unknown abbreviation table index" : stdgo.GoString));
            return null;
        };
        var _e = (stdgo.Go.setRef(({ offset : _off, tag : _a._tag, children : _a._children, field : (new stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_Field.Field>((_a._field.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_a._field.length : stdgo.GoInt).toBasic() > 0 ? (_a._field.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.dwarf.Dwarf_Field.Field)]) : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_Field.Field>) } : stdgo._internal.debug.dwarf.Dwarf_Entry.Entry)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
        {};
        var _delay:stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T__entry___localname___delayed_12177.T__entry___localname___delayed_12177> = (null : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T__entry___localname___delayed_12177.T__entry___localname___delayed_12177>);
        var _resolveStrx = (function(_strBase:stdgo.GoUInt64, _off:stdgo.GoUInt64):stdgo.GoString {
            _off = (_off + (_strBase) : stdgo.GoUInt64);
            if (((_off : stdgo.GoInt) : stdgo.GoUInt64) != (_off)) {
                _b._error(("DW_FORM_strx offset out of range" : stdgo.GoString));
            };
            var _b1 = (stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_b._dwarf, _b._format, ("str_offsets" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), _b._dwarf._strOffsets)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
            _b1._skip((_off : stdgo.GoInt));
            var __tmp__ = _b._format._dwarf64(), _is64:Bool = __tmp__._0, __3:Bool = __tmp__._1;
            if (_is64) {
                _off = _b1._uint64();
            } else {
                _off = (_b1._uint32() : stdgo.GoUInt64);
            };
            if (_b1._err != null) {
                _b._err = _b1._err;
                return stdgo.Go.str()?.__copy__();
            };
            if (((_off : stdgo.GoInt) : stdgo.GoUInt64) != (_off)) {
                _b._error(("DW_FORM_strx indirect offset out of range" : stdgo.GoString));
            };
            _b1 = stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_b._dwarf, _b._format, ("str" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), _b._dwarf._str)?.__copy__();
            _b1._skip((_off : stdgo.GoInt));
            var _val = (_b1._string()?.__copy__() : stdgo.GoString);
            if (_b1._err != null) {
                _b._err = _b1._err;
            };
            return _val?.__copy__();
        } : (stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoString);
        var _resolveRnglistx = (function(_rnglistsBase:stdgo.GoUInt64, _off:stdgo.GoUInt64):stdgo.GoUInt64 {
            var __tmp__ = _b._format._dwarf64(), _is64:Bool = __tmp__._0, __3:Bool = __tmp__._1;
            if (_is64) {
                _off = (_off * ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            } else {
                _off = (_off * ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            };
            _off = (_off + (_rnglistsBase) : stdgo.GoUInt64);
            if (((_off : stdgo.GoInt) : stdgo.GoUInt64) != (_off)) {
                _b._error(("DW_FORM_rnglistx offset out of range" : stdgo.GoString));
            };
            var _b1 = (stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_b._dwarf, _b._format, ("rnglists" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), _b._dwarf._rngLists)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
            _b1._skip((_off : stdgo.GoInt));
            if (_is64) {
                _off = _b1._uint64();
            } else {
                _off = (_b1._uint32() : stdgo.GoUInt64);
            };
            if (_b1._err != null) {
                _b._err = _b1._err;
                return (0i64 : stdgo.GoUInt64);
            };
            if (((_off : stdgo.GoInt) : stdgo.GoUInt64) != (_off)) {
                _b._error(("DW_FORM_rnglistx indirect offset out of range" : stdgo.GoString));
            };
            return (_rnglistsBase + _off : stdgo.GoUInt64);
        } : (stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64);
        for (_i => _ in _e.field) {
            _e.field[(_i : stdgo.GoInt)].attr = _a._field[(_i : stdgo.GoInt)]._attr;
            _e.field[(_i : stdgo.GoInt)].class_ = _a._field[(_i : stdgo.GoInt)]._class;
            var _fmt = (_a._field[(_i : stdgo.GoInt)]._fmt : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format);
            if (_fmt == ((22u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                _fmt = (_b._uint() : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format);
                _e.field[(_i : stdgo.GoInt)].class_ = stdgo._internal.debug.dwarf.Dwarf__formToClass._formToClass(_fmt, _a._field[(_i : stdgo.GoInt)]._attr, _vers, _b);
            };
            var _val:stdgo.AnyInterface = (null : stdgo.AnyInterface);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _fmt;
                        if (__value__ == ((1u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            _val = stdgo.Go.toInterface(_b._addr());
                            break;
                        } else if (__value__ == ((27u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format)) || __value__ == ((41u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format)) || __value__ == ((42u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format)) || __value__ == ((43u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format)) || __value__ == ((44u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            var _off:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                            {
                                final __value__ = _fmt;
                                if (__value__ == ((27u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                                    _off = _b._uint();
                                } else if (__value__ == ((41u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                                    _off = (_b._uint8() : stdgo.GoUInt64);
                                } else if (__value__ == ((42u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                                    _off = (_b._uint16() : stdgo.GoUInt64);
                                } else if (__value__ == ((43u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                                    _off = (_b._uint24() : stdgo.GoUInt64);
                                } else if (__value__ == ((44u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                                    _off = (_b._uint32() : stdgo.GoUInt64);
                                };
                            };
                            if (_b._dwarf._addr == null) {
                                _b._error(("DW_FORM_addrx with no .debug_addr section" : stdgo.GoString));
                            };
                            if (_b._err != null) {
                                return null;
                            };
                            var _addrBase:stdgo.GoInt64 = (0 : stdgo.GoInt64);
                            if ((_cu != null && ((_cu : Dynamic).__nil__ == null || !(_cu : Dynamic).__nil__))) {
                                {
                                    var __tmp__ = try {
                                        { _0 : (stdgo.Go.typeAssert((_cu.val((115u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                                    } catch(_) {
                                        { _0 : (0 : stdgo.GoInt64), _1 : false };
                                    };
                                    _addrBase = __tmp__._0;
                                };
                            } else if (_a._tag == ((17u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _delay = (_delay.__append__((new stdgo._internal.debug.dwarf.Dwarf_T__entry___localname___delayed_12177.T__entry___localname___delayed_12177(_i, _off, (27u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format)) : stdgo._internal.debug.dwarf.Dwarf_T__entry___localname___delayed_12177.T__entry___localname___delayed_12177)));
                                break;
                            };
                            var _err:stdgo.Error = (null : stdgo.Error);
                            {
                                var __tmp__ = _b._dwarf._debugAddr(_b._format, (_addrBase : stdgo.GoUInt64), _off);
                                _val = stdgo.Go.toInterface(__tmp__._0);
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                if (_b._err == null) {
                                    _b._err = _err;
                                };
                                return null;
                            };
                            break;
                        } else if (__value__ == ((10u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            _val = stdgo.Go.toInterface(_b._bytes((_b._uint8() : stdgo.GoInt)));
                            break;
                        } else if (__value__ == ((3u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            _val = stdgo.Go.toInterface(_b._bytes((_b._uint16() : stdgo.GoInt)));
                            break;
                        } else if (__value__ == ((4u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            _val = stdgo.Go.toInterface(_b._bytes((_b._uint32() : stdgo.GoInt)));
                            break;
                        } else if (__value__ == ((9u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            _val = stdgo.Go.toInterface(_b._bytes((_b._uint() : stdgo.GoInt)));
                            break;
                        } else if (__value__ == ((11u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            _val = stdgo.Go.toInterface((_b._uint8() : stdgo.GoInt64));
                            break;
                        } else if (__value__ == ((5u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            _val = stdgo.Go.toInterface((_b._uint16() : stdgo.GoInt64));
                            break;
                        } else if (__value__ == ((6u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            _val = stdgo.Go.toInterface((_b._uint32() : stdgo.GoInt64));
                            break;
                        } else if (__value__ == ((7u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            _val = stdgo.Go.toInterface((_b._uint64() : stdgo.GoInt64));
                            break;
                        } else if (__value__ == ((30u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            _val = stdgo.Go.toInterface(_b._bytes((16 : stdgo.GoInt)));
                            break;
                        } else if (__value__ == ((13u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            _val = stdgo.Go.toInterface((_b._int() : stdgo.GoInt64));
                            break;
                        } else if (__value__ == ((15u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            _val = stdgo.Go.toInterface((_b._uint() : stdgo.GoInt64));
                            break;
                        } else if (__value__ == ((33u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            _val = stdgo.Go.toInterface(_a._field[(_i : stdgo.GoInt)]._val);
                            break;
                        } else if (__value__ == ((12u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            _val = stdgo.Go.toInterface(_b._uint8() == ((1 : stdgo.GoUInt8)));
                            break;
                        } else if (__value__ == ((25u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            _val = stdgo.Go.toInterface(true);
                            break;
                        } else if (__value__ == ((16u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            var _vers = (_b._format._version() : stdgo.GoInt);
                            if (_vers == ((0 : stdgo.GoInt))) {
                                _b._error(("unknown version for DW_FORM_ref_addr" : stdgo.GoString));
                            } else if (_vers == ((2 : stdgo.GoInt))) {
                                _val = stdgo.Go.toInterface((_b._addr() : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset));
                            } else {
                                var __tmp__ = _b._format._dwarf64(), _is64:Bool = __tmp__._0, _known:Bool = __tmp__._1;
                                if (!_known) {
                                    _b._error(("unknown size for DW_FORM_ref_addr" : stdgo.GoString));
                                } else if (_is64) {
                                    _val = stdgo.Go.toInterface((_b._uint64() : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset));
                                } else {
                                    _val = stdgo.Go.toInterface((_b._uint32() : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset));
                                };
                            };
                            break;
                        } else if (__value__ == ((17u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            _val = stdgo.Go.toInterface(((_b._uint8() : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) + _ubase : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset));
                            break;
                        } else if (__value__ == ((18u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            _val = stdgo.Go.toInterface(((_b._uint16() : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) + _ubase : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset));
                            break;
                        } else if (__value__ == ((19u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            _val = stdgo.Go.toInterface(((_b._uint32() : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) + _ubase : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset));
                            break;
                        } else if (__value__ == ((20u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            _val = stdgo.Go.toInterface(((_b._uint64() : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) + _ubase : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset));
                            break;
                        } else if (__value__ == ((21u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            _val = stdgo.Go.toInterface(((_b._uint() : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) + _ubase : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset));
                            break;
                        } else if (__value__ == ((8u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            _val = stdgo.Go.toInterface(_b._string());
                            break;
                        } else if (__value__ == ((14u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format)) || __value__ == ((31u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            var _off:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                            var __tmp__ = _b._format._dwarf64(), _is64:Bool = __tmp__._0, _known:Bool = __tmp__._1;
                            if (!_known) {
                                _b._error(("unknown size for DW_FORM_strp/line_strp" : stdgo.GoString));
                            } else if (_is64) {
                                _off = _b._uint64();
                            } else {
                                _off = (_b._uint32() : stdgo.GoUInt64);
                            };
                            if (((_off : stdgo.GoInt) : stdgo.GoUInt64) != (_off)) {
                                _b._error(("DW_FORM_strp/line_strp offset out of range" : stdgo.GoString));
                            };
                            if (_b._err != null) {
                                return null;
                            };
                            var _b1:stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf = ({} : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
                            if (_fmt == ((14u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                                _b1 = stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_b._dwarf, _b._format, ("str" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), _b._dwarf._str)?.__copy__();
                            } else {
                                if ((_b._dwarf._lineStr.length) == ((0 : stdgo.GoInt))) {
                                    _b._error(("DW_FORM_line_strp with no .debug_line_str section" : stdgo.GoString));
                                    return null;
                                };
                                _b1 = stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_b._dwarf, _b._format, ("line_str" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), _b._dwarf._lineStr)?.__copy__();
                            };
                            _b1._skip((_off : stdgo.GoInt));
                            _val = stdgo.Go.toInterface(_b1._string());
                            if (_b1._err != null) {
                                _b._err = _b1._err;
                                return null;
                            };
                            break;
                        } else if (__value__ == ((26u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format)) || __value__ == ((37u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format)) || __value__ == ((38u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format)) || __value__ == ((39u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format)) || __value__ == ((40u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            var _off:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                            {
                                final __value__ = _fmt;
                                if (__value__ == ((26u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                                    _off = _b._uint();
                                } else if (__value__ == ((37u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                                    _off = (_b._uint8() : stdgo.GoUInt64);
                                } else if (__value__ == ((38u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                                    _off = (_b._uint16() : stdgo.GoUInt64);
                                } else if (__value__ == ((39u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                                    _off = (_b._uint24() : stdgo.GoUInt64);
                                } else if (__value__ == ((40u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                                    _off = (_b._uint32() : stdgo.GoUInt64);
                                };
                            };
                            if ((_b._dwarf._strOffsets.length) == ((0 : stdgo.GoInt))) {
                                _b._error(("DW_FORM_strx with no .debug_str_offsets section" : stdgo.GoString));
                            };
                            var __tmp__ = _b._format._dwarf64(), _is64:Bool = __tmp__._0, _known:Bool = __tmp__._1;
                            if (!_known) {
                                _b._error(("unknown offset size for DW_FORM_strx" : stdgo.GoString));
                            };
                            if (_b._err != null) {
                                return null;
                            };
                            if (_is64) {
                                _off = (_off * ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                            } else {
                                _off = (_off * ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                            };
                            var _strBase:stdgo.GoInt64 = (0 : stdgo.GoInt64);
                            if ((_cu != null && ((_cu : Dynamic).__nil__ == null || !(_cu : Dynamic).__nil__))) {
                                {
                                    var __tmp__ = try {
                                        { _0 : (stdgo.Go.typeAssert((_cu.val((114u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                                    } catch(_) {
                                        { _0 : (0 : stdgo.GoInt64), _1 : false };
                                    };
                                    _strBase = __tmp__._0;
                                };
                            } else if (_a._tag == ((17u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _delay = (_delay.__append__((new stdgo._internal.debug.dwarf.Dwarf_T__entry___localname___delayed_12177.T__entry___localname___delayed_12177(_i, _off, (26u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format)) : stdgo._internal.debug.dwarf.Dwarf_T__entry___localname___delayed_12177.T__entry___localname___delayed_12177)));
                                break;
                            };
                            _val = stdgo.Go.toInterface(_resolveStrx((_strBase : stdgo.GoUInt64), _off));
                            break;
                        } else if (__value__ == ((29u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            var __tmp__ = _b._format._dwarf64(), _is64:Bool = __tmp__._0, _known:Bool = __tmp__._1;
                            if (!_known) {
                                _b._error(("unknown size for DW_FORM_strp_sup" : stdgo.GoString));
                            } else if (_is64) {
                                _val = stdgo.Go.toInterface(_b._uint64());
                            } else {
                                _val = stdgo.Go.toInterface(_b._uint32());
                            };
                            break;
                        } else if (__value__ == ((23u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format)) || __value__ == ((7968u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format)) || __value__ == ((7969u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            var __tmp__ = _b._format._dwarf64(), _is64:Bool = __tmp__._0, _known:Bool = __tmp__._1;
                            if (!_known) {
                                _b._error((("unknown size for form 0x" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatInt.formatInt((_fmt : stdgo.GoInt64), (16 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__());
                            } else if (_is64) {
                                _val = stdgo.Go.toInterface((_b._uint64() : stdgo.GoInt64));
                            } else {
                                _val = stdgo.Go.toInterface((_b._uint32() : stdgo.GoInt64));
                            };
                            break;
                        } else if (__value__ == ((24u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            _val = stdgo.Go.toInterface(_b._bytes((_b._uint() : stdgo.GoInt)));
                            break;
                        } else if (__value__ == ((32u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            _val = stdgo.Go.toInterface(_b._uint64());
                            break;
                        } else if (__value__ == ((28u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            _val = stdgo.Go.toInterface(_b._uint32());
                            break;
                        } else if (__value__ == ((36u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            _val = stdgo.Go.toInterface(_b._uint64());
                            break;
                        } else if (__value__ == ((34u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            _val = stdgo.Go.toInterface(_b._uint());
                            break;
                        } else if (__value__ == ((35u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                            var _off = (_b._uint() : stdgo.GoUInt64);
                            var _rnglistsBase:stdgo.GoInt64 = (0 : stdgo.GoInt64);
                            if ((_cu != null && ((_cu : Dynamic).__nil__ == null || !(_cu : Dynamic).__nil__))) {
                                {
                                    var __tmp__ = try {
                                        { _0 : (stdgo.Go.typeAssert((_cu.val((116u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                                    } catch(_) {
                                        { _0 : (0 : stdgo.GoInt64), _1 : false };
                                    };
                                    _rnglistsBase = __tmp__._0;
                                };
                            } else if (_a._tag == ((17u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _delay = (_delay.__append__((new stdgo._internal.debug.dwarf.Dwarf_T__entry___localname___delayed_12177.T__entry___localname___delayed_12177(_i, _off, (35u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format)) : stdgo._internal.debug.dwarf.Dwarf_T__entry___localname___delayed_12177.T__entry___localname___delayed_12177)));
                                break;
                            };
                            _val = stdgo.Go.toInterface(_resolveRnglistx((_rnglistsBase : stdgo.GoUInt64), _off));
                            break;
                        } else {
                            _b._error((("unknown entry attr format 0x" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatInt.formatInt((_fmt : stdgo.GoInt64), (16 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__());
                        };
                    };
                    break;
                };
            };
            _e.field[(_i : stdgo.GoInt)].val = _val;
        };
        if (_b._err != null) {
            return null;
        };
        for (__3 => _del in _delay) {
            {
                final __value__ = _del._fmt;
                if (__value__ == ((27u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_e.val((115u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                    } catch(_) {
                        { _0 : (0 : stdgo.GoInt64), _1 : false };
                    }, _addrBase = __tmp__._0, __4 = __tmp__._1;
                    var __tmp__ = _b._dwarf._debugAddr(_b._format, (_addrBase : stdgo.GoUInt64), _del._off), _val:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _b._err = _err;
                        return null;
                    };
                    _e.field[(_del._idx : stdgo.GoInt)].val = stdgo.Go.toInterface(_val);
                } else if (__value__ == ((26u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_e.val((114u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                    } catch(_) {
                        { _0 : (0 : stdgo.GoInt64), _1 : false };
                    }, _strBase = __tmp__._0, __4 = __tmp__._1;
                    _e.field[(_del._idx : stdgo.GoInt)].val = stdgo.Go.toInterface(_resolveStrx((_strBase : stdgo.GoUInt64), _del._off));
                    if (_b._err != null) {
                        return null;
                    };
                } else if (__value__ == ((35u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_e.val((116u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                    } catch(_) {
                        { _0 : (0 : stdgo.GoInt64), _1 : false };
                    }, _rnglistsBase = __tmp__._0, __4 = __tmp__._1;
                    _e.field[(_del._idx : stdgo.GoInt)].val = stdgo.Go.toInterface(_resolveRnglistx((_rnglistsBase : stdgo.GoUInt64), _del._off));
                    if (_b._err != null) {
                        return null;
                    };
                };
            };
        };
        return _e;
    }
    @:keep
    static public function _error( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>, _s:stdgo.GoString):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf> = _b;
        if (_b._err == null) {
            _b._data = (null : stdgo.Slice<stdgo.GoUInt8>);
            _b._err = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(_b._name?.__copy__(), _b._off, _s?.__copy__()) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
        };
    }
    @:keep
    static public function _unitLength( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>):{ var _0 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset; var _1 : Bool; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf> = _b;
        var _length = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), _dwarf64 = false;
        _length = (_b._uint32() : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
        if (_length == ((-1u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset))) {
            _dwarf64 = true;
            _length = (_b._uint64() : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
        } else if ((_length >= (-16u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : Bool)) {
            _b._error(("unit length has reserved value" : stdgo.GoString));
        };
        return { _0 : _length, _1 : _dwarf64 };
    }
    @:keep
    static public function _addr( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>):stdgo.GoUInt64 {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf> = _b;
        {
            final __value__ = _b._format._addrsize();
            if (__value__ == ((1 : stdgo.GoInt))) {
                return (_b._uint8() : stdgo.GoUInt64);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                return (_b._uint16() : stdgo.GoUInt64);
            } else if (__value__ == ((4 : stdgo.GoInt))) {
                return (_b._uint32() : stdgo.GoUInt64);
            } else if (__value__ == ((8 : stdgo.GoInt))) {
                return _b._uint64();
            };
        };
        _b._error(("unknown address size" : stdgo.GoString));
        return (0i64 : stdgo.GoUInt64);
    }
    @:keep
    static public function _int( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>):stdgo.GoInt64 {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf> = _b;
        var __tmp__ = _b._varint(), _ux:stdgo.GoUInt64 = __tmp__._0, _bits:stdgo.GoUInt = __tmp__._1;
        var _x = (_ux : stdgo.GoInt64);
        if ((_x & (((1i64 : stdgo.GoInt64) << ((_bits - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoInt64)) : stdgo.GoInt64) != ((0i64 : stdgo.GoInt64))) {
            _x = (_x | (((-1i64 : stdgo.GoInt64) << _bits : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        return _x;
    }
    @:keep
    static public function _uint( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>):stdgo.GoUInt64 {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf> = _b;
        var __tmp__ = _b._varint(), _x:stdgo.GoUInt64 = __tmp__._0, __3:stdgo.GoUInt = __tmp__._1;
        return _x;
    }
    @:keep
    static public function _varint( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf> = _b;
        var _c = (0 : stdgo.GoUInt64), _bits = (0 : stdgo.GoUInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_b._data.length) : Bool)) {
                var _byte = (_b._data[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
_c = (_c | ((((_byte & (127 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64) << _bits : stdgo.GoUInt64)) : stdgo.GoUInt64);
_bits = (_bits + ((7u32 : stdgo.GoUInt)) : stdgo.GoUInt);
if ((_byte & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
                    _b._off = (_b._off + (((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset)) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
                    _b._data = (_b._data.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    return { _0 : _c, _1 : _bits };
                };
                _i++;
            };
        };
        return { _0 : (0i64 : stdgo.GoUInt64), _1 : (0u32 : stdgo.GoUInt) };
    }
    @:keep
    static public function _uint64( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>):stdgo.GoUInt64 {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf> = _b;
        var _a = _b._bytes((8 : stdgo.GoInt));
        if (_a == null) {
            return (0i64 : stdgo.GoUInt64);
        };
        return _b._order.uint64(_a);
    }
    @:keep
    static public function _uint32( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>):stdgo.GoUInt32 {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf> = _b;
        var _a = _b._bytes((4 : stdgo.GoInt));
        if (_a == null) {
            return (0u32 : stdgo.GoUInt32);
        };
        return _b._order.uint32(_a);
    }
    @:keep
    static public function _uint24( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>):stdgo.GoUInt32 {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf> = _b;
        var _a = _b._bytes((3 : stdgo.GoInt));
        if (_a == null) {
            return (0u32 : stdgo.GoUInt32);
        };
        if (_b._dwarf._bigEndian) {
            return (((_a[(2 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_a[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_a[(0 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
        } else {
            return (((_a[(0 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_a[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_a[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
        };
    }
    @:keep
    static public function _uint16( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>):stdgo.GoUInt16 {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf> = _b;
        var _a = _b._bytes((2 : stdgo.GoInt));
        if (_a == null) {
            return (0 : stdgo.GoUInt16);
        };
        return _b._order.uint16(_a);
    }
    @:keep
    static public function _string( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf> = _b;
        var _i = (stdgo._internal.bytes.Bytes_indexByte.indexByte(_b._data, (0 : stdgo.GoUInt8)) : stdgo.GoInt);
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            _b._error(("underflow" : stdgo.GoString));
            return stdgo.Go.str()?.__copy__();
        };
        var _s = (((_b._data.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        _b._data = (_b._data.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _b._off = (_b._off + (((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset)) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
        return _s?.__copy__();
    }
    @:keep
    static public function _skip( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>, _n:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf> = _b;
        _b._bytes(_n);
    }
    @:keep
    static public function _bytes( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf> = _b;
        if (((_n < (0 : stdgo.GoInt) : Bool) || ((_b._data.length) < _n : Bool) : Bool)) {
            _b._error(("underflow" : stdgo.GoString));
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _data = (_b._data.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
        _b._data = (_b._data.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        _b._off = (_b._off + ((_n : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset)) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
        return _data;
    }
    @:keep
    static public function _uint8( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>):stdgo.GoUInt8 {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf> = _b;
        if (((_b._data.length) < (1 : stdgo.GoInt) : Bool)) {
            _b._error(("underflow" : stdgo.GoString));
            return (0 : stdgo.GoUInt8);
        };
        var _val = (_b._data[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        _b._data = (_b._data.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _b._off++;
        return _val;
    }
}
