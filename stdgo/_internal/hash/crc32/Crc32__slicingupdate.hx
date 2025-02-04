package stdgo._internal.hash.crc32;
function _slicingUpdate(_crc:stdgo.GoUInt32, _tab:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_slicing8table.T_slicing8Table>, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
        if (((_p.length) >= (16 : stdgo.GoInt) : Bool)) {
            _crc = (-1 ^ _crc);
            while (((_p.length) > (8 : stdgo.GoInt) : Bool)) {
                _crc = (_crc ^ (((((_p[(0 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_p[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_p[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_p[(3 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _crc = (((((((_tab[(0 : stdgo.GoInt)][(_p[(7 : stdgo.GoInt)] : stdgo.GoInt)] ^ _tab[(1 : stdgo.GoInt)][(_p[(6 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoUInt32) ^ _tab[(2 : stdgo.GoInt)][(_p[(5 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoUInt32) ^ _tab[(3 : stdgo.GoInt)][(_p[(4 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoUInt32) ^ _tab[(4 : stdgo.GoInt)][((_crc >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) ^ _tab[(5 : stdgo.GoInt)][((((_crc >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) ^ _tab[(6 : stdgo.GoInt)][((((_crc >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) ^ _tab[(7 : stdgo.GoInt)][((_crc & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32);
                _p = (_p.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            _crc = (-1 ^ _crc);
        };
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            return _crc;
        };
        return stdgo._internal.hash.crc32.Crc32__simpleupdate._simpleUpdate(_crc, (stdgo.Go.setRef(_tab[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table>), _p);
    }
