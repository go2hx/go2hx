package debug.dwarf;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
typedef T_dataFormat = StructType & {
    public function _version():GoInt;
    public function _dwarf64():{ var _0 : Bool; var _1 : Bool; };
    public function _addrsize():GoInt;
};
typedef Type = StructType & {
    public function common():Pointer<CommonType>;
    public function toString():GoString;
    public function size():GoInt64;
};
typedef T_typeReader = StructType & {
    public function seek(arg0:Offset):Void;
    public function next():{ var _0 : Pointer<Entry>; var _1 : Error; };
    public function _clone():T_typeReader;
    public function _offset():Offset;
    public function addressSize():GoInt;
};
@:local typedef T__interface_6 = StructType & {
    public function basic():Pointer<BasicType>;
};
@:structInit class T_buf {
    public function _entry(_cu:Pointer<Entry>, _atab:T_abbrevTable, _ubase:Offset, _vers:GoInt):Pointer<Entry> {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _off:Offset = _b.value._off;
        var _id:GoUInt32 = ((_b.value._uint() : GoUInt32));
        if (_id == ((0 : GoUInt32))) {
            return Go.pointer(new Entry());
        };
        var __tmp__ = _atab.exists(_id) ? { value : _atab[_id], ok : true } : { value : _atab.defaultValue(), ok : false }, _a:T_abbrev = __tmp__.value, _ok:Bool = __tmp__.ok;
        if (!_ok) {
            _b.value._error("unknown abbreviation table index");
            return new Pointer<Entry>().nil();
        };
        var _e:Pointer<Entry> = Go.pointer((({ offset : _off, tag : _a._tag, children : _a._children, field : new Slice<Field>(...[for (i in 0 ... ((_a._field.length : GoInt)).toBasic()) new Field()]) } : Entry)));
        {};
        var _delay:Slice<T_delayed__entry_0> = new Slice<T_delayed__entry_0>().nil();
        var _resolveStrx:(GoUInt64, GoUInt64) -> GoString = function(_strBase:GoUInt64, _off:GoUInt64):GoString {
            _off = _off + (_strBase);
            if (((((_off : GoInt)) : GoUInt64)) != _off) {
                _b.value._error("DW_FORM_strx offset out of range");
            };
            var _b1:T_buf = _makeBuf(_b.value._dwarf, _b.value._format, "str_offsets", new Offset(((0 : GoUInt32))), _b.value._dwarf.value._strOffsets).__copy__();
            _b1._skip(((_off : GoInt)));
            var __tmp__ = _b.value._format._dwarf64(), _is64:Bool = __tmp__._0, _:Bool = __tmp__._1;
            if (_is64) {
                _off = _b1._uint64();
            } else {
                _off = ((_b1._uint32() : GoUInt64));
            };
            if (_b1._err != null) {
                _b.value._err = _b1._err;
                return "";
            };
            if (((((_off : GoInt)) : GoUInt64)) != _off) {
                _b.value._error("DW_FORM_strx indirect offset out of range");
            };
            _b1 = _makeBuf(_b.value._dwarf, _b.value._format, "str", new Offset(((0 : GoUInt32))), _b.value._dwarf.value._str).__copy__();
            _b1._skip(((_off : GoInt)));
            var _val:GoString = _b1._string();
            if (_b1._err != null) {
                _b.value._err = _b1._err;
            };
            return _val;
        };
        var _resolveRnglistx:(GoUInt64, GoUInt64) -> GoUInt64 = function(_rnglistsBase:GoUInt64, _off:GoUInt64):GoUInt64 {
            var __tmp__ = _b.value._format._dwarf64(), _is64:Bool = __tmp__._0, _:Bool = __tmp__._1;
            if (_is64) {
                _off = _off * (((8 : GoUInt64)));
            } else {
                _off = _off * (((4 : GoUInt64)));
            };
            _off = _off + (_rnglistsBase);
            if (((((_off : GoInt)) : GoUInt64)) != _off) {
                _b.value._error("DW_FORM_rnglistx offset out of range");
            };
            var _b1:T_buf = _makeBuf(_b.value._dwarf, _b.value._format, "rnglists", new Offset(((0 : GoUInt32))), _b.value._dwarf.value._rngLists).__copy__();
            _b1._skip(((_off : GoInt)));
            if (_is64) {
                _off = _b1._uint64();
            } else {
                _off = ((_b1._uint32() : GoUInt64));
            };
            if (_b1._err != null) {
                _b.value._err = _b1._err;
                return ((0 : GoUInt64));
            };
            if (((((_off : GoInt)) : GoUInt64)) != _off) {
                _b.value._error("DW_FORM_rnglistx indirect offset out of range");
            };
            return _rnglistsBase + _off;
        };
        {
            var _i;
            for (_obj in _e.value.field.keyValueIterator()) {
                _i = _obj.key;
                _e.value.field[_i].attr = _a._field[_i]._attr;
                _e.value.field[_i].class_ = _a._field[_i]._class;
                var _fmt:T_format = _a._field[_i]._fmt;
                if (_fmt.__t__ == _formIndirect.__t__) {
                    _fmt = new T_format(_b.value._uint());
                    _e.value.field[_i].class_ = _formToClass(_fmt, _a._field[_i]._attr, _vers, _b);
                };
                var _val:AnyInterface = ((null : AnyInterface));
                {
                    var __switchIndex__ = -1;
                    while (true) {
                        if (_fmt.__t__ == _formAddr.__t__) {
                            _val = Go.toInterface(_b.value._addr());
                            break;
                        } else if (_fmt.__t__ == _formAddrx.__t__ || _fmt.__t__ == _formAddrx1.__t__ || _fmt.__t__ == _formAddrx2.__t__ || _fmt.__t__ == _formAddrx3.__t__ || _fmt.__t__ == _formAddrx4.__t__) {
                            var _off:GoUInt64 = ((0 : GoUInt64));
                            if (_fmt.__t__ == _formAddrx.__t__) {
                                _off = _b.value._uint();
                            } else if (_fmt.__t__ == _formAddrx1.__t__) {
                                _off = ((_b.value._uint8() : GoUInt64));
                            } else if (_fmt.__t__ == _formAddrx2.__t__) {
                                _off = ((_b.value._uint16() : GoUInt64));
                            } else if (_fmt.__t__ == _formAddrx3.__t__) {
                                _off = ((_b.value._uint24() : GoUInt64));
                            } else if (_fmt.__t__ == _formAddrx4.__t__) {
                                _off = ((_b.value._uint32() : GoUInt64));
                            };
                            if (_b.value._dwarf.value._addr == null || _b.value._dwarf.value._addr.isNil()) {
                                _b.value._error("DW_FORM_addrx with no .debug_addr section");
                            };
                            if (_b.value._err != null) {
                                return new Pointer<Entry>().nil();
                            };
                            var _addrBase:GoInt64 = ((0 : GoInt64));
                            if (_cu != null && !_cu.isNil()) {
                                {
                                    var __tmp__ = try {
                                        { value : ((_cu.value.val(attrAddrBase).value : GoInt64)), ok : true };
                                    } catch(_) {
                                        { value : ((0 : GoInt64)), ok : false };
                                    };
                                    _addrBase = __tmp__.value;
                                };
                            } else if (_a._tag.__t__ == tagCompileUnit.__t__) {
                                _delay = _delay.__append__(new T_delayed__entry_0(_i, _off, _formAddrx).__copy__());
                                break;
                            };
                            var _err:Error = ((null : stdgo.Error));
                            {
                                var __tmp__ = _b.value._dwarf.value._debugAddr(_b.value._format, ((_addrBase : GoUInt64)), _off);
                                _val = Go.toInterface(__tmp__._0);
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                if (_b.value._err == null) {
                                    _b.value._err = _err;
                                };
                                return new Pointer<Entry>().nil();
                            };
                            break;
                        } else if (_fmt.__t__ == _formDwarfBlock1.__t__) {
                            _val = Go.toInterface(_b.value._bytes(((_b.value._uint8() : GoInt))));
                            break;
                        } else if (_fmt.__t__ == _formDwarfBlock2.__t__) {
                            _val = Go.toInterface(_b.value._bytes(((_b.value._uint16() : GoInt))));
                            break;
                        } else if (_fmt.__t__ == _formDwarfBlock4.__t__) {
                            _val = Go.toInterface(_b.value._bytes(((_b.value._uint32() : GoInt))));
                            break;
                        } else if (_fmt.__t__ == _formDwarfBlock.__t__) {
                            _val = Go.toInterface(_b.value._bytes(((_b.value._uint() : GoInt))));
                            break;
                        } else if (_fmt.__t__ == _formData1.__t__) {
                            _val = Go.toInterface(((_b.value._uint8() : GoInt64)));
                            break;
                        } else if (_fmt.__t__ == _formData2.__t__) {
                            _val = Go.toInterface(((_b.value._uint16() : GoInt64)));
                            break;
                        } else if (_fmt.__t__ == _formData4.__t__) {
                            _val = Go.toInterface(((_b.value._uint32() : GoInt64)));
                            break;
                        } else if (_fmt.__t__ == _formData8.__t__) {
                            _val = Go.toInterface(((_b.value._uint64() : GoInt64)));
                            break;
                        } else if (_fmt.__t__ == _formData16.__t__) {
                            _val = Go.toInterface(_b.value._bytes(((16 : GoInt))));
                            break;
                        } else if (_fmt.__t__ == _formSdata.__t__) {
                            _val = Go.toInterface(((_b.value._int() : GoInt64)));
                            break;
                        } else if (_fmt.__t__ == _formUdata.__t__) {
                            _val = Go.toInterface(((_b.value._uint() : GoInt64)));
                            break;
                        } else if (_fmt.__t__ == _formImplicitConst.__t__) {
                            _val = Go.toInterface(_a._field[_i]._val);
                            break;
                        } else if (_fmt.__t__ == _formFlag.__t__) {
                            _val = Go.toInterface(_b.value._uint8() == ((1 : GoUInt8)));
                            break;
                        } else if (_fmt.__t__ == _formFlagPresent.__t__) {
                            _val = Go.toInterface(true);
                            break;
                        } else if (_fmt.__t__ == _formRefAddr.__t__) {
                            var _vers:GoInt = _b.value._format._version();
                            if (_vers == ((0 : GoInt))) {
                                _b.value._error("unknown version for DW_FORM_ref_addr");
                            } else if (_vers == ((2 : GoInt))) {
                                _val = Go.toInterface(new Offset(_b.value._addr()));
                            } else {
                                var __tmp__ = _b.value._format._dwarf64(), _is64:Bool = __tmp__._0, _known:Bool = __tmp__._1;
                                if (!_known) {
                                    _b.value._error("unknown size for DW_FORM_ref_addr");
                                } else if (_is64) {
                                    _val = Go.toInterface(new Offset(_b.value._uint64()));
                                } else {
                                    _val = Go.toInterface(new Offset(_b.value._uint32()));
                                };
                            };
                            break;
                        } else if (_fmt.__t__ == _formRef1.__t__) {
                            _val = Go.toInterface(new Offset(new Offset(_b.value._uint8()).__t__ + _ubase.__t__));
                            break;
                        } else if (_fmt.__t__ == _formRef2.__t__) {
                            _val = Go.toInterface(new Offset(new Offset(_b.value._uint16()).__t__ + _ubase.__t__));
                            break;
                        } else if (_fmt.__t__ == _formRef4.__t__) {
                            _val = Go.toInterface(new Offset(new Offset(_b.value._uint32()).__t__ + _ubase.__t__));
                            break;
                        } else if (_fmt.__t__ == _formRef8.__t__) {
                            _val = Go.toInterface(new Offset(new Offset(_b.value._uint64()).__t__ + _ubase.__t__));
                            break;
                        } else if (_fmt.__t__ == _formRefUdata.__t__) {
                            _val = Go.toInterface(new Offset(new Offset(_b.value._uint()).__t__ + _ubase.__t__));
                            break;
                        } else if (_fmt.__t__ == _formString.__t__) {
                            _val = Go.toInterface(_b.value._string());
                            break;
                        } else if (_fmt.__t__ == _formStrp.__t__ || _fmt.__t__ == _formLineStrp.__t__) {
                            var _off:GoUInt64 = ((0 : GoUInt64));
                            var __tmp__ = _b.value._format._dwarf64(), _is64:Bool = __tmp__._0, _known:Bool = __tmp__._1;
                            if (!_known) {
                                _b.value._error("unknown size for DW_FORM_strp/line_strp");
                            } else if (_is64) {
                                _off = _b.value._uint64();
                            } else {
                                _off = ((_b.value._uint32() : GoUInt64));
                            };
                            if (((((_off : GoInt)) : GoUInt64)) != _off) {
                                _b.value._error("DW_FORM_strp/line_strp offset out of range");
                            };
                            if (_b.value._err != null) {
                                return new Pointer<Entry>().nil();
                            };
                            var _b1:T_buf = new T_buf();
                            if (_fmt.__t__ == _formStrp.__t__) {
                                _b1 = _makeBuf(_b.value._dwarf, _b.value._format, "str", new Offset(((0 : GoUInt32))), _b.value._dwarf.value._str).__copy__();
                            } else {
                                if (_b.value._dwarf.value._lineStr.length == ((0 : GoInt))) {
                                    _b.value._error("DW_FORM_line_strp with no .debug_line_str section");
                                };
                                _b1 = _makeBuf(_b.value._dwarf, _b.value._format, "line_str", new Offset(((0 : GoUInt32))), _b.value._dwarf.value._lineStr).__copy__();
                            };
                            _b1._skip(((_off : GoInt)));
                            _val = Go.toInterface(_b1._string());
                            if (_b1._err != null) {
                                _b.value._err = _b1._err;
                                return new Pointer<Entry>().nil();
                            };
                            break;
                        } else if (_fmt.__t__ == _formStrx.__t__ || _fmt.__t__ == _formStrx1.__t__ || _fmt.__t__ == _formStrx2.__t__ || _fmt.__t__ == _formStrx3.__t__ || _fmt.__t__ == _formStrx4.__t__) {
                            var _off:GoUInt64 = ((0 : GoUInt64));
                            if (_fmt.__t__ == _formStrx.__t__) {
                                _off = _b.value._uint();
                            } else if (_fmt.__t__ == _formStrx1.__t__) {
                                _off = ((_b.value._uint8() : GoUInt64));
                            } else if (_fmt.__t__ == _formStrx2.__t__) {
                                _off = ((_b.value._uint16() : GoUInt64));
                            } else if (_fmt.__t__ == _formStrx3.__t__) {
                                _off = ((_b.value._uint24() : GoUInt64));
                            } else if (_fmt.__t__ == _formStrx4.__t__) {
                                _off = ((_b.value._uint32() : GoUInt64));
                            };
                            if (_b.value._dwarf.value._strOffsets.length == ((0 : GoInt))) {
                                _b.value._error("DW_FORM_strx with no .debug_str_offsets section");
                            };
                            var __tmp__ = _b.value._format._dwarf64(), _is64:Bool = __tmp__._0, _known:Bool = __tmp__._1;
                            if (!_known) {
                                _b.value._error("unknown offset size for DW_FORM_strx");
                            };
                            if (_b.value._err != null) {
                                return new Pointer<Entry>().nil();
                            };
                            if (_is64) {
                                _off = _off * (((8 : GoUInt64)));
                            } else {
                                _off = _off * (((4 : GoUInt64)));
                            };
                            var _strBase:GoInt64 = ((0 : GoInt64));
                            if (_cu != null && !_cu.isNil()) {
                                {
                                    var __tmp__ = try {
                                        { value : ((_cu.value.val(attrStrOffsetsBase).value : GoInt64)), ok : true };
                                    } catch(_) {
                                        { value : ((0 : GoInt64)), ok : false };
                                    };
                                    _strBase = __tmp__.value;
                                };
                            } else if (_a._tag.__t__ == tagCompileUnit.__t__) {
                                _delay = _delay.__append__(new T_delayed__entry_0(_i, _off, _formStrx).__copy__());
                                break;
                            };
                            _val = Go.toInterface(_resolveStrx(((_strBase : GoUInt64)), _off));
                            break;
                        } else if (_fmt.__t__ == _formStrpSup.__t__) {
                            var __tmp__ = _b.value._format._dwarf64(), _is64:Bool = __tmp__._0, _known:Bool = __tmp__._1;
                            if (!_known) {
                                _b.value._error("unknown size for DW_FORM_strp_sup");
                            } else if (_is64) {
                                _val = Go.toInterface(_b.value._uint64());
                            } else {
                                _val = Go.toInterface(_b.value._uint32());
                            };
                            break;
                        } else if (_fmt.__t__ == _formSecOffset.__t__ || _fmt.__t__ == _formGnuRefAlt.__t__ || _fmt.__t__ == _formGnuStrpAlt.__t__) {
                            var __tmp__ = _b.value._format._dwarf64(), _is64:Bool = __tmp__._0, _known:Bool = __tmp__._1;
                            if (!_known) {
                                _b.value._error((("unknown size for form 0x" : GoString)) + stdgo.strconv.Strconv.formatInt(_fmt.__t__, ((16 : GoInt))));
                            } else if (_is64) {
                                _val = Go.toInterface(((_b.value._uint64() : GoInt64)));
                            } else {
                                _val = Go.toInterface(((_b.value._uint32() : GoInt64)));
                            };
                            break;
                        } else if (_fmt.__t__ == _formExprloc.__t__) {
                            _val = Go.toInterface(_b.value._bytes(((_b.value._uint() : GoInt))));
                            break;
                        } else if (_fmt.__t__ == _formRefSig8.__t__) {
                            _val = Go.toInterface(_b.value._uint64());
                            break;
                        } else if (_fmt.__t__ == _formRefSup4.__t__) {
                            _val = Go.toInterface(_b.value._uint32());
                            break;
                        } else if (_fmt.__t__ == _formRefSup8.__t__) {
                            _val = Go.toInterface(_b.value._uint64());
                            break;
                        } else if (_fmt.__t__ == _formLoclistx.__t__) {
                            _val = Go.toInterface(_b.value._uint());
                            break;
                        } else if (_fmt.__t__ == _formRnglistx.__t__) {
                            var _off:GoUInt64 = _b.value._uint();
                            var _rnglistsBase:GoInt64 = ((0 : GoInt64));
                            if (_cu != null && !_cu.isNil()) {
                                {
                                    var __tmp__ = try {
                                        { value : ((_cu.value.val(attrRnglistsBase).value : GoInt64)), ok : true };
                                    } catch(_) {
                                        { value : ((0 : GoInt64)), ok : false };
                                    };
                                    _rnglistsBase = __tmp__.value;
                                };
                            } else if (_a._tag.__t__ == tagCompileUnit.__t__) {
                                _delay = _delay.__append__(new T_delayed__entry_0(_i, _off, _formRnglistx).__copy__());
                                break;
                            };
                            _val = Go.toInterface(_resolveRnglistx(((_rnglistsBase : GoUInt64)), _off));
                            break;
                        };
                        break;
                    };
                };
                _e.value.field[_i].val = Go.toInterface(_val);
            };
        };
        if (_b.value._err != null) {
            return new Pointer<Entry>().nil();
        };
        for (_del in _delay) {
            if (_del._fmt.__t__ == _formAddrx.__t__) {
                var __tmp__ = try {
                    { value : ((_e.value.val(attrAddrBase).value : GoInt64)), ok : true };
                } catch(_) {
                    { value : ((0 : GoInt64)), ok : false };
                }, _addrBase = __tmp__.value, _ = __tmp__.ok;
                var __tmp__ = _b.value._dwarf.value._debugAddr(_b.value._format, ((_addrBase : GoUInt64)), _del._off), _val:GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _b.value._err = _err;
                    return new Pointer<Entry>().nil();
                };
                _e.value.field[_del._idx].val = Go.toInterface(_val);
            } else if (_del._fmt.__t__ == _formStrx.__t__) {
                var __tmp__ = try {
                    { value : ((_e.value.val(attrStrOffsetsBase).value : GoInt64)), ok : true };
                } catch(_) {
                    { value : ((0 : GoInt64)), ok : false };
                }, _strBase = __tmp__.value, _ = __tmp__.ok;
                _e.value.field[_del._idx].val = Go.toInterface(_resolveStrx(((_strBase : GoUInt64)), _del._off));
                if (_b.value._err != null) {
                    return new Pointer<Entry>().nil();
                };
            } else if (_del._fmt.__t__ == _formRnglistx.__t__) {
                var __tmp__ = try {
                    { value : ((_e.value.val(attrRnglistsBase).value : GoInt64)), ok : true };
                } catch(_) {
                    { value : ((0 : GoInt64)), ok : false };
                }, _rnglistsBase = __tmp__.value, _ = __tmp__.ok;
                _e.value.field[_del._idx].val = Go.toInterface(_resolveRnglistx(((_rnglistsBase : GoUInt64)), _del._off));
                if (_b.value._err != null) {
                    return new Pointer<Entry>().nil();
                };
            };
        };
        return _e;
    }
    public function _error(_s:GoString):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.value._err == null) {
            _b.value._data = new Slice<GoUInt8>().nil();
            _b.value._err = new DecodeError(_b.value._name, _b.value._off, _s).__copy__();
        };
    }
    public function _unitLength():{ var _0 : Offset; var _1 : Bool; } {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _length:Offset = new Offset(), _dwarf64:Bool = false;
        _length = new Offset(_b.value._uint32());
        if (_length.__t__ == (("4294967295" : GoUInt32))) {
            _dwarf64 = true;
            _length = new Offset(_b.value._uint64());
        } else if (_length.__t__ >= (("4294967280" : GoUInt32))) {
            _b.value._error("unit length has reserved value");
        };
        return { _0 : _length, _1 : _dwarf64 };
    }
    public function _addr():GoUInt64 {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.value._format._addrsize() == ((1 : GoInt))) {
            return ((_b.value._uint8() : GoUInt64));
        } else if (_b.value._format._addrsize() == ((2 : GoInt))) {
            return ((_b.value._uint16() : GoUInt64));
        } else if (_b.value._format._addrsize() == ((4 : GoInt))) {
            return ((_b.value._uint32() : GoUInt64));
        } else if (_b.value._format._addrsize() == ((8 : GoInt))) {
            return _b.value._uint64();
        };
        _b.value._error("unknown address size");
        return ((0 : GoUInt64));
    }
    public function _int():GoInt64 {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _b.value._varint(), _ux:GoUInt64 = __tmp__._0, _bits:GoUInt = __tmp__._1;
        var _x:GoInt64 = ((_ux : GoInt64));
        if (_x & ((((1 : GoInt64)) << (_bits - ((1 : GoUInt))))) != ((0 : GoInt64))) {
            _x = _x | ((-((1 : GoUnTypedInt)) << _bits));
        };
        return _x;
    }
    public function _uint():GoUInt64 {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _b.value._varint(), _x:GoUInt64 = __tmp__._0, _:GoUInt = __tmp__._1;
        return _x;
    }
    public function _varint():{ var _0 : GoUInt64; var _1 : GoUInt; } {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:GoUInt64 = ((0 : GoUInt64)), _bits:GoUInt = ((0 : GoUInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.value._data.length, _i++, {
                var _byte:GoUInt8 = _b.value._data[_i];
                _c = _c | (((((_byte & ((127 : GoUInt8))) : GoUInt64)) << _bits));
                _bits = _bits + (((7 : GoUInt)));
                if (_byte & ((128 : GoUInt8)) == ((0 : GoUInt8))) {
                    _b.value._off = new Offset(_b.value._off.__t__ + (new Offset((_i + ((1 : GoInt))))).__t__);
                    _b.value._data = _b.value._data.__slice__(_i + ((1 : GoInt)));
                    return { _0 : _c, _1 : _bits };
                };
            });
        };
        return { _0 : ((0 : GoUInt64)), _1 : ((0 : GoUInt)) };
    }
    public function _uint64():GoUInt64 {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _a:Slice<GoUInt8> = _b.value._bytes(((8 : GoInt)));
        if (_a == null || _a.isNil()) {
            return ((0 : GoUInt64));
        };
        return _b.value._order.uint64(_a);
    }
    public function _uint32():GoUInt32 {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _a:Slice<GoUInt8> = _b.value._bytes(((4 : GoInt)));
        if (_a == null || _a.isNil()) {
            return ((0 : GoUInt32));
        };
        return _b.value._order.uint32(_a);
    }
    public function _uint24():GoUInt32 {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _a:Slice<GoUInt8> = _b.value._bytes(((3 : GoInt)));
        if (_a == null || _a.isNil()) {
            return ((0 : GoUInt32));
        };
        if (_b.value._dwarf.value._bigEndian) {
            return ((_a[((2 : GoInt))] : GoUInt32)) | (((_a[((1 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))) | (((_a[((0 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt)));
        } else {
            return ((_a[((0 : GoInt))] : GoUInt32)) | (((_a[((1 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))) | (((_a[((2 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt)));
        };
    }
    public function _uint16():GoUInt16 {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _a:Slice<GoUInt8> = _b.value._bytes(((2 : GoInt)));
        if (_a == null || _a.isNil()) {
            return ((0 : GoUInt16));
        };
        return _b.value._order.uint16(_a);
    }
    public function _string():GoString {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _i:GoInt = stdgo.bytes.Bytes.indexByte(_b.value._data, ((0 : GoUInt8)));
        if (_i < ((0 : GoInt))) {
            _b.value._error("underflow");
            return "";
        };
        var _s:GoString = ((_b.value._data.__slice__(((0 : GoInt)), _i) : GoString));
        _b.value._data = _b.value._data.__slice__(_i + ((1 : GoInt)));
        _b.value._off = new Offset(_b.value._off.__t__ + (new Offset((_i + ((1 : GoInt))))).__t__);
        return _s;
    }
    public function _skip(_n:GoInt):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value._bytes(_n);
    }
    public function _bytes(_n:GoInt):Slice<GoByte> {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.value._data.length < _n) {
            _b.value._error("underflow");
            return new Slice<GoUInt8>().nil();
        };
        var _data:Slice<GoUInt8> = _b.value._data.__slice__(((0 : GoInt)), _n);
        _b.value._data = _b.value._data.__slice__(_n);
        _b.value._off = new Offset(_b.value._off.__t__ + (new Offset(_n)).__t__);
        return _data;
    }
    public function _uint8():GoUInt8 {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.value._data.length < ((1 : GoInt))) {
            _b.value._error("underflow");
            return ((0 : GoUInt8));
        };
        var _val:GoUInt8 = _b.value._data[((0 : GoInt))];
        _b.value._data = _b.value._data.__slice__(((1 : GoInt)));
        _b.value._off.__t__++;
        return _val;
    }
    public var _dwarf : Pointer<Data> = new Pointer<Data>().nil();
    public var _order : stdgo.encoding.binary.Binary.ByteOrder = ((null : stdgo.encoding.binary.Binary.ByteOrder));
    public var _format : T_dataFormat = ((null : T_dataFormat));
    public var _name : GoString = (("" : GoString));
    public var _off : Offset = new Offset();
    public var _data : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_dwarf:Pointer<Data>, ?_order:stdgo.encoding.binary.Binary.ByteOrder, ?_format:T_dataFormat, ?_name:GoString, ?_off:Offset, ?_data:Slice<GoUInt8>, ?_err:stdgo.Error) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_dwarf) + " " + Go.string(_order) + " " + Go.string(_format) + " " + Go.string(_name) + " " + Go.string(_off) + " " + Go.string(_data) + " " + Go.string(_err) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_buf(_dwarf, _order, _format, _name, _off, _data, _err);
    }
    public function __set__(__tmp__) {
        this._dwarf = __tmp__._dwarf;
        this._order = __tmp__._order;
        this._format = __tmp__._format;
        this._name = __tmp__._name;
        this._off = __tmp__._off;
        this._data = __tmp__._data;
        this._err = __tmp__._err;
        return this;
    }
}
@:structInit class T_unknownFormat {
    public function _addrsize():GoInt {
        var _u = this.__copy__();
        return ((0 : GoInt));
    }
    public function _dwarf64():{ var _0 : Bool; var _1 : Bool; } {
        var _u = this.__copy__();
        return { _0 : false, _1 : false };
    }
    public function _version():GoInt {
        var _u = this.__copy__();
        return ((0 : GoInt));
    }
    public function new() stdgo.internal.Macro.initLocals();
    public function toString() {
        return "{}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_unknownFormat();
    }
    public function __set__(__tmp__) {
        return this;
    }
}
@:structInit class DecodeError {
    public function error():GoString {
        var _e = this.__copy__();
        return (("decoding dwarf section " : GoString)) + _e.name + ((" at offset 0x" : GoString)) + stdgo.strconv.Strconv.formatInt(_e.offset.__t__, ((16 : GoInt))) + ((": " : GoString)) + _e.err;
    }
    public var name : GoString = (("" : GoString));
    public var offset : Offset = new Offset();
    public var err : GoString = (("" : GoString));
    public function new(?name:GoString, ?offset:Offset, ?err:GoString) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(name) + " " + Go.string(offset) + " " + Go.string(err) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new DecodeError(name, offset, err);
    }
    public function __set__(__tmp__) {
        this.name = __tmp__.name;
        this.offset = __tmp__.offset;
        this.err = __tmp__.err;
        return this;
    }
}
@:named class Attr {
    public function goString():GoString {
        var _a = this.__copy__();
        {
            var __tmp__ = __Attr_map.exists(_a) ? { value : __Attr_map[_a], ok : true } : { value : __Attr_map.defaultValue(), ok : false }, _str:GoString = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (_ok) {
                return (("dwarf.Attr" : GoString)) + _str;
            };
        };
        return (("dwarf." : GoString)) + _a.toString();
    }
    public function toString():GoString {
        var _i = this.__copy__();
        {
            var __tmp__ = __Attr_map.exists(_i) ? { value : __Attr_map[_i], ok : true } : { value : __Attr_map.defaultValue(), ok : false }, _str:GoString = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (_ok) {
                return _str;
            };
        };
        return (("Attr(" : GoString)) + stdgo.strconv.Strconv.formatInt(_i.__t__, ((10 : GoInt))) + ((")" : GoString));
    }
    public var __t__ : GoUInt32;
    public function new(?t:GoUInt32) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new Attr(__t__);
}
@:named class T_format {
    public var __t__ : GoUInt32;
    public function new(?t:GoUInt32) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_format(__t__);
}
@:named class Tag {
    public function toString():GoString {
        var _i = this.__copy__();
        if (((1 : GoUInt32)) <= _i.__t__ && _i.__t__ <= ((5 : GoUInt32))) {
            _i = new Tag(_i.__t__ - (((1 : GoUInt32))));
            return __Tag_name_0.__slice__(__Tag_index_0[_i.__t__], __Tag_index_0[new Tag(_i.__t__ + ((1 : GoUInt32))).__t__]);
        } else if (_i.__t__ == ((8 : GoUInt32))) {
            return __Tag_name_1;
        } else if (((10 : GoUInt32)) <= _i.__t__ && _i.__t__ <= ((11 : GoUInt32))) {
            _i = new Tag(_i.__t__ - (((10 : GoUInt32))));
            return __Tag_name_2.__slice__(__Tag_index_2[_i.__t__], __Tag_index_2[new Tag(_i.__t__ + ((1 : GoUInt32))).__t__]);
        } else if (_i.__t__ == ((13 : GoUInt32))) {
            return __Tag_name_3;
        } else if (((15 : GoUInt32)) <= _i.__t__ && _i.__t__ <= ((19 : GoUInt32))) {
            _i = new Tag(_i.__t__ - (((15 : GoUInt32))));
            return __Tag_name_4.__slice__(__Tag_index_4[_i.__t__], __Tag_index_4[new Tag(_i.__t__ + ((1 : GoUInt32))).__t__]);
        } else if (((21 : GoUInt32)) <= _i.__t__ && _i.__t__ <= ((75 : GoUInt32))) {
            _i = new Tag(_i.__t__ - (((21 : GoUInt32))));
            return __Tag_name_5.__slice__(__Tag_index_5[_i.__t__], __Tag_index_5[new Tag(_i.__t__ + ((1 : GoUInt32))).__t__]);
        } else {
            return (("Tag(" : GoString)) + stdgo.strconv.Strconv.formatInt(_i.__t__, ((10 : GoInt))) + ((")" : GoString));
        };
    }
    public function goString():GoString {
        var _t = this.__copy__();
        if (_t.__t__ <= tagTemplateAlias.__t__) {
            return (("dwarf.Tag" : GoString)) + _t.toString();
        };
        return (("dwarf." : GoString)) + _t.toString();
    }
    public var __t__ : GoUInt32;
    public function new(?t:GoUInt32) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new Tag(__t__);
}
@:structInit class T_abbrev {
    public var _tag : Tag = new Tag();
    public var _children : Bool = false;
    public var _field : Slice<T_afield> = new Slice<T_afield>().nil();
    public function new(?_tag:Tag, ?_children:Bool, ?_field:Slice<T_afield>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_tag) + " " + Go.string(_children) + " " + Go.string(_field) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_abbrev(_tag, _children, _field);
    }
    public function __set__(__tmp__) {
        this._tag = __tmp__._tag;
        this._children = __tmp__._children;
        this._field = __tmp__._field;
        return this;
    }
}
@:structInit class T_afield {
    public var _attr : Attr = new Attr();
    public var _fmt : T_format = new T_format();
    public var _class : Class_ = new Class_();
    public var _val : GoInt64 = ((0 : GoInt64));
    public function new(?_attr:Attr, ?_fmt:T_format, ?_class:Class_, ?_val:GoInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_attr) + " " + Go.string(_fmt) + " " + Go.string(_class) + " " + Go.string(_val) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_afield(_attr, _fmt, _class, _val);
    }
    public function __set__(__tmp__) {
        this._attr = __tmp__._attr;
        this._fmt = __tmp__._fmt;
        this._class = __tmp__._class;
        this._val = __tmp__._val;
        return this;
    }
}
@:named class T_abbrevTable {
    public var __t__ : GoMap<GoUInt32, T_abbrev>;
    public function new(?t:GoMap<GoUInt32, T_abbrev>) {
        __t__ = t == null ? new GoMap<GoUInt32, T_abbrev>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.named("debug/dwarf.abbrev", [], stdgo.reflect.Reflect.GoType.named("debug/dwarf.abbrev", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_tag", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.Tag", [], stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }, { name : "_children", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_field", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/dwarf.afield", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_attr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.Attr", [], stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }, { name : "_fmt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.format", [], stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }, { name : "_class", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.Class", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }])))))).nil() : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_abbrevTable(__t__);
}
@:structInit class Entry {
    public function attrField(_a:Attr):Pointer<Field> {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _i;
            var _f;
            for (_obj in _e.value.field.keyValueIterator()) {
                _i = _obj.key;
                _f = _obj.value;
                if (_f.attr.__t__ == _a.__t__) {
                    return Go.pointer(_e.value.field[_i]);
                };
            };
        };
        return new Pointer<Field>().nil();
    }
    public function val(_a:Attr):AnyInterface {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _f:Pointer<Field> = _e.value.attrField(_a);
            if (_f != null && !_f.isNil()) {
                return Go.toInterface(_f.value.val);
            };
        };
        return ((null : AnyInterface));
    }
    public var offset : Offset = new Offset();
    public var tag : Tag = new Tag();
    public var children : Bool = false;
    public var field : Slice<Field> = new Slice<Field>().nil();
    public function new(?offset:Offset, ?tag:Tag, ?children:Bool, ?field:Slice<Field>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(offset) + " " + Go.string(tag) + " " + Go.string(children) + " " + Go.string(field) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Entry(offset, tag, children, field);
    }
    public function __set__(__tmp__) {
        this.offset = __tmp__.offset;
        this.tag = __tmp__.tag;
        this.children = __tmp__.children;
        this.field = __tmp__.field;
        return this;
    }
}
@:structInit class Field {
    public var attr : Attr = new Attr();
    public var val : AnyInterface = ((null : AnyInterface));
    public var class_ : Class_ = new Class_();
    public function new(?attr:Attr, ?val:AnyInterface, ?class_:Class_) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(attr) + " " + Go.string(val) + " " + Go.string(class_) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Field(attr, val, class_);
    }
    public function __set__(__tmp__) {
        this.attr = __tmp__.attr;
        this.val = __tmp__.val;
        this.class_ = __tmp__.class_;
        return this;
    }
}
@:named class Class_ {
    public function goString():GoString {
        var _i = this.__copy__();
        return (("dwarf." : GoString)) + _i.toString();
    }
    public function toString():GoString {
        var _i = this.__copy__();
        if (_i.__t__ < ((0 : GoInt)) || _i.__t__ >= new Class_((__Class_index.length - ((1 : GoInt)))).__t__) {
            return (("Class(" : GoString)) + stdgo.strconv.Strconv.formatInt(_i.__t__, ((10 : GoInt))) + ((")" : GoString));
        };
        return __Class_name.__slice__(__Class_index[_i.__t__], __Class_index[new Class_(_i.__t__ + ((1 : GoInt))).__t__]);
    }
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new Class_(__t__);
}
@:named class Offset {
    public var __t__ : GoUInt32;
    public function new(?t:GoUInt32) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new Offset(__t__);
}
@:structInit class Reader {
    public function seekPC(_pc:GoUInt64):{ var _0 : Pointer<Entry>; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _unit:GoInt = _r.value._unit;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _r.value._d.value._unit.length, _i++, {
                if (_unit >= _r.value._d.value._unit.length) {
                    _unit = ((0 : GoInt));
                };
                _r.value._err = ((null : stdgo.Error));
                _r.value._lastChildren = false;
                _r.value._unit = _unit;
                _r.value._cu = new Pointer<Entry>().nil();
                var _u:Pointer<T_unit> = Go.pointer(_r.value._d.value._unit[_unit]);
                _r.value._b = _makeBuf(_r.value._d, _u.value, "info", _u.value._off, _u.value._data).__copy__();
                var __tmp__ = _r.value.next(), _e:Pointer<Entry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : new Pointer<Entry>().nil(), _1 : _err };
                };
                var __tmp__ = _r.value._d.value.ranges(_e), _ranges:Slice<GoArray<GoUInt64>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : new Pointer<Entry>().nil(), _1 : _err };
                };
                for (_pcs in _ranges) {
                    if (_pcs[((0 : GoInt))] <= _pc && _pc < _pcs[((1 : GoInt))]) {
                        return { _0 : _e, _1 : ((null : stdgo.Error)) };
                    };
                };
                _unit++;
            });
        };
        return { _0 : new Pointer<Entry>().nil(), _1 : errUnknownPC };
    }
    public function _offset():Offset {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _r.value._b._off;
    }
    public function _clone():T_typeReader {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _r.value._d.value.reader().value;
    }
    public function skipChildren():Void {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_r.value._err != null || !_r.value._lastChildren) {
            return;
        };
        if (_r.value._lastSibling.__t__ >= _r.value._b._off.__t__) {
            _r.value.seek(_r.value._lastSibling);
            return;
        };
        if (_r.value._lastUnit && _r.value._unit + ((1 : GoInt)) < _r.value._d.value._unit.length) {
            _r.value._nextUnit();
            return;
        };
        while (true) {
            var __tmp__ = _r.value.next(), _e:Pointer<Entry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null || _e == null || _e.isNil() || _e.value.tag.__t__ == ((0 : GoUInt32))) {
                break;
            };
            if (_e.value.children) {
                _r.value.skipChildren();
            };
        };
    }
    public function next():{ var _0 : Pointer<Entry>; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_r.value._err != null) {
            return { _0 : new Pointer<Entry>().nil(), _1 : _r.value._err };
        };
        _r.value._maybeNextUnit();
        if (_r.value._b._data.length == ((0 : GoInt))) {
            return { _0 : new Pointer<Entry>().nil(), _1 : ((null : stdgo.Error)) };
        };
        var _u:Pointer<T_unit> = Go.pointer(_r.value._d.value._unit[_r.value._unit]);
        var _e:Pointer<Entry> = _r.value._b._entry(_r.value._cu, _u.value._atable.__copy__(), _u.value._base, _u.value._vers);
        if (_r.value._b._err != null) {
            _r.value._err = _r.value._b._err;
            return { _0 : new Pointer<Entry>().nil(), _1 : _r.value._err };
        };
        _r.value._lastUnit = false;
        if (_e != null && !_e.isNil()) {
            _r.value._lastChildren = _e.value.children;
            if (_r.value._lastChildren) {
                {
                    var __tmp__ = try {
                        { value : new Offset(((_e.value.val(attrSibling).value : AnyInterface))), ok : true };
                    } catch(_) {
                        { value : new Offset(), ok : false };
                    };
                    _r.value._lastSibling = __tmp__.value;
                };
            };
            if (_e.value.tag.__t__ == tagCompileUnit.__t__ || _e.value.tag.__t__ == tagPartialUnit.__t__) {
                _r.value._lastUnit = true;
                _r.value._cu = _e;
            };
        } else {
            _r.value._lastChildren = false;
        };
        return { _0 : _e, _1 : ((null : stdgo.Error)) };
    }
    public function _nextUnit():Void {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _r.value._unit++;
        var _u:Pointer<T_unit> = Go.pointer(_r.value._d.value._unit[_r.value._unit]);
        _r.value._b = _makeBuf(_r.value._d, _u.value, "info", _u.value._off, _u.value._data).__copy__();
        _r.value._cu = new Pointer<Entry>().nil();
    }
    public function _maybeNextUnit():Void {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        while (_r.value._b._data.length == ((0 : GoInt)) && _r.value._unit + ((1 : GoInt)) < _r.value._d.value._unit.length) {
            _r.value._nextUnit();
        };
    }
    public function seek(_off:Offset):Void {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _d:Pointer<Data> = _r.value._d;
        _r.value._err = ((null : stdgo.Error));
        _r.value._lastChildren = false;
        if (_off.__t__ == ((0 : GoUInt32))) {
            if (_d.value._unit.length == ((0 : GoInt))) {
                return;
            };
            var _u:Pointer<T_unit> = Go.pointer(_d.value._unit[((0 : GoInt))]);
            _r.value._unit = ((0 : GoInt));
            _r.value._b = _makeBuf(_r.value._d, _u.value, "info", _u.value._off, _u.value._data).__copy__();
            _r.value._cu = new Pointer<Entry>().nil();
            return;
        };
        var _i:GoInt = _d.value._offsetToUnit(_off);
        if (_i == -((1 : GoUnTypedInt))) {
            _r.value._err = stdgo.errors.Errors.new_("offset out of range");
            return;
        };
        if (_i != _r.value._unit) {
            _r.value._cu = new Pointer<Entry>().nil();
        };
        var _u:Pointer<T_unit> = Go.pointer(_d.value._unit[_i]);
        _r.value._unit = _i;
        _r.value._b = _makeBuf(_r.value._d, _u.value, "info", _off, _u.value._data.__slice__(new Offset(_off.__t__ - _u.value._off.__t__))).__copy__();
    }
    public function byteOrder():stdgo.encoding.binary.Binary.ByteOrder {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _r.value._b._order;
    }
    public function addressSize():GoInt {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _r.value._d.value._unit[_r.value._unit]._asize;
    }
    public var _b : T_buf = new T_buf();
    public var _d : Pointer<Data> = new Pointer<Data>().nil();
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _unit : GoInt = ((0 : GoInt));
    public var _lastUnit : Bool = false;
    public var _lastChildren : Bool = false;
    public var _lastSibling : Offset = new Offset();
    public var _cu : Pointer<Entry> = new Pointer<Entry>().nil();
    public function new(?_b:T_buf, ?_d:Pointer<Data>, ?_err:stdgo.Error, ?_unit:GoInt, ?_lastUnit:Bool, ?_lastChildren:Bool, ?_lastSibling:Offset, ?_cu:Pointer<Entry>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_b) + " " + Go.string(_d) + " " + Go.string(_err) + " " + Go.string(_unit) + " " + Go.string(_lastUnit) + " " + Go.string(_lastChildren) + " " + Go.string(_lastSibling) + " " + Go.string(_cu) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Reader(_b, _d, _err, _unit, _lastUnit, _lastChildren, _lastSibling, _cu);
    }
    public function __set__(__tmp__) {
        this._b = __tmp__._b;
        this._d = __tmp__._d;
        this._err = __tmp__._err;
        this._unit = __tmp__._unit;
        this._lastUnit = __tmp__._lastUnit;
        this._lastChildren = __tmp__._lastChildren;
        this._lastSibling = __tmp__._lastSibling;
        this._cu = __tmp__._cu;
        return this;
    }
}
@:structInit class LineReader {
    public function seekPC(_pc:GoUInt64, _entry:Pointer<LineEntry>):Error {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _err:stdgo.Error = _r.value.next(_entry);
            if (_err != null) {
                return _err;
            };
        };
        if (_entry.value.address > _pc) {
            _r.value.reset();
            {
                var _err:stdgo.Error = _r.value.next(_entry);
                if (_err != null) {
                    return _err;
                };
            };
            if (_entry.value.address > _pc) {
                _r.value.reset();
                return errUnknownPC;
            };
        };
        while (true) {
            var _next:LineEntry = new LineEntry();
            var _pos:LineReaderPos = _r.value.tell().__copy__();
            {
                var _err:stdgo.Error = _r.value.next(Go.pointer(_next));
                if (_err != null) {
                    if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
                        return errUnknownPC;
                    };
                    return _err;
                };
            };
            if (_next.address > _pc) {
                if (_entry.value.endSequence) {
                    return errUnknownPC;
                };
                _r.value.seek(_pos.__copy__());
                return ((null : stdgo.Error));
            };
            _entry.value = _next.__copy__();
        };
    }
    public function files():Slice<Pointer<LineFile>> {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _r.value._fileEntries;
    }
    public function _resetState():Void {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _r.value._state = (({ address : ((0 : GoUInt64)), opIndex : ((0 : GoInt)), file : new Pointer<LineFile>().nil(), line : ((1 : GoInt)), column : ((0 : GoInt)), isStmt : _r.value._defaultIsStmt, basicBlock : false, prologueEnd : false, epilogueBegin : false, isa : ((0 : GoInt)), discriminator : ((0 : GoInt)), endSequence : false } : LineEntry)).__copy__();
        _r.value._fileIndex = ((1 : GoInt));
        _r.value._updateFile();
    }
    public function reset():Void {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _r.value._buf._off = _r.value._programOffset;
        _r.value._buf._data = _r.value._section.__slice__(_r.value._buf._off, _r.value._endOffset);
        _r.value._fileEntries = _r.value._fileEntries.__slice__(0, _r.value._initialFileEntries);
        _r.value._resetState();
    }
    public function seek(_pos:LineReaderPos):Void {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _r.value._buf._off = _pos._off;
        _r.value._buf._data = _r.value._section.__slice__(_r.value._buf._off, _r.value._endOffset);
        _r.value._fileEntries = _r.value._fileEntries.__slice__(0, _pos._numFileEntries);
        _r.value._state = _pos._state.__copy__();
        _r.value._fileIndex = _pos._fileIndex;
    }
    public function tell():LineReaderPos {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return new LineReaderPos(_r.value._buf._off, _r.value._fileEntries.length, _r.value._state.__copy__(), _r.value._fileIndex).__copy__();
    }
    public function _advancePC(_opAdvance:GoInt):Void {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _opIndex:GoInt = _r.value._state.opIndex + _opAdvance;
        _r.value._state.address = _r.value._state.address + ((((_r.value._minInstructionLength * (_opIndex / _r.value._maxOpsPerInstruction)) : GoUInt64)));
        _r.value._state.opIndex = _opIndex % _r.value._maxOpsPerInstruction;
    }
    public function _step(_entry:Pointer<LineEntry>):Bool {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.internal.Macro.controlFlow({
            var _opcode:GoInt = ((_r.value._buf._uint8() : GoInt));
            if (_opcode >= _r.value._opcodeBase) {
                var _adjustedOpcode:GoInt = _opcode - _r.value._opcodeBase;
                _r.value._advancePC(_adjustedOpcode / _r.value._lineRange);
                var _lineDelta:GoInt = _r.value._lineBase + _adjustedOpcode % _r.value._lineRange;
                _r.value._state.line = _r.value._state.line + (_lineDelta);
                @:goto "emit";
            };
            if (_opcode == ((0 : GoInt))) {
                var _length:Offset = new Offset(_r.value._buf._uint());
                var _startOff:Offset = _r.value._buf._off;
                var _opcode:GoUInt8 = _r.value._buf._uint8();
                if (_opcode == _lneEndSequence) {
                    _r.value._state.endSequence = true;
                    _entry.value = _r.value._state.__copy__();
                    _r.value._resetState();
                } else if (_opcode == _lneSetAddress) {
                    if (_r.value._addrsize == ((1 : GoInt))) {
                        _r.value._state.address = ((_r.value._buf._uint8() : GoUInt64));
                    } else if (_r.value._addrsize == ((2 : GoInt))) {
                        _r.value._state.address = ((_r.value._buf._uint16() : GoUInt64));
                    } else if (_r.value._addrsize == ((4 : GoInt))) {
                        _r.value._state.address = ((_r.value._buf._uint32() : GoUInt64));
                    } else if (_r.value._addrsize == ((8 : GoInt))) {
                        _r.value._state.address = _r.value._buf._uint64();
                    } else {
                        _r.value._buf._error("unknown address size");
                    };
                } else if (_opcode == _lneDefineFile) {
                    {
                        var __tmp__ = _r.value._readFileEntry(), _done:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _r.value._buf._err = _err;
                            return false;
                        } else if (_done) {
                            _r.value._buf._err = new DecodeError("line", _startOff, "malformed DW_LNE_define_file operation").__copy__();
                            return false;
                        };
                    };
                    _r.value._updateFile();
                } else if (_opcode == _lneSetDiscriminator) {
                    _r.value._state.discriminator = ((_r.value._buf._uint() : GoInt));
                };
                _r.value._buf._skip(new Offset(new Offset(_startOff.__t__ + _length.__t__).__t__ - _r.value._buf._off.__t__).__t__);
                if (_opcode == _lneEndSequence) {
                    return true;
                };
            } else if (_opcode == _lnsCopy) {
                @:goto "emit";
            } else if (_opcode == _lnsAdvancePC) {
                _r.value._advancePC(((_r.value._buf._uint() : GoInt)));
            } else if (_opcode == _lnsAdvanceLine) {
                _r.value._state.line = _r.value._state.line + (((_r.value._buf._int() : GoInt)));
            } else if (_opcode == _lnsSetFile) {
                _r.value._fileIndex = ((_r.value._buf._uint() : GoInt));
                _r.value._updateFile();
            } else if (_opcode == _lnsSetColumn) {
                _r.value._state.column = ((_r.value._buf._uint() : GoInt));
            } else if (_opcode == _lnsNegateStmt) {
                _r.value._state.isStmt = !_r.value._state.isStmt;
            } else if (_opcode == _lnsSetBasicBlock) {
                _r.value._state.basicBlock = true;
            } else if (_opcode == _lnsConstAddPC) {
                _r.value._advancePC((((255 : GoInt)) - _r.value._opcodeBase) / _r.value._lineRange);
            } else if (_opcode == _lnsFixedAdvancePC) {
                _r.value._state.address = _r.value._state.address + (((_r.value._buf._uint16() : GoUInt64)));
            } else if (_opcode == _lnsSetPrologueEnd) {
                _r.value._state.prologueEnd = true;
            } else if (_opcode == _lnsSetEpilogueBegin) {
                _r.value._state.epilogueBegin = true;
            } else if (_opcode == _lnsSetISA) {
                _r.value._state.isa = ((_r.value._buf._uint() : GoInt));
            } else {
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _r.value._opcodeLengths[_opcode], _i++, {
                        _r.value._buf._uint();
                    });
                };
            };
            return false;
            @:label("emit") _entry.value = _r.value._state.__copy__();
            _r.value._state.basicBlock = false;
            _r.value._state.prologueEnd = false;
            _r.value._state.epilogueBegin = false;
            _r.value._state.discriminator = ((0 : GoInt));
            return true;
        });
    }
    public function next(_entry:Pointer<LineEntry>):Error {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_r.value._buf._err != null) {
            return _r.value._buf._err;
        };
        while (true) {
            if (_r.value._buf._data.length == ((0 : GoInt))) {
                return stdgo.io.Io.eof;
            };
            var _emit:Bool = _r.value._step(_entry);
            if (_r.value._buf._err != null) {
                return _r.value._buf._err;
            };
            if (_emit) {
                return ((null : stdgo.Error));
            };
        };
    }
    public function _updateFile():Void {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_r.value._fileIndex < _r.value._fileEntries.length) {
            _r.value._state.file = _r.value._fileEntries[_r.value._fileIndex];
        } else {
            _r.value._state.file = new Pointer<LineFile>().nil();
        };
    }
    public function _readFileEntry():{ var _0 : Bool; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _name:GoString = _r.value._buf._string();
        if (_r.value._buf._err != null) {
            return { _0 : false, _1 : _r.value._buf._err };
        };
        if (_name.length == ((0 : GoInt))) {
            return { _0 : true, _1 : ((null : stdgo.Error)) };
        };
        var _off:Offset = _r.value._buf._off;
        var _dirIndex:GoInt = ((_r.value._buf._uint() : GoInt));
        if (!_pathIsAbs(_name)) {
            if (_dirIndex >= _r.value._directories.length) {
                return { _0 : false, _1 : new DecodeError("line", _off, "directory index too large").__copy__() };
            };
            _name = _pathJoin(_r.value._directories[_dirIndex], _name);
        };
        var _mtime:GoUInt64 = _r.value._buf._uint();
        var _length:GoInt = ((_r.value._buf._uint() : GoInt));
        if (_r.value._fileEntries.length < _r.value._fileEntries.cap()) {
            var _fe:Slice<Pointer<LineFile>> = _r.value._fileEntries.__slice__(0, _r.value._fileEntries.length + ((1 : GoInt)));
            if (_fe[_fe.length - ((1 : GoInt))] != null && !_fe[_fe.length - ((1 : GoInt))].isNil()) {
                _r.value._fileEntries = _fe;
                return { _0 : false, _1 : ((null : stdgo.Error)) };
            };
        };
        _r.value._fileEntries = _r.value._fileEntries.__append__(Go.pointer(new LineFile(_name, _mtime, _length)));
        return { _0 : false, _1 : ((null : stdgo.Error)) };
    }
    public function _readLNCT(_s:Slice<T_lnctForm>, _dwarf64:Bool):{ var _0 : GoString; var _1 : GoUInt64; var _2 : GoUInt64; var _3 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _path:GoString = (("" : GoString)), _mtime:GoUInt64 = ((0 : GoUInt64)), _size:GoUInt64 = ((0 : GoUInt64)), _err:Error = ((null : stdgo.Error));
        var _dir:GoString = (("" : GoString));
        for (_lf in _s) {
            var _str:GoString = (("" : GoString));
            var _val:GoUInt64 = ((0 : GoUInt64));
            if (_lf._form.__t__ == _formString.__t__) {
                _str = _r.value._buf._string();
            } else if (_lf._form.__t__ == _formStrp.__t__ || _lf._form.__t__ == _formLineStrp.__t__) {
                var _off:GoUInt64 = ((0 : GoUInt64));
                if (_dwarf64) {
                    _off = _r.value._buf._uint64();
                } else {
                    _off = ((_r.value._buf._uint32() : GoUInt64));
                };
                if (((((_off : GoInt)) : GoUInt64)) != _off) {
                    return { _0 : "", _1 : ((0 : GoUInt64)), _2 : ((0 : GoUInt64)), _3 : new DecodeError("line", _r.value._buf._off, "strp/line_strp offset out of range").__copy__() };
                };
                var _b1:T_buf = new T_buf();
                if (_lf._form.__t__ == _formStrp.__t__) {
                    _b1 = _makeBuf(_r.value._buf._dwarf, _r.value._buf._format, "str", new Offset(((0 : GoUInt32))), _r.value._str).__copy__();
                } else {
                    _b1 = _makeBuf(_r.value._buf._dwarf, _r.value._buf._format, "line_str", new Offset(((0 : GoUInt32))), _r.value._lineStr).__copy__();
                };
                _b1._skip(((_off : GoInt)));
                _str = _b1._string();
                if (_b1._err != null) {
                    return { _0 : "", _1 : ((0 : GoUInt64)), _2 : ((0 : GoUInt64)), _3 : new DecodeError("line", _r.value._buf._off, _b1._err.error()).__copy__() };
                };
            } else if (_lf._form.__t__ == _formStrpSup.__t__) {
                if (_dwarf64) {
                    _r.value._buf._uint64();
                } else {
                    _r.value._buf._uint32();
                };
            } else if (_lf._form.__t__ == _formStrx.__t__) {
                _r.value._buf._uint();
            } else if (_lf._form.__t__ == _formStrx1.__t__) {
                _r.value._buf._uint8();
            } else if (_lf._form.__t__ == _formStrx2.__t__) {
                _r.value._buf._uint16();
            } else if (_lf._form.__t__ == _formStrx3.__t__) {
                _r.value._buf._uint24();
            } else if (_lf._form.__t__ == _formStrx4.__t__) {
                _r.value._buf._uint32();
            } else if (_lf._form.__t__ == _formData1.__t__) {
                _val = ((_r.value._buf._uint8() : GoUInt64));
            } else if (_lf._form.__t__ == _formData2.__t__) {
                _val = ((_r.value._buf._uint16() : GoUInt64));
            } else if (_lf._form.__t__ == _formData4.__t__) {
                _val = ((_r.value._buf._uint32() : GoUInt64));
            } else if (_lf._form.__t__ == _formData8.__t__) {
                _val = _r.value._buf._uint64();
            } else if (_lf._form.__t__ == _formData16.__t__) {
                _r.value._buf._bytes(((16 : GoInt)));
            } else if (_lf._form.__t__ == _formDwarfBlock.__t__) {
                _r.value._buf._bytes(((_r.value._buf._uint() : GoInt)));
            } else if (_lf._form.__t__ == _formUdata.__t__) {
                _val = _r.value._buf._uint();
            };
            if (_lf._lnct == _lnctPath) {
                stdgo.path.Path = _str;
            } else if (_lf._lnct == _lnctDirectoryIndex) {
                if (_val >= ((_r.value._directories.length : GoUInt64))) {
                    return { _0 : "", _1 : ((0 : GoUInt64)), _2 : ((0 : GoUInt64)), _3 : new DecodeError("line", _r.value._buf._off, "directory index out of range").__copy__() };
                };
                _dir = _r.value._directories[_val];
            } else if (_lf._lnct == _lnctTimestamp) {
                _mtime = _val;
            } else if (_lf._lnct == _lnctSize) {
                _size = _val;
            } else if (_lf._lnct == _lnctMD5) {};
        };
        if (_dir != (("" : GoString)) && stdgo.path.Path != (("" : GoString))) {
            stdgo.path.Path = _pathJoin(_dir, stdgo.path.Path);
        };
        return { _0 : stdgo.path.Path, _1 : _mtime, _2 : _size, _3 : ((null : stdgo.Error)) };
    }
    public function _readLNCTFormat():Slice<T_lnctForm> {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:GoUInt8 = _r.value._buf._uint8();
        var _ret:Slice<T_lnctForm> = new Slice<T_lnctForm>(...[for (i in 0 ... ((_c : GoInt)).toBasic()) new T_lnctForm()]);
        {
            var _i;
            for (_obj in _ret.keyValueIterator()) {
                _i = _obj.key;
                _ret[_i]._lnct = ((_r.value._buf._uint() : GoInt));
                _ret[_i]._form = new T_format(_r.value._buf._uint());
            };
        };
        return _ret;
    }
    public function _readHeader(_compDir:GoString):Error {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _buf:Pointer<T_buf> = Go.pointer(_r.value._buf);
        var _hdrOffset:Offset = _buf.value._off;
        var __tmp__ = _buf.value._unitLength(), _unitLength:Offset = __tmp__._0, _dwarf64:Bool = __tmp__._1;
        _r.value._endOffset = new Offset(_buf.value._off.__t__ + _unitLength.__t__);
        if (_r.value._endOffset.__t__ > new Offset(_buf.value._off.__t__ + new Offset(_buf.value._data.length).__t__).__t__) {
            return new DecodeError("line", _hdrOffset, stdgo.fmt.Fmt.sprintf("line table end %d exceeds section size %d", Go.toInterface(_r.value._endOffset), Go.toInterface(new Offset(_buf.value._off.__t__ + new Offset(_buf.value._data.length).__t__)))).__copy__();
        };
        _r.value._version = _buf.value._uint16();
        if (_buf.value._err == null && (_r.value._version < ((2 : GoUInt16)) || _r.value._version > ((5 : GoUInt16)))) {
            return new DecodeError("line", _hdrOffset, stdgo.fmt.Fmt.sprintf("unknown line table version %d", Go.toInterface(_r.value._version))).__copy__();
        };
        if (_r.value._version >= ((5 : GoUInt16))) {
            _r.value._addrsize = ((_buf.value._uint8() : GoInt));
            _r.value._segmentSelectorSize = ((_buf.value._uint8() : GoInt));
        } else {
            _r.value._addrsize = _buf.value._format._addrsize();
            _r.value._segmentSelectorSize = ((0 : GoInt));
        };
        var _headerLength:Offset = new Offset();
        if (_dwarf64) {
            _headerLength = new Offset(_buf.value._uint64());
        } else {
            _headerLength = new Offset(_buf.value._uint32());
        };
        _r.value._programOffset = new Offset(_buf.value._off.__t__ + _headerLength.__t__);
        _r.value._minInstructionLength = ((_buf.value._uint8() : GoInt));
        if (_r.value._version >= ((4 : GoUInt16))) {
            _r.value._maxOpsPerInstruction = ((_buf.value._uint8() : GoInt));
        } else {
            _r.value._maxOpsPerInstruction = ((1 : GoInt));
        };
        _r.value._defaultIsStmt = _buf.value._uint8() != ((0 : GoUInt8));
        _r.value._lineBase = ((((_buf.value._uint8() : GoInt8)) : GoInt));
        _r.value._lineRange = ((_buf.value._uint8() : GoInt));
        if (_buf.value._err != null) {
            return _buf.value._err;
        };
        if (_r.value._maxOpsPerInstruction == ((0 : GoInt))) {
            return new DecodeError("line", _hdrOffset, "invalid maximum operations per instruction: 0").__copy__();
        };
        if (_r.value._lineRange == ((0 : GoInt))) {
            return new DecodeError("line", _hdrOffset, "invalid line range: 0").__copy__();
        };
        _r.value._opcodeBase = ((_buf.value._uint8() : GoInt));
        _r.value._opcodeLengths = new Slice<GoInt>(...[for (i in 0 ... ((_r.value._opcodeBase : GoInt)).toBasic()) ((0 : GoInt))]);
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < _r.value._opcodeBase, _i++, {
                _r.value._opcodeLengths[_i] = ((_buf.value._uint8() : GoInt));
            });
        };
        if (_buf.value._err != null) {
            return _buf.value._err;
        };
        {
            var _i;
            var _length;
            for (_obj in _r.value._opcodeLengths.keyValueIterator()) {
                _i = _obj.key;
                _length = _obj.value;
                {
                    var __tmp__ = _knownOpcodeLengths.exists(_i) ? { value : _knownOpcodeLengths[_i], ok : true } : { value : _knownOpcodeLengths.defaultValue(), ok : false }, _known:GoInt = __tmp__.value, _ok:Bool = __tmp__.ok;
                    if (_ok && _known != _length) {
                        return new DecodeError("line", _hdrOffset, stdgo.fmt.Fmt.sprintf("opcode %d expected to have length %d, but has length %d", Go.toInterface(_i), Go.toInterface(_known), Go.toInterface(_length))).__copy__();
                    };
                };
            };
        };
        if (_r.value._version < ((5 : GoUInt16))) {
            _r.value._directories = new Slice<GoString>(_compDir);
            while (true) {
                var _directory:GoString = _buf.value._string();
                if (_buf.value._err != null) {
                    return _buf.value._err;
                };
                if (_directory.length == ((0 : GoInt))) {
                    break;
                };
                if (!_pathIsAbs(_directory)) {
                    _directory = _pathJoin(_compDir, _directory);
                };
                _r.value._directories = _r.value._directories.__append__(_directory);
            };
            _r.value._fileEntries = new Slice<Pointer<LineFile>>(...[for (i in 0 ... ((((1 : GoInt)) : GoInt)).toBasic()) new Pointer<LineFile>().nil()]);
            while (true) {
                {
                    var __tmp__ = _r.value._readFileEntry(), _done:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    } else if (_done) {
                        break;
                    };
                };
            };
        } else {
            var _dirFormat:Slice<T_lnctForm> = _r.value._readLNCTFormat();
            var _c:GoUInt64 = _buf.value._uint();
            _r.value._directories = new Slice<GoString>(...[for (i in 0 ... ((_c : GoInt)).toBasic()) (("" : GoString))]);
            {
                var _i;
                for (_obj in _r.value._directories.keyValueIterator()) {
                    _i = _obj.key;
                    var __tmp__ = _r.value._readLNCT(_dirFormat, _dwarf64), _dir:GoString = __tmp__._0, _:GoUInt64 = __tmp__._1, _:GoUInt64 = __tmp__._2, _err:stdgo.Error = __tmp__._3;
                    if (_err != null) {
                        return _err;
                    };
                    _r.value._directories[_i] = _dir;
                };
            };
            var _fileFormat:Slice<T_lnctForm> = _r.value._readLNCTFormat();
            _c = _buf.value._uint();
            _r.value._fileEntries = new Slice<Pointer<LineFile>>(...[for (i in 0 ... ((_c : GoInt)).toBasic()) new Pointer<LineFile>().nil()]);
            {
                var _i;
                for (_obj in _r.value._fileEntries.keyValueIterator()) {
                    _i = _obj.key;
                    var __tmp__ = _r.value._readLNCT(_fileFormat, _dwarf64), _name:GoString = __tmp__._0, _mtime:GoUInt64 = __tmp__._1, _size:GoUInt64 = __tmp__._2, _err:stdgo.Error = __tmp__._3;
                    if (_err != null) {
                        return _err;
                    };
                    _r.value._fileEntries[_i] = Go.pointer(new LineFile(_name, _mtime, ((_size : GoInt))));
                };
            };
        };
        _r.value._initialFileEntries = _r.value._fileEntries.length;
        return _buf.value._err;
    }
    public var _buf : T_buf = new T_buf();
    public var _section : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _str : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _lineStr : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _version : GoUInt16 = ((0 : GoUInt16));
    public var _addrsize : GoInt = ((0 : GoInt));
    public var _segmentSelectorSize : GoInt = ((0 : GoInt));
    public var _minInstructionLength : GoInt = ((0 : GoInt));
    public var _maxOpsPerInstruction : GoInt = ((0 : GoInt));
    public var _defaultIsStmt : Bool = false;
    public var _lineBase : GoInt = ((0 : GoInt));
    public var _lineRange : GoInt = ((0 : GoInt));
    public var _opcodeBase : GoInt = ((0 : GoInt));
    public var _opcodeLengths : Slice<GoInt> = new Slice<GoInt>().nil();
    public var _directories : Slice<GoString> = new Slice<GoString>().nil();
    public var _fileEntries : Slice<Pointer<LineFile>> = new Slice<Pointer<LineFile>>().nil();
    public var _programOffset : Offset = new Offset();
    public var _endOffset : Offset = new Offset();
    public var _initialFileEntries : GoInt = ((0 : GoInt));
    public var _state : LineEntry = new LineEntry();
    public var _fileIndex : GoInt = ((0 : GoInt));
    public function new(?_buf:T_buf, ?_section:Slice<GoUInt8>, ?_str:Slice<GoUInt8>, ?_lineStr:Slice<GoUInt8>, ?_version:GoUInt16, ?_addrsize:GoInt, ?_segmentSelectorSize:GoInt, ?_minInstructionLength:GoInt, ?_maxOpsPerInstruction:GoInt, ?_defaultIsStmt:Bool, ?_lineBase:GoInt, ?_lineRange:GoInt, ?_opcodeBase:GoInt, ?_opcodeLengths:Slice<GoInt>, ?_directories:Slice<GoString>, ?_fileEntries:Slice<Pointer<LineFile>>, ?_programOffset:Offset, ?_endOffset:Offset, ?_initialFileEntries:GoInt, ?_state:LineEntry, ?_fileIndex:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_buf) + " " + Go.string(_section) + " " + Go.string(_str) + " " + Go.string(_lineStr) + " " + Go.string(_version) + " " + Go.string(_addrsize) + " " + Go.string(_segmentSelectorSize) + " " + Go.string(_minInstructionLength) + " " + Go.string(_maxOpsPerInstruction) + " " + Go.string(_defaultIsStmt) + " " + Go.string(_lineBase) + " " + Go.string(_lineRange) + " " + Go.string(_opcodeBase) + " " + Go.string(_opcodeLengths) + " " + Go.string(_directories) + " " + Go.string(_fileEntries) + " " + Go.string(_programOffset) + " " + Go.string(_endOffset) + " " + Go.string(_initialFileEntries) + " " + Go.string(_state) + " " + Go.string(_fileIndex) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new LineReader(
_buf,
_section,
_str,
_lineStr,
_version,
_addrsize,
_segmentSelectorSize,
_minInstructionLength,
_maxOpsPerInstruction,
_defaultIsStmt,
_lineBase,
_lineRange,
_opcodeBase,
_opcodeLengths,
_directories,
_fileEntries,
_programOffset,
_endOffset,
_initialFileEntries,
_state,
_fileIndex);
    }
    public function __set__(__tmp__) {
        this._buf = __tmp__._buf;
        this._section = __tmp__._section;
        this._str = __tmp__._str;
        this._lineStr = __tmp__._lineStr;
        this._version = __tmp__._version;
        this._addrsize = __tmp__._addrsize;
        this._segmentSelectorSize = __tmp__._segmentSelectorSize;
        this._minInstructionLength = __tmp__._minInstructionLength;
        this._maxOpsPerInstruction = __tmp__._maxOpsPerInstruction;
        this._defaultIsStmt = __tmp__._defaultIsStmt;
        this._lineBase = __tmp__._lineBase;
        this._lineRange = __tmp__._lineRange;
        this._opcodeBase = __tmp__._opcodeBase;
        this._opcodeLengths = __tmp__._opcodeLengths;
        this._directories = __tmp__._directories;
        this._fileEntries = __tmp__._fileEntries;
        this._programOffset = __tmp__._programOffset;
        this._endOffset = __tmp__._endOffset;
        this._initialFileEntries = __tmp__._initialFileEntries;
        this._state = __tmp__._state;
        this._fileIndex = __tmp__._fileIndex;
        return this;
    }
}
@:structInit class LineEntry {
    public var address : GoUInt64 = ((0 : GoUInt64));
    public var opIndex : GoInt = ((0 : GoInt));
    public var file : Pointer<LineFile> = new Pointer<LineFile>().nil();
    public var line : GoInt = ((0 : GoInt));
    public var column : GoInt = ((0 : GoInt));
    public var isStmt : Bool = false;
    public var basicBlock : Bool = false;
    public var prologueEnd : Bool = false;
    public var epilogueBegin : Bool = false;
    public var isa : GoInt = ((0 : GoInt));
    public var discriminator : GoInt = ((0 : GoInt));
    public var endSequence : Bool = false;
    public function new(?address:GoUInt64, ?opIndex:GoInt, ?file:Pointer<LineFile>, ?line:GoInt, ?column:GoInt, ?isStmt:Bool, ?basicBlock:Bool, ?prologueEnd:Bool, ?epilogueBegin:Bool, ?isa:GoInt, ?discriminator:GoInt, ?endSequence:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(address) + " " + Go.string(opIndex) + " " + Go.string(file) + " " + Go.string(line) + " " + Go.string(column) + " " + Go.string(isStmt) + " " + Go.string(basicBlock) + " " + Go.string(prologueEnd) + " " + Go.string(epilogueBegin) + " " + Go.string(isa) + " " + Go.string(discriminator) + " " + Go.string(endSequence) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new LineEntry(
address,
opIndex,
file,
line,
column,
isStmt,
basicBlock,
prologueEnd,
epilogueBegin,
isa,
discriminator,
endSequence);
    }
    public function __set__(__tmp__) {
        this.address = __tmp__.address;
        this.opIndex = __tmp__.opIndex;
        this.file = __tmp__.file;
        this.line = __tmp__.line;
        this.column = __tmp__.column;
        this.isStmt = __tmp__.isStmt;
        this.basicBlock = __tmp__.basicBlock;
        this.prologueEnd = __tmp__.prologueEnd;
        this.epilogueBegin = __tmp__.epilogueBegin;
        this.isa = __tmp__.isa;
        this.discriminator = __tmp__.discriminator;
        this.endSequence = __tmp__.endSequence;
        return this;
    }
}
@:structInit class LineFile {
    public var name : GoString = (("" : GoString));
    public var mtime : GoUInt64 = ((0 : GoUInt64));
    public var length : GoInt = ((0 : GoInt));
    public function new(?name:GoString, ?mtime:GoUInt64, ?length:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(name) + " " + Go.string(mtime) + " " + Go.string(length) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new LineFile(name, mtime, length);
    }
    public function __set__(__tmp__) {
        this.name = __tmp__.name;
        this.mtime = __tmp__.mtime;
        this.length = __tmp__.length;
        return this;
    }
}
@:structInit class T_lnctForm {
    public var _lnct : GoInt = ((0 : GoInt));
    public var _form : T_format = new T_format();
    public function new(?_lnct:GoInt, ?_form:T_format) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_lnct) + " " + Go.string(_form) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_lnctForm(_lnct, _form);
    }
    public function __set__(__tmp__) {
        this._lnct = __tmp__._lnct;
        this._form = __tmp__._form;
        return this;
    }
}
@:structInit class LineReaderPos {
    public var _off : Offset = new Offset();
    public var _numFileEntries : GoInt = ((0 : GoInt));
    public var _state : LineEntry = new LineEntry();
    public var _fileIndex : GoInt = ((0 : GoInt));
    public function new(?_off:Offset, ?_numFileEntries:GoInt, ?_state:LineEntry, ?_fileIndex:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_off) + " " + Go.string(_numFileEntries) + " " + Go.string(_state) + " " + Go.string(_fileIndex) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new LineReaderPos(_off, _numFileEntries, _state, _fileIndex);
    }
    public function __set__(__tmp__) {
        this._off = __tmp__._off;
        this._numFileEntries = __tmp__._numFileEntries;
        this._state = __tmp__._state;
        this._fileIndex = __tmp__._fileIndex;
        return this;
    }
}
@:structInit class Data {
    public function _offsetToUnit(_off:Offset):GoInt {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _next:GoInt = stdgo.sort.Sort.search(_d.value._unit.length, function(_i:GoInt):Bool {
            return _d.value._unit[_i]._off.__t__ > _off.__t__;
        });
        if (_next == ((0 : GoInt))) {
            return -((1 : GoUnTypedInt));
        };
        var _u:Pointer<T_unit> = Go.pointer(_d.value._unit[_next - ((1 : GoInt))]);
        if (_u.value._off.__t__ <= _off.__t__ && _off.__t__ < new Offset(_u.value._off.__t__ + new Offset(_u.value._data.length).__t__).__t__) {
            return _next - ((1 : GoInt));
        };
        return -((1 : GoUnTypedInt));
    }
    public function _parseUnits():{ var _0 : Slice<T_unit>; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _nunit:GoInt = ((0 : GoInt));
        var _b:T_buf = _makeBuf(_d, new T_unknownFormat().__copy__(), "info", new Offset(((0 : GoUInt32))), _d.value._info).__copy__();
        while (_b._data.length > ((0 : GoInt))) {
            var __tmp__ = _b._unitLength(), _len:Offset = __tmp__._0, _:Bool = __tmp__._1;
            if (_len.__t__ != new Offset(_len.__t__).__t__) {
                _b._error("unit length overflow");
                break;
            };
            _b._skip(_len.__t__);
            if (_len.__t__ > ((0 : GoUInt32))) {
                _nunit++;
            };
        };
        if (_b._err != null) {
            return { _0 : new Slice<T_unit>().nil(), _1 : _b._err };
        };
        _b = _makeBuf(_d, new T_unknownFormat().__copy__(), "info", new Offset(((0 : GoUInt32))), _d.value._info).__copy__();
        var _units:Slice<T_unit> = new Slice<T_unit>(...[for (i in 0 ... ((_nunit : GoInt)).toBasic()) new T_unit()]);
        {
            var _i;
            for (_obj in _units.keyValueIterator()) {
                _i = _obj.key;
                var _u:Pointer<T_unit> = Go.pointer(_units[_i]);
                _u.value._base = _b._off;
                var _n:Offset = new Offset();
                while (_n.__t__ == ((0 : GoUInt32))) {
                    {
                        var __tmp__ = _b._unitLength();
                        _n = __tmp__._0;
                        _u.value._is64 = __tmp__._1;
                    };
                };
                var _dataOff:Offset = _b._off;
                var _vers:GoUInt16 = _b._uint16();
                if (_vers < ((2 : GoUInt16)) || _vers > ((5 : GoUInt16))) {
                    _b._error((("unsupported DWARF version " : GoString)) + stdgo.strconv.Strconv.itoa(((_vers : GoInt))));
                    break;
                };
                _u.value._vers = ((_vers : GoInt));
                if (_vers >= ((5 : GoUInt16))) {
                    _u.value._utype = _b._uint8();
                    _u.value._asize = ((_b._uint8() : GoInt));
                };
                var _abbrevOff:GoUInt64 = ((0 : GoUInt64));
                if (_u.value._is64) {
                    _abbrevOff = _b._uint64();
                } else {
                    _abbrevOff = ((_b._uint32() : GoUInt64));
                };
                var __tmp__ = _d.value._parseAbbrev(_abbrevOff, _u.value._vers), _atable:T_abbrevTable = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    if (_b._err == null) {
                        _b._err = _err;
                    };
                    break;
                };
                _u.value._atable = _atable.__copy__();
                if (_vers < ((5 : GoUInt16))) {
                    _u.value._asize = ((_b._uint8() : GoInt));
                };
                if (_u.value._utype == _utSkeleton || _u.value._utype == _utSplitCompile) {
                    _b._uint64();
                } else if (_u.value._utype == _utType || _u.value._utype == _utSplitType) {
                    _b._uint64();
                    if (_u.value._is64) {
                        _b._uint64();
                    } else {
                        _b._uint32();
                    };
                };
                _u.value._off = _b._off;
                _u.value._data = _b._bytes(new Offset(_n.__t__ - (new Offset(_b._off.__t__ - _dataOff.__t__)).__t__).__t__);
            };
        };
        if (_b._err != null) {
            return { _0 : new Slice<T_unit>().nil(), _1 : _b._err };
        };
        return { _0 : _units, _1 : ((null : stdgo.Error)) };
    }
    public function _sigToType(_sig:GoUInt64):{ var _0 : Type; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _tu:Pointer<T_typeUnit> = _d.value._typeSigs[_sig];
        if (_tu == null || _tu.isNil()) {
            return { _0 : ((null : Type)), _1 : stdgo.fmt.Fmt.errorf("no type unit with signature %v", Go.toInterface(_sig)) };
        };
        if (_tu.value._cache != null) {
            return { _0 : _tu.value._cache, _1 : ((null : stdgo.Error)) };
        };
        var _b:T_buf = _makeBuf(_d, _tu.value, _tu.value._name, _tu.value._unit._off, _tu.value._unit._data).__copy__();
        var _r:Pointer<T_typeUnitReader> = Go.pointer((({ _d : _d, _tu : _tu, _b : _b.__copy__(), _err : ((null : stdgo.Error)) } : T_typeUnitReader)));
        var __tmp__ = _d.value._readType(_tu.value._name, _r.value, _tu.value._toff, new GoMap<Offset, Type>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("debug/dwarf.Offset", [], stdgo.reflect.Reflect.GoType.basic(uint32_kind)), stdgo.reflect.Reflect.GoType.named("debug/dwarf.Type", [], stdgo.reflect.Reflect.GoType.named("debug/dwarf.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])))))), new Pointer<T_typeFixer>().nil()), _t:Type = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : Type)), _1 : _err };
        };
        _tu.value._cache = _t;
        return { _0 : _t, _1 : ((null : stdgo.Error)) };
    }
    public function _parseTypes(_name:GoString, _types:Slice<GoByte>):Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _b:T_buf = _makeBuf(_d, new T_unknownFormat().__copy__(), _name, new Offset(((0 : GoUInt32))), _types).__copy__();
        while (_b._data.length > ((0 : GoInt))) {
            var _base:Offset = _b._off;
            var __tmp__ = _b._unitLength(), _n:Offset = __tmp__._0, _dwarf64:Bool = __tmp__._1;
            if (_n.__t__ != new Offset(_n.__t__).__t__) {
                _b._error("type unit length overflow");
                return _b._err;
            };
            var _hdroff:Offset = _b._off;
            var _vers:GoInt = ((_b._uint16() : GoInt));
            if (_vers != ((4 : GoInt))) {
                _b._error((("unsupported DWARF version " : GoString)) + stdgo.strconv.Strconv.itoa(_vers));
                return _b._err;
            };
            var _ao:GoUInt64 = ((0 : GoUInt64));
            if (!_dwarf64) {
                _ao = ((_b._uint32() : GoUInt64));
            } else {
                _ao = _b._uint64();
            };
            var __tmp__ = _d.value._parseAbbrev(_ao, _vers), _atable:T_abbrevTable = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            var _asize:GoUInt8 = _b._uint8();
            var _sig:GoUInt64 = _b._uint64();
            var _toff:GoUInt32 = ((0 : GoUInt32));
            if (!_dwarf64) {
                _toff = _b._uint32();
            } else {
                var _to64:GoUInt64 = _b._uint64();
                if (_to64 != ((((_to64 : GoUInt32)) : GoUInt64))) {
                    _b._error("type unit type offset overflow");
                    return _b._err;
                };
                _toff = ((_to64 : GoUInt32));
            };
            var _boff:Offset = _b._off;
            _d.value._typeSigs[_sig] = Go.pointer((({ _unit : (({ _base : _base, _off : _boff, _data : _b._bytes(new Offset(_n.__t__ - (new Offset(_b._off.__t__ - _hdroff.__t__)).__t__).__t__), _atable : _atable.__copy__(), _asize : ((_asize : GoInt)), _vers : _vers, _is64 : _dwarf64, _utype : 0 } : T_unit)).__copy__(), _toff : new Offset(_toff), _name : _name, _cache : ((null : Type)) } : T_typeUnit)));
            if (_b._err != null) {
                return _b._err;
            };
        };
        return ((null : stdgo.Error));
    }
    public function _readType(_name:GoString, _r:T_typeReader, _off:Offset, _typeCache:GoMap<Offset, Type>, _fixups:Pointer<T_typeFixer>):{ var _0 : Type; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.internal.Macro.controlFlow({
            var recover_exception:Error = null;
            var deferstack:Array<Void -> Void> = [];
            {
                var __tmp__ = _typeCache.exists(_off) ? { value : _typeCache[_off], ok : true } : { value : _typeCache.defaultValue(), ok : false }, _t:Type = __tmp__.value, _ok:Bool = __tmp__.ok;
                if (_ok) {
                    return { _0 : _t, _1 : ((null : stdgo.Error)) };
                };
            };
            _r.seek(_off);
            try {
                var __tmp__ = _r.next(), _e:Pointer<Entry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : ((null : Type)), _1 : _err };
                };
                var _addressSize:GoInt = _r.addressSize();
                if (_e == null || _e.isNil() || _e.value.offset.__t__ != _off.__t__) {
                    return { _0 : ((null : Type)), _1 : new DecodeError(_name, _off, "no type at offset").__copy__() };
                };
                if (_fixups == null || _fixups.isNil()) {
                    var _fixer:T_typeFixer = new T_typeFixer();
                    {
                        deferstack.unshift(() -> {
                            var a = function():Void {
                                _fixer._apply();
                            };
                            a();
                        });
                    };
                    _fixups = Go.pointer(_fixer);
                };
                var _typ:Type = ((null : Type));
                var _nextDepth:GoInt = ((0 : GoInt));
                var _next:() -> Pointer<Entry> = function():Pointer<Entry> {
                    if (!_e.value.children) {
                        return new Pointer<Entry>().nil();
                    };
                    while (true) {
                        var __tmp__ = _r.next(), _kid:Pointer<Entry> = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                        if (_err1 != null) {
                            _err = _err1;
                            return new Pointer<Entry>().nil();
                        };
                        if (_kid == null || _kid.isNil()) {
                            _err = new DecodeError(_name, _r._offset(), "unexpected end of DWARF entries").__copy__();
                            return new Pointer<Entry>().nil();
                        };
                        if (_kid.value.tag.__t__ == ((0 : GoUInt32))) {
                            if (_nextDepth > ((0 : GoInt))) {
                                _nextDepth--;
                                continue;
                            };
                            return new Pointer<Entry>().nil();
                        };
                        if (_kid.value.children) {
                            _nextDepth++;
                        };
                        if (_nextDepth > ((0 : GoInt))) {
                            continue;
                        };
                        return _kid;
                    };
                };
                var _typeOf:Pointer<Entry> -> Type = function(_e:Pointer<Entry>):Type {
                    var _tval:AnyInterface = Go.toInterface(_e.value.val(attrType));
                    var _t:Type = ((null : Type));
                    if (Go.assertable(((_tval : Offset)))) {
                        var _toff:Offset = _tval == null ? null : _tval.__underlying__() == null ? null : _tval == null ? null : _tval.__underlying__().value;
                        {
                            {
                                var __tmp__ = _d.value._readType(_name, _r._clone(), _toff, _typeCache, _fixups);
                                _t = __tmp__._0;
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                return ((null : Type));
                            };
                        };
                    } else if (Go.assertable(((_tval : GoUInt64)))) {
                        var _toff:GoUInt64 = _tval == null ? null : _tval.__underlying__() == null ? null : _tval == null ? null : _tval.__underlying__().value;
                        {
                            {
                                var __tmp__ = _d.value._sigToType(_toff);
                                _t = __tmp__._0;
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                return ((null : Type));
                            };
                        };
                    } else {
                        var _toff:AnyInterface = _tval == null ? null : _tval.__underlying__();
                        return Go.pointer(new VoidType()).value;
                    };
                    return _t;
                };
                if (_e.value.tag.__t__ == tagArrayType.__t__) {
                    var _t:Pointer<ArrayType> = Go.pointer(new ArrayType());
                    _typ = _t.value;
                    _typeCache[_off] = _t.value;
                    {
                        _t.value.type = _typeOf(_e);
                        if (_err != null) {
                            @:goto "Error";
                        };
                    };
                    {
                        var __tmp__ = try {
                            { value : ((_e.value.val(attrStrideSize).value : GoInt64)), ok : true };
                        } catch(_) {
                            { value : ((0 : GoInt64)), ok : false };
                        };
                        _t.value.strideBitSize = __tmp__.value;
                    };
                    var _dims:Slice<GoInt64> = new Slice<GoInt64>().nil();
                    {
                        var _kid:Pointer<Entry> = _next();
                        Go.cfor(_kid != null && !_kid.isNil(), _kid = _next(), {
                            if (_kid.value.tag.__t__ == tagSubrangeType.__t__) {
                                var __tmp__ = try {
                                    { value : ((_kid.value.val(attrCount).value : GoInt64)), ok : true };
                                } catch(_) {
                                    { value : ((0 : GoInt64)), ok : false };
                                }, _count = __tmp__.value, _ok = __tmp__.ok;
                                if (!_ok) {
                                    {
                                        var __tmp__ = try {
                                            { value : ((_kid.value.val(attrUpperBound).value : GoInt64)), ok : true };
                                        } catch(_) {
                                            { value : ((0 : GoInt64)), ok : false };
                                        };
                                        _count = __tmp__.value;
                                        _ok = __tmp__.ok;
                                    };
                                    if (_ok) {
                                        _count++;
                                    } else if (_dims.length == ((0 : GoInt))) {
                                        _count = -((1 : GoUnTypedInt));
                                    };
                                };
                                _dims = _dims.__append__(_count);
                            } else if (_kid.value.tag.__t__ == tagEnumerationType.__t__) {
                                _err = new DecodeError(_name, _kid.value.offset, "cannot handle enumeration type as array bound").__copy__();
                                @:goto "Error";
                            };
                        });
                    };
                    if (_dims.length == ((0 : GoInt))) {
                        _dims = new Slice<GoInt64>(-((1 : GoUnTypedInt)));
                    };
                    _t.value.count = _dims[((0 : GoInt))];
                    {
                        var _i:GoInt = _dims.length - ((1 : GoInt));
                        Go.cfor(_i >= ((1 : GoInt)), _i--, {
                            _t.value.type = Go.pointer((({ type : _t.value.type, count : _dims[_i], commonType : new CommonType(), strideBitSize : 0 } : ArrayType))).value;
                        });
                    };
                } else if (_e.value.tag.__t__ == tagBaseType.__t__) {
                    var __tmp__ = try {
                        { value : ((_e.value.val(attrName).value : GoString)), ok : true };
                    } catch(_) {
                        { value : (("" : GoString)), ok : false };
                    }, _name = __tmp__.value, _ = __tmp__.ok;
                    var __tmp__ = try {
                        { value : ((_e.value.val(attrEncoding).value : GoInt64)), ok : true };
                    } catch(_) {
                        { value : ((0 : GoInt64)), ok : false };
                    }, _enc = __tmp__.value, _ok = __tmp__.ok;
                    if (!_ok) {
                        _err = new DecodeError(_name, _e.value.offset, (("missing encoding attribute for " : GoString)) + _name).__copy__();
                        @:goto "Error";
                    };
                    if (_enc == _encAddress) {
                        _typ = Go.pointer(new AddrType()).value;
                    } else if (_enc == _encBoolean) {
                        _typ = Go.pointer(new BoolType()).value;
                    } else if (_enc == _encComplexFloat) {
                        _typ = Go.pointer(new ComplexType()).value;
                        if (_name == (("complex" : GoString))) {
                            {
                                var __tmp__ = try {
                                    { value : ((_e.value.val(attrByteSize).value : GoInt64)), ok : true };
                                } catch(_) {
                                    { value : ((0 : GoInt64)), ok : false };
                                }, _byteSize = __tmp__.value, _ = __tmp__.ok;
                                if (_byteSize == ((8 : GoInt64))) {
                                    _name = "complex float";
                                } else if (_byteSize == ((16 : GoInt64))) {
                                    _name = "complex double";
                                };
                            };
                        };
                    } else if (_enc == _encFloat) {
                        _typ = Go.pointer(new FloatType()).value;
                    } else if (_enc == _encSigned) {
                        _typ = Go.pointer(new IntType()).value;
                    } else if (_enc == _encUnsigned) {
                        _typ = Go.pointer(new UintType()).value;
                    } else if (_enc == _encSignedChar) {
                        _typ = Go.pointer(new CharType()).value;
                    } else if (_enc == _encUnsignedChar) {
                        _typ = Go.pointer(new UcharType()).value;
                    };
                    _typeCache[_off] = _typ;
                    var _t:Pointer<BasicType> = ((_typ.__underlying__().value : T__interface_6)).basic();
                    _t.value.commonType.name = _name;
                    {
                        var __tmp__ = try {
                            { value : ((_e.value.val(attrBitSize).value : GoInt64)), ok : true };
                        } catch(_) {
                            { value : ((0 : GoInt64)), ok : false };
                        };
                        _t.value.bitSize = __tmp__.value;
                    };
                    {
                        var __tmp__ = try {
                            { value : ((_e.value.val(attrBitOffset).value : GoInt64)), ok : true };
                        } catch(_) {
                            { value : ((0 : GoInt64)), ok : false };
                        };
                        _t.value.bitOffset = __tmp__.value;
                    };
                } else if (_e.value.tag.__t__ == tagClassType.__t__ || _e.value.tag.__t__ == tagStructType.__t__ || _e.value.tag.__t__ == tagUnionType.__t__) {
                    var _t:Pointer<StructType> = Go.pointer(new StructType());
                    _typ = _t.value;
                    _typeCache[_off] = _t.value;
                    if (_e.value.tag.__t__ == tagClassType.__t__) {
                        _t.value.kind = "class";
                    } else if (_e.value.tag.__t__ == tagStructType.__t__) {
                        _t.value.kind = "struct";
                    } else if (_e.value.tag.__t__ == tagUnionType.__t__) {
                        _t.value.kind = "union";
                    };
                    {
                        var __tmp__ = try {
                            { value : ((_e.value.val(attrName).value : GoString)), ok : true };
                        } catch(_) {
                            { value : (("" : GoString)), ok : false };
                        };
                        _t.value.structName = __tmp__.value;
                    };
                    _t.value.incomplete = _e.value.val(attrDeclaration) != null;
                    _t.value.field = new Slice<Pointer<StructField>>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new Pointer<StructField>().nil()]).setCap(((((8 : GoInt)) : GoInt)).toBasic());
                    var _lastFieldType:Pointer<Type> = new Pointer<Type>().nil();
                    var _lastFieldBitOffset:GoInt64 = ((0 : GoInt64));
                    {
                        var _kid:Pointer<Entry> = _next();
                        Go.cfor(_kid != null && !_kid.isNil(), _kid = _next(), {
                            if (_kid.value.tag.__t__ != tagMember.__t__) {
                                continue;
                            };
                            var _f:Pointer<StructField> = Go.pointer(new StructField());
                            {
                                _f.value.type = _typeOf(_kid);
                                if (_err != null) {
                                    @:goto "Error";
                                };
                            };
                            if (Go.assertable(((_kid.value.val(attrDataMemberLoc) : Slice<GoByte>)))) {
                                var _loc:Slice<GoUInt8> = _kid.value.val(attrDataMemberLoc) == null ? null : _kid.value.val(attrDataMemberLoc).__underlying__() == null ? null : _kid.value.val(attrDataMemberLoc) == null ? null : _kid.value.val(attrDataMemberLoc).__underlying__().value;
                                var _b:T_buf = _makeBuf(_d, new T_unknownFormat().__copy__(), "location", new Offset(((0 : GoUInt32))), _loc).__copy__();
                                if (_b._uint8() != _opPlusUconst) {
                                    _err = new DecodeError(_name, _kid.value.offset, "unexpected opcode").__copy__();
                                    @:goto "Error";
                                };
                                _f.value.byteOffset = ((_b._uint() : GoInt64));
                                if (_b._err != null) {
                                    _err = _b._err;
                                    @:goto "Error";
                                };
                            } else if (Go.assertable(((_kid.value.val(attrDataMemberLoc) : GoInt64)))) {
                                var _loc:GoInt64 = _kid.value.val(attrDataMemberLoc) == null ? null : _kid.value.val(attrDataMemberLoc).__underlying__() == null ? null : _kid.value.val(attrDataMemberLoc) == null ? null : _kid.value.val(attrDataMemberLoc).__underlying__().value;
                                _f.value.byteOffset = _loc;
                            };
                            var _haveBitOffset:Bool = false;
                            {
                                var __tmp__ = try {
                                    { value : ((_kid.value.val(attrName).value : GoString)), ok : true };
                                } catch(_) {
                                    { value : (("" : GoString)), ok : false };
                                };
                                _f.value.name = __tmp__.value;
                            };
                            {
                                var __tmp__ = try {
                                    { value : ((_kid.value.val(attrByteSize).value : GoInt64)), ok : true };
                                } catch(_) {
                                    { value : ((0 : GoInt64)), ok : false };
                                };
                                _f.value.byteSize = __tmp__.value;
                            };
                            {
                                var __tmp__ = try {
                                    { value : ((_kid.value.val(attrBitOffset).value : GoInt64)), ok : true };
                                } catch(_) {
                                    { value : ((0 : GoInt64)), ok : false };
                                };
                                _f.value.bitOffset = __tmp__.value;
                                _haveBitOffset = __tmp__.ok;
                            };
                            {
                                var __tmp__ = try {
                                    { value : ((_kid.value.val(attrBitSize).value : GoInt64)), ok : true };
                                } catch(_) {
                                    { value : ((0 : GoInt64)), ok : false };
                                };
                                _f.value.bitSize = __tmp__.value;
                            };
                            _t.value.field = _t.value.field.__append__(_f);
                            var _bito:GoInt64 = _f.value.bitOffset;
                            if (!_haveBitOffset) {
                                _bito = _f.value.byteOffset * ((8 : GoInt64));
                            };
                            if (_bito == _lastFieldBitOffset && _t.value.kind != (("union" : GoString))) {
                                _fixups.value._recordArrayType(_lastFieldType);
                            };
                            _lastFieldType = Go.pointer(_f.value.type);
                            _lastFieldBitOffset = _bito;
                        });
                    };
                    if (_t.value.kind != (("union" : GoString))) {
                        var __tmp__ = try {
                            { value : ((_e.value.val(attrByteSize).value : GoInt64)), ok : true };
                        } catch(_) {
                            { value : ((0 : GoInt64)), ok : false };
                        }, _b = __tmp__.value, _ok = __tmp__.ok;
                        if (_ok && _b * ((8 : GoInt64)) == _lastFieldBitOffset) {
                            _fixups.value._recordArrayType(_lastFieldType);
                        };
                    };
                } else if (_e.value.tag.__t__ == tagConstType.__t__ || _e.value.tag.__t__ == tagVolatileType.__t__ || _e.value.tag.__t__ == tagRestrictType.__t__) {
                    var _t:Pointer<QualType> = Go.pointer(new QualType());
                    _typ = _t.value;
                    _typeCache[_off] = _t.value;
                    {
                        _t.value.type = _typeOf(_e);
                        if (_err != null) {
                            @:goto "Error";
                        };
                    };
                    if (_e.value.tag.__t__ == tagConstType.__t__) {
                        _t.value.qual = "const";
                    } else if (_e.value.tag.__t__ == tagRestrictType.__t__) {
                        _t.value.qual = "restrict";
                    } else if (_e.value.tag.__t__ == tagVolatileType.__t__) {
                        _t.value.qual = "volatile";
                    };
                } else if (_e.value.tag.__t__ == tagEnumerationType.__t__) {
                    var _t:Pointer<EnumType> = Go.pointer(new EnumType());
                    _typ = _t.value;
                    _typeCache[_off] = _t.value;
                    {
                        var __tmp__ = try {
                            { value : ((_e.value.val(attrName).value : GoString)), ok : true };
                        } catch(_) {
                            { value : (("" : GoString)), ok : false };
                        };
                        _t.value.enumName = __tmp__.value;
                    };
                    _t.value.val = new Slice<Pointer<EnumValue_>>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new Pointer<EnumValue_>().nil()]).setCap(((((8 : GoInt)) : GoInt)).toBasic());
                    {
                        var _kid:Pointer<Entry> = _next();
                        Go.cfor(_kid != null && !_kid.isNil(), _kid = _next(), {
                            if (_kid.value.tag.__t__ == tagEnumerator.__t__) {
                                var _f:Pointer<EnumValue_> = Go.pointer(new EnumValue_());
                                {
                                    var __tmp__ = try {
                                        { value : ((_kid.value.val(attrName).value : GoString)), ok : true };
                                    } catch(_) {
                                        { value : (("" : GoString)), ok : false };
                                    };
                                    _f.value.name = __tmp__.value;
                                };
                                {
                                    var __tmp__ = try {
                                        { value : ((_kid.value.val(attrConstValue).value : GoInt64)), ok : true };
                                    } catch(_) {
                                        { value : ((0 : GoInt64)), ok : false };
                                    };
                                    _f.value.val = __tmp__.value;
                                };
                                var _n:GoInt = _t.value.val.length;
                                if (_n >= _t.value.val.cap()) {
                                    var _val:Slice<Pointer<EnumValue_>> = new Slice<Pointer<EnumValue_>>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) new Pointer<EnumValue_>().nil()]).setCap(((_n * ((2 : GoInt)) : GoInt)).toBasic());
                                    Go.copy(_val, _t.value.val);
                                    _t.value.val = _val;
                                };
                                _t.value.val = _t.value.val.__slice__(((0 : GoInt)), _n + ((1 : GoInt)));
                                _t.value.val[_n] = _f;
                            };
                        });
                    };
                } else if (_e.value.tag.__t__ == tagPointerType.__t__) {
                    var _t:Pointer<PtrType> = Go.pointer(new PtrType());
                    _typ = _t.value;
                    _typeCache[_off] = _t.value;
                    if (_e.value.val(attrType) == null) {
                        _t.value.type = Go.pointer(new VoidType()).value;
                        break;
                    };
                    _t.value.type = _typeOf(_e);
                } else if (_e.value.tag.__t__ == tagSubroutineType.__t__) {
                    var _t:Pointer<FuncType> = Go.pointer(new FuncType());
                    _typ = _t.value;
                    _typeCache[_off] = _t.value;
                    {
                        _t.value.returnType = _typeOf(_e);
                        if (_err != null) {
                            @:goto "Error";
                        };
                    };
                    _t.value.paramType = new Slice<Type>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((null : Type))]).setCap(((((8 : GoInt)) : GoInt)).toBasic());
                    {
                        var _kid:Pointer<Entry> = _next();
                        Go.cfor(_kid != null && !_kid.isNil(), _kid = _next(), {
                            var _tkid:Type = ((null : Type));
                            if (_kid.value.tag.__t__ == tagFormalParameter.__t__) {
                                {
                                    _tkid = _typeOf(_kid);
                                    if (_err != null) {
                                        @:goto "Error";
                                    };
                                };
                            } else if (_kid.value.tag.__t__ == tagUnspecifiedParameters.__t__) {
                                _tkid = Go.pointer(new DotDotDotType()).value;
                            };
                            _t.value.paramType = _t.value.paramType.__append__(_tkid);
                        });
                    };
                } else if (_e.value.tag.__t__ == tagTypedef.__t__) {
                    var _t:Pointer<TypedefType> = Go.pointer(new TypedefType());
                    _typ = _t.value;
                    _typeCache[_off] = _t.value;
                    {
                        var __tmp__ = try {
                            { value : ((_e.value.val(attrName).value : GoString)), ok : true };
                        } catch(_) {
                            { value : (("" : GoString)), ok : false };
                        };
                        _t.value.commonType.name = __tmp__.value;
                    };
                    _t.value.type = _typeOf(_e);
                } else if (_e.value.tag.__t__ == tagUnspecifiedType.__t__) {
                    var _t:Pointer<UnspecifiedType> = Go.pointer(new UnspecifiedType());
                    _typ = _t.value;
                    _typeCache[_off] = _t.value;
                    {
                        var __tmp__ = try {
                            { value : ((_e.value.val(attrName).value : GoString)), ok : true };
                        } catch(_) {
                            { value : (("" : GoString)), ok : false };
                        };
                        _t.value.basicType.commonType.name = __tmp__.value;
                    };
                } else {
                    var _t:Pointer<UnsupportedType> = Go.pointer(new UnsupportedType());
                    _typ = _t.value;
                    _typeCache[_off] = _t.value;
                    _t.value.tag = _e.value.tag;
                    {
                        var __tmp__ = try {
                            { value : ((_e.value.val(attrName).value : GoString)), ok : true };
                        } catch(_) {
                            { value : (("" : GoString)), ok : false };
                        };
                        _t.value.commonType.name = __tmp__.value;
                    };
                };
                if (_err != null) {
                    @:goto "Error";
                };
                {
                    var __tmp__ = try {
                        { value : ((_e.value.val(attrByteSize).value : GoInt64)), ok : true };
                    } catch(_) {
                        { value : ((0 : GoInt64)), ok : false };
                    }, _b = __tmp__.value, _ok = __tmp__.ok;
                    if (!_ok) {
                        _b = -((1 : GoUnTypedInt));
                        if (Go.assertable(((_typ : Pointer<TypedefType>)))) {
                            var _t:Pointer<TypedefType> = _typ == null ? null : _typ.__underlying__() == null ? null : _typ == null ? null : _typ.__underlying__().value;
                            _fixups.value._typedefs = _fixups.value._typedefs.__append__(_t);
                        } else if (Go.assertable(((_typ : Pointer<PtrType>)))) {
                            var _t:Pointer<PtrType> = _typ == null ? null : _typ.__underlying__() == null ? null : _typ == null ? null : _typ.__underlying__().value;
                            _b = ((_addressSize : GoInt64));
                        };
                    };
                    _typ.common().value.byteSize = _b;
                };
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return { _0 : _typ, _1 : ((null : stdgo.Error)) };
                };
                @:label("Error") _typeCache.remove(_off);
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return { _0 : ((null : Type)), _1 : _err };
                };
                for (defer in deferstack) {
                    defer();
                };
            } catch(e) {
                recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    if (recover_exception != null) throw recover_exception;
                    return { _0 : ((null : Type)), _1 : ((null : stdgo.Error)) };
                };
            };
        });
    }
    public function type(_off:Offset):{ var _0 : Type; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _d.value._readType("info", _d.value.reader().value, _off, _d.value._typeCache, new Pointer<T_typeFixer>().nil());
    }
    public function addSection(_name:GoString, _contents:Slice<GoByte>):Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _err:Error = ((null : stdgo.Error));
        if (_name == ((".debug_addr" : GoString))) {
            _d.value._addr = _contents;
        } else if (_name == ((".debug_line_str" : GoString))) {
            _d.value._lineStr = _contents;
        } else if (_name == ((".debug_str_offsets" : GoString))) {
            _d.value._strOffsets = _contents;
        } else if (_name == ((".debug_rnglists" : GoString))) {
            _d.value._rngLists = _contents;
        };
        return _err;
    }
    public function addTypes(_name:GoString, _types:Slice<GoByte>):Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _d.value._parseTypes(_name, _types);
    }
    public function lineReader(_cu:Pointer<Entry>):{ var _0 : Pointer<LineReader>; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_d.value._line == null || _d.value._line.isNil()) {
            return { _0 : new Pointer<LineReader>().nil(), _1 : ((null : stdgo.Error)) };
        };
        var __tmp__ = try {
            { value : ((_cu.value.val(attrStmtList).value : GoInt64)), ok : true };
        } catch(_) {
            { value : ((0 : GoInt64)), ok : false };
        }, _off = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return { _0 : new Pointer<LineReader>().nil(), _1 : ((null : stdgo.Error)) };
        };
        if (_off > ((_d.value._line.length : GoInt64))) {
            return { _0 : new Pointer<LineReader>().nil(), _1 : stdgo.errors.Errors.new_("AttrStmtList value out of range") };
        };
        var __tmp__ = try {
            { value : ((_cu.value.val(attrCompDir).value : GoString)), ok : true };
        } catch(_) {
            { value : (("" : GoString)), ok : false };
        }, _compDir = __tmp__.value, _ = __tmp__.ok;
        var _u:Pointer<T_unit> = Go.pointer(_d.value._unit[_d.value._offsetToUnit(_cu.value.offset)]);
        var _buf:T_buf = _makeBuf(_d, _u.value, "line", new Offset(_off), _d.value._line.__slice__(_off)).__copy__();
        var _r:LineReader = (({ _buf : _buf.__copy__(), _section : _d.value._line, _str : _d.value._str, _lineStr : _d.value._lineStr, _version : 0, _addrsize : 0, _segmentSelectorSize : 0, _minInstructionLength : 0, _maxOpsPerInstruction : 0, _defaultIsStmt : false, _lineBase : 0, _lineRange : 0, _opcodeBase : 0, _opcodeLengths : new Slice<GoInt>().nil(), _directories : new Slice<GoString>().nil(), _fileEntries : new Slice<Pointer<LineFile>>().nil(), _programOffset : new Offset(), _endOffset : new Offset(), _initialFileEntries : 0, _state : new LineEntry(), _fileIndex : 0 } : LineReader)).__copy__();
        {
            var _err:stdgo.Error = _r._readHeader(_compDir);
            if (_err != null) {
                return { _0 : new Pointer<LineReader>().nil(), _1 : _err };
            };
        };
        _r.reset();
        return { _0 : Go.pointer(_r), _1 : ((null : stdgo.Error)) };
    }
    public function _debugAddr(_format:T_dataFormat, _addrBase:GoUInt64, _idx:GoUInt64):{ var _0 : GoUInt64; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _off:GoUInt64 = _idx * ((_format._addrsize() : GoUInt64)) + _addrBase;
        if (((((_off : GoInt)) : GoUInt64)) != _off) {
            return { _0 : ((0 : GoUInt64)), _1 : stdgo.errors.Errors.new_("offset out of range") };
        };
        var _b:T_buf = _makeBuf(_d, _format, "addr", new Offset(((0 : GoUInt32))), _d.value._addr).__copy__();
        _b._skip(((_off : GoInt)));
        var _val:GoUInt64 = _b._addr();
        if (_b._err != null) {
            return { _0 : ((0 : GoUInt64)), _1 : _b._err };
        };
        return { _0 : _val, _1 : ((null : stdgo.Error)) };
    }
    public function _dwarf5Ranges(_u:Pointer<T_unit>, _cu:Pointer<Entry>, _base:GoUInt64, _ranges:GoInt64, _ret:Slice<GoArray<GoUInt64>>):{ var _0 : Slice<GoArray<GoUInt64>>; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _addrBase:GoInt64 = ((0 : GoInt64));
        if (_cu != null && !_cu.isNil()) {
            {
                var __tmp__ = try {
                    { value : ((_cu.value.val(attrAddrBase).value : GoInt64)), ok : true };
                } catch(_) {
                    { value : ((0 : GoInt64)), ok : false };
                };
                _addrBase = __tmp__.value;
            };
        };
        var _buf:T_buf = _makeBuf(_d, _u.value, "rnglists", new Offset(((0 : GoUInt32))), _d.value._rngLists).__copy__();
        _buf._skip(((_ranges : GoInt)));
        while (true) {
            var _opcode:GoUInt8 = _buf._uint8();
            if (_opcode == _rleEndOfList) {
                if (_buf._err != null) {
                    return { _0 : new Slice<GoArray<GoUInt64>>().nil(), _1 : _buf._err };
                };
                return { _0 : _ret, _1 : ((null : stdgo.Error)) };
            } else if (_opcode == _rleBaseAddressx) {
                var _baseIdx:GoUInt64 = _buf._uint();
                var _err:Error = ((null : stdgo.Error));
                {
                    var __tmp__ = _d.value._debugAddr(_u.value, ((_addrBase : GoUInt64)), _baseIdx);
                    _base = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : new Slice<GoArray<GoUInt64>>().nil(), _1 : _err };
                };
            } else if (_opcode == _rleStartxEndx) {
                var _startIdx:GoUInt64 = _buf._uint();
                var _endIdx:GoUInt64 = _buf._uint();
                var __tmp__ = _d.value._debugAddr(_u.value, ((_addrBase : GoUInt64)), _startIdx), _start:GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : new Slice<GoArray<GoUInt64>>().nil(), _1 : _err };
                };
                var __tmp__ = _d.value._debugAddr(_u.value, ((_addrBase : GoUInt64)), _endIdx), _end:GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : new Slice<GoArray<GoUInt64>>().nil(), _1 : _err };
                };
                _ret = _ret.__append__(new GoArray<GoUInt64>(_start, _end).copy());
            } else if (_opcode == _rleStartxLength) {
                var _startIdx:GoUInt64 = _buf._uint();
                var _len:GoUInt64 = _buf._uint();
                var __tmp__ = _d.value._debugAddr(_u.value, ((_addrBase : GoUInt64)), _startIdx), _start:GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : new Slice<GoArray<GoUInt64>>().nil(), _1 : _err };
                };
                _ret = _ret.__append__(new GoArray<GoUInt64>(_start, _start + _len).copy());
            } else if (_opcode == _rleOffsetPair) {
                var _off1:GoUInt64 = _buf._uint();
                var _off2:GoUInt64 = _buf._uint();
                _ret = _ret.__append__(new GoArray<GoUInt64>(_base + _off1, _base + _off2).copy());
            } else if (_opcode == _rleBaseAddress) {
                _base = _buf._addr();
            } else if (_opcode == _rleStartEnd) {
                var _start:GoUInt64 = _buf._addr();
                var _end:GoUInt64 = _buf._addr();
                _ret = _ret.__append__(new GoArray<GoUInt64>(_start, _end).copy());
            } else if (_opcode == _rleStartLength) {
                var _start:GoUInt64 = _buf._addr();
                var _len:GoUInt64 = _buf._uint();
                _ret = _ret.__append__(new GoArray<GoUInt64>(_start, _start + _len).copy());
            };
        };
    }
    public function _dwarf2Ranges(_u:Pointer<T_unit>, _base:GoUInt64, _ranges:GoInt64, _ret:Slice<GoArray<GoUInt64>>):{ var _0 : Slice<GoArray<GoUInt64>>; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _buf:T_buf = _makeBuf(_d, _u.value, "ranges", new Offset(_ranges), _d.value._ranges.__slice__(_ranges)).__copy__();
        while (_buf._data.length > ((0 : GoInt))) {
            var _low:GoUInt64 = _buf._addr();
            var _high:GoUInt64 = _buf._addr();
            if (_low == ((0 : GoUInt64)) && _high == ((0 : GoUInt64))) {
                break;
            };
            if (_low == (-1 ^ ((((0 : GoUInt64)) : GoUInt64)) >> ((((((8 : GoInt)) - _u.value._addrsize()) * ((8 : GoInt))) : GoUInt)))) {
                _base = _high;
            } else {
                _ret = _ret.__append__(new GoArray<GoUInt64>(_base + _low, _base + _high).copy());
            };
        };
        return { _0 : _ret, _1 : ((null : stdgo.Error)) };
    }
    public function _baseAddressForEntry(_e:Pointer<Entry>):{ var _0 : Pointer<Entry>; var _1 : GoUInt64; var _2 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _cu:Pointer<Entry> = new Pointer<Entry>().nil();
        if (_e.value.tag.__t__ == tagCompileUnit.__t__) {
            _cu = _e;
        } else {
            var _i:GoInt = _d.value._offsetToUnit(_e.value.offset);
            if (_i == -((1 : GoUnTypedInt))) {
                return { _0 : new Pointer<Entry>().nil(), _1 : ((0 : GoUInt64)), _2 : stdgo.errors.Errors.new_("no unit for entry") };
            };
            var _u:Pointer<T_unit> = Go.pointer(_d.value._unit[_i]);
            var _b:T_buf = _makeBuf(_d, _u.value, "info", _u.value._off, _u.value._data).__copy__();
            _cu = _b._entry(new Pointer<Entry>().nil(), _u.value._atable.__copy__(), _u.value._base, _u.value._vers);
            if (_b._err != null) {
                return { _0 : new Pointer<Entry>().nil(), _1 : ((0 : GoUInt64)), _2 : _b._err };
            };
        };
        {
            var __tmp__ = try {
                { value : ((_cu.value.val(attrEntrypc).value : GoUInt64)), ok : true };
            } catch(_) {
                { value : ((0 : GoUInt64)), ok : false };
            }, _cuEntry = __tmp__.value, _cuEntryOK = __tmp__.ok;
            if (_cuEntryOK) {
                return { _0 : _cu, _1 : _cuEntry, _2 : ((null : stdgo.Error)) };
            } else {
                var __tmp__ = try {
                    { value : ((_cu.value.val(attrLowpc).value : GoUInt64)), ok : true };
                } catch(_) {
                    { value : ((0 : GoUInt64)), ok : false };
                }, _cuLow = __tmp__.value, _cuLowOK = __tmp__.ok;
                if (_cuLowOK) {
                    return { _0 : _cu, _1 : _cuLow, _2 : ((null : stdgo.Error)) };
                };
            };
        };
        return { _0 : _cu, _1 : ((0 : GoUInt64)), _2 : ((null : stdgo.Error)) };
    }
    public function ranges(_e:Pointer<Entry>):{ var _0 : Slice<GoArray<GoUInt64>>; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _ret:Slice<GoArray<GoUInt64>> = new Slice<GoArray<GoUInt64>>().nil();
        var __tmp__ = try {
            { value : ((_e.value.val(attrLowpc).value : GoUInt64)), ok : true };
        } catch(_) {
            { value : ((0 : GoUInt64)), ok : false };
        }, _low = __tmp__.value, _lowOK = __tmp__.ok;
        var _high:GoUInt64 = ((0 : GoUInt64));
        var _highOK:Bool = false;
        var _highField:Pointer<Field> = _e.value.attrField(attrHighpc);
        if (_highField != null && !_highField.isNil()) {
            if (_highField.value.class_.__t__ == classAddress.__t__) {
                {
                    var __tmp__ = try {
                        { value : ((_highField.value.val.value : GoUInt64)), ok : true };
                    } catch(_) {
                        { value : ((0 : GoUInt64)), ok : false };
                    };
                    _high = __tmp__.value;
                    _highOK = __tmp__.ok;
                };
            } else if (_highField.value.class_.__t__ == classConstant.__t__) {
                var __tmp__ = try {
                    { value : ((_highField.value.val.value : GoInt64)), ok : true };
                } catch(_) {
                    { value : ((0 : GoInt64)), ok : false };
                }, _off = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    _high = _low + ((_off : GoUInt64));
                    _highOK = true;
                };
            };
        };
        if (_lowOK && _highOK) {
            _ret = _ret.__append__(new GoArray<GoUInt64>(_low, _high).copy());
        };
        var _u:Pointer<T_unit> = new Pointer<T_unit>().nil();
        {
            var _uidx:GoInt = _d.value._offsetToUnit(_e.value.offset);
            if (_uidx >= ((0 : GoInt)) && _uidx < _d.value._unit.length) {
                _u = Go.pointer(_d.value._unit[_uidx]);
            };
        };
        if (_u != null && !_u.isNil() && _u.value._vers >= ((5 : GoInt)) && _d.value._rngLists != null && !_d.value._rngLists.isNil()) {
            var _field:Pointer<Field> = _e.value.attrField(attrRanges);
            if (_field == null || _field.isNil()) {
                return { _0 : _ret, _1 : ((null : stdgo.Error)) };
            };
            if (_field.value.class_.__t__ == classRangeListPtr.__t__) {
                var __tmp__ = try {
                    { value : ((_field.value.val.value : GoInt64)), ok : true };
                } catch(_) {
                    { value : ((0 : GoInt64)), ok : false };
                }, _ranges = __tmp__.value, _rangesOK = __tmp__.ok;
                if (!_rangesOK) {
                    return { _0 : _ret, _1 : ((null : stdgo.Error)) };
                };
                var __tmp__ = _d.value._baseAddressForEntry(_e), _cu:Pointer<Entry> = __tmp__._0, _base:GoUInt64 = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    return { _0 : new Slice<GoArray<GoUInt64>>().nil(), _1 : _err };
                };
                return _d.value._dwarf5Ranges(_u, _cu, _base, _ranges, _ret);
            } else if (_field.value.class_.__t__ == classRngList.__t__) {
                var __tmp__ = try {
                    { value : ((_field.value.val.value : GoUInt64)), ok : true };
                } catch(_) {
                    { value : ((0 : GoUInt64)), ok : false };
                }, _rnglist = __tmp__.value, _ok = __tmp__.ok;
                if (!_ok) {
                    return { _0 : _ret, _1 : ((null : stdgo.Error)) };
                };
                var __tmp__ = _d.value._baseAddressForEntry(_e), _cu:Pointer<Entry> = __tmp__._0, _base:GoUInt64 = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    return { _0 : new Slice<GoArray<GoUInt64>>().nil(), _1 : _err };
                };
                return _d.value._dwarf5Ranges(_u, _cu, _base, ((_rnglist : GoInt64)), _ret);
            } else {
                return { _0 : _ret, _1 : ((null : stdgo.Error)) };
            };
        };
        var __tmp__ = try {
            { value : ((_e.value.val(attrRanges).value : GoInt64)), ok : true };
        } catch(_) {
            { value : ((0 : GoInt64)), ok : false };
        }, _ranges = __tmp__.value, _rangesOK = __tmp__.ok;
        if (_rangesOK && _d.value._ranges != null && !_d.value._ranges.isNil()) {
            var __tmp__ = _d.value._baseAddressForEntry(_e), _:Pointer<Entry> = __tmp__._0, _base:GoUInt64 = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return { _0 : new Slice<GoArray<GoUInt64>>().nil(), _1 : _err };
            };
            return _d.value._dwarf2Ranges(_u, _base, _ranges, _ret);
        };
        return { _0 : _ret, _1 : ((null : stdgo.Error)) };
    }
    public function reader():Pointer<Reader> {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _r:Pointer<Reader> = Go.pointer((({ _d : _d, _b : new T_buf(), _err : ((null : stdgo.Error)), _unit : 0, _lastUnit : false, _lastChildren : false, _lastSibling : new Offset(), _cu : new Pointer<Entry>().nil() } : Reader)));
        _r.value.seek(new Offset(((0 : GoUInt32))));
        return _r;
    }
    public function _parseAbbrev(_off:GoUInt64, _vers:GoInt):{ var _0 : T_abbrevTable; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var __tmp__ = _d.value._abbrevCache.exists(_off) ? { value : _d.value._abbrevCache[_off], ok : true } : { value : _d.value._abbrevCache.defaultValue(), ok : false }, _m:T_abbrevTable = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (_ok) {
                return { _0 : _m.__copy__(), _1 : ((null : stdgo.Error)) };
            };
        };
        var _data:Slice<GoUInt8> = _d.value._abbrev;
        if (_off > ((_data.length : GoUInt64))) {
            _data = new Slice<GoUInt8>().nil();
        } else {
            _data = _data.__slice__(_off);
        };
        var _b:T_buf = _makeBuf(_d, new T_unknownFormat().__copy__(), "abbrev", new Offset(((0 : GoUInt32))), _data).__copy__();
        var _m:T_abbrevTable = new T_abbrevTable(new GoMap<GoUInt32, T_abbrev>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.named("debug/dwarf.abbrev", [], stdgo.reflect.Reflect.GoType.named("debug/dwarf.abbrev", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_tag", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.Tag", [], stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }, { name : "_children", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_field", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/dwarf.afield", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_attr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.Attr", [], stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }, { name : "_fmt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.format", [], stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }, { name : "_class", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.Class", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }]))))))).__copy__();
        while (true) {
            var _id:GoUInt32 = ((_b._uint() : GoUInt32));
            if (_id == ((0 : GoUInt32))) {
                break;
            };
            var _n:GoInt = ((0 : GoInt));
            var _b1:T_buf = _b.__copy__();
            _b1._uint();
            _b1._uint8();
            while (true) {
                var _tag:GoUInt64 = _b1._uint();
                var _fmt:GoUInt64 = _b1._uint();
                if (_tag == ((0 : GoUInt64)) && _fmt == ((0 : GoUInt64))) {
                    break;
                };
                if (new T_format(_fmt).__t__ == _formImplicitConst.__t__) {
                    _b1._int();
                };
                _n++;
            };
            if (_b1._err != null) {
                return { _0 : ((null : T_abbrevTable)), _1 : _b1._err };
            };
            var _a:T_abbrev = new T_abbrev();
            _a._tag = new Tag(_b._uint());
            _a._children = _b._uint8() != ((0 : GoUInt8));
            _a._field = new Slice<T_afield>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) new T_afield()]);
            {
                var _i;
                for (_obj in _a._field.keyValueIterator()) {
                    _i = _obj.key;
                    _a._field[_i]._attr = new Attr(_b._uint());
                    _a._field[_i]._fmt = new T_format(_b._uint());
                    _a._field[_i]._class = _formToClass(_a._field[_i]._fmt, _a._field[_i]._attr, _vers, Go.pointer(_b));
                    if (_a._field[_i]._fmt.__t__ == _formImplicitConst.__t__) {
                        _a._field[_i]._val = _b._int();
                    };
                };
            };
            _b._uint();
            _b._uint();
            _m.__t__[_id] = _a.__copy__();
        };
        if (_b._err != null) {
            return { _0 : ((null : T_abbrevTable)), _1 : _b._err };
        };
        _d.value._abbrevCache[_off] = _m.__copy__();
        return { _0 : _m.__copy__(), _1 : ((null : stdgo.Error)) };
    }
    public var _abbrev : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _aranges : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _frame : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _info : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _line : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _pubnames : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _ranges : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _str : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _addr : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _lineStr : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _strOffsets : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _rngLists : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _abbrevCache : GoMap<GoUInt64, T_abbrevTable> = new GoMap<GoUInt64, T_abbrevTable>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.named("debug/dwarf.abbrevTable", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.named("debug/dwarf.abbrev", [], stdgo.reflect.Reflect.GoType.named("debug/dwarf.abbrev", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_tag", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.Tag", [], stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }, { name : "_children", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_field", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/dwarf.afield", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_attr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.Attr", [], stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }, { name : "_fmt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.format", [], stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }, { name : "_class", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.Class", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }])))))))).nil();
    public var _bigEndian : Bool = false;
    public var _order : stdgo.encoding.binary.Binary.ByteOrder = ((null : stdgo.encoding.binary.Binary.ByteOrder));
    public var _typeCache : GoMap<Offset, Type> = new GoMap<Offset, Type>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("debug/dwarf.Offset", [], stdgo.reflect.Reflect.GoType.basic(uint32_kind)), stdgo.reflect.Reflect.GoType.named("debug/dwarf.Type", [], stdgo.reflect.Reflect.GoType.named("debug/dwarf.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])))))).nil();
    public var _typeSigs : GoMap<GoUInt64, Pointer<T_typeUnit>> = new GoMap<GoUInt64, Pointer<T_typeUnit>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/dwarf.typeUnit", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_unit", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.unit", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_base", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.Offset", [], stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }, { name : "_off", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.Offset", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_data", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_atable", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.abbrevTable", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.named("debug/dwarf.abbrev", [], stdgo.reflect.Reflect.GoType.named("debug/dwarf.abbrev", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_tag", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.Tag", [], stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }, { name : "_children", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_field", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/dwarf.afield", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_attr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.Attr", [], stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }, { name : "_fmt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.format", [], stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }, { name : "_class", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.Class", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }]))))) }, { name : "_asize", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "_vers", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "_utype", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "_is64", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }])) }, { name : "_toff", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.Offset", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_cache", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.Type", [], stdgo.reflect.Reflect.GoType.named("debug/dwarf.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }])))))).nil();
    public var _unit : Slice<T_unit> = new Slice<T_unit>().nil();
    public function new(?_abbrev:Slice<GoUInt8>, ?_aranges:Slice<GoUInt8>, ?_frame:Slice<GoUInt8>, ?_info:Slice<GoUInt8>, ?_line:Slice<GoUInt8>, ?_pubnames:Slice<GoUInt8>, ?_ranges:Slice<GoUInt8>, ?_str:Slice<GoUInt8>, ?_addr:Slice<GoUInt8>, ?_lineStr:Slice<GoUInt8>, ?_strOffsets:Slice<GoUInt8>, ?_rngLists:Slice<GoUInt8>, ?_abbrevCache:GoMap<GoUInt64, T_abbrevTable>, ?_bigEndian:Bool, ?_order:stdgo.encoding.binary.Binary.ByteOrder, ?_typeCache:GoMap<Offset, Type>, ?_typeSigs:GoMap<GoUInt64, Pointer<T_typeUnit>>, ?_unit:Slice<T_unit>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_abbrev) + " " + Go.string(_aranges) + " " + Go.string(_frame) + " " + Go.string(_info) + " " + Go.string(_line) + " " + Go.string(_pubnames) + " " + Go.string(_ranges) + " " + Go.string(_str) + " " + Go.string(_addr) + " " + Go.string(_lineStr) + " " + Go.string(_strOffsets) + " " + Go.string(_rngLists) + " " + Go.string(_abbrevCache) + " " + Go.string(_bigEndian) + " " + Go.string(_order) + " " + Go.string(_typeCache) + " " + Go.string(_typeSigs) + " " + Go.string(_unit) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Data(
_abbrev,
_aranges,
_frame,
_info,
_line,
_pubnames,
_ranges,
_str,
_addr,
_lineStr,
_strOffsets,
_rngLists,
_abbrevCache,
_bigEndian,
_order,
_typeCache,
_typeSigs,
_unit);
    }
    public function __set__(__tmp__) {
        this._abbrev = __tmp__._abbrev;
        this._aranges = __tmp__._aranges;
        this._frame = __tmp__._frame;
        this._info = __tmp__._info;
        this._line = __tmp__._line;
        this._pubnames = __tmp__._pubnames;
        this._ranges = __tmp__._ranges;
        this._str = __tmp__._str;
        this._addr = __tmp__._addr;
        this._lineStr = __tmp__._lineStr;
        this._strOffsets = __tmp__._strOffsets;
        this._rngLists = __tmp__._rngLists;
        this._abbrevCache = __tmp__._abbrevCache;
        this._bigEndian = __tmp__._bigEndian;
        this._order = __tmp__._order;
        this._typeCache = __tmp__._typeCache;
        this._typeSigs = __tmp__._typeSigs;
        this._unit = __tmp__._unit;
        return this;
    }
}
@:structInit class CommonType {
    public function size():GoInt64 {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _c.value.byteSize;
    }
    public function common():Pointer<CommonType> {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _c;
    }
    public var byteSize : GoInt64 = ((0 : GoInt64));
    public var name : GoString = (("" : GoString));
    public function new(?byteSize:GoInt64, ?name:GoString) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(byteSize) + " " + Go.string(name) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new CommonType(byteSize, name);
    }
    public function __set__(__tmp__) {
        this.byteSize = __tmp__.byteSize;
        this.name = __tmp__.name;
        return this;
    }
}
@:structInit class BasicType {
    public function toString():GoString {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_t.value.commonType.name != (("" : GoString))) {
            return _t.value.commonType.name;
        };
        return "?";
    }
    public function basic():Pointer<BasicType> {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _b;
    }
    @:embedded
    public var commonType : CommonType = new CommonType();
    public var bitSize : GoInt64 = ((0 : GoInt64));
    public var bitOffset : GoInt64 = ((0 : GoInt64));
    public function new(?commonType:CommonType, ?bitSize:GoInt64, ?bitOffset:GoInt64) stdgo.internal.Macro.initLocals();
    public function common():Pointer<CommonType> return commonType.common();
    public function size():GoInt64 return commonType.size();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new BasicType(commonType, bitSize, bitOffset);
    }
    public function __set__(__tmp__) {
        this.commonType = __tmp__.commonType;
        this.bitSize = __tmp__.bitSize;
        this.bitOffset = __tmp__.bitOffset;
        return this;
    }
}
@:structInit class CharType {
    @:embedded
    public var basicType : BasicType = new BasicType();
    public function new(?basicType:BasicType) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(basicType) + "}";
    }
    public function basic():Pointer<BasicType> return basicType.basic();
    public function common():Pointer<CommonType> return basicType.common();
    public function size():GoInt64 return basicType.size();
    public function toString():GoString return basicType.toString();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new CharType(basicType);
    }
    public function __set__(__tmp__) {
        this.basicType = __tmp__.basicType;
        return this;
    }
}
@:structInit class UcharType {
    @:embedded
    public var basicType : BasicType = new BasicType();
    public function new(?basicType:BasicType) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(basicType) + "}";
    }
    public function basic():Pointer<BasicType> return basicType.basic();
    public function common():Pointer<CommonType> return basicType.common();
    public function size():GoInt64 return basicType.size();
    public function toString():GoString return basicType.toString();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new UcharType(basicType);
    }
    public function __set__(__tmp__) {
        this.basicType = __tmp__.basicType;
        return this;
    }
}
@:structInit class IntType {
    @:embedded
    public var basicType : BasicType = new BasicType();
    public function new(?basicType:BasicType) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(basicType) + "}";
    }
    public function basic():Pointer<BasicType> return basicType.basic();
    public function common():Pointer<CommonType> return basicType.common();
    public function size():GoInt64 return basicType.size();
    public function toString():GoString return basicType.toString();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new IntType(basicType);
    }
    public function __set__(__tmp__) {
        this.basicType = __tmp__.basicType;
        return this;
    }
}
@:structInit class UintType {
    @:embedded
    public var basicType : BasicType = new BasicType();
    public function new(?basicType:BasicType) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(basicType) + "}";
    }
    public function basic():Pointer<BasicType> return basicType.basic();
    public function common():Pointer<CommonType> return basicType.common();
    public function size():GoInt64 return basicType.size();
    public function toString():GoString return basicType.toString();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new UintType(basicType);
    }
    public function __set__(__tmp__) {
        this.basicType = __tmp__.basicType;
        return this;
    }
}
@:structInit class FloatType {
    @:embedded
    public var basicType : BasicType = new BasicType();
    public function new(?basicType:BasicType) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(basicType) + "}";
    }
    public function basic():Pointer<BasicType> return basicType.basic();
    public function common():Pointer<CommonType> return basicType.common();
    public function size():GoInt64 return basicType.size();
    public function toString():GoString return basicType.toString();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new FloatType(basicType);
    }
    public function __set__(__tmp__) {
        this.basicType = __tmp__.basicType;
        return this;
    }
}
@:structInit class ComplexType {
    @:embedded
    public var basicType : BasicType = new BasicType();
    public function new(?basicType:BasicType) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(basicType) + "}";
    }
    public function basic():Pointer<BasicType> return basicType.basic();
    public function common():Pointer<CommonType> return basicType.common();
    public function size():GoInt64 return basicType.size();
    public function toString():GoString return basicType.toString();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ComplexType(basicType);
    }
    public function __set__(__tmp__) {
        this.basicType = __tmp__.basicType;
        return this;
    }
}
@:structInit class BoolType {
    @:embedded
    public var basicType : BasicType = new BasicType();
    public function new(?basicType:BasicType) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(basicType) + "}";
    }
    public function basic():Pointer<BasicType> return basicType.basic();
    public function common():Pointer<CommonType> return basicType.common();
    public function size():GoInt64 return basicType.size();
    public function toString():GoString return basicType.toString();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new BoolType(basicType);
    }
    public function __set__(__tmp__) {
        this.basicType = __tmp__.basicType;
        return this;
    }
}
@:structInit class AddrType {
    @:embedded
    public var basicType : BasicType = new BasicType();
    public function new(?basicType:BasicType) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(basicType) + "}";
    }
    public function basic():Pointer<BasicType> return basicType.basic();
    public function common():Pointer<CommonType> return basicType.common();
    public function size():GoInt64 return basicType.size();
    public function toString():GoString return basicType.toString();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new AddrType(basicType);
    }
    public function __set__(__tmp__) {
        this.basicType = __tmp__.basicType;
        return this;
    }
}
@:structInit class UnspecifiedType {
    @:embedded
    public var basicType : BasicType = new BasicType();
    public function new(?basicType:BasicType) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(basicType) + "}";
    }
    public function basic():Pointer<BasicType> return basicType.basic();
    public function common():Pointer<CommonType> return basicType.common();
    public function size():GoInt64 return basicType.size();
    public function toString():GoString return basicType.toString();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new UnspecifiedType(basicType);
    }
    public function __set__(__tmp__) {
        this.basicType = __tmp__.basicType;
        return this;
    }
}
@:structInit class QualType {
    public function size():GoInt64 {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _t.value.type.size();
    }
    public function toString():GoString {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _t.value.qual + ((" " : GoString)) + _t.value.type.toString();
    }
    @:embedded
    public var commonType : CommonType = new CommonType();
    public var qual : GoString = (("" : GoString));
    public var type : Type = ((null : Type));
    public function new(?commonType:CommonType, ?qual:GoString, ?type:Type) stdgo.internal.Macro.initLocals();
    public function common():Pointer<CommonType> return commonType.common();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new QualType(commonType, qual, type);
    }
    public function __set__(__tmp__) {
        this.commonType = __tmp__.commonType;
        this.qual = __tmp__.qual;
        this.type = __tmp__.type;
        return this;
    }
}
@:structInit class ArrayType {
    public function size():GoInt64 {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_t.value.count == -((1 : GoUnTypedInt))) {
            return ((0 : GoInt64));
        };
        return _t.value.count * _t.value.type.size();
    }
    public function toString():GoString {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return (("[" : GoString)) + stdgo.strconv.Strconv.formatInt(_t.value.count, ((10 : GoInt))) + (("]" : GoString)) + _t.value.type.toString();
    }
    @:embedded
    public var commonType : CommonType = new CommonType();
    public var type : Type = ((null : Type));
    public var strideBitSize : GoInt64 = ((0 : GoInt64));
    public var count : GoInt64 = ((0 : GoInt64));
    public function new(?commonType:CommonType, ?type:Type, ?strideBitSize:GoInt64, ?count:GoInt64) stdgo.internal.Macro.initLocals();
    public function common():Pointer<CommonType> return commonType.common();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ArrayType(commonType, type, strideBitSize, count);
    }
    public function __set__(__tmp__) {
        this.commonType = __tmp__.commonType;
        this.type = __tmp__.type;
        this.strideBitSize = __tmp__.strideBitSize;
        this.count = __tmp__.count;
        return this;
    }
}
@:structInit class VoidType {
    public function toString():GoString {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return "void";
    }
    @:embedded
    public var commonType : CommonType = new CommonType();
    public function new(?commonType:CommonType) stdgo.internal.Macro.initLocals();
    public function common():Pointer<CommonType> return commonType.common();
    public function size():GoInt64 return commonType.size();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new VoidType(commonType);
    }
    public function __set__(__tmp__) {
        this.commonType = __tmp__.commonType;
        return this;
    }
}
@:structInit class PtrType {
    public function toString():GoString {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return (("*" : GoString)) + _t.value.type.toString();
    }
    @:embedded
    public var commonType : CommonType = new CommonType();
    public var type : Type = ((null : Type));
    public function new(?commonType:CommonType, ?type:Type) stdgo.internal.Macro.initLocals();
    public function common():Pointer<CommonType> return commonType.common();
    public function size():GoInt64 return commonType.size();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new PtrType(commonType, type);
    }
    public function __set__(__tmp__) {
        this.commonType = __tmp__.commonType;
        this.type = __tmp__.type;
        return this;
    }
}
@:structInit class StructType {
    public function defn():GoString {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _s:GoString = _t.value.kind;
        if (_t.value.structName != (("" : GoString))) {
            _s = _s + (((" " : GoString)) + _t.value.structName);
        };
        if (_t.value.incomplete) {
            _s = _s + (" /*incomplete*/");
            return _s;
        };
        _s = _s + (" {");
        {
            var _i;
            var _f;
            for (_obj in _t.value.field.keyValueIterator()) {
                _i = _obj.key;
                _f = _obj.value;
                if (_i > ((0 : GoInt))) {
                    _s = _s + ("; ");
                };
                _s = _s + (_f.value.name + ((" " : GoString)) + _f.value.type.toString());
                _s = _s + ((("@" : GoString)) + stdgo.strconv.Strconv.formatInt(_f.value.byteOffset, ((10 : GoInt))));
                if (_f.value.bitSize > ((0 : GoInt64))) {
                    _s = _s + (((" : " : GoString)) + stdgo.strconv.Strconv.formatInt(_f.value.bitSize, ((10 : GoInt))));
                    _s = _s + ((("@" : GoString)) + stdgo.strconv.Strconv.formatInt(_f.value.bitOffset, ((10 : GoInt))));
                };
            };
        };
        _s = _s + ("}");
        return _s;
    }
    public function toString():GoString {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_t.value.structName != (("" : GoString))) {
            return _t.value.kind + ((" " : GoString)) + _t.value.structName;
        };
        return _t.value.defn();
    }
    @:embedded
    public var commonType : CommonType = new CommonType();
    public var structName : GoString = (("" : GoString));
    public var kind : GoString = (("" : GoString));
    public var field : Slice<Pointer<StructField>> = new Slice<Pointer<StructField>>().nil();
    public var incomplete : Bool = false;
    public function new(?commonType:CommonType, ?structName:GoString, ?kind:GoString, ?field:Slice<Pointer<StructField>>, ?incomplete:Bool) stdgo.internal.Macro.initLocals();
    public function common():Pointer<CommonType> return commonType.common();
    public function size():GoInt64 return commonType.size();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new StructType(commonType, structName, kind, field, incomplete);
    }
    public function __set__(__tmp__) {
        this.commonType = __tmp__.commonType;
        this.structName = __tmp__.structName;
        this.kind = __tmp__.kind;
        this.field = __tmp__.field;
        this.incomplete = __tmp__.incomplete;
        return this;
    }
}
@:structInit class StructField {
    public var name : GoString = (("" : GoString));
    public var type : Type = ((null : Type));
    public var byteOffset : GoInt64 = ((0 : GoInt64));
    public var byteSize : GoInt64 = ((0 : GoInt64));
    public var bitOffset : GoInt64 = ((0 : GoInt64));
    public var bitSize : GoInt64 = ((0 : GoInt64));
    public function new(?name:GoString, ?type:Type, ?byteOffset:GoInt64, ?byteSize:GoInt64, ?bitOffset:GoInt64, ?bitSize:GoInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(name) + " " + Go.string(type) + " " + Go.string(byteOffset) + " " + Go.string(byteSize) + " " + Go.string(bitOffset) + " " + Go.string(bitSize) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new StructField(name, type, byteOffset, byteSize, bitOffset, bitSize);
    }
    public function __set__(__tmp__) {
        this.name = __tmp__.name;
        this.type = __tmp__.type;
        this.byteOffset = __tmp__.byteOffset;
        this.byteSize = __tmp__.byteSize;
        this.bitOffset = __tmp__.bitOffset;
        this.bitSize = __tmp__.bitSize;
        return this;
    }
}
@:structInit class EnumType {
    public function toString():GoString {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _s:GoString = "enum";
        if (_t.value.enumName != (("" : GoString))) {
            _s = _s + (((" " : GoString)) + _t.value.enumName);
        };
        _s = _s + (" {");
        {
            var _i;
            var _v;
            for (_obj in _t.value.val.keyValueIterator()) {
                _i = _obj.key;
                _v = _obj.value;
                if (_i > ((0 : GoInt))) {
                    _s = _s + ("; ");
                };
                _s = _s + (_v.value.name + (("=" : GoString)) + stdgo.strconv.Strconv.formatInt(_v.value.val, ((10 : GoInt))));
            };
        };
        _s = _s + ("}");
        return _s;
    }
    @:embedded
    public var commonType : CommonType = new CommonType();
    public var enumName : GoString = (("" : GoString));
    public var val : Slice<Pointer<EnumValue_>> = new Slice<Pointer<EnumValue_>>().nil();
    public function new(?commonType:CommonType, ?enumName:GoString, ?val:Slice<Pointer<EnumValue_>>) stdgo.internal.Macro.initLocals();
    public function common():Pointer<CommonType> return commonType.common();
    public function size():GoInt64 return commonType.size();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new EnumType(commonType, enumName, val);
    }
    public function __set__(__tmp__) {
        this.commonType = __tmp__.commonType;
        this.enumName = __tmp__.enumName;
        this.val = __tmp__.val;
        return this;
    }
}
@:structInit class EnumValue_ {
    public var name : GoString = (("" : GoString));
    public var val : GoInt64 = ((0 : GoInt64));
    public function new(?name:GoString, ?val:GoInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(name) + " " + Go.string(val) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new EnumValue_(name, val);
    }
    public function __set__(__tmp__) {
        this.name = __tmp__.name;
        this.val = __tmp__.val;
        return this;
    }
}
@:structInit class FuncType {
    public function toString():GoString {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _s:GoString = "func(";
        {
            var _i;
            var _t;
            for (_obj in _t.value.paramType.keyValueIterator()) {
                _i = _obj.key;
                _t = _obj.value;
                if (_i > ((0 : GoInt))) {
                    _s = _s + (", ");
                };
                _s = _s + (_t.toString());
            };
        };
        _s = _s + (")");
        if (_t.value.returnType != null) {
            _s = _s + (((" " : GoString)) + _t.value.returnType.toString());
        };
        return _s;
    }
    @:embedded
    public var commonType : CommonType = new CommonType();
    public var returnType : Type = ((null : Type));
    public var paramType : Slice<Type> = new Slice<Type>().nil();
    public function new(?commonType:CommonType, ?returnType:Type, ?paramType:Slice<Type>) stdgo.internal.Macro.initLocals();
    public function common():Pointer<CommonType> return commonType.common();
    public function size():GoInt64 return commonType.size();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new FuncType(commonType, returnType, paramType);
    }
    public function __set__(__tmp__) {
        this.commonType = __tmp__.commonType;
        this.returnType = __tmp__.returnType;
        this.paramType = __tmp__.paramType;
        return this;
    }
}
@:structInit class DotDotDotType {
    public function toString():GoString {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return "...";
    }
    @:embedded
    public var commonType : CommonType = new CommonType();
    public function new(?commonType:CommonType) stdgo.internal.Macro.initLocals();
    public function common():Pointer<CommonType> return commonType.common();
    public function size():GoInt64 return commonType.size();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new DotDotDotType(commonType);
    }
    public function __set__(__tmp__) {
        this.commonType = __tmp__.commonType;
        return this;
    }
}
@:structInit class TypedefType {
    public function size():GoInt64 {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _t.value.type.size();
    }
    public function toString():GoString {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _t.value.commonType.name;
    }
    @:embedded
    public var commonType : CommonType = new CommonType();
    public var type : Type = ((null : Type));
    public function new(?commonType:CommonType, ?type:Type) stdgo.internal.Macro.initLocals();
    public function common():Pointer<CommonType> return commonType.common();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new TypedefType(commonType, type);
    }
    public function __set__(__tmp__) {
        this.commonType = __tmp__.commonType;
        this.type = __tmp__.type;
        return this;
    }
}
@:structInit class UnsupportedType {
    public function toString():GoString {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_t.value.commonType.name != (("" : GoString))) {
            return _t.value.commonType.name;
        };
        return _t.value.commonType.name + (("(unsupported type " : GoString)) + _t.value.tag.toString() + ((")" : GoString));
    }
    @:embedded
    public var commonType : CommonType = new CommonType();
    public var tag : Tag = new Tag();
    public function new(?commonType:CommonType, ?tag:Tag) stdgo.internal.Macro.initLocals();
    public function common():Pointer<CommonType> return commonType.common();
    public function size():GoInt64 return commonType.size();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new UnsupportedType(commonType, tag);
    }
    public function __set__(__tmp__) {
        this.commonType = __tmp__.commonType;
        this.tag = __tmp__.tag;
        return this;
    }
}
@:structInit class T_typeFixer {
    public function _apply():Void {
        var _tf = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        for (_t in _tf.value._typedefs) {
            _t.value.common().value.byteSize = _t.value.type.size();
        };
        for (_t in _tf.value._arraytypes) {
            _zeroArray(_t);
        };
    }
    public function _recordArrayType(_t:Pointer<Type>):Void {
        var _tf = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_t == null || _t.isNil()) {
            return;
        };
        var __tmp__ = try {
            { value : (((_t.value).__underlying__().value : ArrayType)), ok : true };
        } catch(_) {
            { value : new Pointer<ArrayType>().nil(), ok : false };
        }, _ = __tmp__.value, _ok = __tmp__.ok;
        if (_ok) {
            _tf.value._arraytypes = _tf.value._arraytypes.__append__(_t);
        };
    }
    public var _typedefs : Slice<Pointer<TypedefType>> = new Slice<Pointer<TypedefType>>().nil();
    public var _arraytypes : Slice<Pointer<Type>> = new Slice<Pointer<Type>>().nil();
    public function new(?_typedefs:Slice<Pointer<TypedefType>>, ?_arraytypes:Slice<Pointer<Type>>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_typedefs) + " " + Go.string(_arraytypes) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_typeFixer(_typedefs, _arraytypes);
    }
    public function __set__(__tmp__) {
        this._typedefs = __tmp__._typedefs;
        this._arraytypes = __tmp__._arraytypes;
        return this;
    }
}
@:structInit class T_typeUnit {
    @:embedded
    public var _unit : T_unit = new T_unit();
    public var _toff : Offset = new Offset();
    public var _name : GoString = (("" : GoString));
    public var _cache : Type = ((null : Type));
    public function new(?_unit:T_unit, ?_toff:Offset, ?_name:GoString, ?_cache:Type) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_unit) + " " + Go.string(_toff) + " " + Go.string(_name) + " " + Go.string(_cache) + "}";
    }
    public function _addrsize():GoInt return _unit._addrsize();
    public function _dwarf64():{ var _0 : () -> { var _0 : Bool; var _1 : Bool; }; var _1 : () -> { var _0 : Bool; var _1 : Bool; }; } return _unit._dwarf64();
    public function _version():GoInt return _unit._version();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_typeUnit(_unit, _toff, _name, _cache);
    }
    public function __set__(__tmp__) {
        this._unit = __tmp__._unit;
        this._toff = __tmp__._toff;
        this._name = __tmp__._name;
        this._cache = __tmp__._cache;
        return this;
    }
}
@:structInit class T_typeUnitReader {
    public function _offset():Offset {
        var _tur = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _tur.value._b._off;
    }
    public function _clone():T_typeReader {
        var _tur = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return Go.pointer((({ _d : _tur.value._d, _tu : _tur.value._tu, _b : _makeBuf(_tur.value._d, _tur.value._tu.value, _tur.value._tu.value._name, _tur.value._tu.value._unit._off, _tur.value._tu.value._unit._data).__copy__(), _err : ((null : stdgo.Error)) } : T_typeUnitReader))).value;
    }
    public function next():{ var _0 : Pointer<Entry>; var _1 : Error; } {
        var _tur = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_tur.value._err != null) {
            return { _0 : new Pointer<Entry>().nil(), _1 : _tur.value._err };
        };
        if (_tur.value._tu.value._unit._data.length == ((0 : GoInt))) {
            return { _0 : new Pointer<Entry>().nil(), _1 : ((null : stdgo.Error)) };
        };
        var _e:Pointer<Entry> = _tur.value._b._entry(new Pointer<Entry>().nil(), _tur.value._tu.value._unit._atable.__copy__(), _tur.value._tu.value._unit._base, _tur.value._tu.value._unit._vers);
        if (_tur.value._b._err != null) {
            _tur.value._err = _tur.value._b._err;
            return { _0 : new Pointer<Entry>().nil(), _1 : _tur.value._err };
        };
        return { _0 : _e, _1 : ((null : stdgo.Error)) };
    }
    public function addressSize():GoInt {
        var _tur = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _tur.value._tu.value._unit._asize;
    }
    public function seek(_off:Offset):Void {
        var _tur = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _tur.value._err = ((null : stdgo.Error));
        var _doff:Offset = new Offset(_off.__t__ - _tur.value._tu.value._unit._off.__t__);
        if (_doff.__t__ < ((0 : GoUInt32)) || _doff.__t__ >= new Offset(_tur.value._tu.value._unit._data.length).__t__) {
            _tur.value._err = stdgo.fmt.Fmt.errorf("%s: offset %d out of range; max %d", Go.toInterface(_tur.value._tu.value._name), Go.toInterface(_doff), Go.toInterface(_tur.value._tu.value._unit._data.length));
            return;
        };
        _tur.value._b = _makeBuf(_tur.value._d, _tur.value._tu.value, _tur.value._tu.value._name, _off, _tur.value._tu.value._unit._data.__slice__(_doff)).__copy__();
    }
    public var _d : Pointer<Data> = new Pointer<Data>().nil();
    public var _tu : Pointer<T_typeUnit> = new Pointer<T_typeUnit>().nil();
    public var _b : T_buf = new T_buf();
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_d:Pointer<Data>, ?_tu:Pointer<T_typeUnit>, ?_b:T_buf, ?_err:stdgo.Error) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_d) + " " + Go.string(_tu) + " " + Go.string(_b) + " " + Go.string(_err) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_typeUnitReader(_d, _tu, _b, _err);
    }
    public function __set__(__tmp__) {
        this._d = __tmp__._d;
        this._tu = __tmp__._tu;
        this._b = __tmp__._b;
        this._err = __tmp__._err;
        return this;
    }
}
@:structInit class T_unit {
    public function _addrsize():GoInt {
        var _u = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _u.value._asize;
    }
    public function _dwarf64():{ var _0 : Bool; var _1 : Bool; } {
        var _u = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return { _0 : _u.value._is64, _1 : true };
    }
    public function _version():GoInt {
        var _u = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _u.value._vers;
    }
    public var _base : Offset = new Offset();
    public var _off : Offset = new Offset();
    public var _data : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _atable : T_abbrevTable = ((null : T_abbrevTable));
    public var _asize : GoInt = ((0 : GoInt));
    public var _vers : GoInt = ((0 : GoInt));
    public var _utype : GoUInt8 = ((0 : GoUInt8));
    public var _is64 : Bool = false;
    public function new(?_base:Offset, ?_off:Offset, ?_data:Slice<GoUInt8>, ?_atable:T_abbrevTable, ?_asize:GoInt, ?_vers:GoInt, ?_utype:GoUInt8, ?_is64:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_base) + " " + Go.string(_off) + " " + Go.string(_data) + " " + Go.string(_atable) + " " + Go.string(_asize) + " " + Go.string(_vers) + " " + Go.string(_utype) + " " + Go.string(_is64) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_unit(_base, _off, _data, _atable, _asize, _vers, _utype, _is64);
    }
    public function __set__(__tmp__) {
        this._base = __tmp__._base;
        this._off = __tmp__._off;
        this._data = __tmp__._data;
        this._atable = __tmp__._atable;
        this._asize = __tmp__._asize;
        this._vers = __tmp__._vers;
        this._utype = __tmp__._utype;
        this._is64 = __tmp__._is64;
        return this;
    }
}
@:structInit @:local class T__struct_43 {
    public function new() stdgo.internal.Macro.initLocals();
    public function toString() {
        return "{}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_43();
    }
    public function __set__(__tmp__) {
        return this;
    }
}
final attrBaseTypes : Attr = new Attr(((53 : GoUInt32)));
final attrDeclFile : Attr = new Attr(((58 : GoUInt32)));
final _encUCS : GoInt64 = ((17 : GoUnTypedInt));
final _formLoclistx : T_format = new T_format(((34 : GoUInt32)));
final _opBitPiece : GoInt64 = ((157 : GoUnTypedInt));
final attrBitSize : Attr = new Attr(((13 : GoUInt32)));
final attrPure : Attr = new Attr(((103 : GoUInt32)));
final attrProducer : Attr = new Attr(((37 : GoUInt32)));
final tagPackedType : Tag = new Tag(((45 : GoUInt32)));
final classRngListsPtr : Class_ = new Class_((18 : GoUnTypedInt));
final _utSplitCompile : GoInt64 = ((5 : GoUnTypedInt));
final attrVisibility : Attr = new Attr(((23 : GoUInt32)));
final attrElemental : Attr = new Attr(((102 : GoUInt32)));
final classConstant : Class_ = new Class_((3 : GoUnTypedInt));
final _opConst4s : GoInt64 = ((13 : GoUnTypedInt));
final _opConst4u : GoInt64 = ((12 : GoUnTypedInt));
final __Tag_name_0 : GoString = "ArrayTypeClassTypeEntryPointEnumerationTypeFormalParameter";
final _rleStartLength : GoInt64 = ((7 : GoUnTypedInt));
final __Class_name : GoString = "ClassUnknownClassAddressClassBlockClassConstantClassExprLocClassFlagClassLinePtrClassLocListPtrClassMacPtrClassRangeListPtrClassReferenceClassReferenceSigClassStringClassReferenceAltClassStringAlt";
final attrStmtList : Attr = new Attr(((16 : GoUInt32)));
final _opDerefType : GoInt64 = ((166 : GoUnTypedInt));
final _opCall2 : GoInt64 = ((152 : GoUnTypedInt));
final __Tag_name_1 : GoString = "ImportedDeclaration";
final attrDigitCount : Attr = new Attr(((95 : GoUInt32)));
final tagWithStmt : Tag = new Tag(((34 : GoUInt32)));
final __Tag_name_2 : GoString = "LabelLexDwarfBlock";
final _rleStartxEndx : GoInt64 = ((2 : GoUnTypedInt));
final _opConstType : GoInt64 = ((164 : GoUnTypedInt));
final tagSubprogram : Tag = new Tag(((46 : GoUInt32)));
final attrBinaryScale : Attr = new Attr(((91 : GoUInt32)));
final attrDefaulted : Attr = new Attr(((139 : GoUInt32)));
final _opCall4 : GoInt64 = ((153 : GoUnTypedInt));
final __Tag_name_3 : GoString = "Member";
final _encUnsignedFixed : GoInt64 = ((14 : GoUnTypedInt));
final _formUdata : T_format = new T_format(((15 : GoUInt32)));
final attrVirtuality : Attr = new Attr(((76 : GoUInt32)));
final _opNe : GoInt64 = ((46 : GoUnTypedInt));
final __Tag_name_4 : GoString = "PointerTypeReferenceTypeCompileUnitStringTypeStructType";
final tagModule : Tag = new Tag(((30 : GoUInt32)));
final tagStructType : Tag = new Tag(((19 : GoUInt32)));
final __Tag_name_5 : GoString = "SubroutineTypeTypedefUnionTypeUnspecifiedParametersVariantCommonDwarfBlockCommonInclusionInheritanceInlinedSubroutineModulePtrToMemberTypeSetTypeSubrangeTypeWithStmtAccessDeclarationBaseTypeCatchDwarfBlockConstTypeConstantEnumeratorFileTypeFriendNamelistNamelistItemPackedTypeSubprogramTemplateTypeParameterTemplateValueParameterThrownTypeTryDwarfBlockVariantPartVariableVolatileTypeDwarfProcedureRestrictTypeInterfaceTypeNamespaceImportedModuleUnspecifiedTypePartialUnitImportedUnitMutableTypeConditionSharedTypeTypeUnitRvalueReferenceTypeTemplateAliasCoarrayTypeGenericSubrangeDynamicTypeAtomicTypeCallSiteCallSiteParameterSkeletonUnitImmutableType";
final tagEntryPoint : Tag = new Tag(((3 : GoUInt32)));
final attrCallLine : Attr = new Attr(((89 : GoUInt32)));
final tagFriend : Tag = new Tag(((42 : GoUInt32)));
final tagTryDwarfBlock : Tag = new Tag(((50 : GoUInt32)));
final tagCommonInclusion : Tag = new Tag(((27 : GoUInt32)));
final attrLocation : Attr = new Attr(((2 : GoUInt32)));
final tagImportedUnit : Tag = new Tag(((61 : GoUInt32)));
final attrFriend : Attr = new Attr(((65 : GoUInt32)));
final _formSecOffset : T_format = new T_format(((23 : GoUInt32)));
final _opPiece : GoInt64 = ((147 : GoUnTypedInt));
final attrFrameBase : Attr = new Attr(((64 : GoUInt32)));
final attrExplicit : Attr = new Attr(((99 : GoUInt32)));
final _lnsAdvanceLine : GoInt64 = ((3 : GoUnTypedInt));
final tagPartialUnit : Tag = new Tag(((60 : GoUInt32)));
final attrAddrBase : Attr = new Attr(((115 : GoUInt32)));
final attrName : Attr = new Attr(((3 : GoUInt32)));
final _lleEndOfList : GoInt64 = ((0 : GoUnTypedInt));
final attrObjectPointer : Attr = new Attr(((100 : GoUInt32)));
final attrRank : Attr = new Attr(((113 : GoUInt32)));
final _opBregx : GoInt64 = ((146 : GoUnTypedInt));
final attrLinkageName : Attr = new Attr(((110 : GoUInt32)));
final _formString : T_format = new T_format(((8 : GoUInt32)));
final _encUTF : GoInt64 = ((16 : GoUnTypedInt));
final tagSkeletonUnit : Tag = new Tag(((74 : GoUInt32)));
final _encEdited : GoInt64 = ((12 : GoUnTypedInt));
final _encUnsigned : GoInt64 = ((7 : GoUnTypedInt));
final tagLexDwarfBlock : Tag = new Tag(((11 : GoUInt32)));
final attrAddrClass : Attr = new Attr(((51 : GoUInt32)));
final attrDeleted : Attr = new Attr(((138 : GoUInt32)));
final attrAbstractOrigin : Attr = new Attr(((49 : GoUInt32)));
final tagSubrangeType : Tag = new Tag(((33 : GoUInt32)));
final attrAssociated : Attr = new Attr(((79 : GoUInt32)));
final tagPtrToMemberType : Tag = new Tag(((31 : GoUInt32)));
final tagImportedDeclaration : Tag = new Tag(((8 : GoUInt32)));
final _opDerefSize : GoInt64 = ((148 : GoUnTypedInt));
final _rleBaseAddressx : GoInt64 = ((1 : GoUnTypedInt));
final tagUnionType : Tag = new Tag(((23 : GoUInt32)));
final attrNoreturn : Attr = new Attr(((135 : GoUInt32)));
final attrMacroInfo : Attr = new Attr(((67 : GoUInt32)));
final tagEnumerator : Tag = new Tag(((40 : GoUInt32)));
final _formRef1 : T_format = new T_format(((17 : GoUInt32)));
final _formRef2 : T_format = new T_format(((18 : GoUInt32)));
final _formFlag : T_format = new T_format(((12 : GoUInt32)));
final _opShl : GoInt64 = ((36 : GoUnTypedInt));
final attrOrdering : Attr = new Attr(((9 : GoUInt32)));
final _encSigned : GoInt64 = ((5 : GoUnTypedInt));
final _formRef4 : T_format = new T_format(((19 : GoUInt32)));
final attrLoclistsBase : Attr = new Attr(((140 : GoUInt32)));
final _formDwarfBlock1 : T_format = new T_format(((10 : GoUInt32)));
final attrUseLocation : Attr = new Attr(((74 : GoUInt32)));
final _opMod : GoInt64 = ((29 : GoUnTypedInt));
final _formDwarfBlock2 : T_format = new T_format(((3 : GoUInt32)));
final classExprLoc : Class_ = new Class_((4 : GoUnTypedInt));
final _rleEndOfList : GoInt64 = ((0 : GoUnTypedInt));
final _formRef8 : T_format = new T_format(((20 : GoUInt32)));
final _formDwarfBlock4 : T_format = new T_format(((4 : GoUInt32)));
final _opMinus : GoInt64 = ((28 : GoUnTypedInt));
final _encUnsignedChar : GoInt64 = ((8 : GoUnTypedInt));
final attrLowpc : Attr = new Attr(((17 : GoUInt32)));
final _opConvert : GoInt64 = ((168 : GoUnTypedInt));
final _lnsCopy : GoInt64 = ((1 : GoUnTypedInt));
final attrDescription : Attr = new Attr(((90 : GoUInt32)));
final _opShr : GoInt64 = ((37 : GoUnTypedInt));
final tagFormalParameter : Tag = new Tag(((5 : GoUInt32)));
final attrCallTargetClobbered : Attr = new Attr(((132 : GoUInt32)));
final _opXor : GoInt64 = ((39 : GoUnTypedInt));
final _rleStartEnd : GoInt64 = ((6 : GoUnTypedInt));
final _rleStartxLength : GoInt64 = ((3 : GoUnTypedInt));
final _lleOffsetPair : GoInt64 = ((4 : GoUnTypedInt));
final _encAddress : GoInt64 = ((1 : GoUnTypedInt));
final attrPriority : Attr = new Attr(((69 : GoUInt32)));
final attrCallAllTailCalls : Attr = new Attr(((124 : GoUInt32)));
final _lnsSetFile : GoInt64 = ((4 : GoUnTypedInt));
final attrExportSymbols : Attr = new Attr(((137 : GoUInt32)));
final attrIdentifierCase : Attr = new Attr(((66 : GoUInt32)));
final _opConst2s : GoInt64 = ((11 : GoUnTypedInt));
final _lleBaseAddress : GoInt64 = ((6 : GoUnTypedInt));
final _lnctMD5 : GoInt64 = ((5 : GoUnTypedInt));
final _encPackedDecimal : GoInt64 = ((10 : GoUnTypedInt));
final attrImport : Attr = new Attr(((24 : GoUInt32)));
final _utSplitType : GoInt64 = ((6 : GoUnTypedInt));
final tagCommonDwarfBlock : Tag = new Tag(((26 : GoUInt32)));
final _opConst2u : GoInt64 = ((10 : GoUnTypedInt));
final attrAccessibility : Attr = new Attr(((50 : GoUInt32)));
final _lnsSetEpilogueBegin : GoInt64 = ((11 : GoUnTypedInt));
final _formRefSig8 : T_format = new T_format(((32 : GoUInt32)));
final _formDwarfBlock : T_format = new T_format(((9 : GoUInt32)));
final classFlag : Class_ = new Class_((5 : GoUnTypedInt));
final attrCommonRef : Attr = new Attr(((26 : GoUInt32)));
final attrArtificial : Attr = new Attr(((52 : GoUInt32)));
final tagAccessDeclaration : Tag = new Tag(((35 : GoUInt32)));
final _opPushObjAddr : GoInt64 = ((151 : GoUnTypedInt));
final _encImaginaryFloat : GoInt64 = ((9 : GoUnTypedInt));
final attrInline : Attr = new Attr(((32 : GoUInt32)));
final _opLe : GoInt64 = ((44 : GoUnTypedInt));
final tagInterfaceType : Tag = new Tag(((56 : GoUInt32)));
final _opRegx : GoInt64 = ((144 : GoUnTypedInt));
final attrStrOffsetsBase : Attr = new Attr(((114 : GoUInt32)));
final tagNamelist : Tag = new Tag(((43 : GoUInt32)));
final _encBoolean : GoInt64 = ((2 : GoUnTypedInt));
final _lnctTimestamp : GoInt64 = ((3 : GoUnTypedInt));
final attrDiscrValue : Attr = new Attr(((22 : GoUInt32)));
final attrByteSize : Attr = new Attr(((11 : GoUInt32)));
final attrCallPC : Attr = new Attr(((129 : GoUInt32)));
final _opEntryValue : GoInt64 = ((163 : GoUnTypedInt));
final _opFbreg : GoInt64 = ((145 : GoUnTypedInt));
final attrStringLength : Attr = new Attr(((25 : GoUInt32)));
final _formRefAddr : T_format = new T_format(((16 : GoUInt32)));
final _opDiv : GoInt64 = ((27 : GoUnTypedInt));
final attrEntrypc : Attr = new Attr(((82 : GoUInt32)));
final _lnsSetBasicBlock : GoInt64 = ((7 : GoUnTypedInt));
final _opBra : GoInt64 = ((40 : GoUnTypedInt));
final tagClassType : Tag = new Tag(((2 : GoUInt32)));
final tagStringType : Tag = new Tag(((18 : GoUInt32)));
final attrCallTailCall : Attr = new Attr(((130 : GoUInt32)));
final attrDefaultValue : Attr = new Attr(((30 : GoUInt32)));
final _opNop : GoInt64 = ((150 : GoUnTypedInt));
final tagCatchDwarfBlock : Tag = new Tag(((37 : GoUInt32)));
final attrCallOrigin : Attr = new Attr(((127 : GoUInt32)));
final attrEnumClass : Attr = new Attr(((109 : GoUInt32)));
final attrVarParam : Attr = new Attr(((75 : GoUInt32)));
final tagCondition : Tag = new Tag(((63 : GoUInt32)));
final _opLt : GoInt64 = ((45 : GoUnTypedInt));
final attrDiscrList : Attr = new Attr(((61 : GoUInt32)));
final _opXderef : GoInt64 = ((24 : GoUnTypedInt));
final attrCallFile : Attr = new Attr(((88 : GoUInt32)));
final _formImplicitConst : T_format = new T_format(((33 : GoUInt32)));
final _opImplicitValue : GoInt64 = ((158 : GoUnTypedInt));
final _opAddrx : GoInt64 = ((161 : GoUnTypedInt));
final tagVolatileType : Tag = new Tag(((53 : GoUInt32)));
final _opNot : GoInt64 = ((32 : GoUnTypedInt));
final classRangeListPtr : Class_ = new Class_((9 : GoUnTypedInt));
final _lnsFixedAdvancePC : GoInt64 = ((9 : GoUnTypedInt));
final attrStringLengthByteSize : Attr = new Attr(((112 : GoUInt32)));
final attrRvalueReference : Attr = new Attr(((120 : GoUInt32)));
final attrCalling : Attr = new Attr(((54 : GoUInt32)));
final classString : Class_ = new Class_((12 : GoUnTypedInt));
final attrExternal : Attr = new Attr(((63 : GoUInt32)));
final _lleBaseAddressx : GoInt64 = ((1 : GoUnTypedInt));
final attrType : Attr = new Attr(((73 : GoUInt32)));
final classLocList : Class_ = new Class_((16 : GoUnTypedInt));
final _opDeref : GoInt64 = ((6 : GoUnTypedInt));
final attrDataBitOffset : Attr = new Attr(((107 : GoUInt32)));
final tagImmutableType : Tag = new Tag(((75 : GoUInt32)));
final _formStrp : T_format = new T_format(((14 : GoUInt32)));
final tagInheritance : Tag = new Tag(((28 : GoUInt32)));
final _formSdata : T_format = new T_format(((13 : GoUInt32)));
final attrCount : Attr = new Attr(((55 : GoUInt32)));
final _encComplexFloat : GoInt64 = ((3 : GoUnTypedInt));
final classReferenceAlt : Class_ = new Class_((13 : GoUnTypedInt));
final _encNumericString : GoInt64 = ((11 : GoUnTypedInt));
final _formGnuRefAlt : T_format = new T_format(((7968 : GoUInt32)));
final attrBitOffset : Attr = new Attr(((12 : GoUInt32)));
final _opXderefType : GoInt64 = ((167 : GoUnTypedInt));
final attrConstValue : Attr = new Attr(((28 : GoUInt32)));
final attrStringLengthBitSize : Attr = new Attr(((111 : GoUInt32)));
final _opGe : GoInt64 = ((42 : GoUnTypedInt));
final _lnsSetPrologueEnd : GoInt64 = ((10 : GoUnTypedInt));
final _opConst8s : GoInt64 = ((15 : GoUnTypedInt));
final classAddrPtr : Class_ = new Class_((15 : GoUnTypedInt));
final _opMul : GoInt64 = ((30 : GoUnTypedInt));
final tagBaseType : Tag = new Tag(((36 : GoUInt32)));
final tagLabel : Tag = new Tag(((10 : GoUInt32)));
final classUnknown : Class_ = new Class_((0 : GoUnTypedInt));
final attrPrototyped : Attr = new Attr(((39 : GoUInt32)));
final _opConst8u : GoInt64 = ((14 : GoUnTypedInt));
final _formStrx : T_format = new T_format(((26 : GoUInt32)));
final _formLineStrp : T_format = new T_format(((31 : GoUInt32)));
final _opOr : GoInt64 = ((33 : GoUnTypedInt));
final classStringAlt : Class_ = new Class_((14 : GoUnTypedInt));
final attrConstExpr : Attr = new Attr(((108 : GoUInt32)));
final tagRestrictType : Tag = new Tag(((55 : GoUInt32)));
final _opAbs : GoInt64 = ((25 : GoUnTypedInt));
var _errSegmentSelector : stdgo.Error = stdgo.errors.Errors.new_("non-zero segment_selector size not supported");
final attrDecimalSign : Attr = new Attr(((94 : GoUInt32)));
final attrUseUTF8 : Attr = new Attr(((83 : GoUInt32)));
final _lleStartxLength : GoInt64 = ((3 : GoUnTypedInt));
final attrCompDir : Attr = new Attr(((27 : GoUInt32)));
final _opLit0 : GoInt64 = ((48 : GoUnTypedInt));
final tagCallSite : Tag = new Tag(((72 : GoUInt32)));
final _lnctPath : GoInt64 = ((1 : GoUnTypedInt));
final attrCallTarget : Attr = new Attr(((131 : GoUInt32)));
final _lneEndSequence : GoInt64 = ((1 : GoUnTypedInt));
final _formData16 : T_format = new T_format(((30 : GoUInt32)));
final classLinePtr : Class_ = new Class_((6 : GoUnTypedInt));
final _opOver : GoInt64 = ((20 : GoUnTypedInt));
final attrDeclaration : Attr = new Attr(((60 : GoUInt32)));
final tagFileType : Tag = new Tag(((41 : GoUInt32)));
final _utCompile : GoInt64 = ((1 : GoUnTypedInt));
final attrUpperBound : Attr = new Attr(((47 : GoUInt32)));
final _opGt : GoInt64 = ((43 : GoUnTypedInt));
final _opFormTLSAddress : GoInt64 = ((155 : GoUnTypedInt));
final attrTrampoline : Attr = new Attr(((86 : GoUInt32)));
final tagNamespace : Tag = new Tag(((57 : GoUInt32)));
final attrAllocated : Attr = new Attr(((78 : GoUInt32)));
final tagImportedModule : Tag = new Tag(((58 : GoUInt32)));
final tagReferenceType : Tag = new Tag(((16 : GoUInt32)));
final tagInlinedSubroutine : Tag = new Tag(((29 : GoUInt32)));
final _lnsConstAddPC : GoInt64 = ((8 : GoUnTypedInt));
final attrSibling : Attr = new Attr(((1 : GoUInt32)));
final _lnsAdvancePC : GoInt64 = ((2 : GoUnTypedInt));
final _lnsNegateStmt : GoInt64 = ((6 : GoUnTypedInt));
final _lnsSetISA : GoInt64 = ((12 : GoUnTypedInt));
var _knownOpcodeLengths : GoMap<GoInt, GoInt> = new GoMap<GoInt, GoInt>(
new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(int_kind), stdgo.reflect.Reflect.GoType.basic(int_kind))),
{ key : _lnsCopy, value : ((0 : GoInt)) },
{ key : _lnsAdvancePC, value : ((1 : GoInt)) },
{ key : _lnsAdvanceLine, value : ((1 : GoInt)) },
{ key : _lnsSetFile, value : ((1 : GoInt)) },
{ key : _lnsNegateStmt, value : ((0 : GoInt)) },
{ key : _lnsSetBasicBlock, value : ((0 : GoInt)) },
{ key : _lnsConstAddPC, value : ((0 : GoInt)) },
{ key : _lnsSetPrologueEnd, value : ((0 : GoInt)) },
{ key : _lnsSetEpilogueBegin, value : ((0 : GoInt)) },
{ key : _lnsSetISA, value : ((1 : GoInt)) });
final attrHighpc : Attr = new Attr(((18 : GoUInt32)));
final tagMember : Tag = new Tag(((13 : GoUInt32)));
final _opImplicitPointer : GoInt64 = ((160 : GoUnTypedInt));
final attrSmall : Attr = new Attr(((93 : GoUInt32)));
final _encSignedFixed : GoInt64 = ((13 : GoUnTypedInt));
final attrAlignment : Attr = new Attr(((136 : GoUInt32)));
final attrNamelistItem : Attr = new Attr(((68 : GoUInt32)));
final _encFloat : GoInt64 = ((4 : GoUnTypedInt));
var __Tag_index_0 : GoArray<GoUInt8> = new GoArray<GoUInt8>(((0 : GoUInt8)), ((9 : GoUInt8)), ((18 : GoUInt8)), ((28 : GoUInt8)), ((43 : GoUInt8)), ((58 : GoUInt8))).copy();
final attrEndianity : Attr = new Attr(((101 : GoUInt32)));
final _formRefSup4 : T_format = new T_format(((28 : GoUInt32)));
final attrLowerBound : Attr = new Attr(((34 : GoUInt32)));
final attrSignature : Attr = new Attr(((105 : GoUInt32)));
final _opDrop : GoInt64 = ((19 : GoUnTypedInt));
var __Tag_index_2 : GoArray<GoUInt8> = new GoArray<GoUInt8>(((0 : GoUInt8)), ((5 : GoUInt8)), ((18 : GoUInt8))).copy();
final tagTemplateAlias : Tag = new Tag(((67 : GoUInt32)));
final attrDeclLine : Attr = new Attr(((59 : GoUInt32)));
final _opXderefSize : GoInt64 = ((149 : GoUnTypedInt));
final classMacPtr : Class_ = new Class_((8 : GoUnTypedInt));
final tagCompileUnit : Tag = new Tag(((17 : GoUInt32)));
final attrExtension : Attr = new Attr(((84 : GoUInt32)));
var __Tag_index_4 : GoArray<GoUInt8> = new GoArray<GoUInt8>(((0 : GoUInt8)), ((11 : GoUInt8)), ((24 : GoUInt8)), ((35 : GoUInt8)), ((45 : GoUInt8)), ((55 : GoUInt8))).copy();
final attrCallDataLocation : Attr = new Attr(((133 : GoUInt32)));
final _opShra : GoInt64 = ((38 : GoUnTypedInt));
final _formRefSup8 : T_format = new T_format(((36 : GoUInt32)));
final attrVtableElemLoc : Attr = new Attr(((77 : GoUInt32)));
var __Tag_index_5 : GoArray<GoUInt16> = new GoArray<GoUInt16>(
((0 : GoUInt16)),
((14 : GoUInt16)),
((21 : GoUInt16)),
((30 : GoUInt16)),
((51 : GoUInt16)),
((58 : GoUInt16)),
((74 : GoUInt16)),
((89 : GoUInt16)),
((100 : GoUInt16)),
((117 : GoUInt16)),
((123 : GoUInt16)),
((138 : GoUInt16)),
((145 : GoUInt16)),
((157 : GoUInt16)),
((165 : GoUInt16)),
((182 : GoUInt16)),
((190 : GoUInt16)),
((205 : GoUInt16)),
((214 : GoUInt16)),
((222 : GoUInt16)),
((232 : GoUInt16)),
((240 : GoUInt16)),
((246 : GoUInt16)),
((254 : GoUInt16)),
((266 : GoUInt16)),
((276 : GoUInt16)),
((286 : GoUInt16)),
((307 : GoUInt16)),
((329 : GoUInt16)),
((339 : GoUInt16)),
((352 : GoUInt16)),
((363 : GoUInt16)),
((371 : GoUInt16)),
((383 : GoUInt16)),
((397 : GoUInt16)),
((409 : GoUInt16)),
((422 : GoUInt16)),
((431 : GoUInt16)),
((445 : GoUInt16)),
((460 : GoUInt16)),
((471 : GoUInt16)),
((483 : GoUInt16)),
((494 : GoUInt16)),
((503 : GoUInt16)),
((513 : GoUInt16)),
((521 : GoUInt16)),
((540 : GoUInt16)),
((553 : GoUInt16)),
((564 : GoUInt16)),
((579 : GoUInt16)),
((590 : GoUInt16)),
((600 : GoUInt16)),
((608 : GoUInt16)),
((625 : GoUInt16)),
((637 : GoUInt16)),
((650 : GoUInt16))).copy();
final attrPictureString : Attr = new Attr(((96 : GoUInt32)));
final tagSharedType : Tag = new Tag(((64 : GoUInt32)));
final _formRnglistx : T_format = new T_format(((35 : GoUInt32)));
final attrSpecification : Attr = new Attr(((71 : GoUInt32)));
final _opNeg : GoInt64 = ((31 : GoUnTypedInt));
final _lleDefaultLocation : GoInt64 = ((5 : GoUnTypedInt));
final attrCallAllCalls : Attr = new Attr(((122 : GoUInt32)));
final _lneDefineFile : GoInt64 = ((3 : GoUnTypedInt));
final tagRvalueReferenceType : Tag = new Tag(((66 : GoUInt32)));
final _opCallRef : GoInt64 = ((154 : GoUnTypedInt));
final attrContainingType : Attr = new Attr(((29 : GoUInt32)));
final _opSkip : GoInt64 = ((47 : GoUnTypedInt));
final tagUnspecifiedParameters : Tag = new Tag(((24 : GoUInt32)));
final classReference : Class_ = new Class_((10 : GoUnTypedInt));
final _formAddrx1 : T_format = new T_format(((41 : GoUInt32)));
final _formAddrx2 : T_format = new T_format(((42 : GoUInt32)));
final attrCallReturnPC : Attr = new Attr(((125 : GoUInt32)));
final _formRefUdata : T_format = new T_format(((21 : GoUInt32)));
final _formAddrx3 : T_format = new T_format(((43 : GoUInt32)));
final tagThrownType : Tag = new Tag(((49 : GoUInt32)));
final _opBreg0 : GoInt64 = ((112 : GoUnTypedInt));
final _formAddrx4 : T_format = new T_format(((44 : GoUInt32)));
final _opCallFrameCFA : GoInt64 = ((156 : GoUnTypedInt));
final tagTypeUnit : Tag = new Tag(((65 : GoUInt32)));
final tagUnspecifiedType : Tag = new Tag(((59 : GoUInt32)));
final attrDecimalScale : Attr = new Attr(((92 : GoUInt32)));
final _rleBaseAddress : GoInt64 = ((5 : GoUnTypedInt));
final _lleStartxEndx : GoInt64 = ((2 : GoUnTypedInt));
final _utPartial : GoInt64 = ((3 : GoUnTypedInt));
final _encASCII : GoInt64 = ((18 : GoUnTypedInt));
final attrDeclColumn : Attr = new Attr(((57 : GoUInt32)));
final tagNamelistItem : Tag = new Tag(((44 : GoUInt32)));
final tagDwarfProcedure : Tag = new Tag(((54 : GoUInt32)));
final _opPlus : GoInt64 = ((34 : GoUnTypedInt));
final attrReference : Attr = new Attr(((119 : GoUInt32)));
final _opDup : GoInt64 = ((18 : GoUnTypedInt));
final _formAddrx : T_format = new T_format(((27 : GoUInt32)));
final _rleOffsetPair : GoInt64 = ((4 : GoUnTypedInt));
final tagArrayType : Tag = new Tag(((1 : GoUInt32)));
final attrIsOptional : Attr = new Attr(((33 : GoUInt32)));
final _formIndirect : T_format = new T_format(((22 : GoUInt32)));
final _formGnuStrpAlt : T_format = new T_format(((7969 : GoUInt32)));
final tagEnumerationType : Tag = new Tag(((4 : GoUInt32)));
final attrCallValue : Attr = new Attr(((126 : GoUInt32)));
final attrStrideSize : Attr = new Attr(((46 : GoUInt32)));
final _opSwap : GoInt64 = ((22 : GoUnTypedInt));
final _opRot : GoInt64 = ((23 : GoUnTypedInt));
final tagGenericSubrange : Tag = new Tag(((69 : GoUInt32)));
final _lnsSetColumn : GoInt64 = ((5 : GoUnTypedInt));
final attrStride : Attr = new Attr(((81 : GoUInt32)));
final tagAtomicType : Tag = new Tag(((71 : GoUInt32)));
final classLocListPtr : Class_ = new Class_((7 : GoUnTypedInt));
final tagConstant : Tag = new Tag(((39 : GoUInt32)));
final _formExprloc : T_format = new T_format(((24 : GoUInt32)));
final _formStrx1 : T_format = new T_format(((37 : GoUInt32)));
final attrDiscr : Attr = new Attr(((21 : GoUInt32)));
final _formStrx2 : T_format = new T_format(((38 : GoUInt32)));
final _encSignedChar : GoInt64 = ((6 : GoUnTypedInt));
final __Attr_name : GoString = "SiblingLocationNameOrderingByteSizeBitOffsetBitSizeStmtListLowpcHighpcLanguageDiscrDiscrValueVisibilityImportStringLengthCommonRefCompDirConstValueContainingTypeDefaultValueInlineIsOptionalLowerBoundProducerPrototypedReturnAddrStartScopeStrideSizeUpperBoundAbstractOriginAccessibilityAddrClassArtificialBaseTypesCallingCountDataMemberLocDeclColumnDeclFileDeclLineDeclarationDiscrListEncodingExternalFrameBaseFriendIdentifierCaseMacroInfoNamelistItemPrioritySegmentSpecificationStaticLinkTypeUseLocationVarParamVirtualityVtableElemLocAllocatedAssociatedDataLocationStrideEntrypcUseUTF8ExtensionRangesTrampolineCallColumnCallFileCallLineDescriptionBinaryScaleDecimalScaleSmallDecimalSignDigitCountPictureStringMutableThreadsScaledExplicitObjectPointerEndianityElementalPureRecursiveSignatureMainSubprogramDataBitOffsetConstExprEnumClassLinkageNameStringLengthBitSizeStringLengthByteSizeRankStrOffsetsBaseAddrBaseRnglistsBaseDwoNameReferenceRvalueReferenceMacrosCallAllCallsCallAllSourceCallsCallAllTailCallsCallReturnPCCallValueCallOriginCallParameterCallPCCallTailCallCallTargetCallTargetClobberedCallDataLocationCallDataValueNoreturnAlignmentExportSymbolsDeletedDefaultedLoclistsBase";
var __Attr_map : GoMap<Attr, GoString> = new GoMap<Attr, GoString>(
new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("debug/dwarf.Attr", [], stdgo.reflect.Reflect.GoType.basic(uint32_kind)), stdgo.reflect.Reflect.GoType.basic(string_kind))),
{ key : new Attr(((1 : GoUInt32))), value : __Attr_name.__slice__(((0 : GoInt)), ((7 : GoInt))) },
{ key : new Attr(((2 : GoUInt32))), value : __Attr_name.__slice__(((7 : GoInt)), ((15 : GoInt))) },
{ key : new Attr(((3 : GoUInt32))), value : __Attr_name.__slice__(((15 : GoInt)), ((19 : GoInt))) },
{ key : new Attr(((9 : GoUInt32))), value : __Attr_name.__slice__(((19 : GoInt)), ((27 : GoInt))) },
{ key : new Attr(((11 : GoUInt32))), value : __Attr_name.__slice__(((27 : GoInt)), ((35 : GoInt))) },
{ key : new Attr(((12 : GoUInt32))), value : __Attr_name.__slice__(((35 : GoInt)), ((44 : GoInt))) },
{ key : new Attr(((13 : GoUInt32))), value : __Attr_name.__slice__(((44 : GoInt)), ((51 : GoInt))) },
{ key : new Attr(((16 : GoUInt32))), value : __Attr_name.__slice__(((51 : GoInt)), ((59 : GoInt))) },
{ key : new Attr(((17 : GoUInt32))), value : __Attr_name.__slice__(((59 : GoInt)), ((64 : GoInt))) },
{ key : new Attr(((18 : GoUInt32))), value : __Attr_name.__slice__(((64 : GoInt)), ((70 : GoInt))) },
{ key : new Attr(((19 : GoUInt32))), value : __Attr_name.__slice__(((70 : GoInt)), ((78 : GoInt))) },
{ key : new Attr(((21 : GoUInt32))), value : __Attr_name.__slice__(((78 : GoInt)), ((83 : GoInt))) },
{ key : new Attr(((22 : GoUInt32))), value : __Attr_name.__slice__(((83 : GoInt)), ((93 : GoInt))) },
{ key : new Attr(((23 : GoUInt32))), value : __Attr_name.__slice__(((93 : GoInt)), ((103 : GoInt))) },
{ key : new Attr(((24 : GoUInt32))), value : __Attr_name.__slice__(((103 : GoInt)), ((109 : GoInt))) },
{ key : new Attr(((25 : GoUInt32))), value : __Attr_name.__slice__(((109 : GoInt)), ((121 : GoInt))) },
{ key : new Attr(((26 : GoUInt32))), value : __Attr_name.__slice__(((121 : GoInt)), ((130 : GoInt))) },
{ key : new Attr(((27 : GoUInt32))), value : __Attr_name.__slice__(((130 : GoInt)), ((137 : GoInt))) },
{ key : new Attr(((28 : GoUInt32))), value : __Attr_name.__slice__(((137 : GoInt)), ((147 : GoInt))) },
{ key : new Attr(((29 : GoUInt32))), value : __Attr_name.__slice__(((147 : GoInt)), ((161 : GoInt))) },
{ key : new Attr(((30 : GoUInt32))), value : __Attr_name.__slice__(((161 : GoInt)), ((173 : GoInt))) },
{ key : new Attr(((32 : GoUInt32))), value : __Attr_name.__slice__(((173 : GoInt)), ((179 : GoInt))) },
{ key : new Attr(((33 : GoUInt32))), value : __Attr_name.__slice__(((179 : GoInt)), ((189 : GoInt))) },
{ key : new Attr(((34 : GoUInt32))), value : __Attr_name.__slice__(((189 : GoInt)), ((199 : GoInt))) },
{ key : new Attr(((37 : GoUInt32))), value : __Attr_name.__slice__(((199 : GoInt)), ((207 : GoInt))) },
{ key : new Attr(((39 : GoUInt32))), value : __Attr_name.__slice__(((207 : GoInt)), ((217 : GoInt))) },
{ key : new Attr(((42 : GoUInt32))), value : __Attr_name.__slice__(((217 : GoInt)), ((227 : GoInt))) },
{ key : new Attr(((44 : GoUInt32))), value : __Attr_name.__slice__(((227 : GoInt)), ((237 : GoInt))) },
{ key : new Attr(((46 : GoUInt32))), value : __Attr_name.__slice__(((237 : GoInt)), ((247 : GoInt))) },
{ key : new Attr(((47 : GoUInt32))), value : __Attr_name.__slice__(((247 : GoInt)), ((257 : GoInt))) },
{ key : new Attr(((49 : GoUInt32))), value : __Attr_name.__slice__(((257 : GoInt)), ((271 : GoInt))) },
{ key : new Attr(((50 : GoUInt32))), value : __Attr_name.__slice__(((271 : GoInt)), ((284 : GoInt))) },
{ key : new Attr(((51 : GoUInt32))), value : __Attr_name.__slice__(((284 : GoInt)), ((293 : GoInt))) },
{ key : new Attr(((52 : GoUInt32))), value : __Attr_name.__slice__(((293 : GoInt)), ((303 : GoInt))) },
{ key : new Attr(((53 : GoUInt32))), value : __Attr_name.__slice__(((303 : GoInt)), ((312 : GoInt))) },
{ key : new Attr(((54 : GoUInt32))), value : __Attr_name.__slice__(((312 : GoInt)), ((319 : GoInt))) },
{ key : new Attr(((55 : GoUInt32))), value : __Attr_name.__slice__(((319 : GoInt)), ((324 : GoInt))) },
{ key : new Attr(((56 : GoUInt32))), value : __Attr_name.__slice__(((324 : GoInt)), ((337 : GoInt))) },
{ key : new Attr(((57 : GoUInt32))), value : __Attr_name.__slice__(((337 : GoInt)), ((347 : GoInt))) },
{ key : new Attr(((58 : GoUInt32))), value : __Attr_name.__slice__(((347 : GoInt)), ((355 : GoInt))) },
{ key : new Attr(((59 : GoUInt32))), value : __Attr_name.__slice__(((355 : GoInt)), ((363 : GoInt))) },
{ key : new Attr(((60 : GoUInt32))), value : __Attr_name.__slice__(((363 : GoInt)), ((374 : GoInt))) },
{ key : new Attr(((61 : GoUInt32))), value : __Attr_name.__slice__(((374 : GoInt)), ((383 : GoInt))) },
{ key : new Attr(((62 : GoUInt32))), value : __Attr_name.__slice__(((383 : GoInt)), ((391 : GoInt))) },
{ key : new Attr(((63 : GoUInt32))), value : __Attr_name.__slice__(((391 : GoInt)), ((399 : GoInt))) },
{ key : new Attr(((64 : GoUInt32))), value : __Attr_name.__slice__(((399 : GoInt)), ((408 : GoInt))) },
{ key : new Attr(((65 : GoUInt32))), value : __Attr_name.__slice__(((408 : GoInt)), ((414 : GoInt))) },
{ key : new Attr(((66 : GoUInt32))), value : __Attr_name.__slice__(((414 : GoInt)), ((428 : GoInt))) },
{ key : new Attr(((67 : GoUInt32))), value : __Attr_name.__slice__(((428 : GoInt)), ((437 : GoInt))) },
{ key : new Attr(((68 : GoUInt32))), value : __Attr_name.__slice__(((437 : GoInt)), ((449 : GoInt))) },
{ key : new Attr(((69 : GoUInt32))), value : __Attr_name.__slice__(((449 : GoInt)), ((457 : GoInt))) },
{ key : new Attr(((70 : GoUInt32))), value : __Attr_name.__slice__(((457 : GoInt)), ((464 : GoInt))) },
{ key : new Attr(((71 : GoUInt32))), value : __Attr_name.__slice__(((464 : GoInt)), ((477 : GoInt))) },
{ key : new Attr(((72 : GoUInt32))), value : __Attr_name.__slice__(((477 : GoInt)), ((487 : GoInt))) },
{ key : new Attr(((73 : GoUInt32))), value : __Attr_name.__slice__(((487 : GoInt)), ((491 : GoInt))) },
{ key : new Attr(((74 : GoUInt32))), value : __Attr_name.__slice__(((491 : GoInt)), ((502 : GoInt))) },
{ key : new Attr(((75 : GoUInt32))), value : __Attr_name.__slice__(((502 : GoInt)), ((510 : GoInt))) },
{ key : new Attr(((76 : GoUInt32))), value : __Attr_name.__slice__(((510 : GoInt)), ((520 : GoInt))) },
{ key : new Attr(((77 : GoUInt32))), value : __Attr_name.__slice__(((520 : GoInt)), ((533 : GoInt))) },
{ key : new Attr(((78 : GoUInt32))), value : __Attr_name.__slice__(((533 : GoInt)), ((542 : GoInt))) },
{ key : new Attr(((79 : GoUInt32))), value : __Attr_name.__slice__(((542 : GoInt)), ((552 : GoInt))) },
{ key : new Attr(((80 : GoUInt32))), value : __Attr_name.__slice__(((552 : GoInt)), ((564 : GoInt))) },
{ key : new Attr(((81 : GoUInt32))), value : __Attr_name.__slice__(((564 : GoInt)), ((570 : GoInt))) },
{ key : new Attr(((82 : GoUInt32))), value : __Attr_name.__slice__(((570 : GoInt)), ((577 : GoInt))) },
{ key : new Attr(((83 : GoUInt32))), value : __Attr_name.__slice__(((577 : GoInt)), ((584 : GoInt))) },
{ key : new Attr(((84 : GoUInt32))), value : __Attr_name.__slice__(((584 : GoInt)), ((593 : GoInt))) },
{ key : new Attr(((85 : GoUInt32))), value : __Attr_name.__slice__(((593 : GoInt)), ((599 : GoInt))) },
{ key : new Attr(((86 : GoUInt32))), value : __Attr_name.__slice__(((599 : GoInt)), ((609 : GoInt))) },
{ key : new Attr(((87 : GoUInt32))), value : __Attr_name.__slice__(((609 : GoInt)), ((619 : GoInt))) },
{ key : new Attr(((88 : GoUInt32))), value : __Attr_name.__slice__(((619 : GoInt)), ((627 : GoInt))) },
{ key : new Attr(((89 : GoUInt32))), value : __Attr_name.__slice__(((627 : GoInt)), ((635 : GoInt))) },
{ key : new Attr(((90 : GoUInt32))), value : __Attr_name.__slice__(((635 : GoInt)), ((646 : GoInt))) },
{ key : new Attr(((91 : GoUInt32))), value : __Attr_name.__slice__(((646 : GoInt)), ((657 : GoInt))) },
{ key : new Attr(((92 : GoUInt32))), value : __Attr_name.__slice__(((657 : GoInt)), ((669 : GoInt))) },
{ key : new Attr(((93 : GoUInt32))), value : __Attr_name.__slice__(((669 : GoInt)), ((674 : GoInt))) },
{ key : new Attr(((94 : GoUInt32))), value : __Attr_name.__slice__(((674 : GoInt)), ((685 : GoInt))) },
{ key : new Attr(((95 : GoUInt32))), value : __Attr_name.__slice__(((685 : GoInt)), ((695 : GoInt))) },
{ key : new Attr(((96 : GoUInt32))), value : __Attr_name.__slice__(((695 : GoInt)), ((708 : GoInt))) },
{ key : new Attr(((97 : GoUInt32))), value : __Attr_name.__slice__(((708 : GoInt)), ((715 : GoInt))) },
{ key : new Attr(((98 : GoUInt32))), value : __Attr_name.__slice__(((715 : GoInt)), ((728 : GoInt))) },
{ key : new Attr(((99 : GoUInt32))), value : __Attr_name.__slice__(((728 : GoInt)), ((736 : GoInt))) },
{ key : new Attr(((100 : GoUInt32))), value : __Attr_name.__slice__(((736 : GoInt)), ((749 : GoInt))) },
{ key : new Attr(((101 : GoUInt32))), value : __Attr_name.__slice__(((749 : GoInt)), ((758 : GoInt))) },
{ key : new Attr(((102 : GoUInt32))), value : __Attr_name.__slice__(((758 : GoInt)), ((767 : GoInt))) },
{ key : new Attr(((103 : GoUInt32))), value : __Attr_name.__slice__(((767 : GoInt)), ((771 : GoInt))) },
{ key : new Attr(((104 : GoUInt32))), value : __Attr_name.__slice__(((771 : GoInt)), ((780 : GoInt))) },
{ key : new Attr(((105 : GoUInt32))), value : __Attr_name.__slice__(((780 : GoInt)), ((789 : GoInt))) },
{ key : new Attr(((106 : GoUInt32))), value : __Attr_name.__slice__(((789 : GoInt)), ((803 : GoInt))) },
{ key : new Attr(((107 : GoUInt32))), value : __Attr_name.__slice__(((803 : GoInt)), ((816 : GoInt))) },
{ key : new Attr(((108 : GoUInt32))), value : __Attr_name.__slice__(((816 : GoInt)), ((825 : GoInt))) },
{ key : new Attr(((109 : GoUInt32))), value : __Attr_name.__slice__(((825 : GoInt)), ((834 : GoInt))) },
{ key : new Attr(((110 : GoUInt32))), value : __Attr_name.__slice__(((834 : GoInt)), ((845 : GoInt))) },
{ key : new Attr(((111 : GoUInt32))), value : __Attr_name.__slice__(((845 : GoInt)), ((864 : GoInt))) },
{ key : new Attr(((112 : GoUInt32))), value : __Attr_name.__slice__(((864 : GoInt)), ((884 : GoInt))) },
{ key : new Attr(((113 : GoUInt32))), value : __Attr_name.__slice__(((884 : GoInt)), ((888 : GoInt))) },
{ key : new Attr(((114 : GoUInt32))), value : __Attr_name.__slice__(((888 : GoInt)), ((902 : GoInt))) },
{ key : new Attr(((115 : GoUInt32))), value : __Attr_name.__slice__(((902 : GoInt)), ((910 : GoInt))) },
{ key : new Attr(((116 : GoUInt32))), value : __Attr_name.__slice__(((910 : GoInt)), ((922 : GoInt))) },
{ key : new Attr(((118 : GoUInt32))), value : __Attr_name.__slice__(((922 : GoInt)), ((929 : GoInt))) },
{ key : new Attr(((119 : GoUInt32))), value : __Attr_name.__slice__(((929 : GoInt)), ((938 : GoInt))) },
{ key : new Attr(((120 : GoUInt32))), value : __Attr_name.__slice__(((938 : GoInt)), ((953 : GoInt))) },
{ key : new Attr(((121 : GoUInt32))), value : __Attr_name.__slice__(((953 : GoInt)), ((959 : GoInt))) },
{ key : new Attr(((122 : GoUInt32))), value : __Attr_name.__slice__(((959 : GoInt)), ((971 : GoInt))) },
{ key : new Attr(((123 : GoUInt32))), value : __Attr_name.__slice__(((971 : GoInt)), ((989 : GoInt))) },
{ key : new Attr(((124 : GoUInt32))), value : __Attr_name.__slice__(((989 : GoInt)), ((1005 : GoInt))) },
{ key : new Attr(((125 : GoUInt32))), value : __Attr_name.__slice__(((1005 : GoInt)), ((1017 : GoInt))) },
{ key : new Attr(((126 : GoUInt32))), value : __Attr_name.__slice__(((1017 : GoInt)), ((1026 : GoInt))) },
{ key : new Attr(((127 : GoUInt32))), value : __Attr_name.__slice__(((1026 : GoInt)), ((1036 : GoInt))) },
{ key : new Attr(((128 : GoUInt32))), value : __Attr_name.__slice__(((1036 : GoInt)), ((1049 : GoInt))) },
{ key : new Attr(((129 : GoUInt32))), value : __Attr_name.__slice__(((1049 : GoInt)), ((1055 : GoInt))) },
{ key : new Attr(((130 : GoUInt32))), value : __Attr_name.__slice__(((1055 : GoInt)), ((1067 : GoInt))) },
{ key : new Attr(((131 : GoUInt32))), value : __Attr_name.__slice__(((1067 : GoInt)), ((1077 : GoInt))) },
{ key : new Attr(((132 : GoUInt32))), value : __Attr_name.__slice__(((1077 : GoInt)), ((1096 : GoInt))) },
{ key : new Attr(((133 : GoUInt32))), value : __Attr_name.__slice__(((1096 : GoInt)), ((1112 : GoInt))) },
{ key : new Attr(((134 : GoUInt32))), value : __Attr_name.__slice__(((1112 : GoInt)), ((1125 : GoInt))) },
{ key : new Attr(((135 : GoUInt32))), value : __Attr_name.__slice__(((1125 : GoInt)), ((1133 : GoInt))) },
{ key : new Attr(((136 : GoUInt32))), value : __Attr_name.__slice__(((1133 : GoInt)), ((1142 : GoInt))) },
{ key : new Attr(((137 : GoUInt32))), value : __Attr_name.__slice__(((1142 : GoInt)), ((1155 : GoInt))) },
{ key : new Attr(((138 : GoUInt32))), value : __Attr_name.__slice__(((1155 : GoInt)), ((1162 : GoInt))) },
{ key : new Attr(((139 : GoUInt32))), value : __Attr_name.__slice__(((1162 : GoInt)), ((1171 : GoInt))) },
{ key : new Attr(((140 : GoUInt32))), value : __Attr_name.__slice__(((1171 : GoInt)), ((1183 : GoInt))) });
final _formStrx3 : T_format = new T_format(((39 : GoUInt32)));
final _opPick : GoInt64 = ((21 : GoUnTypedInt));
final attrMainSubprogram : Attr = new Attr(((106 : GoUInt32)));
final attrThreadsScaled : Attr = new Attr(((98 : GoUInt32)));
final _formStrx4 : T_format = new T_format(((40 : GoUInt32)));
final tagCallSiteParameter : Tag = new Tag(((73 : GoUInt32)));
final _opEq : GoInt64 = ((41 : GoUnTypedInt));
final attrMutable : Attr = new Attr(((97 : GoUInt32)));
final attrCallParameter : Attr = new Attr(((128 : GoUInt32)));
final tagConstType : Tag = new Tag(((38 : GoUInt32)));
final classReferenceSig : Class_ = new Class_((11 : GoUnTypedInt));
final _lneSetDiscriminator : GoInt64 = ((4 : GoUnTypedInt));
final _opAnd : GoInt64 = ((26 : GoUnTypedInt));
final tagDynamicType : Tag = new Tag(((70 : GoUInt32)));
final tagTypedef : Tag = new Tag(((22 : GoUInt32)));
final tagSetType : Tag = new Tag(((32 : GoUInt32)));
final _lleStartLength : GoInt64 = ((8 : GoUnTypedInt));
final attrDataMemberLoc : Attr = new Attr(((56 : GoUInt32)));
final attrReturnAddr : Attr = new Attr(((42 : GoUInt32)));
var __Class_index : GoArray<GoUInt8> = new GoArray<GoUInt8>(
((0 : GoUInt8)),
((12 : GoUInt8)),
((24 : GoUInt8)),
((34 : GoUInt8)),
((47 : GoUInt8)),
((59 : GoUInt8)),
((68 : GoUInt8)),
((80 : GoUInt8)),
((95 : GoUInt8)),
((106 : GoUInt8)),
((123 : GoUInt8)),
((137 : GoUInt8)),
((154 : GoUInt8)),
((165 : GoUInt8)),
((182 : GoUInt8)),
((196 : GoUInt8))).copy();
var errUnknownPC : stdgo.Error = stdgo.errors.Errors.new_("ErrUnknownPC");
final _opPlusUconst : GoInt64 = ((35 : GoUnTypedInt));
final attrRanges : Attr = new Attr(((85 : GoUInt32)));
final _opStackValue : GoInt64 = ((159 : GoUnTypedInt));
final _lleStartEnd : GoInt64 = ((7 : GoUnTypedInt));
final _formData1 : T_format = new T_format(((11 : GoUInt32)));
final _opReinterpret : GoInt64 = ((169 : GoUnTypedInt));
final attrDataLocation : Attr = new Attr(((80 : GoUInt32)));
final classRngList : Class_ = new Class_((17 : GoUnTypedInt));
final _lnctSize : GoInt64 = ((4 : GoUnTypedInt));
final _formData2 : T_format = new T_format(((5 : GoUInt32)));
final attrSegment : Attr = new Attr(((70 : GoUInt32)));
final attrCallDataValue : Attr = new Attr(((134 : GoUInt32)));
final _formFlagPresent : T_format = new T_format(((25 : GoUInt32)));
final tagTemplateTypeParameter : Tag = new Tag(((47 : GoUInt32)));
final _opReg0 : GoInt64 = ((80 : GoUnTypedInt));
final _lneSetAddress : GoInt64 = ((2 : GoUnTypedInt));
final _formData4 : T_format = new T_format(((6 : GoUInt32)));
final classStrOffsetsPtr : Class_ = new Class_((19 : GoUnTypedInt));
final _encDecimalFloat : GoInt64 = ((15 : GoUnTypedInt));
final tagVariantPart : Tag = new Tag(((51 : GoUInt32)));
final attrCallColumn : Attr = new Attr(((87 : GoUInt32)));
final classBlock : Class_ = new Class_((2 : GoUnTypedInt));
final attrEncoding : Attr = new Attr(((62 : GoUInt32)));
final tagPointerType : Tag = new Tag(((15 : GoUInt32)));
final attrStaticLink : Attr = new Attr(((72 : GoUInt32)));
var _attrIsExprloc : GoMap<Attr, Bool> = new GoMap<Attr, Bool>(
new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("debug/dwarf.Attr", [], stdgo.reflect.Reflect.GoType.basic(uint32_kind)), stdgo.reflect.Reflect.GoType.basic(bool_kind))),
{ key : attrLocation, value : true },
{ key : attrByteSize, value : true },
{ key : attrBitOffset, value : true },
{ key : attrBitSize, value : true },
{ key : attrStringLength, value : true },
{ key : attrLowerBound, value : true },
{ key : attrReturnAddr, value : true },
{ key : attrStrideSize, value : true },
{ key : attrUpperBound, value : true },
{ key : attrCount, value : true },
{ key : attrDataMemberLoc, value : true },
{ key : attrFrameBase, value : true },
{ key : attrSegment, value : true },
{ key : attrStaticLink, value : true },
{ key : attrUseLocation, value : true },
{ key : attrVtableElemLoc, value : true },
{ key : attrAllocated, value : true },
{ key : attrAssociated, value : true },
{ key : attrDataLocation, value : true },
{ key : attrStride, value : true });
final _opConst1s : GoInt64 = ((9 : GoUnTypedInt));
final _formData8 : T_format = new T_format(((7 : GoUInt32)));
final attrRnglistsBase : Attr = new Attr(((116 : GoUInt32)));
final tagCoarrayType : Tag = new Tag(((68 : GoUInt32)));
final _formStrpSup : T_format = new T_format(((29 : GoUInt32)));
final _opRegvalType : GoInt64 = ((165 : GoUnTypedInt));
final _opConsts : GoInt64 = ((17 : GoUnTypedInt));
final _opAddr : GoInt64 = ((3 : GoUnTypedInt));
final _opConst1u : GoInt64 = ((8 : GoUnTypedInt));
final attrMacros : Attr = new Attr(((121 : GoUInt32)));
final _opConstu : GoInt64 = ((16 : GoUnTypedInt));
final tagMutableType : Tag = new Tag(((62 : GoUInt32)));
final classAddress : Class_ = new Class_((1 : GoUnTypedInt));
final attrStartScope : Attr = new Attr(((44 : GoUInt32)));
var _attrPtrClass : GoMap<Attr, Class_> = new GoMap<Attr, Class_>(
new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("debug/dwarf.Attr", [], stdgo.reflect.Reflect.GoType.basic(uint32_kind)), stdgo.reflect.Reflect.GoType.named("debug/dwarf.Class", [], stdgo.reflect.Reflect.GoType.basic(int_kind)))),
{ key : attrLocation, value : classLocListPtr },
{ key : attrStmtList, value : classLinePtr },
{ key : attrStringLength, value : classLocListPtr },
{ key : attrReturnAddr, value : classLocListPtr },
{ key : attrStartScope, value : classRangeListPtr },
{ key : attrDataMemberLoc, value : classLocListPtr },
{ key : attrFrameBase, value : classLocListPtr },
{ key : attrMacroInfo, value : classMacPtr },
{ key : attrSegment, value : classLocListPtr },
{ key : attrStaticLink, value : classLocListPtr },
{ key : attrUseLocation, value : classLocListPtr },
{ key : attrVtableElemLoc, value : classLocListPtr },
{ key : attrRanges, value : classRangeListPtr },
{ key : attrStrOffsetsBase, value : classStrOffsetsPtr },
{ key : attrAddrBase, value : classAddrPtr },
{ key : attrRnglistsBase, value : classRngListsPtr },
{ key : attrLoclistsBase, value : classLocListPtr });
final _formAddr : T_format = new T_format(((1 : GoUInt32)));
final _utSkeleton : GoInt64 = ((4 : GoUnTypedInt));
final _lnctDirectoryIndex : GoInt64 = ((2 : GoUnTypedInt));
final tagVariant : Tag = new Tag(((25 : GoUInt32)));
final _opConstx : GoInt64 = ((162 : GoUnTypedInt));
final attrCallAllSourceCalls : Attr = new Attr(((123 : GoUInt32)));
final attrLanguage : Attr = new Attr(((19 : GoUInt32)));
final attrRecursive : Attr = new Attr(((104 : GoUInt32)));
final _utType : GoInt64 = ((2 : GoUnTypedInt));
final tagVariable : Tag = new Tag(((52 : GoUInt32)));
final attrDwoName : Attr = new Attr(((118 : GoUInt32)));
final tagSubroutineType : Tag = new Tag(((21 : GoUInt32)));
final tagTemplateValueParameter : Tag = new Tag(((48 : GoUInt32)));
function _makeBuf(_d:Pointer<Data>, _format:T_dataFormat, _name:GoString, _off:Offset, _data:Slice<GoByte>):T_buf {
        return new T_buf(_d, _d.value._order, _format, _name, _off, _data, ((null : stdgo.Error))).__copy__();
    }
