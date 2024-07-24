package stdgo._internal.internal.bytealg;
import stdgo._internal.unsafe.Unsafe;
final _offsetX86HasSSE42 : stdgo.GoUIntptr = stdgo._internal.unsafe.Unsafe.offsetof_(stdgo.Go.toInterface(stdgo._internal.internal.cpu.Cpu.x86.hasSSE42));
final _offsetX86HasAVX2 : stdgo.GoUIntptr = stdgo._internal.unsafe.Unsafe.offsetof_(stdgo.Go.toInterface(stdgo._internal.internal.cpu.Cpu.x86.hasAVX2));
final _offsetX86HasPOPCNT : stdgo.GoUIntptr = stdgo._internal.unsafe.Unsafe.offsetof_(stdgo.Go.toInterface(stdgo._internal.internal.cpu.Cpu.x86.hasPOPCNT));
final _offsetS390xHasVX : stdgo.GoUIntptr = stdgo._internal.unsafe.Unsafe.offsetof_(stdgo.Go.toInterface(stdgo._internal.internal.cpu.Cpu.s390x.hasVX));
final _offsetPPC64HasPOWER9 : stdgo.GoUIntptr = stdgo._internal.unsafe.Unsafe.offsetof_(stdgo.Go.toInterface(stdgo._internal.internal.cpu.Cpu.ppc64.isPOWER9));
var maxLen : stdgo.GoInt = (0 : stdgo.GoInt);
final primeRK : stdgo.GoUInt64 = (16777619i64 : stdgo.GoUInt64);
final maxBruteForce : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
function hashStrBytes(_sep:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } {
        var _hash = (0u32 : stdgo.GoUInt32);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_sep.length) : Bool), _i++, {
                _hash = ((_hash * (16777619u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + (_sep[(_i : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
            });
        };
        var __0:stdgo.GoUInt32 = (1u32 : stdgo.GoUInt32), __1:stdgo.GoUInt32 = (16777619u32 : stdgo.GoUInt32);
var _sq = __1, _pow = __0;
        {
            var _i = (_sep.length);
            stdgo.Go.cfor((_i > (0 : stdgo.GoInt) : Bool), _i = (_i >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt), {
                if ((_i & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    _pow = (_pow * (_sq) : stdgo.GoUInt32);
                };
                _sq = (_sq * (_sq) : stdgo.GoUInt32);
            });
        };
        return { _0 : _hash, _1 : _pow };
    }
function hashStr(_sep:stdgo.GoString):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } {
        var _hash = (0u32 : stdgo.GoUInt32);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_sep.length) : Bool), _i++, {
                _hash = ((_hash * (16777619u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + (_sep[(_i : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
            });
        };
        var __0:stdgo.GoUInt32 = (1u32 : stdgo.GoUInt32), __1:stdgo.GoUInt32 = (16777619u32 : stdgo.GoUInt32);
var _sq = __1, _pow = __0;
        {
            var _i = (_sep.length);
            stdgo.Go.cfor((_i > (0 : stdgo.GoInt) : Bool), _i = (_i >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt), {
                if ((_i & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    _pow = (_pow * (_sq) : stdgo.GoUInt32);
                };
                _sq = (_sq * (_sq) : stdgo.GoUInt32);
            });
        };
        return { _0 : _hash, _1 : _pow };
    }
function hashStrRevBytes(_sep:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } {
        var _hash = (0u32 : stdgo.GoUInt32);
        {
            var _i = ((_sep.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                _hash = ((_hash * (16777619u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + (_sep[(_i : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
            });
        };
        var __0:stdgo.GoUInt32 = (1u32 : stdgo.GoUInt32), __1:stdgo.GoUInt32 = (16777619u32 : stdgo.GoUInt32);
var _sq = __1, _pow = __0;
        {
            var _i = (_sep.length);
            stdgo.Go.cfor((_i > (0 : stdgo.GoInt) : Bool), _i = (_i >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt), {
                if ((_i & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    _pow = (_pow * (_sq) : stdgo.GoUInt32);
                };
                _sq = (_sq * (_sq) : stdgo.GoUInt32);
            });
        };
        return { _0 : _hash, _1 : _pow };
    }
function hashStrRev(_sep:stdgo.GoString):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } {
        var _hash = (0u32 : stdgo.GoUInt32);
        {
            var _i = ((_sep.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                _hash = ((_hash * (16777619u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + (_sep[(_i : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
            });
        };
        var __0:stdgo.GoUInt32 = (1u32 : stdgo.GoUInt32), __1:stdgo.GoUInt32 = (16777619u32 : stdgo.GoUInt32);
var _sq = __1, _pow = __0;
        {
            var _i = (_sep.length);
            stdgo.Go.cfor((_i > (0 : stdgo.GoInt) : Bool), _i = (_i >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt), {
                if ((_i & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    _pow = (_pow * (_sq) : stdgo.GoUInt32);
                };
                _sq = (_sq * (_sq) : stdgo.GoUInt32);
            });
        };
        return { _0 : _hash, _1 : _pow };
    }
function indexRabinKarpBytes(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt {
        var __tmp__ = hashStrBytes(_sep), _hashsep:stdgo.GoUInt32 = __tmp__._0, _pow:stdgo.GoUInt32 = __tmp__._1;
        var _n = (_sep.length);
        var _h:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                _h = ((_h * (16777619u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
            });
        };
        if (((_h == _hashsep) && equal((_s.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>), _sep) : Bool)) {
            return (0 : stdgo.GoInt);
        };
        {
            var _i = _n;
            while ((_i < (_s.length) : Bool)) {
                _h = (_h * ((16777619u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _h = (_h + ((_s[(_i : stdgo.GoInt)] : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _h = (_h - ((_pow * (_s[(_i - _n : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _i++;
                if (((_h == _hashsep) && equal((_s.__slice__((_i - _n : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>), _sep) : Bool)) {
                    return (_i - _n : stdgo.GoInt);
                };
            };
        };
        return (-1 : stdgo.GoInt);
    }
function indexRabinKarp(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt {
        var __tmp__ = hashStr(_substr?.__copy__()), _hashss:stdgo.GoUInt32 = __tmp__._0, _pow:stdgo.GoUInt32 = __tmp__._1;
        var _n = (_substr.length);
        var _h:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                _h = ((_h * (16777619u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
            });
        };
        if (((_h == _hashss) && ((_s.__slice__(0, _n) : stdgo.GoString) == _substr) : Bool)) {
            return (0 : stdgo.GoInt);
        };
        {
            var _i = _n;
            while ((_i < (_s.length) : Bool)) {
                _h = (_h * ((16777619u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _h = (_h + ((_s[(_i : stdgo.GoInt)] : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _h = (_h - ((_pow * (_s[(_i - _n : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _i++;
                if (((_h == _hashss) && ((_s.__slice__((_i - _n : stdgo.GoInt), _i) : stdgo.GoString) == _substr) : Bool)) {
                    return (_i - _n : stdgo.GoInt);
                };
            };
        };
        return (-1 : stdgo.GoInt);
    }
function makeNoZero(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte> {
        final s = new stdgo.Slice<stdgo.GoByte>(_n, _n).__setNumber32__();
        return s;
    }
function compare(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt {
        for (i in 0 ... _a.length.toBasic()) {
            if (i >= _b.length) {
                return 1;
            };
            if (_a[i] < _b[i]) {
                return -1;
            };
            if (_a[i] > _b[i]) {
                return 1;
            };
        };
        if (_a.length < _b.length) {
            return -1;
        };
        return 0;
    }
function _abigen_runtime_cmpstring(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt {
        trace("funclit");
        throw "not implemented: _abigen_runtime_cmpstring";
    }
function count(_b:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.GoInt {
        var count = 0;
        for (i in 0 ... _b.length.toBasic()) {
            if (_b[i] == _c) count++;
        };
        return count;
    }
function countString(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt {
        var count = 0;
        for (i in 0 ... _s.length.toBasic()) {
            if (_s[i] == _c) count++;
        };
        return count;
    }
function equal(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):Bool {
        return (_a : stdgo.GoString) == ((_b : stdgo.GoString));
    }
function _abigen_runtime_memequal(_a:stdgo._internal.unsafe.Unsafe.UnsafePointer, _b:stdgo._internal.unsafe.Unsafe.UnsafePointer, _size:stdgo.GoUIntptr):Bool {
        trace("funclit");
        throw "not implemented: _abigen_runtime_memequal";
    }
function _abigen_runtime_memequal_varlen(_a:stdgo._internal.unsafe.Unsafe.UnsafePointer, _b:stdgo._internal.unsafe.Unsafe.UnsafePointer):Bool {
        trace("funclit");
        throw "not implemented: _abigen_runtime_memequal_varlen";
    }
function index(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt {
        if (_a.length < _b.length) return -1;
        for (i in 0 ... (_a.length - _b.length + 1)) {
            var found = true;
            for (j in 0 ... _b.length) {
                if (_a[i + j] != _b[j]) {
                    found = false;
                    break;
                };
            };
            if (found) {
                return i;
            };
        };
        return -1;
    }
function indexString(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt {
        if (_a == "") {
            return 0;
        };
        if (_b == "") {
            return -1;
        };
        var aLen = _a.length;
        var bLen = _b.length;
        for (i in 0 ... (aLen - bLen + 1)) {
            var found = true;
            for (j in 0 ... bLen) {
                if (_a[i + j] != _b[j]) {
                    found = false;
                    break;
                };
            };
            if (found) {
                return i;
            };
        };
        return -1;
    }
function cutover(_n:stdgo.GoInt):stdgo.GoInt {
        throw stdgo.Go.toInterface(("unimplemented" : stdgo.GoString));
    }
function indexByte(_b:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.GoInt {
        for (i in 0 ... _b.length.toBasic()) {
            if (_b[i] == _c) return i;
        };
        return -1;
    }
function indexByteString(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt {
        for (i in 0 ... _s.length.toBasic()) {
            if (_s[i] == _c) return i;
        };
        return -1;
    }
