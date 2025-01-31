package stdgo._internal.math.big;
import stdgo._internal.strings.Strings;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.testing.Testing;
import stdgo._internal.math.Math;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.encoding.gob.Gob;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.testing.quick.Quick;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.encoding.xml.Xml;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.os.Os;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.sort.Sort;
function _divisors(_m:stdgo.GoInt, _b:stdgo._internal.math.big.Big_Word.Word, _ndigits:stdgo.GoInt, _bb:stdgo._internal.math.big.Big_Word.Word):stdgo.Slice<stdgo._internal.math.big.Big_T_divisor.T_divisor> {
        if (((stdgo._internal.math.big.Big__leafSize._leafSize == (0 : stdgo.GoInt)) || (_m <= stdgo._internal.math.big.Big__leafSize._leafSize : Bool) : Bool)) {
            return (null : stdgo.Slice<stdgo._internal.math.big.Big_T_divisor.T_divisor>);
        };
        var _k = (1 : stdgo.GoInt);
        {
            var _words = (stdgo._internal.math.big.Big__leafSize._leafSize : stdgo.GoInt);
            while (((_words < (_m >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt) : Bool) && (_k < (stdgo._internal.math.big.Big__cacheBase10._cacheBase10._table.length) : Bool) : Bool)) {
                _k++;
                _words = (_words << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
            };
        };
        var _table:stdgo.Slice<stdgo._internal.math.big.Big_T_divisor.T_divisor> = (null : stdgo.Slice<stdgo._internal.math.big.Big_T_divisor.T_divisor>);
        if (_b == ((10u32 : stdgo._internal.math.big.Big_Word.Word))) {
            stdgo._internal.math.big.Big__cacheBase10._cacheBase10.lock();
            _table = (stdgo._internal.math.big.Big__cacheBase10._cacheBase10._table.__slice__((0 : stdgo.GoInt), _k) : stdgo.Slice<stdgo._internal.math.big.Big_T_divisor.T_divisor>);
        } else {
            _table = (new stdgo.Slice<stdgo._internal.math.big.Big_T_divisor.T_divisor>((_k : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_k : stdgo.GoInt).toBasic() > 0 ? (_k : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.math.big.Big_T_divisor.T_divisor)]) : stdgo.Slice<stdgo._internal.math.big.Big_T_divisor.T_divisor>);
        };
        if (_table[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)]._ndigits == ((0 : stdgo.GoInt))) {
            var _larger:stdgo._internal.math.big.Big_T_nat.T_nat = new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0);
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _k : Bool)) {
                    if (_table[(_i : stdgo.GoInt)]._ndigits == ((0 : stdgo.GoInt))) {
                        if (_i == ((0 : stdgo.GoInt))) {
                            _table[(0 : stdgo.GoInt)]._bbb = (new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._expWW(_bb, (stdgo._internal.math.big.Big__leafSize._leafSize : stdgo._internal.math.big.Big_Word.Word));
                            _table[(0 : stdgo.GoInt)]._ndigits = (_ndigits * stdgo._internal.math.big.Big__leafSize._leafSize : stdgo.GoInt);
                        } else {
                            _table[(_i : stdgo.GoInt)]._bbb = (new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._sqr(_table[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]._bbb);
                            _table[(_i : stdgo.GoInt)]._ndigits = ((2 : stdgo.GoInt) * _table[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]._ndigits : stdgo.GoInt);
                        };
                        _larger = (new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._set(_table[(_i : stdgo.GoInt)]._bbb);
                        while (stdgo._internal.math.big.Big__mulAddVWW._mulAddVWW(_larger, _larger, _b, (0u32 : stdgo._internal.math.big.Big_Word.Word)) == ((0u32 : stdgo._internal.math.big.Big_Word.Word))) {
                            _table[(_i : stdgo.GoInt)]._bbb = _table[(_i : stdgo.GoInt)]._bbb._set(_larger);
                            _table[(_i : stdgo.GoInt)]._ndigits++;
                        };
                        _table[(_i : stdgo.GoInt)]._nbits = _table[(_i : stdgo.GoInt)]._bbb._bitLen();
                    };
                    _i++;
                };
            };
        };
        if (_b == ((10u32 : stdgo._internal.math.big.Big_Word.Word))) {
            stdgo._internal.math.big.Big__cacheBase10._cacheBase10.unlock();
        };
        return _table;
    }