/**
    // formToClass returns the DWARF 4 Class for the given form. If the
    // DWARF version is less then 4, it will disambiguate some forms
    // depending on the attribute.
**/
function _formToClass(_form:T_format, _attr:Attr, _vers:GoInt, _b:Pointer<T_buf>):Class_ {
        if (_form.__t__ == _formIndirect.__t__) {
            return classUnknown;
        } else if (_form.__t__ == _formAddr.__t__ || _form.__t__ == _formAddrx.__t__ || _form.__t__ == _formAddrx1.__t__ || _form.__t__ == _formAddrx2.__t__ || _form.__t__ == _formAddrx3.__t__ || _form.__t__ == _formAddrx4.__t__) {
            return classAddress;
        } else if (_form.__t__ == _formDwarfBlock1.__t__ || _form.__t__ == _formDwarfBlock2.__t__ || _form.__t__ == _formDwarfBlock4.__t__ || _form.__t__ == _formDwarfBlock.__t__) {
            if (_attrIsExprloc[_attr]) {
                return classExprLoc;
            };
            return classBlock;
        } else if (_form.__t__ == _formData1.__t__ || _form.__t__ == _formData2.__t__ || _form.__t__ == _formData4.__t__ || _form.__t__ == _formData8.__t__ || _form.__t__ == _formSdata.__t__ || _form.__t__ == _formUdata.__t__ || _form.__t__ == _formData16.__t__ || _form.__t__ == _formImplicitConst.__t__) {
            {
                var __tmp__ = _attrPtrClass.exists(_attr) ? { value : _attrPtrClass[_attr], ok : true } : { value : _attrPtrClass.defaultValue(), ok : false }, _class:Class_ = __tmp__.value, _ok:Bool = __tmp__.ok;
                if (_vers < ((4 : GoInt)) && _ok) {
                    return _class;
                };
            };
            return classConstant;
        } else if (_form.__t__ == _formFlag.__t__ || _form.__t__ == _formFlagPresent.__t__) {
            return classFlag;
        } else if (_form.__t__ == _formRefAddr.__t__ || _form.__t__ == _formRef1.__t__ || _form.__t__ == _formRef2.__t__ || _form.__t__ == _formRef4.__t__ || _form.__t__ == _formRef8.__t__ || _form.__t__ == _formRefUdata.__t__ || _form.__t__ == _formRefSup4.__t__ || _form.__t__ == _formRefSup8.__t__) {
            return classReference;
        } else if (_form.__t__ == _formRefSig8.__t__) {
            return classReferenceSig;
        } else if (_form.__t__ == _formString.__t__ || _form.__t__ == _formStrp.__t__ || _form.__t__ == _formStrx.__t__ || _form.__t__ == _formStrpSup.__t__ || _form.__t__ == _formLineStrp.__t__ || _form.__t__ == _formStrx1.__t__ || _form.__t__ == _formStrx2.__t__ || _form.__t__ == _formStrx3.__t__ || _form.__t__ == _formStrx4.__t__) {
            return classString;
        } else if (_form.__t__ == _formSecOffset.__t__) {
            {
                var __tmp__ = _attrPtrClass.exists(_attr) ? { value : _attrPtrClass[_attr], ok : true } : { value : _attrPtrClass.defaultValue(), ok : false }, _class:Class_ = __tmp__.value, _ok:Bool = __tmp__.ok;
                if (_ok) {
                    return _class;
                };
            };
            return classUnknown;
        } else if (_form.__t__ == _formExprloc.__t__) {
            return classExprLoc;
        } else if (_form.__t__ == _formGnuRefAlt.__t__) {
            return classReferenceAlt;
        } else if (_form.__t__ == _formGnuStrpAlt.__t__) {
            return classStringAlt;
        } else if (_form.__t__ == _formLoclistx.__t__) {
            return classLocList;
        } else if (_form.__t__ == _formRnglistx.__t__) {
            return classRngList;
        };
    }
