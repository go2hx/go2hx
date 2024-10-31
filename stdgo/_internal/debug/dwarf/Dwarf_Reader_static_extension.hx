package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.Reader_asInterface) class Reader_static_extension {
    @:keep
    static public function seekPC( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader>, _pc:stdgo.GoUInt64):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader> = _r;
        var _unit = (_r._unit : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_r._d._unit.length) : Bool)) {
                if ((_unit >= (_r._d._unit.length) : Bool)) {
                    _unit = (0 : stdgo.GoInt);
                };
_r._err = (null : stdgo.Error);
_r._lastChildren = false;
_r._unit = _unit;
_r._cu = null;
var _u = (stdgo.Go.setRef(_r._d._unit[(_unit : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
_r._b = stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_r._d, stdgo.Go.asInterface(_u), ("info" : stdgo.GoString), _u._off, _u._data).__copy__();
var __tmp__ = _r.next(), _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
if ((((_e == null) || (_e : Dynamic).__nil__) || (_e.tag == (0u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag)) : Bool)) {
                    return { _0 : null, _1 : stdgo._internal.debug.dwarf.Dwarf_errUnknownPC.errUnknownPC };
                };
var __tmp__ = _r._d.ranges(_e), _ranges:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
for (__3 => _pcs in _ranges) {
                    if (((_pcs[(0 : stdgo.GoInt)] <= _pc : Bool) && (_pc < _pcs[(1 : stdgo.GoInt)] : Bool) : Bool)) {
                        return { _0 : _e, _1 : (null : stdgo.Error) };
                    };
                };
_unit++;
                _i++;
            };
        };
        return { _0 : null, _1 : stdgo._internal.debug.dwarf.Dwarf_errUnknownPC.errUnknownPC };
    }
    @:keep
    static public function _offset( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader>):stdgo._internal.debug.dwarf.Dwarf_Offset.Offset {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader> = _r;
        return _r._b._off;
    }
    @:keep
    static public function _clone( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader>):stdgo._internal.debug.dwarf.Dwarf_T_typeReader.T_typeReader {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader> = _r;
        return stdgo.Go.asInterface(_r._d.reader());
    }
    @:keep
    static public function skipChildren( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader> = _r;
        if (((_r._err != null) || !_r._lastChildren : Bool)) {
            return;
        };
        if ((_r._lastSibling >= _r._b._off : Bool)) {
            _r.seek(_r._lastSibling);
            return;
        };
        if ((_r._lastUnit && ((_r._unit + (1 : stdgo.GoInt) : stdgo.GoInt) < (_r._d._unit.length) : Bool) : Bool)) {
            _r._nextUnit();
            return;
        };
        while (true) {
            var __tmp__ = _r.next(), _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null || _e == null || (_e : Dynamic).__nil__ : Bool) || (_e.tag == (0u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag)) : Bool)) {
                break;
            };
            if (_e.children) {
                _r.skipChildren();
            };
        };
    }
    @:keep
    static public function next( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader>):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader> = _r;
        if (_r._err != null) {
            return { _0 : null, _1 : _r._err };
        };
        _r._maybeNextUnit();
        if ((_r._b._data.length) == ((0 : stdgo.GoInt))) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        var _u = (stdgo.Go.setRef(_r._d._unit[(_r._unit : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
        var _e = _r._b._entry(_r._cu, _u._atable, _u._base, _u._vers);
        if (_r._b._err != null) {
            _r._err = _r._b._err;
            return { _0 : null, _1 : _r._err };
        };
        _r._lastUnit = false;
        if (_e != null && ((_e : Dynamic).__nil__ == null || !(_e : Dynamic).__nil__)) {
            _r._lastChildren = _e.children;
            if (_r._lastChildren) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_e.val((1u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset)) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), _1 : true };
                    } catch(_) {
                        { _0 : ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), _1 : false };
                    };
                    _r._lastSibling = __tmp__._0;
                };
            };
            if (((_e.tag == (17u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag)) || (_e.tag == (60u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag)) : Bool)) {
                _r._lastUnit = true;
                _r._cu = _e;
            };
        } else {
            _r._lastChildren = false;
        };
        return { _0 : _e, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _nextUnit( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader> = _r;
        _r._unit++;
        var _u = (stdgo.Go.setRef(_r._d._unit[(_r._unit : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
        _r._b = stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_r._d, stdgo.Go.asInterface(_u), ("info" : stdgo.GoString), _u._off, _u._data)?.__copy__();
        _r._cu = null;
    }
    @:keep
    static public function _maybeNextUnit( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader> = _r;
        while (((_r._b._data.length == (0 : stdgo.GoInt)) && ((_r._unit + (1 : stdgo.GoInt) : stdgo.GoInt) < (_r._d._unit.length) : Bool) : Bool)) {
            _r._nextUnit();
        };
    }
    @:keep
    static public function seek( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader>, _off:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader> = _r;
        var _d = _r._d;
        _r._err = (null : stdgo.Error);
        _r._lastChildren = false;
        if (_off == ((0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset))) {
            if ((_d._unit.length) == ((0 : stdgo.GoInt))) {
                return;
            };
            var _u = (stdgo.Go.setRef(_d._unit[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
            _r._unit = (0 : stdgo.GoInt);
            _r._b = stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_r._d, stdgo.Go.asInterface(_u), ("info" : stdgo.GoString), _u._off, _u._data)?.__copy__();
            _r._cu = null;
            return;
        };
        var _i = (_d._offsetToUnit(_off) : stdgo.GoInt);
        if (_i == ((-1 : stdgo.GoInt))) {
            _r._err = stdgo._internal.errors.Errors_new_.new_(("offset out of range" : stdgo.GoString));
            return;
        };
        if (_i != (_r._unit)) {
            _r._cu = null;
        };
        var _u = (stdgo.Go.setRef(_d._unit[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
        _r._unit = _i;
        _r._b = stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_r._d, stdgo.Go.asInterface(_u), ("info" : stdgo.GoString), _off, (_u._data.__slice__((_off - _u._off : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset)) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
    }
    @:keep
    static public function byteOrder( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader>):stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader> = _r;
        return _r._b._order;
    }
    @:keep
    static public function addressSize( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader> = _r;
        return _r._d._unit[(_r._unit : stdgo.GoInt)]._asize;
    }
}
