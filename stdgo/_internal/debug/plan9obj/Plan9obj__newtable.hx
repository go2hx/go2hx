package stdgo._internal.debug.plan9obj;
function _newTable(_symtab:stdgo.Slice<stdgo.GoUInt8>, _ptrsz:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.debug.plan9obj.Plan9obj_sym.Sym>; var _1 : stdgo.Error; } {
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err = (stdgo._internal.debug.plan9obj.Plan9obj__walksymtab._walksymtab(_symtab, _ptrsz, function(_s:stdgo._internal.debug.plan9obj.Plan9obj_t_sym.T_sym):stdgo.Error {
            _n++;
            return (null : stdgo.Error);
        }) : stdgo.Error);
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.plan9obj.Plan9obj_sym.Sym>), _1 : _err };
        };
        var _fname = (({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt16, stdgo.GoString>) : stdgo.GoMap<stdgo.GoUInt16, stdgo.GoString>);
        var _syms = (new stdgo.Slice<stdgo._internal.debug.plan9obj.Plan9obj_sym.Sym>((0 : stdgo.GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n ? (0 : stdgo.GoInt).toBasic() : _n : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.plan9obj.Plan9obj_sym.Sym)]) : stdgo.Slice<stdgo._internal.debug.plan9obj.Plan9obj_sym.Sym>);
        _err = stdgo._internal.debug.plan9obj.Plan9obj__walksymtab._walksymtab(_symtab, _ptrsz, function(_s:stdgo._internal.debug.plan9obj.Plan9obj_t_sym.T_sym):stdgo.Error {
            var _n = (_syms.length : stdgo.GoInt);
            _syms = (_syms.__slice__((0 : stdgo.GoInt), (_n + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.debug.plan9obj.Plan9obj_sym.Sym>);
            var _ts = (stdgo.Go.setRef(_syms[(_n : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_sym.Sym>);
            (@:checkr _ts ?? throw "null pointer dereference").type = (_s._typ : stdgo.GoInt32);
            (@:checkr _ts ?? throw "null pointer dereference").value = _s._value;
            {
                final __value__ = _s._typ;
                if (__value__ == ((122 : stdgo.GoUInt8)) || __value__ == ((90 : stdgo.GoUInt8))) {
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < (_s._name.length) : Bool)) {
                            var _eltIdx = (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint16((_s._name.__slice__(_i, (_i + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt16);
var __tmp__ = (_fname != null && _fname.__exists__(_eltIdx) ? { _0 : _fname[_eltIdx], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _elt:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
if (!_ok) {
                                return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.plan9obj.Plan9obj_t_formaterror.T_formatError((-1 : stdgo.GoInt), ("bad filename code" : stdgo.GoString), stdgo.Go.toInterface(_eltIdx)) : stdgo._internal.debug.plan9obj.Plan9obj_t_formaterror.T_formatError)) : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_t_formaterror.T_formatError>));
                            };
{
                                var _n = ((@:checkr _ts ?? throw "null pointer dereference").name.length : stdgo.GoInt);
                                if (((_n > (0 : stdgo.GoInt) : Bool) && ((@:checkr _ts ?? throw "null pointer dereference").name[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                                    (@:checkr _ts ?? throw "null pointer dereference").name = ((@:checkr _ts ?? throw "null pointer dereference").name + (("/" : stdgo.GoString)).__copy__() : stdgo.GoString);
                                };
                            };
(@:checkr _ts ?? throw "null pointer dereference").name = ((@:checkr _ts ?? throw "null pointer dereference").name + (_elt).__copy__() : stdgo.GoString);
                            _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                        };
                    };
                } else {
                    (@:checkr _ts ?? throw "null pointer dereference").name = (_s._name : stdgo.GoString)?.__copy__();
                };
            };
            {
                final __value__ = _s._typ;
                if (__value__ == ((102 : stdgo.GoUInt8))) {
                    _fname[(_s._value : stdgo.GoUInt16)] = (@:checkr _ts ?? throw "null pointer dereference").name?.__copy__();
                };
            };
            return (null : stdgo.Error);
        });
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.plan9obj.Plan9obj_sym.Sym>), _1 : _err };
        };
        return { _0 : _syms, _1 : (null : stdgo.Error) };
    }