/**
    // pathIsAbs reports whether path is an absolute path (or "full path
    // name" in DWARF parlance). This is in "whatever form makes sense for
    // the host system", so this accepts both UNIX-style and DOS-style
    // absolute paths. We avoid the filepath package because we want this
    // to behave the same regardless of our host system and because we
    // don't know what system the paths came from.
**/
function _pathIsAbs(_path:GoString):Bool {
        {
            var __tmp__ = _splitDrive(_path);
            _path = __tmp__._1;
        };
        return _path.length > ((0 : GoInt)) && (_path[((0 : GoInt))] == (("/".code : GoRune)) || _path[((0 : GoInt))] == (("\\".code : GoRune)));
    }
/**
    // pathJoin joins dirname and filename. filename must be relative.
    // DWARF paths can be UNIX-style or DOS-style, so this handles both.
**/
function _pathJoin(_dirname:GoString, _filename:GoString):GoString {
        if (_dirname.length == ((0 : GoInt))) {
            return _filename;
        };
        var __tmp__ = _splitDrive(_dirname), _drive:GoString = __tmp__._0, _dirname:GoString = __tmp__._1;
        if (_drive == (("" : GoString))) {
            return stdgo.path.Path.join(_dirname, _filename);
        };
        var __tmp__ = _splitDrive(_filename), _drive2:GoString = __tmp__._0, _filename:GoString = __tmp__._1;
        if (_drive2 != (("" : GoString))) {
            if (!stdgo.strings.Strings.equalFold(_drive, _drive2)) {
                return _drive2 + _filename;
            };
        };
        if (!(stdgo.strings.Strings.hasSuffix(_dirname, "/") || stdgo.strings.Strings.hasSuffix(_dirname, "\")) && _dirname != (("" : GoString))) {
            var _sep:GoString = "\";
            if (stdgo.strings.Strings.hasPrefix(_dirname, "/")) {
                _sep = "/";
            };
            _dirname = _dirname + (_sep);
        };
        return _drive + _dirname + _filename;
    }
/**
    // splitDrive splits the DOS drive letter or UNC share point from
    // path, if any. path == drive + rest
**/
function _splitDrive(_path:GoString):{ var _0 : GoString; var _1 : GoString; } {
        var _drive:GoString = (("" : GoString)), _rest:GoString = (("" : GoString));
        if (_path.length >= ((2 : GoInt)) && _path[((1 : GoInt))] == ((":".code : GoRune))) {
            {
                var _c:GoUInt8 = _path[((0 : GoInt))];
                if ((("a".code : GoRune)) <= _c && _c <= (("z".code : GoRune)) || (("A".code : GoRune)) <= _c && _c <= (("Z".code : GoRune))) {
                    return { _0 : _path.__slice__(0, ((2 : GoInt))), _1 : _path.__slice__(((2 : GoInt))) };
                };
            };
        };
        if (_path.length > ((3 : GoInt)) && (_path[((0 : GoInt))] == (("\\".code : GoRune)) || _path[((0 : GoInt))] == (("/".code : GoRune))) && (_path[((1 : GoInt))] == (("\\".code : GoRune)) || _path[((1 : GoInt))] == (("/".code : GoRune)))) {
            var _npath:GoString = stdgo.strings.Strings.replace(_path, "/", "\", -((1 : GoUnTypedInt)));
            var _slash1:GoInt = stdgo.strings.Strings.indexByte(_npath.__slice__(((2 : GoInt))), (("\\".code : GoRune))) + ((2 : GoInt));
            if (_slash1 > ((2 : GoInt))) {
                var _slash2:GoInt = stdgo.strings.Strings.indexByte(_npath.__slice__(_slash1 + ((1 : GoInt))), (("\\".code : GoRune))) + _slash1 + ((1 : GoInt));
                if (_slash2 > _slash1) {
                    return { _0 : _path.__slice__(0, _slash2), _1 : _path.__slice__(_slash2) };
                };
            };
        };
        return { _0 : "", _1 : _path };
    }
/**
    // New returns a new Data object initialized from the given parameters.
    // Rather than calling this function directly, clients should typically use
    // the DWARF method of the File type of the appropriate package debug/elf,
    // debug/macho, or debug/pe.
    //
    // The []byte arguments are the data from the corresponding debug section
    // in the object file; for example, for an ELF object, abbrev is the contents of
    // the ".debug_abbrev" section.
**/
function new_(_abbrev:Slice<GoByte>, _aranges:Slice<GoByte>, _frame:Slice<GoByte>, _info:Slice<GoByte>, _line:Slice<GoByte>, _pubnames:Slice<GoByte>, _ranges:Slice<GoByte>, _str:Slice<GoByte>):{ var _0 : Pointer<Data>; var _1 : Error; } {
        var _d:Pointer<Data> = Go.pointer((({ _abbrev : _abbrev, _aranges : _aranges, _frame : _frame, _info : _info, _line : _line, _pubnames : _pubnames, _ranges : _ranges, _str : _str, _abbrevCache : new GoMap<GoUInt64, T_abbrevTable>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.named("debug/dwarf.abbrevTable", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.named("debug/dwarf.abbrev", [], stdgo.reflect.Reflect.GoType.named("debug/dwarf.abbrev", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_tag", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.Tag", [], stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }, { name : "_children", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_field", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/dwarf.afield", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_attr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.Attr", [], stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }, { name : "_fmt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.format", [], stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }, { name : "_class", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.Class", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }])))))))), _typeCache : new GoMap<Offset, Type>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("debug/dwarf.Offset", [], stdgo.reflect.Reflect.GoType.basic(uint32_kind)), stdgo.reflect.Reflect.GoType.named("debug/dwarf.Type", [], stdgo.reflect.Reflect.GoType.named("debug/dwarf.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])))))), _typeSigs : new GoMap<GoUInt64, Pointer<T_typeUnit>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/dwarf.typeUnit", [], stdgo.reflect.Reflect.GoType.named("debug/dwarf.typeUnit", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_unit", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.unit", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_base", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.Offset", [], stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }, { name : "_off", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.Offset", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_data", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_atable", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.abbrevTable", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.named("debug/dwarf.abbrev", [], stdgo.reflect.Reflect.GoType.named("debug/dwarf.abbrev", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_tag", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.Tag", [], stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }, { name : "_children", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_field", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/dwarf.afield", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_attr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.Attr", [], stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }, { name : "_fmt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.format", [], stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }, { name : "_class", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.Class", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }]))))) }, { name : "_asize", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "_vers", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "_utype", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "_is64", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }])) }, { name : "_toff", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.Offset", [], stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }, { name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_cache", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/dwarf.Type", [], stdgo.reflect.Reflect.GoType.named("debug/dwarf.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))))))), _addr : new Slice<GoUInt8>().nil(), _lineStr : new Slice<GoUInt8>().nil(), _strOffsets : new Slice<GoUInt8>().nil(), _rngLists : new Slice<GoUInt8>().nil(), _bigEndian : false, _order : ((null : stdgo.encoding.binary.Binary.ByteOrder)), _unit : new Slice<T_unit>().nil() } : Data)));
        if (_d.value._info.length < ((6 : GoInt))) {
            return { _0 : new Pointer<Data>().nil(), _1 : new DecodeError("info", new Offset(_d.value._info.length), "too short").__copy__() };
        };
        var _offset:GoInt = ((4 : GoInt));
        if (_d.value._info[((0 : GoInt))] == ((255 : GoUInt8)) && _d.value._info[((1 : GoInt))] == ((255 : GoUInt8)) && _d.value._info[((2 : GoInt))] == ((255 : GoUInt8)) && _d.value._info[((3 : GoInt))] == ((255 : GoUInt8))) {
            if (_d.value._info.length < ((14 : GoInt))) {
                return { _0 : new Pointer<Data>().nil(), _1 : new DecodeError("info", new Offset(_d.value._info.length), "too short").__copy__() };
            };
            _offset = ((12 : GoInt));
        };
        var _x:GoUInt8 = _d.value._info[_offset], _y:GoUInt8 = _d.value._info[_offset + ((1 : GoInt))];
        if (_x == ((0 : GoUInt8)) && _y == ((0 : GoUInt8))) {
            return { _0 : new Pointer<Data>().nil(), _1 : new DecodeError("info", new Offset(((4 : GoUInt32))), "unsupported version 0").__copy__() };
        } else if (_x == ((0 : GoUInt8))) {
            _d.value._bigEndian = true;
            _d.value._order = stdgo.encoding.binary.Binary.bigEndian.__copy__();
        } else if (_y == ((0 : GoUInt8))) {
            _d.value._bigEndian = false;
            _d.value._order = stdgo.encoding.binary.Binary.littleEndian.__copy__();
        } else {
            return { _0 : new Pointer<Data>().nil(), _1 : new DecodeError("info", new Offset(((4 : GoUInt32))), "cannot determine byte order").__copy__() };
        };
        var __tmp__ = _d.value._parseUnits(), _u:Slice<T_unit> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<Data>().nil(), _1 : _err };
        };
        _d.value._unit = _u;
        return { _0 : _d, _1 : ((null : stdgo.Error)) };
    }
