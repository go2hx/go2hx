package stdgo._internal.hash.crc64;
function _update(_crc:stdgo.GoUInt64, _tab:stdgo.Ref<stdgo._internal.hash.crc64.Crc64_table.Table>, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 {
        stdgo._internal.hash.crc64.Crc64__buildslicing8tablesonce._buildSlicing8TablesOnce();
        _crc = (-1 ^ _crc);
        while (((_p.length) >= (64 : stdgo.GoInt) : Bool)) {
            var _helperTable:stdgo.Ref<stdgo.GoArray<stdgo._internal.hash.crc64.Crc64_table.Table>> = new stdgo.GoArray<stdgo._internal.hash.crc64.Crc64_table.Table>(8, 8, ...[for (i in 0 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) new stdgo._internal.hash.crc64.Crc64_table.Table(256, 256, ...[for (i in 0 ... 256) (0 : stdgo.GoUInt64)])]);
            if (stdgo.Go.toInterface((_tab : stdgo._internal.hash.crc64.Crc64_table.Table)) == stdgo.Go.toInterface(stdgo._internal.hash.crc64.Crc64__slicing8tableecma._slicing8TableECMA[(0 : stdgo.GoInt)])) {
                _helperTable = stdgo._internal.hash.crc64.Crc64__slicing8tableecma._slicing8TableECMA;
            } else if (stdgo.Go.toInterface((_tab : stdgo._internal.hash.crc64.Crc64_table.Table)) == stdgo.Go.toInterface(stdgo._internal.hash.crc64.Crc64__slicing8tableiso._slicing8TableISO[(0 : stdgo.GoInt)])) {
                _helperTable = stdgo._internal.hash.crc64.Crc64__slicing8tableiso._slicing8TableISO;
            } else if (((_p.length) >= (2048 : stdgo.GoInt) : Bool)) {
                _helperTable = stdgo._internal.hash.crc64.Crc64__makeslicingby8table._makeSlicingBy8Table(_tab);
            } else {
                break;
            };
            while (((_p.length) > (8 : stdgo.GoInt) : Bool)) {
                _crc = (_crc ^ (((((((((_p[(0 : stdgo.GoInt)] : stdgo.GoUInt64) | ((_p[(1 : stdgo.GoInt)] : stdgo.GoUInt64) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_p[(2 : stdgo.GoInt)] : stdgo.GoUInt64) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_p[(3 : stdgo.GoInt)] : stdgo.GoUInt64) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_p[(4 : stdgo.GoInt)] : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_p[(5 : stdgo.GoInt)] : stdgo.GoUInt64) << (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_p[(6 : stdgo.GoInt)] : stdgo.GoUInt64) << (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_p[(7 : stdgo.GoInt)] : stdgo.GoUInt64) << (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                _crc = (((((((_helperTable[(7 : stdgo.GoInt)][((_crc & (255i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)] ^ _helperTable[(6 : stdgo.GoInt)][((((_crc >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (255i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)] : stdgo.GoUInt64) ^ _helperTable[(5 : stdgo.GoInt)][((((_crc >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (255i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)] : stdgo.GoUInt64) ^ _helperTable[(4 : stdgo.GoInt)][((((_crc >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (255i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)] : stdgo.GoUInt64) ^ _helperTable[(3 : stdgo.GoInt)][((((_crc >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (255i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)] : stdgo.GoUInt64) ^ _helperTable[(2 : stdgo.GoInt)][((((_crc >> (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (255i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)] : stdgo.GoUInt64) ^ _helperTable[(1 : stdgo.GoInt)][((((_crc >> (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (255i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)] : stdgo.GoUInt64) ^ _helperTable[(0 : stdgo.GoInt)][((_crc >> (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)] : stdgo.GoUInt64);
                _p = (_p.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        for (__0 => _v in _p) {
            _crc = (_tab[(((_crc : stdgo.GoUInt8) ^ _v : stdgo.GoUInt8) : stdgo.GoInt)] ^ ((_crc >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        return (-1 ^ _crc);
    }
