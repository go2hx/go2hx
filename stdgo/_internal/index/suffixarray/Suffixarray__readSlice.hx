package stdgo._internal.index.suffixarray;
function _readSlice(_r:stdgo._internal.io.Io_Reader.Reader, _buf:stdgo.Slice<stdgo.GoUInt8>, _data:stdgo._internal.index.suffixarray.Suffixarray_T_ints.T_ints):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _size64:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        {
            var __tmp__ = stdgo._internal.index.suffixarray.Suffixarray__readInt._readInt(_r, _buf);
            _size64 = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _n, _1 : _err };
        };
        if (((((_size64 : stdgo.GoInt) : stdgo.GoInt64) != _size64) || ((_size64 : stdgo.GoInt) < (0 : stdgo.GoInt) : Bool) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.index.suffixarray.Suffixarray__errTooBig._errTooBig };
        };
        var _size = (_size64 : stdgo.GoInt);
        {
            {
                var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r, (_buf.__slice__((10 : stdgo.GoInt), _size) : stdgo.Slice<stdgo.GoUInt8>));
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
        };
        {
            var _p = (10 : stdgo.GoInt);
            stdgo.Go.cfor((_p < _size : Bool), _n++, {
                var __tmp__ = stdgo._internal.encoding.binary.Binary_uvarint.uvarint((_buf.__slice__(_p) : stdgo.Slice<stdgo.GoUInt8>)), _x:stdgo.GoUInt64 = __tmp__._0, _w:stdgo.GoInt = __tmp__._1;
                _data._set(_n, (_x : stdgo.GoInt64));
                _p = (_p + (_w) : stdgo.GoInt);
            });
        };
        return { _0 : _n, _1 : _err };
    }