function _zeroArray(_t:Pointer<Type>):Void {
        var _at:Pointer<ArrayType> = (((_t.value).__underlying__().value : ArrayType));
        if (_at.value.type.size() == ((0 : GoInt64))) {
            return;
        };
        var _tt:ArrayType = _at.value.__copy__();
        _tt.count = ((0 : GoInt64));
        _t.value = Go.pointer(_tt).value;
    }
class T_buf_extension_fields {
    public function _uint8(__tmp__):GoUInt8 return __tmp__._uint8();
    public function _bytes(__tmp__, _n:GoInt):Slice<GoByte> return __tmp__._bytes(_n);
    public function _skip(__tmp__, _n:GoInt):Void __tmp__._skip(_n);
    public function _string(__tmp__):GoString return __tmp__._string();
    public function _uint16(__tmp__):GoUInt16 return __tmp__._uint16();
    public function _uint24(__tmp__):GoUInt32 return __tmp__._uint24();
    public function _uint32(__tmp__):GoUInt32 return __tmp__._uint32();
    public function _uint64(__tmp__):GoUInt64 return __tmp__._uint64();
    public function _varint(__tmp__):{ var _0 : GoUInt64; var _1 : GoUInt; } return __tmp__._varint();
    public function _uint(__tmp__):GoUInt64 return __tmp__._uint();
    public function _int(__tmp__):GoInt64 return __tmp__._int();
    public function _addr(__tmp__):GoUInt64 return __tmp__._addr();
    public function _unitLength(__tmp__):{ var _0 : Offset; var _1 : Bool; } return __tmp__._unitLength();
    public function _error(__tmp__, _s:GoString):Void __tmp__._error(_s);
    public function _entry(__tmp__, _cu:Pointer<Entry>, _atab:T_abbrevTable, _ubase:Offset, _vers:GoInt):Pointer<Entry> return __tmp__._entry(_cu, _atab, _ubase, _vers);
}
@:structInit class T_delayed__entry_0 {
    public var _idx : GoInt = ((0 : GoInt));
    public var _off : GoUInt64 = ((0 : GoUInt64));
    public var _fmt : T_format = new T_format();
    public function new(?_idx:GoInt, ?_off:GoUInt64, ?_fmt:T_format) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_idx) + " " + Go.string(_off) + " " + Go.string(_fmt) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_delayed__entry_0(_idx, _off, _fmt);
    }
    public function __set__(__tmp__) {
        this._idx = __tmp__._idx;
        this._off = __tmp__._off;
        this._fmt = __tmp__._fmt;
        return this;
    }
}
class T_unknownFormat_extension_fields {
    public function _version(__tmp__):GoInt return __tmp__._version();
    public function _dwarf64(__tmp__):{ var _0 : Bool; var _1 : Bool; } return __tmp__._dwarf64();
    public function _addrsize(__tmp__):GoInt return __tmp__._addrsize();
}
class DecodeError_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
}
class Attr_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class Tag_extension_fields {
    public function goString(__tmp__):GoString return __tmp__.goString();
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class Entry_extension_fields {
    public function val(__tmp__, _a:Attr):AnyInterface return __tmp__.val(_a);
    public function attrField(__tmp__, _a:Attr):Pointer<Field> return __tmp__.attrField(_a);
}
class Class__extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class Reader_extension_fields {
    public function addressSize(__tmp__):GoInt return __tmp__.addressSize();
    public function byteOrder(__tmp__):stdgo.encoding.binary.Binary.ByteOrder return __tmp__.byteOrder();
    public function seek(__tmp__, _off:Offset):Void __tmp__.seek(_off);
    public function _maybeNextUnit(__tmp__):Void __tmp__._maybeNextUnit();
    public function _nextUnit(__tmp__):Void __tmp__._nextUnit();
    public function next(__tmp__):{ var _0 : Pointer<Entry>; var _1 : Error; } return __tmp__.next();
    public function skipChildren(__tmp__):Void __tmp__.skipChildren();
    public function _clone(__tmp__):T_typeReader return __tmp__._clone();
    public function _offset(__tmp__):Offset return __tmp__._offset();
    public function seekPC(__tmp__, _pc:GoUInt64):{ var _0 : Pointer<Entry>; var _1 : Error; } return __tmp__.seekPC(_pc);
}
class LineReader_extension_fields {
    public function _readHeader(__tmp__, _compDir:GoString):Error return __tmp__._readHeader(_compDir);
    public function _readLNCTFormat(__tmp__):Slice<T_lnctForm> return __tmp__._readLNCTFormat();
    public function _readLNCT(__tmp__, _s:Slice<T_lnctForm>, _dwarf64:Bool):{ var _0 : GoString; var _1 : GoUInt64; var _2 : GoUInt64; var _3 : Error; } return __tmp__._readLNCT(_s, _dwarf64);
    public function _readFileEntry(__tmp__):{ var _0 : Bool; var _1 : Error; } return __tmp__._readFileEntry();
    public function _updateFile(__tmp__):Void __tmp__._updateFile();
    public function next(__tmp__, _entry:Pointer<LineEntry>):Error return __tmp__.next(_entry);
    public function _step(__tmp__, _entry:Pointer<LineEntry>):Bool return __tmp__._step(_entry);
    public function _advancePC(__tmp__, _opAdvance:GoInt):Void __tmp__._advancePC(_opAdvance);
    public function tell(__tmp__):LineReaderPos return __tmp__.tell();
    public function seek(__tmp__, _pos:LineReaderPos):Void __tmp__.seek(_pos);
    public function reset(__tmp__):Void __tmp__.reset();
    public function _resetState(__tmp__):Void __tmp__._resetState();
    public function files(__tmp__):Slice<Pointer<LineFile>> return __tmp__.files();
    public function seekPC(__tmp__, _pc:GoUInt64, _entry:Pointer<LineEntry>):Error return __tmp__.seekPC(_pc, _entry);
}
class Data_extension_fields {
    public function _parseAbbrev(__tmp__, _off:GoUInt64, _vers:GoInt):{ var _0 : T_abbrevTable; var _1 : Error; } return __tmp__._parseAbbrev(_off, _vers);
    public function reader(__tmp__):Pointer<Reader> return __tmp__.reader();
    public function ranges(__tmp__, _e:Pointer<Entry>):{ var _0 : Slice<GoArray<GoUInt64>>; var _1 : Error; } return __tmp__.ranges(_e);
    public function _baseAddressForEntry(__tmp__, _e:Pointer<Entry>):{ var _0 : Pointer<Entry>; var _1 : GoUInt64; var _2 : Error; } return __tmp__._baseAddressForEntry(_e);
    public function _dwarf2Ranges(__tmp__, _u:Pointer<T_unit>, _base:GoUInt64, _ranges:GoInt64, _ret:Slice<GoArray<GoUInt64>>):{ var _0 : Slice<GoArray<GoUInt64>>; var _1 : Error; } return __tmp__._dwarf2Ranges(_u, _base, _ranges, _ret);
    public function _dwarf5Ranges(__tmp__, _u:Pointer<T_unit>, _cu:Pointer<Entry>, _base:GoUInt64, _ranges:GoInt64, _ret:Slice<GoArray<GoUInt64>>):{ var _0 : Slice<GoArray<GoUInt64>>; var _1 : Error; } return __tmp__._dwarf5Ranges(_u, _cu, _base, _ranges, _ret);
    public function _debugAddr(__tmp__, _format:T_dataFormat, _addrBase:GoUInt64, _idx:GoUInt64):{ var _0 : GoUInt64; var _1 : Error; } return __tmp__._debugAddr(_format, _addrBase, _idx);
    public function lineReader(__tmp__, _cu:Pointer<Entry>):{ var _0 : Pointer<LineReader>; var _1 : Error; } return __tmp__.lineReader(_cu);
    public function addTypes(__tmp__, _name:GoString, _types:Slice<GoByte>):Error return __tmp__.addTypes(_name, _types);
    public function addSection(__tmp__, _name:GoString, _contents:Slice<GoByte>):Error return __tmp__.addSection(_name, _contents);
    public function type(__tmp__, _off:Offset):{ var _0 : Type; var _1 : Error; } return __tmp__.type(_off);
    public function _readType(__tmp__, _name:GoString, _r:T_typeReader, _off:Offset, _typeCache:GoMap<Offset, Type>, _fixups:Pointer<T_typeFixer>):{ var _0 : Type; var _1 : Error; } return __tmp__._readType(_name, _r, _off, _typeCache, _fixups);
    public function _parseTypes(__tmp__, _name:GoString, _types:Slice<GoByte>):Error return __tmp__._parseTypes(_name, _types);
    public function _sigToType(__tmp__, _sig:GoUInt64):{ var _0 : Type; var _1 : Error; } return __tmp__._sigToType(_sig);
    public function _parseUnits(__tmp__):{ var _0 : Slice<T_unit>; var _1 : Error; } return __tmp__._parseUnits();
    public function _offsetToUnit(__tmp__, _off:Offset):GoInt return __tmp__._offsetToUnit(_off);
}
class CommonType_extension_fields {
    public function common(__tmp__):Pointer<CommonType> return __tmp__.common();
    public function size(__tmp__):GoInt64 return __tmp__.size();
}
class BasicType_extension_fields {
    public function basic(__tmp__):Pointer<BasicType> return __tmp__.basic();
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class QualType_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function size(__tmp__):GoInt64 return __tmp__.size();
}
class ArrayType_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function size(__tmp__):GoInt64 return __tmp__.size();
}
class VoidType_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class PtrType_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class StructType_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function defn(__tmp__):GoString return __tmp__.defn();
}
class EnumType_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class FuncType_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class DotDotDotType_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class TypedefType_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function size(__tmp__):GoInt64 return __tmp__.size();
}
class UnsupportedType_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class T_typeFixer_extension_fields {
    public function _recordArrayType(__tmp__, _t:Pointer<Type>):Void __tmp__._recordArrayType(_t);
    public function _apply(__tmp__):Void __tmp__._apply();
}
class T_typeUnitReader_extension_fields {
    public function seek(__tmp__, _off:Offset):Void __tmp__.seek(_off);
    public function addressSize(__tmp__):GoInt return __tmp__.addressSize();
    public function next(__tmp__):{ var _0 : Pointer<Entry>; var _1 : Error; } return __tmp__.next();
    public function _clone(__tmp__):T_typeReader return __tmp__._clone();
    public function _offset(__tmp__):Offset return __tmp__._offset();
}
class T_unit_extension_fields {
    public function _version(__tmp__):GoInt return __tmp__._version();
    public function _dwarf64(__tmp__):{ var _0 : Bool; var _1 : Bool; } return __tmp__._dwarf64();
    public function _addrsize(__tmp__):GoInt return __tmp__._addrsize();
}
