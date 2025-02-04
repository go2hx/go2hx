package stdgo._internal.index.suffixarray;
function _writeSlice(_w:stdgo._internal.io.Io_writer.Writer, _buf:stdgo.Slice<stdgo.GoUInt8>, _data:stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _p = (10 : stdgo.GoInt);
        var _m = (@:check2 _data._len() : stdgo.GoInt);
        while (((_n < _m : Bool) && ((_p + (10 : stdgo.GoInt) : stdgo.GoInt) <= (_buf.length) : Bool) : Bool)) {
            _p = (_p + (stdgo._internal.encoding.binary.Binary_putuvarint.putUvarint((_buf.__slice__(_p) : stdgo.Slice<stdgo.GoUInt8>), (@:check2 _data._get(_n) : stdgo.GoUInt64))) : stdgo.GoInt);
            _n++;
        };
        stdgo._internal.encoding.binary.Binary_putvarint.putVarint(_buf, (_p : stdgo.GoInt64));
        {
            var __tmp__ = _w.write((_buf.__slice__((0 : stdgo.GoInt), _p) : stdgo.Slice<stdgo.GoUInt8>));
            _err = @:tmpset0 __tmp__._1;
        };
        return { _0 : _n, _1 : _err };
    }
