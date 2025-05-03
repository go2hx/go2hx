package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.T_buf_asInterface) class T_buf_static_extension {
    @:keep
    @:tdfield
    static public function _entry( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>, _cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>, _atab:stdgo._internal.debug.dwarf.Dwarf_t_abbrevtable.T_abbrevTable, _ubase:stdgo._internal.debug.dwarf.Dwarf_offset.Offset, _vers:stdgo.GoInt):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf> = _b;
        var _off = ((@:checkr _b ?? throw "null pointer dereference")._off : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
        var _id = (_b._uint() : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L413"
        if (_id == ((0u32 : stdgo.GoUInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L414"
            return (stdgo.Go.setRef((new stdgo._internal.debug.dwarf.Dwarf_entry.Entry() : stdgo._internal.debug.dwarf.Dwarf_entry.Entry)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>);
        };
        var __tmp__ = (_atab != null && _atab.__exists__(_id) ? { _0 : _atab[_id], _1 : true } : { _0 : ({} : stdgo._internal.debug.dwarf.Dwarf_t_abbrev.T_abbrev), _1 : false }), _a:stdgo._internal.debug.dwarf.Dwarf_t_abbrev.T_abbrev = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L417"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L418"
            _b._error(("unknown abbreviation table index" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L419"
            return null;
        };
        var _e = (stdgo.Go.setRef(({ offset : _off, tag : _a._tag, children : _a._children, field : (new stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_field.Field>((_a._field.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_a._field.length : stdgo.GoInt).toBasic() > 0 ? (_a._field.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.dwarf.Dwarf_field.Field)]) : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_field.Field>) } : stdgo._internal.debug.dwarf.Dwarf_entry.Entry)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>);
        {};
        var _delay:stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t__entry___localname___delayed_12177.T__entry___localname___delayed_12177> = (null : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t__entry___localname___delayed_12177.T__entry___localname___delayed_12177>);
        var _resolveStrx = (function(_strBase:stdgo.GoUInt64, _off:stdgo.GoUInt64):stdgo.GoString {
            _off = (_off + (_strBase) : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L440"
            if (((_off : stdgo.GoInt) : stdgo.GoUInt64) != (_off)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L441"
                _b._error(("DW_FORM_strx offset out of range" : stdgo.GoString));
            };
            var _b1 = (stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf((@:checkr _b ?? throw "null pointer dereference")._dwarf, (@:checkr _b ?? throw "null pointer dereference")._format, ("str_offsets" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), (@:checkr (@:checkr _b ?? throw "null pointer dereference")._dwarf ?? throw "null pointer dereference")._strOffsets)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L445"
            _b1._skip((_off : stdgo.GoInt));
            var __tmp__ = (@:checkr _b ?? throw "null pointer dereference")._format._dwarf64(), _is64:Bool = __tmp__._0, __3:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L447"
            if (_is64) {
                _off = _b1._uint64();
            } else {
                _off = (_b1._uint32() : stdgo.GoUInt64);
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L452"
            if (_b1._err != null) {
                (@:checkr _b ?? throw "null pointer dereference")._err = _b1._err;
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L454"
                return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L456"
            if (((_off : stdgo.GoInt) : stdgo.GoUInt64) != (_off)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L457"
                _b._error(("DW_FORM_strx indirect offset out of range" : stdgo.GoString));
            };
            _b1 = stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf((@:checkr _b ?? throw "null pointer dereference")._dwarf, (@:checkr _b ?? throw "null pointer dereference")._format, ("str" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), (@:checkr (@:checkr _b ?? throw "null pointer dereference")._dwarf ?? throw "null pointer dereference")._str)?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L460"
            _b1._skip((_off : stdgo.GoInt));
            var _val = (_b1._string()?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L462"
            if (_b1._err != null) {
                (@:checkr _b ?? throw "null pointer dereference")._err = _b1._err;
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L465"
            return _val?.__copy__();
        } : (stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoString);
        var _resolveRnglistx = (function(_rnglistsBase:stdgo.GoUInt64, _off:stdgo.GoUInt64):stdgo.GoUInt64 {
            var __tmp__ = (@:checkr _b ?? throw "null pointer dereference")._format._dwarf64(), _is64:Bool = __tmp__._0, __3:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L470"
            if (_is64) {
                _off = (_off * ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            } else {
                _off = (_off * ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            };
            _off = (_off + (_rnglistsBase) : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L476"
            if (((_off : stdgo.GoInt) : stdgo.GoUInt64) != (_off)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L477"
                _b._error(("DW_FORM_rnglistx offset out of range" : stdgo.GoString));
            };
            var _b1 = (stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf((@:checkr _b ?? throw "null pointer dereference")._dwarf, (@:checkr _b ?? throw "null pointer dereference")._format, ("rnglists" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), (@:checkr (@:checkr _b ?? throw "null pointer dereference")._dwarf ?? throw "null pointer dereference")._rngLists)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L481"
            _b1._skip((_off : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L482"
            if (_is64) {
                _off = _b1._uint64();
            } else {
                _off = (_b1._uint32() : stdgo.GoUInt64);
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L487"
            if (_b1._err != null) {
                (@:checkr _b ?? throw "null pointer dereference")._err = _b1._err;
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L489"
                return (0i64 : stdgo.GoUInt64);
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L491"
            if (((_off : stdgo.GoInt) : stdgo.GoUInt64) != (_off)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L492"
                _b._error(("DW_FORM_rnglistx indirect offset out of range" : stdgo.GoString));
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L494"
            return (_rnglistsBase + _off : stdgo.GoUInt64);
        } : (stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L497"
        for (_i => _ in (@:checkr _e ?? throw "null pointer dereference").field) {
            (@:checkr _e ?? throw "null pointer dereference").field[(_i : stdgo.GoInt)].attr = _a._field[(_i : stdgo.GoInt)]._attr;
            (@:checkr _e ?? throw "null pointer dereference").field[(_i : stdgo.GoInt)].class_ = _a._field[(_i : stdgo.GoInt)]._class;
            var _fmt = (_a._field[(_i : stdgo.GoInt)]._fmt : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L501"
            if (_fmt == ((22u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                _fmt = (_b._uint() : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format);
                (@:checkr _e ?? throw "null pointer dereference").field[(_i : stdgo.GoInt)].class_ = stdgo._internal.debug.dwarf.Dwarf__formtoclass._formToClass(_fmt, _a._field[(_i : stdgo.GoInt)]._attr, _vers, _b);
            };
            var _val:stdgo.AnyInterface = (null : stdgo.AnyInterface);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L506"
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _fmt;
                        if (__value__ == ((1u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(_b._addr());
                            break;
                        } else if (__value__ == ((27u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((41u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((42u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((43u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((44u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            var _off:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L515"
                            {
                                final __value__ = _fmt;
                                if (__value__ == ((27u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                                    _off = _b._uint();
                                } else if (__value__ == ((41u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                                    _off = (_b._uint8() : stdgo.GoUInt64);
                                } else if (__value__ == ((42u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                                    _off = (_b._uint16() : stdgo.GoUInt64);
                                } else if (__value__ == ((43u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                                    _off = (_b._uint24() : stdgo.GoUInt64);
                                } else if (__value__ == ((44u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                                    _off = (_b._uint32() : stdgo.GoUInt64);
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L527"
                            if ((@:checkr (@:checkr _b ?? throw "null pointer dereference")._dwarf ?? throw "null pointer dereference")._addr == null) {
                                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L528"
                                _b._error(("DW_FORM_addrx with no .debug_addr section" : stdgo.GoString));
                            };
                            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L530"
                            if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
                                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L531"
                                return null;
                            };
                            var _addrBase:stdgo.GoInt64 = (0 : stdgo.GoInt64);
                            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L539"
                            if (({
                                final value = _cu;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                {
                                    var __tmp__ = try {
                                        { _0 : (stdgo.Go.typeAssert((_cu.val((115u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                                    } catch(_) {
                                        { _0 : (0 : stdgo.GoInt64), _1 : false };
                                    };
                                    _addrBase = @:tmpset0 __tmp__._0;
                                };
                            } else if (_a._tag == ((17u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _delay = (_delay.__append__((new stdgo._internal.debug.dwarf.Dwarf_t__entry___localname___delayed_12177.T__entry___localname___delayed_12177(_i, _off, (27u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) : stdgo._internal.debug.dwarf.Dwarf_t__entry___localname___delayed_12177.T__entry___localname___delayed_12177)) : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t__entry___localname___delayed_12177.T__entry___localname___delayed_12177>);
                                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L543"
                                break;
                            };
                            var _err:stdgo.Error = (null : stdgo.Error);
                            {
                                var __tmp__ = (@:checkr _b ?? throw "null pointer dereference")._dwarf._debugAddr((@:checkr _b ?? throw "null pointer dereference")._format, (_addrBase : stdgo.GoUInt64), _off);
                                _val = stdgo.Go.toInterface(@:tmpset0 __tmp__._0);
                                _err = @:tmpset0 __tmp__._1;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L548"
                            if (_err != null) {
                                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L549"
                                if ((@:checkr _b ?? throw "null pointer dereference")._err == null) {
                                    (@:checkr _b ?? throw "null pointer dereference")._err = _err;
                                };
                                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L552"
                                return null;
                            };
                            break;
                        } else if (__value__ == ((10u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(_b._bytes((_b._uint8() : stdgo.GoInt)));
                            break;
                        } else if (__value__ == ((3u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(_b._bytes((_b._uint16() : stdgo.GoInt)));
                            break;
                        } else if (__value__ == ((4u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(_b._bytes((_b._uint32() : stdgo.GoInt)));
                            break;
                        } else if (__value__ == ((9u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(_b._bytes((_b._uint() : stdgo.GoInt)));
                            break;
                        } else if (__value__ == ((11u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface((_b._uint8() : stdgo.GoInt64));
                            break;
                        } else if (__value__ == ((5u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface((_b._uint16() : stdgo.GoInt64));
                            break;
                        } else if (__value__ == ((6u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface((_b._uint32() : stdgo.GoInt64));
                            break;
                        } else if (__value__ == ((7u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface((_b._uint64() : stdgo.GoInt64));
                            break;
                        } else if (__value__ == ((30u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(_b._bytes((16 : stdgo.GoInt)));
                            break;
                        } else if (__value__ == ((13u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface((_b._int() : stdgo.GoInt64));
                            break;
                        } else if (__value__ == ((15u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface((_b._uint() : stdgo.GoInt64));
                            break;
                        } else if (__value__ == ((33u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(_a._field[(_i : stdgo.GoInt)]._val);
                            break;
                        } else if (__value__ == ((12u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(_b._uint8() == ((1 : stdgo.GoUInt8)));
                            break;
                        } else if (__value__ == ((25u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(true);
                            break;
                        } else if (__value__ == ((16u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            var _vers = ((@:checkr _b ?? throw "null pointer dereference")._format._version() : stdgo.GoInt);
                            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L595"
                            if (_vers == ((0 : stdgo.GoInt))) {
                                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L596"
                                _b._error(("unknown version for DW_FORM_ref_addr" : stdgo.GoString));
                            } else if (_vers == ((2 : stdgo.GoInt))) {
                                _val = stdgo.Go.toInterface((_b._addr() : stdgo._internal.debug.dwarf.Dwarf_offset.Offset));
                            } else {
                                var __tmp__ = (@:checkr _b ?? throw "null pointer dereference")._format._dwarf64(), _is64:Bool = __tmp__._0, _known:Bool = __tmp__._1;
                                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L601"
                                if (!_known) {
                                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L602"
                                    _b._error(("unknown size for DW_FORM_ref_addr" : stdgo.GoString));
                                } else if (_is64) {
                                    _val = stdgo.Go.toInterface((_b._uint64() : stdgo._internal.debug.dwarf.Dwarf_offset.Offset));
                                } else {
                                    _val = stdgo.Go.toInterface((_b._uint32() : stdgo._internal.debug.dwarf.Dwarf_offset.Offset));
                                };
                            };
                            break;
                        } else if (__value__ == ((17u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(((_b._uint8() : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) + _ubase : stdgo._internal.debug.dwarf.Dwarf_offset.Offset));
                            break;
                        } else if (__value__ == ((18u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(((_b._uint16() : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) + _ubase : stdgo._internal.debug.dwarf.Dwarf_offset.Offset));
                            break;
                        } else if (__value__ == ((19u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(((_b._uint32() : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) + _ubase : stdgo._internal.debug.dwarf.Dwarf_offset.Offset));
                            break;
                        } else if (__value__ == ((20u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(((_b._uint64() : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) + _ubase : stdgo._internal.debug.dwarf.Dwarf_offset.Offset));
                            break;
                        } else if (__value__ == ((21u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(((_b._uint() : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) + _ubase : stdgo._internal.debug.dwarf.Dwarf_offset.Offset));
                            break;
                        } else if (__value__ == ((8u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(_b._string());
                            break;
                        } else if (__value__ == ((14u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((31u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            var _off:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                            var __tmp__ = (@:checkr _b ?? throw "null pointer dereference")._format._dwarf64(), _is64:Bool = __tmp__._0, _known:Bool = __tmp__._1;
                            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L626"
                            if (!_known) {
                                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L627"
                                _b._error(("unknown size for DW_FORM_strp/line_strp" : stdgo.GoString));
                            } else if (_is64) {
                                _off = _b._uint64();
                            } else {
                                _off = (_b._uint32() : stdgo.GoUInt64);
                            };
                            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L633"
                            if (((_off : stdgo.GoInt) : stdgo.GoUInt64) != (_off)) {
                                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L634"
                                _b._error(("DW_FORM_strp/line_strp offset out of range" : stdgo.GoString));
                            };
                            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L636"
                            if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
                                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L637"
                                return null;
                            };
                            var _b1:stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf = ({} : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
                            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L640"
                            if (_fmt == ((14u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                                _b1 = stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf((@:checkr _b ?? throw "null pointer dereference")._dwarf, (@:checkr _b ?? throw "null pointer dereference")._format, ("str" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), (@:checkr (@:checkr _b ?? throw "null pointer dereference")._dwarf ?? throw "null pointer dereference")._str)?.__copy__();
                            } else {
                                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L643"
                                if (((@:checkr (@:checkr _b ?? throw "null pointer dereference")._dwarf ?? throw "null pointer dereference")._lineStr.length) == ((0 : stdgo.GoInt))) {
                                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L644"
                                    _b._error(("DW_FORM_line_strp with no .debug_line_str section" : stdgo.GoString));
                                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L645"
                                    return null;
                                };
                                _b1 = stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf((@:checkr _b ?? throw "null pointer dereference")._dwarf, (@:checkr _b ?? throw "null pointer dereference")._format, ("line_str" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), (@:checkr (@:checkr _b ?? throw "null pointer dereference")._dwarf ?? throw "null pointer dereference")._lineStr)?.__copy__();
                            };
                            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L649"
                            _b1._skip((_off : stdgo.GoInt));
                            _val = stdgo.Go.toInterface(_b1._string());
                            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L651"
                            if (_b1._err != null) {
                                (@:checkr _b ?? throw "null pointer dereference")._err = _b1._err;
                                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L653"
                                return null;
                            };
                            break;
                        } else if (__value__ == ((26u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((37u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((38u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((39u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((40u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            var _off:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L657"
                            {
                                final __value__ = _fmt;
                                if (__value__ == ((26u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                                    _off = _b._uint();
                                } else if (__value__ == ((37u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                                    _off = (_b._uint8() : stdgo.GoUInt64);
                                } else if (__value__ == ((38u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                                    _off = (_b._uint16() : stdgo.GoUInt64);
                                } else if (__value__ == ((39u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                                    _off = (_b._uint24() : stdgo.GoUInt64);
                                } else if (__value__ == ((40u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                                    _off = (_b._uint32() : stdgo.GoUInt64);
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L669"
                            if (((@:checkr (@:checkr _b ?? throw "null pointer dereference")._dwarf ?? throw "null pointer dereference")._strOffsets.length) == ((0 : stdgo.GoInt))) {
                                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L670"
                                _b._error(("DW_FORM_strx with no .debug_str_offsets section" : stdgo.GoString));
                            };
                            var __tmp__ = (@:checkr _b ?? throw "null pointer dereference")._format._dwarf64(), _is64:Bool = __tmp__._0, _known:Bool = __tmp__._1;
                            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L673"
                            if (!_known) {
                                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L674"
                                _b._error(("unknown offset size for DW_FORM_strx" : stdgo.GoString));
                            };
                            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L676"
                            if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
                                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L677"
                                return null;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L679"
                            if (_is64) {
                                _off = (_off * ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                            } else {
                                _off = (_off * ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                            };
                            var _strBase:stdgo.GoInt64 = (0 : stdgo.GoInt64);
                            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L690"
                            if (({
                                final value = _cu;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                {
                                    var __tmp__ = try {
                                        { _0 : (stdgo.Go.typeAssert((_cu.val((114u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                                    } catch(_) {
                                        { _0 : (0 : stdgo.GoInt64), _1 : false };
                                    };
                                    _strBase = @:tmpset0 __tmp__._0;
                                };
                            } else if (_a._tag == ((17u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _delay = (_delay.__append__((new stdgo._internal.debug.dwarf.Dwarf_t__entry___localname___delayed_12177.T__entry___localname___delayed_12177(_i, _off, (26u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) : stdgo._internal.debug.dwarf.Dwarf_t__entry___localname___delayed_12177.T__entry___localname___delayed_12177)) : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t__entry___localname___delayed_12177.T__entry___localname___delayed_12177>);
                                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L694"
                                break;
                            };
                            _val = stdgo.Go.toInterface(_resolveStrx((_strBase : stdgo.GoUInt64), _off));
                            break;
                        } else if (__value__ == ((29u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            var __tmp__ = (@:checkr _b ?? throw "null pointer dereference")._format._dwarf64(), _is64:Bool = __tmp__._0, _known:Bool = __tmp__._1;
                            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L701"
                            if (!_known) {
                                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L702"
                                _b._error(("unknown size for DW_FORM_strp_sup" : stdgo.GoString));
                            } else if (_is64) {
                                _val = stdgo.Go.toInterface(_b._uint64());
                            } else {
                                _val = stdgo.Go.toInterface(_b._uint32());
                            };
                            break;
                        } else if (__value__ == ((23u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((7968u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((7969u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            var __tmp__ = (@:checkr _b ?? throw "null pointer dereference")._format._dwarf64(), _is64:Bool = __tmp__._0, _known:Bool = __tmp__._1;
                            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L714"
                            if (!_known) {
                                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L715"
                                _b._error((("unknown size for form 0x" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((_fmt : stdgo.GoInt64), (16 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__());
                            } else if (_is64) {
                                _val = stdgo.Go.toInterface((_b._uint64() : stdgo.GoInt64));
                            } else {
                                _val = stdgo.Go.toInterface((_b._uint32() : stdgo.GoInt64));
                            };
                            break;
                        } else if (__value__ == ((24u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(_b._bytes((_b._uint() : stdgo.GoInt)));
                            break;
                        } else if (__value__ == ((32u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(_b._uint64());
                            break;
                        } else if (__value__ == ((28u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(_b._uint32());
                            break;
                        } else if (__value__ == ((36u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(_b._uint64());
                            break;
                        } else if (__value__ == ((34u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            _val = stdgo.Go.toInterface(_b._uint());
                            break;
                        } else if (__value__ == ((35u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                            var _off = (_b._uint() : stdgo.GoUInt64);
                            var _rnglistsBase:stdgo.GoInt64 = (0 : stdgo.GoInt64);
                            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L750"
                            if (({
                                final value = _cu;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                {
                                    var __tmp__ = try {
                                        { _0 : (stdgo.Go.typeAssert((_cu.val((116u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                                    } catch(_) {
                                        { _0 : (0 : stdgo.GoInt64), _1 : false };
                                    };
                                    _rnglistsBase = @:tmpset0 __tmp__._0;
                                };
                            } else if (_a._tag == ((17u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
                                _delay = (_delay.__append__((new stdgo._internal.debug.dwarf.Dwarf_t__entry___localname___delayed_12177.T__entry___localname___delayed_12177(_i, _off, (35u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) : stdgo._internal.debug.dwarf.Dwarf_t__entry___localname___delayed_12177.T__entry___localname___delayed_12177)) : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t__entry___localname___delayed_12177.T__entry___localname___delayed_12177>);
                                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L754"
                                break;
                            };
                            _val = stdgo.Go.toInterface(_resolveRnglistx((_rnglistsBase : stdgo.GoUInt64), _off));
                            break;
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L508"
                            _b._error((("unknown entry attr format 0x" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((_fmt : stdgo.GoInt64), (16 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__());
                        };
                    };
                    break;
                };
            };
            (@:checkr _e ?? throw "null pointer dereference").field[(_i : stdgo.GoInt)].val = _val;
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L762"
        if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L763"
            return null;
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L766"
        for (__3 => _del in _delay) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L767"
            {
                final __value__ = _del._fmt;
                if (__value__ == ((27u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_e.val((115u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                    } catch(_) {
                        { _0 : (0 : stdgo.GoInt64), _1 : false };
                    }, _addrBase = __tmp__._0, __4 = __tmp__._1;
                    var __tmp__ = (@:checkr _b ?? throw "null pointer dereference")._dwarf._debugAddr((@:checkr _b ?? throw "null pointer dereference")._format, (_addrBase : stdgo.GoUInt64), _del._off), _val:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L771"
                    if (_err != null) {
                        (@:checkr _b ?? throw "null pointer dereference")._err = _err;
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L773"
                        return null;
                    };
                    (@:checkr _e ?? throw "null pointer dereference").field[(_del._idx : stdgo.GoInt)].val = stdgo.Go.toInterface(_val);
                } else if (__value__ == ((26u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_e.val((114u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                    } catch(_) {
                        { _0 : (0 : stdgo.GoInt64), _1 : false };
                    }, _strBase = __tmp__._0, __4 = __tmp__._1;
                    (@:checkr _e ?? throw "null pointer dereference").field[(_del._idx : stdgo.GoInt)].val = stdgo.Go.toInterface(_resolveStrx((_strBase : stdgo.GoUInt64), _del._off));
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L779"
                    if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L780"
                        return null;
                    };
                } else if (__value__ == ((35u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_e.val((116u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                    } catch(_) {
                        { _0 : (0 : stdgo.GoInt64), _1 : false };
                    }, _rnglistsBase = __tmp__._0, __4 = __tmp__._1;
                    (@:checkr _e ?? throw "null pointer dereference").field[(_del._idx : stdgo.GoInt)].val = stdgo.Go.toInterface(_resolveRnglistx((_rnglistsBase : stdgo.GoUInt64), _del._off));
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L785"
                    if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L786"
                        return null;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L791"
        return _e;
    }
    @:keep
    @:tdfield
    static public function _error( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>, _s:stdgo.GoString):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf> = _b;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L191"
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
        _length = (_b._uint32() : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L181"
        if (_length == ((-1u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset))) {
            _dwarf64 = true;
            _length = (_b._uint64() : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
        } else if ((_length >= (-16u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L185"
            _b._error(("unit length has reserved value" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L187"
        return { _0 : _length, _1 : _dwarf64 };
    }
    @:keep
    @:tdfield
    static public function _addr( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>):stdgo.GoUInt64 {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf> = _b;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L165"
        {
            final __value__ = (@:checkr _b ?? throw "null pointer dereference")._format._addrsize();
            if (__value__ == ((1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L167"
                return (_b._uint8() : stdgo.GoUInt64);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L169"
                return (_b._uint16() : stdgo.GoUInt64);
            } else if (__value__ == ((4 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L171"
                return (_b._uint32() : stdgo.GoUInt64);
            } else if (__value__ == ((8 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L173"
                return _b._uint64();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L175"
        _b._error(("unknown address size" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L176"
        return (0i64 : stdgo.GoUInt64);
    }
    @:keep
    @:tdfield
    static public function _int( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>):stdgo.GoInt64 {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf> = _b;
        var __tmp__ = _b._varint(), _ux:stdgo.GoUInt64 = __tmp__._0, _bits:stdgo.GoUInt = __tmp__._1;
        var _x = (_ux : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L157"
        if ((_x & (((1i64 : stdgo.GoInt64) << ((_bits - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoInt64)) : stdgo.GoInt64) != ((0i64 : stdgo.GoInt64))) {
            _x = (_x | (((-1i64 : stdgo.GoInt64) << _bits : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L160"
        return _x;
    }
    @:keep
    @:tdfield
    static public function _uint( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>):stdgo.GoUInt64 {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf> = _b;
        var __tmp__ = _b._varint(), _x:stdgo.GoUInt64 = __tmp__._0, __3:stdgo.GoUInt = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L150"
        return _x;
    }
    @:keep
    @:tdfield
    static public function _varint( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf> = _b;
        var _c = (0 : stdgo.GoUInt64), _bits = (0 : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L134"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < ((@:checkr _b ?? throw "null pointer dereference")._data.length) : Bool)) {
                var _byte = ((@:checkr _b ?? throw "null pointer dereference")._data[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
_c = (_c | ((((_byte & (127 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64) << _bits : stdgo.GoUInt64)) : stdgo.GoUInt64);
_bits = (_bits + ((7u32 : stdgo.GoUInt)) : stdgo.GoUInt);
//"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L138"
                if ((_byte & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
                    (@:checkr _b ?? throw "null pointer dereference")._off = ((@:checkr _b ?? throw "null pointer dereference")._off + (((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset)) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
                    (@:checkr _b ?? throw "null pointer dereference")._data = ((@:checkr _b ?? throw "null pointer dereference")._data.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L141"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt; } = { _0 : _c, _1 : _bits };
                        _c = __tmp__._0;
                        _bits = __tmp__._1;
                        __tmp__;
                    };
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L144"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt; } = { _0 : (0i64 : stdgo.GoUInt64), _1 : (0u32 : stdgo.GoUInt) };
            _c = __tmp__._0;
            _bits = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _uint64( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>):stdgo.GoUInt64 {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf> = _b;
        var _a = _b._bytes((8 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L125"
        if (_a == null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L126"
            return (0i64 : stdgo.GoUInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L128"
        return (@:checkr _b ?? throw "null pointer dereference")._order.uint64(_a);
    }
    @:keep
    @:tdfield
    static public function _uint32( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>):stdgo.GoUInt32 {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf> = _b;
        var _a = _b._bytes((4 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L117"
        if (_a == null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L118"
            return (0u32 : stdgo.GoUInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L120"
        return (@:checkr _b ?? throw "null pointer dereference")._order.uint32(_a);
    }
    @:keep
    @:tdfield
    static public function _uint24( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>):stdgo.GoUInt32 {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf> = _b;
        var _a = _b._bytes((3 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L105"
        if (_a == null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L106"
            return (0u32 : stdgo.GoUInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L108"
        if ((@:checkr (@:checkr _b ?? throw "null pointer dereference")._dwarf ?? throw "null pointer dereference")._bigEndian) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L109"
            return (((_a[(2 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_a[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_a[(0 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
        } else {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L111"
            return (((_a[(0 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_a[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_a[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
        };
    }
    @:keep
    @:tdfield
    static public function _uint16( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>):stdgo.GoUInt16 {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf> = _b;
        var _a = _b._bytes((2 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L97"
        if (_a == null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L98"
            return (0 : stdgo.GoUInt16);
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L100"
        return (@:checkr _b ?? throw "null pointer dereference")._order.uint16(_a);
    }
    @:keep
    @:tdfield
    static public function _string( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf> = _b;
        var _i = (stdgo._internal.bytes.Bytes_indexbyte.indexByte((@:checkr _b ?? throw "null pointer dereference")._data, (0 : stdgo.GoUInt8)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L84"
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L85"
            _b._error(("underflow" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L86"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var _s = ((((@:checkr _b ?? throw "null pointer dereference")._data.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        (@:checkr _b ?? throw "null pointer dereference")._data = ((@:checkr _b ?? throw "null pointer dereference")._data.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _b ?? throw "null pointer dereference")._off = ((@:checkr _b ?? throw "null pointer dereference")._off + (((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset)) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L92"
        return _s?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _skip( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>, _n:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf> = _b;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L80"
        _b._bytes(_n);
    }
    @:keep
    @:tdfield
    static public function _bytes( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf> = _b;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L70"
        if (((_n < (0 : stdgo.GoInt) : Bool) || (((@:checkr _b ?? throw "null pointer dereference")._data.length) < _n : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L71"
            _b._error(("underflow" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L72"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _data = ((@:checkr _b ?? throw "null pointer dereference")._data.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _b ?? throw "null pointer dereference")._data = ((@:checkr _b ?? throw "null pointer dereference")._data.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _b ?? throw "null pointer dereference")._off = ((@:checkr _b ?? throw "null pointer dereference")._off + ((_n : stdgo._internal.debug.dwarf.Dwarf_offset.Offset)) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L77"
        return _data;
    }
    @:keep
    @:tdfield
    static public function _uint8( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>):stdgo.GoUInt8 {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf> = _b;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L59"
        if ((((@:checkr _b ?? throw "null pointer dereference")._data.length) < (1 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L60"
            _b._error(("underflow" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L61"
            return (0 : stdgo.GoUInt8);
        };
        var _val = ((@:checkr _b ?? throw "null pointer dereference")._data[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        (@:checkr _b ?? throw "null pointer dereference")._data = ((@:checkr _b ?? throw "null pointer dereference")._data.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L65"
        (@:checkr _b ?? throw "null pointer dereference")._off++;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/buf.go#L66"
        return _val;
    }
}
