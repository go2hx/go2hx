package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.Reader_asInterface) class Reader_static_extension {
    @:keep
    @:tdfield
    static public function seekPC( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader>, _pc:stdgo.GoUInt64):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader> = _r;
        var _unit = ((@:checkr _r ?? throw "null pointer dereference")._unit : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L967"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < ((@:checkr (@:checkr _r ?? throw "null pointer dereference")._d ?? throw "null pointer dereference")._unit.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L968"
                if ((_unit >= ((@:checkr (@:checkr _r ?? throw "null pointer dereference")._d ?? throw "null pointer dereference")._unit.length) : Bool)) {
                    _unit = (0 : stdgo.GoInt);
                };
(@:checkr _r ?? throw "null pointer dereference")._err = (null : stdgo.Error);
(@:checkr _r ?? throw "null pointer dereference")._lastChildren = false;
(@:checkr _r ?? throw "null pointer dereference")._unit = _unit;
(@:checkr _r ?? throw "null pointer dereference")._cu = null;
var _u = (stdgo.Go.setRef((@:checkr (@:checkr _r ?? throw "null pointer dereference")._d ?? throw "null pointer dereference")._unit[(_unit : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>);
(@:checkr _r ?? throw "null pointer dereference")._b = stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf((@:checkr _r ?? throw "null pointer dereference")._d, stdgo.Go.asInterface(_u), ("info" : stdgo.GoString), (@:checkr _u ?? throw "null pointer dereference")._off, (@:checkr _u ?? throw "null pointer dereference")._data).__copy__();
var __tmp__ = _r.next(), _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L978"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L979"
                    return { _0 : null, _1 : _err };
                };
//"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L981"
                if ((({
                    final value = _e;
                    (value == null || (value : Dynamic).__nil__);
                }) || ((@:checkr _e ?? throw "null pointer dereference").tag == (0u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L982"
                    return { _0 : null, _1 : stdgo._internal.debug.dwarf.Dwarf_errunknownpc.errUnknownPC };
                };
var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._d.ranges(_e), _ranges:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L985"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L986"
                    return { _0 : null, _1 : _err };
                };
//"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L988"
                for (__3 => _pcs in _ranges) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L989"
                    if (((_pcs[(0 : stdgo.GoInt)] <= _pc : Bool) && (_pc < _pcs[(1 : stdgo.GoInt)] : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L990"
                        return { _0 : _e, _1 : (null : stdgo.Error) };
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L993"
                _unit++;
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L995"
        return { _0 : null, _1 : stdgo._internal.debug.dwarf.Dwarf_errunknownpc.errUnknownPC };
    }
    @:keep
    @:tdfield
    static public function _offset( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader>):stdgo._internal.debug.dwarf.Dwarf_offset.Offset {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L950"
        return (@:checkr _r ?? throw "null pointer dereference")._b._off;
    }
    @:keep
    @:tdfield
    static public function _clone( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader>):stdgo._internal.debug.dwarf.Dwarf_t_typereader.T_typeReader {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L944"
        return stdgo.Go.asInterface((@:checkr _r ?? throw "null pointer dereference")._d.reader());
    }
    @:keep
    @:tdfield
    static public function skipChildren( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L912"
        if ((((@:checkr _r ?? throw "null pointer dereference")._err != null) || !(@:checkr _r ?? throw "null pointer dereference")._lastChildren : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L913"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L920"
        if (((@:checkr _r ?? throw "null pointer dereference")._lastSibling >= (@:checkr _r ?? throw "null pointer dereference")._b._off : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L921"
            _r.seek((@:checkr _r ?? throw "null pointer dereference")._lastSibling);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L922"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L925"
        if (((@:checkr _r ?? throw "null pointer dereference")._lastUnit && (((@:checkr _r ?? throw "null pointer dereference")._unit + (1 : stdgo.GoInt) : stdgo.GoInt) < ((@:checkr (@:checkr _r ?? throw "null pointer dereference")._d ?? throw "null pointer dereference")._unit.length) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L926"
            _r._nextUnit();
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L927"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L930"
        while (true) {
            var __tmp__ = _r.next(), _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L932"
            if (((_err != null || ({
                final value = _e;
                (value == null || (value : Dynamic).__nil__);
            }) : Bool) || ((@:checkr _e ?? throw "null pointer dereference").tag == (0u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L933"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L935"
            if ((@:checkr _e ?? throw "null pointer dereference").children) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L936"
                _r.skipChildren();
            };
        };
    }
    @:keep
    @:tdfield
    static public function next( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader>):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L879"
        if ((@:checkr _r ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L880"
            return { _0 : null, _1 : (@:checkr _r ?? throw "null pointer dereference")._err };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L882"
        _r._maybeNextUnit();
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L883"
        if (((@:checkr _r ?? throw "null pointer dereference")._b._data.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L884"
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        var _u = (stdgo.Go.setRef((@:checkr (@:checkr _r ?? throw "null pointer dereference")._d ?? throw "null pointer dereference")._unit[((@:checkr _r ?? throw "null pointer dereference")._unit : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>);
        var _e = (@:checkr _r ?? throw "null pointer dereference")._b._entry((@:checkr _r ?? throw "null pointer dereference")._cu, (@:checkr _u ?? throw "null pointer dereference")._atable, (@:checkr _u ?? throw "null pointer dereference")._base, (@:checkr _u ?? throw "null pointer dereference")._vers);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L888"
        if ((@:checkr _r ?? throw "null pointer dereference")._b._err != null) {
            (@:checkr _r ?? throw "null pointer dereference")._err = (@:checkr _r ?? throw "null pointer dereference")._b._err;
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L890"
            return { _0 : null, _1 : (@:checkr _r ?? throw "null pointer dereference")._err };
        };
        (@:checkr _r ?? throw "null pointer dereference")._lastUnit = false;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L893"
        if (({
            final value = _e;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            (@:checkr _r ?? throw "null pointer dereference")._lastChildren = (@:checkr _e ?? throw "null pointer dereference").children;
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L895"
            if ((@:checkr _r ?? throw "null pointer dereference")._lastChildren) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_e.val((1u32 : stdgo._internal.debug.dwarf.Dwarf_attr.Attr)) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset)) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), _1 : true };
                    } catch(_) {
                        { _0 : ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset), _1 : false };
                    };
                    (@:checkr _r ?? throw "null pointer dereference")._lastSibling = @:tmpset0 __tmp__._0;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L898"
            if ((((@:checkr _e ?? throw "null pointer dereference").tag == (17u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag)) || ((@:checkr _e ?? throw "null pointer dereference").tag == (60u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag)) : Bool)) {
                (@:checkr _r ?? throw "null pointer dereference")._lastUnit = true;
                (@:checkr _r ?? throw "null pointer dereference")._cu = _e;
            };
        } else {
            (@:checkr _r ?? throw "null pointer dereference")._lastChildren = false;
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L905"
        return { _0 : _e, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _nextUnit( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L868"
        (@:checkr _r ?? throw "null pointer dereference")._unit++;
        var _u = (stdgo.Go.setRef((@:checkr (@:checkr _r ?? throw "null pointer dereference")._d ?? throw "null pointer dereference")._unit[((@:checkr _r ?? throw "null pointer dereference")._unit : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>);
        (@:checkr _r ?? throw "null pointer dereference")._b = stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf((@:checkr _r ?? throw "null pointer dereference")._d, stdgo.Go.asInterface(_u), ("info" : stdgo.GoString), (@:checkr _u ?? throw "null pointer dereference")._off, (@:checkr _u ?? throw "null pointer dereference")._data)?.__copy__();
        (@:checkr _r ?? throw "null pointer dereference")._cu = null;
    }
    @:keep
    @:tdfield
    static public function _maybeNextUnit( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L861"
        while ((((@:checkr _r ?? throw "null pointer dereference")._b._data.length == (0 : stdgo.GoInt)) && (((@:checkr _r ?? throw "null pointer dereference")._unit + (1 : stdgo.GoInt) : stdgo.GoInt) < ((@:checkr (@:checkr _r ?? throw "null pointer dereference")._d ?? throw "null pointer dereference")._unit.length) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L862"
            _r._nextUnit();
        };
    }
    @:keep
    @:tdfield
    static public function seek( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader>, _off:stdgo._internal.debug.dwarf.Dwarf_offset.Offset):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader> = _r;
        var _d = (@:checkr _r ?? throw "null pointer dereference")._d;
        (@:checkr _r ?? throw "null pointer dereference")._err = (null : stdgo.Error);
        (@:checkr _r ?? throw "null pointer dereference")._lastChildren = false;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L835"
        if (_off == ((0u32 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L836"
            if (((@:checkr _d ?? throw "null pointer dereference")._unit.length) == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L837"
                return;
            };
            var _u = (stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._unit[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>);
            (@:checkr _r ?? throw "null pointer dereference")._unit = (0 : stdgo.GoInt);
            (@:checkr _r ?? throw "null pointer dereference")._b = stdgo._internal.debug.dwarf.Dwarf__makebuf._makeBuf((@:checkr _r ?? throw "null pointer dereference")._d, stdgo.Go.asInterface(_u), ("info" : stdgo.GoString), (@:checkr _u ?? throw "null pointer dereference")._off, (@:checkr _u ?? throw "null pointer dereference")._data)?.__copy__();
            (@:checkr _r ?? throw "null pointer dereference")._cu = null;
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L843"
            return;
        };
        var _i = (_d._offsetToUnit(_off) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L847"
        if (_i == ((-1 : stdgo.GoInt))) {
            (@:checkr _r ?? throw "null pointer dereference")._err = stdgo._internal.errors.Errors_new_.new_(("offset out of range" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L849"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L851"
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
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L826"
        return (@:checkr _r ?? throw "null pointer dereference")._b._order;
    }
    @:keep
    @:tdfield
    static public function addressSize( _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L821"
        return (@:checkr (@:checkr _r ?? throw "null pointer dereference")._d ?? throw "null pointer dereference")._unit[((@:checkr _r ?? throw "null pointer dereference")._unit : stdgo.GoInt)]._asize;
    }
}
