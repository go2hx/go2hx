package stdgo._internal.archive.tar;
function _readGNUSparseMap1x0(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo._internal.archive.tar.Tar_t_sparsedatas.T_sparseDatas; var _1 : stdgo.Error; } {
        var __0:stdgo.GoInt64 = (0 : stdgo.GoInt64), __1:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer), __2:stdgo._internal.archive.tar.Tar_t_block.T_block = new stdgo._internal.archive.tar.Tar_t_block.T_block(512, 512, ...[for (i in 0 ... 512) (0 : stdgo.GoUInt8)]);
var _blk = __2, _buf = __1, _cntNewline = __0;
        var _feedTokens = (function(_n:stdgo.GoInt64):stdgo.Error {
            while ((_cntNewline < _n : Bool)) {
                {
                    var __tmp__ = stdgo._internal.archive.tar.Tar__mustreadfull._mustReadFull(_r, (_blk.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
                @:check2 _buf.write((_blk.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                for (__2 => _c in _blk) {
                    if (_c == ((10 : stdgo.GoUInt8))) {
                        _cntNewline++;
                    };
                };
            };
            return (null : stdgo.Error);
        } : stdgo.GoInt64 -> stdgo.Error);
        var _nextToken = (function():stdgo.GoString {
            _cntNewline--;
            var __tmp__ = @:check2 _buf.readString((10 : stdgo.GoUInt8)), _tok:stdgo.GoString = __tmp__._0, __1:stdgo.Error = __tmp__._1;
            return stdgo._internal.strings.Strings_trimright.trimRight(_tok?.__copy__(), ("\n" : stdgo.GoString))?.__copy__();
        } : () -> stdgo.GoString);
        {
            var _err = (_feedTokens((1i64 : stdgo.GoInt64)) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_nextToken()?.__copy__(), (10 : stdgo.GoInt), (0 : stdgo.GoInt)), _numEntries:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null || (_numEntries < (0i64 : stdgo.GoInt64) : Bool) : Bool) || ((((2i64 : stdgo.GoInt64) * _numEntries : stdgo.GoInt64) : stdgo.GoInt) < (_numEntries : stdgo.GoInt) : Bool) : Bool)) {
            return { _0 : null, _1 : stdgo._internal.archive.tar.Tar_errheader.errHeader };
        };
        {
            var _err = (_feedTokens(((2i64 : stdgo.GoInt64) * _numEntries : stdgo.GoInt64)) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var _spd = (new stdgo.Slice<stdgo._internal.archive.tar.Tar_t_sparseentry.T_sparseEntry>((0 : stdgo.GoInt).toBasic(), _numEntries, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _numEntries ? (0 : stdgo.GoInt).toBasic() : _numEntries : stdgo.GoInt).toBasic()) ({} : stdgo._internal.archive.tar.Tar_t_sparseentry.T_sparseEntry)]) : stdgo._internal.archive.tar.Tar_t_sparsedatas.T_sparseDatas);
        {
            var _i = ((0i64 : stdgo.GoInt64) : stdgo.GoInt64);
            while ((_i < _numEntries : Bool)) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_nextToken().__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _offset:stdgo.GoInt64 = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_nextToken().__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _length:stdgo.GoInt64 = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
if (((_err1 != null) || (_err2 != null) : Bool)) {
                    return { _0 : null, _1 : stdgo._internal.archive.tar.Tar_errheader.errHeader };
                };
_spd = (_spd.__append__(({ offset : _offset, length_ : _length } : stdgo._internal.archive.tar.Tar_t_sparseentry.T_sparseEntry)));
                _i++;
            };
        };
        return { _0 : _spd, _1 : (null : stdgo.Error) };
    }
