package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.T_buf_asInterface) class T_buf_static_extension {
    @:keep
    @:tdfield
    static public function _entry( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>, _cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>, _atab:stdgo._internal.debug.dwarf.Dwarf_t_abbrevtable.T_abbrevTable, _ubase:stdgo._internal.debug.dwarf.Dwarf_offset.Offset, _vers:stdgo.GoInt):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf> = _b;
        var _off = ((@:checkr _b ?? throw "null pointer dereference")._off : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
        var _id = (@:check2r _b._uint() : stdgo.GoUInt32);
        if (_id == ((0u32 : stdgo.GoUInt32))) {
            return (stdgo.Go.setRef((new stdgo._internal.debug.dwarf.Dwarf_entry.Entry() : stdgo._internal.debug.dwarf.Dwarf_entry.Entry)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>);
        };
        var __tmp__ = (_atab != null && _atab.__exists__(_id) ? { _0 : _atab[_id], _1 : true } : { _0 : ({} : stdgo._internal.debug.dwarf.Dwarf_t_abbrev.T_abbrev), _1 : false }), _a:stdgo._internal.debug.dwarf.Dwarf_t_abbrev.T_abbrev = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            @:check2r _b._error(("unknown abbreviation table index" : stdgo.GoString));
            return null;
        };
        var _e = (stdgo.Go.setRef(({ offset : _off, tag : _a._tag, children : _a._children, field : (new stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_field.Field>((_a._field.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_a._field.length : stdgo.GoInt).toBasic() > 0 ? (_a._field.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.dwarf.Dwarf_field.Field)]) : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_field.Field>) } : stdgo._internal.debug.dwarf.Dwarf_entry.Entry)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>);
        {};
        var _delay:stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t__entry___localname___delayed_12177.T__entry___localname___delayed_12177> = (null : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t__entry___localname___delayed_12177.T__entry___localname___delayed_12177>);
        var _resolveStrx = (function(_strBase:stdgo.GoUInt64, _off:stdgo.GoUInt64):stdgo.GoString {
            _off = (_off + (_strBase) : stdgo.GoUInt64);
            if (((_off : stdgo.GoInt) : stdgo.GoUInt64) != (_off)) {
                @:check2r _b._error(("DW_FORM_strx offset out of range" : stdgo.GoString));
            };
            var _b1 = (stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf((@:checkr _b ?? throw "null pointer dereference")._dwarf, (@:checkr _b ?? throw "null pointer dereference")._format, ("str_offsets" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), (@:checkr (@:checkr _b ?? throw "null pointer dereference")._dwarf ?? throw "null pointer dereference")._strOffsets)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
            @:check2 _b1._skip((_off : stdgo.GoInt));
            var __tmp__ = (@:checkr _b ?? throw "null pointer dereference")._format._dwarf64(), _is64:Bool = __tmp__._0, __3:Bool = __tmp__._1;
            if (_is64) {
                _off = @:check2 _b1._uint64();
            } else {
                _off = (@:check2 _b1._uint32() : stdgo.GoUInt64);
            };
            if (_b1._err != null) {
                (@:checkr _b ?? throw "null pointer dereference")._err = _b1._err;
                return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            };
            if (((_off : stdgo.GoInt) : stdgo.GoUInt64) != (_off)) {
                @:check2r _b._error(("DW_FORM_strx indirect offset out of range" : stdgo.GoString));
            };
            _b1 = stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf((@:checkr _b ?? throw "null pointer dereference")._dwarf, (@:checkr _b ?? throw "null pointer dereference")._format, ("str" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), (@:checkr (@:checkr _b ?? throw "null pointer dereference")._dwarf ?? throw "null pointer dereference")._str)?.__copy__();
            @:check2 _b1._skip((_off : stdgo.GoInt));
            var _val = (@:check2 _b1._string()?.__copy__() : stdgo.GoString);
            if (_b1._err != null) {
                (@:checkr _b ?? throw "null pointer dereference")._err = _b1._err;
            };
            return _val?.__copy__();
        } : (stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoString);
        var _resolveRnglistx = (function(_rnglistsBase:stdgo.GoUInt64, _off:stdgo.GoUInt64):stdgo.GoUInt64 {
            var __tmp__ = (@:checkr _b ?? throw "null pointer dereference")._format._dwarf64(), _is64:Bool = __tmp__._0, __3:Bool = __tmp__._1;
            if (_is64) {
                _off = (_off * ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            } else {
                _off = (_off * ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            };
            _off = (_off + (_rnglistsBase) : stdgo.GoUInt64);
            if (((_off : stdgo.GoInt) : stdgo.GoUInt64) != (_off)) {
                @:check2r _b._error(("DW_FORM_rnglistx offset out of range" : stdgo.GoString));
            };
            var _b1 = (stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf((@:checkr _b ?? throw "null pointer dereference")._dwarf, (@:checkr _b ?? throw "null pointer dereference")._format, ("rnglists" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), (@:checkr (@:checkr _b ?? throw "null pointer dereference")._dwarf ?? throw "null pointer dereference")._rngLists)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
            @:check2 _b1._skip((_off : stdgo.GoInt));
            if (_is64) {
                _off = @:check2 _b1._uint64();
            } else {
                _off = (@:check2 _b1._uint32() : stdgo.GoUInt64);
            };
            if (_b1._err != null) {
                (@:checkr _b ?? throw "null pointer dereference")._err = _b1._err;
                return (0i64 : stdgo.GoUInt64);
            };
            if (((_off : stdgo.GoInt) : stdgo.GoUInt64) != (_off)) {
                @:check2r _b._error(("DW_FORM_rnglistx indirect offset out of range" : stdgo.GoString));
            };
            return (_rnglistsBase + _off : stdgo.GoUInt64);
        } : (stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64);
        for (_i => _ in (@:checkr _e ?? throw "null pointer dereference").field) {
            (@:checkr _e ?? throw "null pointer dereference").field[(_i : stdgo.GoInt)].attr = _a._field[(_i : stdgo.GoInt)]._attr;
            (@:checkr _e ?? throw "null pointer dereference").field[(_i : stdgo.GoInt)].class_ = _a._field[(_i : stdgo.GoInt)]._class;
            var _fmt = (_a._field[(_i : stdgo.GoInt)]._fmt : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format);
            if (_fmt == ((22u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                _fmt = (@:check2r _b._uint() : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format);
                (@:checkr _e ?? throw "null pointer dereference").field[(_i : stdgo.GoInt)].class_ = stdgo._internal.debug.dwarf.Dwarf__formtoclass._formToClass(_fmt, _a._field[(_i : stdgo.GoInt)]._attr, _vers, _b);
            };
            var _val:stdgo.AnyInterface = (null : stdgo.AnyInterface);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _fmt;
                        if (__value__ == ((1u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(@:check2r _b._addr());
                            break;
                        } else if (__value__ == ((27u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((41u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((42u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((43u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((44u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            var _off:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                            {
                                final __value__ = _fmt;
                                if (__value__ == ((27u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                                    _off = @:check2r _b._uint();
                                } else if (__value__ == ((41u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                                    _off = (@:check2r _b._uint8() : stdgo.GoUInt64);
                                } else if (__value__ == ((42u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                                    _off = (@:check2r _b._uint16() : stdgo.GoUInt64);
                                } else if (__value__ == ((43u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                                    _off = (@:check2r _b._uint24() : stdgo.GoUInt64);
                                } else if (__value__ == ((44u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                                    _off = (@:check2r _b._uint32() : stdgo.GoUInt64);
                                };
                            };
                            if ((@:checkr (@:checkr _b ?? throw "null pointer dereference")._dwarf ?? throw "null pointer dereference")._addr == null) {
                                @:check2r _b._error(("DW_FORM_addrx with no .debug_addr section" : stdgo.GoString));
                            };
                            if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
                                return null;
                            };
                            var _addrBase:stdgo.GoInt64 = (0 : stdgo.GoInt64);
                            if ((_cu != null && ((_cu : Dynamic).__nil__ == null || !(_cu : Dynamic).__nil__))) {
                                {
                                    var __tmp__ = try {
                                        { _0 : (stdgo.Go.typeAssert((@:check2r _cu.val((115u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                                    } catch(_) {
                                        { _0 : (0 : stdgo.GoInt64), _1 : false };
                                    };
                                    _addrBase = @:tmpset0 __tmp__._0;
                                };
                            } else if (_a._tag == ((17u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _delay = (_delay.__append__((new stdgo._internal.debug.dwarf.Dwarf_t__entry___localname___delayed_12177.T__entry___localname___delayed_12177(_i, _off, (27u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) : stdgo._internal.debug.dwarf.Dwarf_t__entry___localname___delayed_12177.T__entry___localname___delayed_12177)));
                                break;
                            };
                            var _err:stdgo.Error = (null : stdgo.Error);
                            {
                                var __tmp__ = @:check2r (@:checkr _b ?? throw "null pointer dereference")._dwarf._debugAddr((@:checkr _b ?? throw "null pointer dereference")._format, (_addrBase : stdgo.GoUInt64), _off);
                                _val = stdgo.Go.toInterface(@:tmpset0 __tmp__._0);
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                if ((@:checkr _b ?? throw "null pointer dereference")._err == null) {
                                    (@:checkr _b ?? throw "null pointer dereference")._err = _err;
                                };
                                return null;
                            };
                            break;
                        } else if (__value__ == ((10u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(@:check2r _b._bytes((@:check2r _b._uint8() : stdgo.GoInt)));
                            break;
                        } else if (__value__ == ((3u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(@:check2r _b._bytes((@:check2r _b._uint16() : stdgo.GoInt)));
                            break;
                        } else if (__value__ == ((4u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(@:check2r _b._bytes((@:check2r _b._uint32() : stdgo.GoInt)));
                            break;
                        } else if (__value__ == ((9u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(@:check2r _b._bytes((@:check2r _b._uint() : stdgo.GoInt)));
                            break;
                        } else if (__value__ == ((11u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface((@:check2r _b._uint8() : stdgo.GoInt64));
                            break;
                        } else if (__value__ == ((5u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface((@:check2r _b._uint16() : stdgo.GoInt64));
                            break;
                        } else if (__value__ == ((6u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface((@:check2r _b._uint32() : stdgo.GoInt64));
                            break;
                        } else if (__value__ == ((7u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface((@:check2r _b._uint64() : stdgo.GoInt64));
                            break;
                        } else if (__value__ == ((30u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(@:check2r _b._bytes((16 : stdgo.GoInt)));
                            break;
                        } else if (__value__ == ((13u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface((@:check2r _b._int() : stdgo.GoInt64));
                            break;
                        } else if (__value__ == ((15u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface((@:check2r _b._uint() : stdgo.GoInt64));
                            break;
                        } else if (__value__ == ((33u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(_a._field[(_i : stdgo.GoInt)]._val);
                            break;
                        } else if (__value__ == ((12u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(@:check2r _b._uint8() == ((1 : stdgo.GoUInt8)));
                            break;
                        } else if (__value__ == ((25u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(true);
                            break;
                        } else if (__value__ == ((16u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            var _vers = ((@:checkr _b ?? throw "null pointer dereference")._format._version() : stdgo.GoInt);
                            if (_vers == ((0 : stdgo.GoInt))) {
                                @:check2r _b._error(("unknown version for DW_FORM_ref_addr" : stdgo.GoString));
                            } else if (_vers == ((2 : stdgo.GoInt))) {
                                _val = stdgo.Go.toInterface((@:check2r _b._addr() : stdgo._internal.debug.dwarf.Dwarf_offset.Offset));
                            } else {
                                var __tmp__ = (@:checkr _b ?? throw "null pointer dereference")._format._dwarf64(), _is64:Bool = __tmp__._0, _known:Bool = __tmp__._1;
                                if (!_known) {
                                    @:check2r _b._error(("unknown size for DW_FORM_ref_addr" : stdgo.GoString));
                                } else if (_is64) {
                                    _val = stdgo.Go.toInterface((@:check2r _b._uint64() : stdgo._internal.debug.dwarf.Dwarf_offset.Offset));
                                } else {
                                    _val = stdgo.Go.toInterface((@:check2r _b._uint32() : stdgo._internal.debug.dwarf.Dwarf_offset.Offset));
                                };
                            };
                            break;
                        } else if (__value__ == ((17u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(((@:check2r _b._uint8() : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) + _ubase : stdgo._internal.debug.dwarf.Dwarf_offset.Offset));
                            break;
                        } else if (__value__ == ((18u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(((@:check2r _b._uint16() : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) + _ubase : stdgo._internal.debug.dwarf.Dwarf_offset.Offset));
                            break;
                        } else if (__value__ == ((19u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(((@:check2r _b._uint32() : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) + _ubase : stdgo._internal.debug.dwarf.Dwarf_offset.Offset));
                            break;
                        } else if (__value__ == ((20u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(((@:check2r _b._uint64() : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) + _ubase : stdgo._internal.debug.dwarf.Dwarf_offset.Offset));
                            break;
                        } else if (__value__ == ((21u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(((@:check2r _b._uint() : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) + _ubase : stdgo._internal.debug.dwarf.Dwarf_offset.Offset));
                            break;
                        } else if (__value__ == ((8u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(@:check2r _b._string());
                            break;
                        } else if (__value__ == ((14u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((31u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            var _off:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                            var __tmp__ = (@:checkr _b ?? throw "null pointer dereference")._format._dwarf64(), _is64:Bool = __tmp__._0, _known:Bool = __tmp__._1;
                            if (!_known) {
                                @:check2r _b._error(("unknown size for DW_FORM_strp/line_strp" : stdgo.GoString));
                            } else if (_is64) {
                                _off = @:check2r _b._uint64();
                            } else {
                                _off = (@:check2r _b._uint32() : stdgo.GoUInt64);
                            };
                            if (((_off : stdgo.GoInt) : stdgo.GoUInt64) != (_off)) {
                                @:check2r _b._error(("DW_FORM_strp/line_strp offset out of range" : stdgo.GoString));
                            };
                            if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
                                return null;
                            };
                            var _b1:stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf = ({} : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
                            if (_fmt == ((14u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                                _b1 = stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf((@:checkr _b ?? throw "null pointer dereference")._dwarf, (@:checkr _b ?? throw "null pointer dereference")._format, ("str" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), (@:checkr (@:checkr _b ?? throw "null pointer dereference")._dwarf ?? throw "null pointer dereference")._str)?.__copy__();
                            } else {
                                if (((@:checkr (@:checkr _b ?? throw "null pointer dereference")._dwarf ?? throw "null pointer dereference")._lineStr.length) == ((0 : stdgo.GoInt))) {
                                    @:check2r _b._error(("DW_FORM_line_strp with no .debug_line_str section" : stdgo.GoString));
                                    return null;
                                };
                                _b1 = stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf((@:checkr _b ?? throw "null pointer dereference")._dwarf, (@:checkr _b ?? throw "null pointer dereference")._format, ("line_str" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), (@:checkr (@:checkr _b ?? throw "null pointer dereference")._dwarf ?? throw "null pointer dereference")._lineStr)?.__copy__();
                            };
                            @:check2 _b1._skip((_off : stdgo.GoInt));
                            _val = stdgo.Go.toInterface(@:check2 _b1._string());
                            if (_b1._err != null) {
                                (@:checkr _b ?? throw "null pointer dereference")._err = _b1._err;
                                return null;
                            };
                            break;
                        } else if (__value__ == ((26u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((37u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((38u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((39u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((40u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            var _off:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                            {
                                final __value__ = _fmt;
                                if (__value__ == ((26u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                                    _off = @:check2r _b._uint();
                                } else if (__value__ == ((37u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                                    _off = (@:check2r _b._uint8() : stdgo.GoUInt64);
                                } else if (__value__ == ((38u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                                    _off = (@:check2r _b._uint16() : stdgo.GoUInt64);
                                } else if (__value__ == ((39u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                                    _off = (@:check2r _b._uint24() : stdgo.GoUInt64);
                                } else if (__value__ == ((40u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                                    _off = (@:check2r _b._uint32() : stdgo.GoUInt64);
                                };
                            };
                            if (((@:checkr (@:checkr _b ?? throw "null pointer dereference")._dwarf ?? throw "null pointer dereference")._strOffsets.length) == ((0 : stdgo.GoInt))) {
                                @:check2r _b._error(("DW_FORM_strx with no .debug_str_offsets section" : stdgo.GoString));
                            };
                            var __tmp__ = (@:checkr _b ?? throw "null pointer dereference")._format._dwarf64(), _is64:Bool = __tmp__._0, _known:Bool = __tmp__._1;
                            if (!_known) {
                                @:check2r _b._error(("unknown offset size for DW_FORM_strx" : stdgo.GoString));
                            };
                            if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
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
                                        { _0 : (stdgo.Go.typeAssert((@:check2r _cu.val((114u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                                    } catch(_) {
                                        { _0 : (0 : stdgo.GoInt64), _1 : false };
                                    };
                                    _strBase = @:tmpset0 __tmp__._0;
                                };
                            } else if (_a._tag == ((17u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _delay = (_delay.__append__((new stdgo._internal.debug.dwarf.Dwarf_t__entry___localname___delayed_12177.T__entry___localname___delayed_12177(_i, _off, (26u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) : stdgo._internal.debug.dwarf.Dwarf_t__entry___localname___delayed_12177.T__entry___localname___delayed_12177)));
                                break;
                            };
                            _val = stdgo.Go.toInterface(_resolveStrx((_strBase : stdgo.GoUInt64), _off));
                            break;
                        } else if (__value__ == ((29u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            var __tmp__ = (@:checkr _b ?? throw "null pointer dereference")._format._dwarf64(), _is64:Bool = __tmp__._0, _known:Bool = __tmp__._1;
                            if (!_known) {
                                @:check2r _b._error(("unknown size for DW_FORM_strp_sup" : stdgo.GoString));
                            } else if (_is64) {
                                _val = stdgo.Go.toInterface(@:check2r _b._uint64());
                            } else {
                                _val = stdgo.Go.toInterface(@:check2r _b._uint32());
                            };
                            break;
                        } else if (__value__ == ((23u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((7968u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((7969u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            var __tmp__ = (@:checkr _b ?? throw "null pointer dereference")._format._dwarf64(), _is64:Bool = __tmp__._0, _known:Bool = __tmp__._1;
                            if (!_known) {
                                @:check2r _b._error((("unknown size for form 0x" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((_fmt : stdgo.GoInt64), (16 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__());
                            } else if (_is64) {
                                _val = stdgo.Go.toInterface((@:check2r _b._uint64() : stdgo.GoInt64));
                            } else {
                                _val = stdgo.Go.toInterface((@:check2r _b._uint32() : stdgo.GoInt64));
                            };
                            break;
                        } else if (__value__ == ((24u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(@:check2r _b._bytes((@:check2r _b._uint() : stdgo.GoInt)));
                            break;
                        } else if (__value__ == ((32u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(@:check2r _b._uint64());
                            break;
                        } else if (__value__ == ((28u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(@:check2r _b._uint32());
                            break;
                        } else if (__value__ == ((36u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(@:check2r _b._uint64());
                            break;
                        } else if (__value__ == ((34u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(@:check2r _b._uint());
                            break;
                        } else if (__value__ == ((35u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            var _off = (@:check2r _b._uint() : stdgo.GoUInt64);
                            var _rnglistsBase:stdgo.GoInt64 = (0 : stdgo.GoInt64);
                            if ((_cu != null && ((_cu : Dynamic).__nil__ == null || !(_cu : Dynamic).__nil__))) {
                                {
                                    var __tmp__ = try {
                                        { _0 : (stdgo.Go.typeAssert((@:check2r _cu.val((116u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                                    } catch(_) {
                                        { _0 : (0 : stdgo.GoInt64), _1 : false };
                                    };
                                    _rnglistsBase = @:tmpset0 __tmp__._0;
                                };
                            } else if (_a._tag == ((17u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _delay = (_delay.__append__((new stdgo._internal.debug.dwarf.Dwarf_t__entry___localname___delayed_12177.T__entry___localname___delayed_12177(_i, _off, (35u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) : stdgo._internal.debug.dwarf.Dwarf_t__entry___localname___delayed_12177.T__entry___localname___delayed_12177)));
                                break;
                            };
                            _val = stdgo.Go.toInterface(_resolveRnglistx((_rnglistsBase : stdgo.GoUInt64), _off));
                            break;
                        } else {
                            @:check2r _b._error((("unknown entry attr format 0x" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((_fmt : stdgo.GoInt64), (16 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__());
                        };
                    };
                    break;
                };
            };
            (@:checkr _e ?? throw "null pointer dereference").field[(_i : stdgo.GoInt)].val = _val;
        };
        if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
            return null;
        };
        for (__3 => _del in _delay) {
            {
                final __value__ = _del._fmt;
                if (__value__ == ((27u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((@:check2r _e.val((115u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                    } catch(_) {
                        { _0 : (0 : stdgo.GoInt64), _1 : false };
                    }, _addrBase = __tmp__._0, __4 = __tmp__._1;
                    var __tmp__ = @:check2r (@:checkr _b ?? throw "null pointer dereference")._dwarf._debugAddr((@:checkr _b ?? throw "null pointer dereference")._format, (_addrBase : stdgo.GoUInt64), _del._off), _val:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        (@:checkr _b ?? throw "null pointer dereference")._err = _err;
                        return null;
                    };
                    (@:checkr _e ?? throw "null pointer dereference").field[(_del._idx : stdgo.GoInt)].val = stdgo.Go.toInterface(_val);
                } else if (__value__ == ((26u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((@:check2r _e.val((114u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                    } catch(_) {
                        { _0 : (0 : stdgo.GoInt64), _1 : false };
                    }, _strBase = __tmp__._0, __4 = __tmp__._1;
                    (@:checkr _e ?? throw "null pointer dereference").field[(_del._idx : stdgo.GoInt)].val = stdgo.Go.toInterface(_resolveStrx((_strBase : stdgo.GoUInt64), _del._off));
                    if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
                        return null;
                    };
                } else if (__value__ == ((35u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((@:check2r _e.val((116u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                    } catch(_) {
                        { _0 : (0 : stdgo.GoInt64), _1 : false };
                    }, _rnglistsBase = __tmp__._0, __4 = __tmp__._1;
                    (@:checkr _e ?? throw "null pointer dereference").field[(_del._idx : stdgo.GoInt)].val = stdgo.Go.toInterface(_resolveRnglistx((_rnglistsBase : stdgo.GoUInt64), _del._off));
                    if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
                        return null;
                    };
                };
            };
        };
        return _e;
    }
    @:keep
    @:tdfield
    static public function _error( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>, _s:stdgo.GoString):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf> = _b;
        if ((@:checkr _b ?? throw "null pointer dereference")._err == null) {
            (@:checkr _b ?? throw "null pointer dereference")._data = (null : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _b ?? throw "null pointer dereference")._err = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError((@:checkr _b ?? throw "null pointer dereference")._name?.__copy__(), (@:checkr _b ?? throw "null pointer dereference")._off, _s?.__copy__()) : stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError));
        };
    }
    @:keep
    @:tdfield
    static public function _unitLength( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>):{ var _0 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset; var _1 : Bool; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf> = _b;
        var _length = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), _dwarf64 = false;
        _length = (@:check2r _b._uint32() : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
        if (_length == ((-1u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset))) {
            _dwarf64 = true;
            _length = (@:check2r _b._uint64() : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
        } else if ((_length >= (-16u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) : Bool)) {
            @:check2r _b._error(("unit length has reserved value" : stdgo.GoString));
        };
        return { _0 : _length, _1 : _dwarf64 };
    }
    @:keep
    @:tdfield
    static public function _addr( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>):stdgo.GoUInt64 {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf> = _b;
        {
            final __value__ = (@:checkr _b ?? throw "null pointer dereference")._format._addrsize();
            if (__value__ == ((1 : stdgo.GoInt))) {
                return (@:check2r _b._uint8() : stdgo.GoUInt64);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                return (@:check2r _b._uint16() : stdgo.GoUInt64);
            } else if (__value__ == ((4 : stdgo.GoInt))) {
                return (@:check2r _b._uint32() : stdgo.GoUInt64);
            } else if (__value__ == ((8 : stdgo.GoInt))) {
                return @:check2r _b._uint64();
            };
        };
        @:check2r _b._error(("unknown address size" : stdgo.GoString));
        return (0i64 : stdgo.GoUInt64);
    }
    @:keep
    @:tdfield
    static public function _int( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>):stdgo.GoInt64 {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf> = _b;
        var __tmp__ = @:check2r _b._varint(), _ux:stdgo.GoUInt64 = __tmp__._0, _bits:stdgo.GoUInt = __tmp__._1;
        var _x = (_ux : stdgo.GoInt64);
        if ((_x & (((1i64 : stdgo.GoInt64) << ((_bits - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoInt64)) : stdgo.GoInt64) != ((0i64 : stdgo.GoInt64))) {
            _x = (_x | (((-1i64 : stdgo.GoInt64) << _bits : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        return _x;
    }
    @:keep
    @:tdfield
    static public function _uint( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>):stdgo.GoUInt64 {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf> = _b;
        var __tmp__ = @:check2r _b._varint(), _x:stdgo.GoUInt64 = __tmp__._0, __3:stdgo.GoUInt = __tmp__._1;
        return _x;
    }
    @:keep
    @:tdfield
    static public function _varint( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf> = _b;
        var _c = (0 : stdgo.GoUInt64), _bits = (0 : stdgo.GoUInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < ((@:checkr _b ?? throw "null pointer dereference")._data.length) : Bool)) {
                var _byte = ((@:checkr _b ?? throw "null pointer dereference")._data[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
_c = (_c | ((((_byte & (127 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64) << _bits : stdgo.GoUInt64)) : stdgo.GoUInt64);
_bits = (_bits + ((7u32 : stdgo.GoUInt)) : stdgo.GoUInt);
if ((_byte & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
                    (@:checkr _b ?? throw "null pointer dereference")._off = ((@:checkr _b ?? throw "null pointer dereference")._off + (((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset)) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
                    (@:checkr _b ?? throw "null pointer dereference")._data = ((@:checkr _b ?? throw "null pointer dereference")._data.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt; } = { _0 : _c, _1 : _bits };
                        _c = __tmp__._0;
                        _bits = __tmp__._1;
                        __tmp__;
                    };
                };
                _i++;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt; } = { _0 : (0i64 : stdgo.GoUInt64), _1 : (0u32 : stdgo.GoUInt) };
            _c = __tmp__._0;
            _bits = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _uint64( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>):stdgo.GoUInt64 {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf> = _b;
        var _a = @:check2r _b._bytes((8 : stdgo.GoInt));
        if (_a == null) {
            return (0i64 : stdgo.GoUInt64);
        };
        return (@:checkr _b ?? throw "null pointer dereference")._order.uint64(_a);
    }
    @:keep
    @:tdfield
    static public function _uint32( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>):stdgo.GoUInt32 {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf> = _b;
        var _a = @:check2r _b._bytes((4 : stdgo.GoInt));
        if (_a == null) {
            return (0u32 : stdgo.GoUInt32);
        };
        return (@:checkr _b ?? throw "null pointer dereference")._order.uint32(_a);
    }
    @:keep
    @:tdfield
    static public function _uint24( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>):stdgo.GoUInt32 {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf> = _b;
        var _a = @:check2r _b._bytes((3 : stdgo.GoInt));
        if (_a == null) {
            return (0u32 : stdgo.GoUInt32);
        };
        if ((@:checkr (@:checkr _b ?? throw "null pointer dereference")._dwarf ?? throw "null pointer dereference")._bigEndian) {
            return (((_a[(2 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_a[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_a[(0 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
        } else {
            return (((_a[(0 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_a[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_a[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
        };
    }
    @:keep
    @:tdfield
    static public function _uint16( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>):stdgo.GoUInt16 {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf> = _b;
        var _a = @:check2r _b._bytes((2 : stdgo.GoInt));
        if (_a == null) {
            return (0 : stdgo.GoUInt16);
        };
        return (@:checkr _b ?? throw "null pointer dereference")._order.uint16(_a);
    }
    @:keep
    @:tdfield
    static public function _string( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf> = _b;
        var _i = (stdgo._internal.bytes.Bytes_indexbyte.indexByte((@:checkr _b ?? throw "null pointer dereference")._data, (0 : stdgo.GoUInt8)) : stdgo.GoInt);
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            @:check2r _b._error(("underflow" : stdgo.GoString));
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var _s = ((((@:checkr _b ?? throw "null pointer dereference")._data.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        (@:checkr _b ?? throw "null pointer dereference")._data = ((@:checkr _b ?? throw "null pointer dereference")._data.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _b ?? throw "null pointer dereference")._off = ((@:checkr _b ?? throw "null pointer dereference")._off + (((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset)) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
        return _s?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _skip( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>, _n:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf> = _b;
        @:check2r _b._bytes(_n);
    }
    @:keep
    @:tdfield
    static public function _bytes( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf> = _b;
        if (((_n < (0 : stdgo.GoInt) : Bool) || (((@:checkr _b ?? throw "null pointer dereference")._data.length) < _n : Bool) : Bool)) {
            @:check2r _b._error(("underflow" : stdgo.GoString));
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _data = ((@:checkr _b ?? throw "null pointer dereference")._data.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _b ?? throw "null pointer dereference")._data = ((@:checkr _b ?? throw "null pointer dereference")._data.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _b ?? throw "null pointer dereference")._off = ((@:checkr _b ?? throw "null pointer dereference")._off + ((_n : stdgo._internal.debug.dwarf.Dwarf_offset.Offset)) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
        return _data;
    }
    @:keep
    @:tdfield
    static public function _uint8( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>):stdgo.GoUInt8 {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf> = _b;
        if ((((@:checkr _b ?? throw "null pointer dereference")._data.length) < (1 : stdgo.GoInt) : Bool)) {
            @:check2r _b._error(("underflow" : stdgo.GoString));
            return (0 : stdgo.GoUInt8);
        };
        var _val = ((@:checkr _b ?? throw "null pointer dereference")._data[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        (@:checkr _b ?? throw "null pointer dereference")._data = ((@:checkr _b ?? throw "null pointer dereference")._data.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _b ?? throw "null pointer dereference")._off++;
        return _val;
    }
}
