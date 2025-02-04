package stdgo._internal.debug.plan9obj;
function _walksymtab(_data:stdgo.Slice<stdgo.GoUInt8>, _ptrsz:stdgo.GoInt, _fn:stdgo._internal.debug.plan9obj.Plan9obj_t_sym.T_sym -> stdgo.Error):stdgo.Error {
        var _order:stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian);
        var _s:stdgo._internal.debug.plan9obj.Plan9obj_t_sym.T_sym = ({} : stdgo._internal.debug.plan9obj.Plan9obj_t_sym.T_sym);
        var _p = _data;
        while (((_p.length) >= (4 : stdgo.GoInt) : Bool)) {
            if (((_p.length) < _ptrsz : Bool)) {
                return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.plan9obj.Plan9obj_t_formaterror.T_formatError((_data.length), ("unexpected EOF" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.plan9obj.Plan9obj_t_formaterror.T_formatError)) : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_t_formaterror.T_formatError>));
            };
            if (_ptrsz == ((8 : stdgo.GoInt))) {
                _s._value = _order.uint64((_p.__slice__((0 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                _p = (_p.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            } else {
                _s._value = (_order.uint32((_p.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
                _p = (_p.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            if (((_p.length) < (1 : stdgo.GoInt) : Bool)) {
                return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.plan9obj.Plan9obj_t_formaterror.T_formatError((_data.length), ("unexpected EOF" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.plan9obj.Plan9obj_t_formaterror.T_formatError)) : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_t_formaterror.T_formatError>));
            };
            var _typ = (_p[(0 : stdgo.GoInt)] & (127 : stdgo.GoUInt8) : stdgo.GoUInt8);
            _s._typ = _typ;
            _p = (_p.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            var _nnul:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                _i = (0 : stdgo.GoInt);
                while ((_i < (_p.length) : Bool)) {
                    if (_p[(_i : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                        _nnul = (1 : stdgo.GoInt);
                        break;
                    };
                    _i++;
                };
            };
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _typ;
                        if (__value__ == ((122 : stdgo.GoUInt8)) || __value__ == ((90 : stdgo.GoUInt8))) {
                            _p = (_p.__slice__((_i + _nnul : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                            {
                                _i = (0 : stdgo.GoInt);
                                while (((_i + (2 : stdgo.GoInt) : stdgo.GoInt) <= (_p.length) : Bool)) {
                                    if (((_p[(_i : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) && (_p[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool)) {
                                        _nnul = (2 : stdgo.GoInt);
                                        break;
                                    };
                                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                                };
                            };
                            break;
                        };
                    };
                    break;
                };
            };
            if (((_p.length) < (_i + _nnul : stdgo.GoInt) : Bool)) {
                return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.plan9obj.Plan9obj_t_formaterror.T_formatError((_data.length), ("unexpected EOF" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.plan9obj.Plan9obj_t_formaterror.T_formatError)) : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_t_formaterror.T_formatError>));
            };
            _s._name = (_p.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>);
            _i = (_i + (_nnul) : stdgo.GoInt);
            _p = (_p.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
            _fn(_s?.__copy__());
        };
        return (null : stdgo.Error);
    }
