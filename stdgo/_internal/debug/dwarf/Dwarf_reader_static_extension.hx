package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.Reader_asInterface) class Reader_static_extension {
    @:keep
    @:tdfield
    static public function seekPC( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader>, _pc:stdgo.GoUInt64):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader> = _r;
        var _unit = ((@:checkr _r ?? throw "null pointer dereference")._unit : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < ((@:checkr (@:checkr _r ?? throw "null pointer dereference")._d ?? throw "null pointer dereference")._unit.length) : Bool)) {
                if ((_unit >= ((@:checkr (@:checkr _r ?? throw "null pointer dereference")._d ?? throw "null pointer dereference")._unit.length) : Bool)) {
                    _unit = (0 : stdgo.GoInt);
                };
(@:checkr _r ?? throw "null pointer dereference")._err = (null : stdgo.Error);
(@:checkr _r ?? throw "null pointer dereference")._lastChildren = false;
(@:checkr _r ?? throw "null pointer dereference")._unit = _unit;
(@:checkr _r ?? throw "null pointer dereference")._cu = null;
var _u = (stdgo.Go.setRef((@:checkr (@:checkr _r ?? throw "null pointer dereference")._d ?? throw "null pointer dereference")._unit[(_unit : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>);
(@:checkr _r ?? throw "null pointer dereference")._b = stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf((@:checkr _r ?? throw "null pointer dereference")._d, stdgo.Go.asInterface(_u), ("info" : stdgo.GoString), (@:checkr _u ?? throw "null pointer dereference")._off, (@:checkr _u ?? throw "null pointer dereference")._data).__copy__();
var __tmp__ = @:check2r _r.next(), _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
if (((_e == null || (_e : Dynamic).__nil__) || ((@:checkr _e ?? throw "null pointer dereference").tag == (0u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag)) : Bool)) {
                    return { _0 : null, _1 : stdgo._internal.debug.dwarf.Dwarf_errunknownpc.errUnknownPC };
                };
var __tmp__ = @:check2r (@:checkr _r ?? throw "null pointer dereference")._d.ranges(_e), _ranges:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
        return { _0 : null, _1 : stdgo._internal.debug.dwarf.Dwarf_errunknownpc.errUnknownPC };
    }
    @:keep
    @:tdfield
    static public function _offset( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader>):stdgo._internal.debug.dwarf.Dwarf_offset.Offset {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader> = _r;
        return (@:checkr _r ?? throw "null pointer dereference")._b._off;
    }
    @:keep
    @:tdfield
    static public function _clone( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader>):stdgo._internal.debug.dwarf.Dwarf_t_typereader.T_typeReader {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader> = _r;
        return stdgo.Go.asInterface(@:check2r (@:checkr _r ?? throw "null pointer dereference")._d.reader());
    }
    @:keep
    @:tdfield
    static public function skipChildren( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader> = _r;
        if ((((@:checkr _r ?? throw "null pointer dereference")._err != null) || !(@:checkr _r ?? throw "null pointer dereference")._lastChildren : Bool)) {
            return;
        };
        if (((@:checkr _r ?? throw "null pointer dereference")._lastSibling >= (@:checkr _r ?? throw "null pointer dereference")._b._off : Bool)) {
            @:check2r _r.seek((@:checkr _r ?? throw "null pointer dereference")._lastSibling);
            return;
        };
        if (((@:checkr _r ?? throw "null pointer dereference")._lastUnit && (((@:checkr _r ?? throw "null pointer dereference")._unit + (1 : stdgo.GoInt) : stdgo.GoInt) < ((@:checkr (@:checkr _r ?? throw "null pointer dereference")._d ?? throw "null pointer dereference")._unit.length) : Bool) : Bool)) {
            @:check2r _r._nextUnit();
            return;
        };
        while (true) {
            var __tmp__ = @:check2r _r.next(), _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null || (_e == null || (_e : Dynamic).__nil__) : Bool) || ((@:checkr _e ?? throw "null pointer dereference").tag == (0u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag)) : Bool)) {
                break;
            };
            if ((@:checkr _e ?? throw "null pointer dereference").children) {
                @:check2r _r.skipChildren();
            };
        };
    }
    @:keep
    @:tdfield
    static public function next( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader>):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference")._err != null) {
            return { _0 : null, _1 : (@:checkr _r ?? throw "null pointer dereference")._err };
        };
        @:check2r _r._maybeNextUnit();
        if (((@:checkr _r ?? throw "null pointer dereference")._b._data.length) == ((0 : stdgo.GoInt))) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        var _u = (stdgo.Go.setRef((@:checkr (@:checkr _r ?? throw "null pointer dereference")._d ?? throw "null pointer dereference")._unit[((@:checkr _r ?? throw "null pointer dereference")._unit : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>);
        var _e = @:check2 (@:checkr _r ?? throw "null pointer dereference")._b._entry((@:checkr _r ?? throw "null pointer dereference")._cu, (@:checkr _u ?? throw "null pointer dereference")._atable, (@:checkr _u ?? throw "null pointer dereference")._base, (@:checkr _u ?? throw "null pointer dereference")._vers);
        if ((@:checkr _r ?? throw "null pointer dereference")._b._err != null) {
            (@:checkr _r ?? throw "null pointer dereference")._err = (@:checkr _r ?? throw "null pointer dereference")._b._err;
            return { _0 : null, _1 : (@:checkr _r ?? throw "null pointer dereference")._err };
        };
        (@:checkr _r ?? throw "null pointer dereference")._lastUnit = false;
        if ((_e != null && ((_e : Dynamic).__nil__ == null || !(_e : Dynamic).__nil__))) {
            (@:checkr _r ?? throw "null pointer dereference")._lastChildren = (@:checkr _e ?? throw "null pointer dereference").children;
            if ((@:checkr _r ?? throw "null pointer dereference")._lastChildren) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((@:check2r _e.val((1u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset)) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), _1 : true };
                    } catch(_) {
                        { _0 : ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), _1 : false };
                    };
                    (@:checkr _r ?? throw "null pointer dereference")._lastSibling = @:tmpset0 __tmp__._0;
                };
            };
            if ((((@:checkr _e ?? throw "null pointer dereference").tag == (17u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag)) || ((@:checkr _e ?? throw "null pointer dereference").tag == (60u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag)) : Bool)) {
                (@:checkr _r ?? throw "null pointer dereference")._lastUnit = true;
                (@:checkr _r ?? throw "null pointer dereference")._cu = _e;
            };
        } else {
            (@:checkr _r ?? throw "null pointer dereference")._lastChildren = false;
        };
        return { _0 : _e, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _nextUnit( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._unit++;
        var _u = (stdgo.Go.setRef((@:checkr (@:checkr _r ?? throw "null pointer dereference")._d ?? throw "null pointer dereference")._unit[((@:checkr _r ?? throw "null pointer dereference")._unit : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>);
        (@:checkr _r ?? throw "null pointer dereference")._b = stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf((@:checkr _r ?? throw "null pointer dereference")._d, stdgo.Go.asInterface(_u), ("info" : stdgo.GoString), (@:checkr _u ?? throw "null pointer dereference")._off, (@:checkr _u ?? throw "null pointer dereference")._data)?.__copy__();
        (@:checkr _r ?? throw "null pointer dereference")._cu = null;
    }
    @:keep
    @:tdfield
    static public function _maybeNextUnit( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader> = _r;
        while ((((@:checkr _r ?? throw "null pointer dereference")._b._data.length == (0 : stdgo.GoInt)) && (((@:checkr _r ?? throw "null pointer dereference")._unit + (1 : stdgo.GoInt) : stdgo.GoInt) < ((@:checkr (@:checkr _r ?? throw "null pointer dereference")._d ?? throw "null pointer dereference")._unit.length) : Bool) : Bool)) {
            @:check2r _r._nextUnit();
        };
    }
    @:keep
    @:tdfield
    static public function seek( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader>, _off:stdgo._internal.debug.dwarf.Dwarf_offset.Offset):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader> = _r;
        var _d = (@:checkr _r ?? throw "null pointer dereference")._d;
        (@:checkr _r ?? throw "null pointer dereference")._err = (null : stdgo.Error);
        (@:checkr _r ?? throw "null pointer dereference")._lastChildren = false;
        if (_off == ((0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset))) {
            if (((@:checkr _d ?? throw "null pointer dereference")._unit.length) == ((0 : stdgo.GoInt))) {
                return;
            };
            var _u = (stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._unit[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>);
            (@:checkr _r ?? throw "null pointer dereference")._unit = (0 : stdgo.GoInt);
            (@:checkr _r ?? throw "null pointer dereference")._b = stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf((@:checkr _r ?? throw "null pointer dereference")._d, stdgo.Go.asInterface(_u), ("info" : stdgo.GoString), (@:checkr _u ?? throw "null pointer dereference")._off, (@:checkr _u ?? throw "null pointer dereference")._data)?.__copy__();
            (@:checkr _r ?? throw "null pointer dereference")._cu = null;
            return;
        };
        var _i = (@:check2r _d._offsetToUnit(_off) : stdgo.GoInt);
        if (_i == ((-1 : stdgo.GoInt))) {
            (@:checkr _r ?? throw "null pointer dereference")._err = stdgo._internal.errors.Errors_new_.new_(("offset out of range" : stdgo.GoString));
            return;
        };
        if (_i != ((@:checkr _r ?? throw "null pointer dereference")._unit)) {
            (@:checkr _r ?? throw "null pointer dereference")._cu = null;
        };
        var _u = (stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._unit[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>);
        (@:checkr _r ?? throw "null pointer dereference")._unit = _i;
        (@:checkr _r ?? throw "null pointer dereference")._b = stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf((@:checkr _r ?? throw "null pointer dereference")._d, stdgo.Go.asInterface(_u), ("info" : stdgo.GoString), _off, ((@:checkr _u ?? throw "null pointer dereference")._data.__slice__((_off - (@:checkr _u ?? throw "null pointer dereference")._off : stdgo._internal.debug.dwarf.Dwarf_offset.Offset)) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function byteOrder( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader>):stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader> = _r;
        return (@:checkr _r ?? throw "null pointer dereference")._b._order;
    }
    @:keep
    @:tdfield
    static public function addressSize( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader> = _r;
        return (@:checkr (@:checkr _r ?? throw "null pointer dereference")._d ?? throw "null pointer dereference")._unit[((@:checkr _r ?? throw "null pointer dereference")._unit : stdgo.GoInt)]._asize;
    }
}
