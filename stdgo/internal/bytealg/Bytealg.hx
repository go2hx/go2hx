package stdgo.internal.bytealg;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
/**
    // Offsets into internal/cpu records for use in assembly.
    
    
**/
private final _offsetX86HasSSE42 = stdgo.unsafe.Unsafe.offsetof_(Go.toInterface(stdgo.internal.cpu.Cpu.x86.hasSSE42));
/**
    // Offsets into internal/cpu records for use in assembly.
    
    
**/
private final _offsetX86HasAVX2 = stdgo.unsafe.Unsafe.offsetof_(Go.toInterface(stdgo.internal.cpu.Cpu.x86.hasAVX2));
/**
    // Offsets into internal/cpu records for use in assembly.
    
    
**/
private final _offsetX86HasPOPCNT = stdgo.unsafe.Unsafe.offsetof_(Go.toInterface(stdgo.internal.cpu.Cpu.x86.hasPOPCNT));
/**
    // Offsets into internal/cpu records for use in assembly.
    
    
**/
private final _offsetS390xHasVX = stdgo.unsafe.Unsafe.offsetof_(Go.toInterface(stdgo.internal.cpu.Cpu.s390x.hasVX));
/**
    // Offsets into internal/cpu records for use in assembly.
    
    
**/
private final _offsetPPC64HasPOWER9 = stdgo.unsafe.Unsafe.offsetof_(Go.toInterface(stdgo.internal.cpu.Cpu.ppc64.isPOWER9));
/**
    // MaxLen is the maximum length of the string to be searched for (argument b) in Index.
    // If MaxLen is not 0, make sure MaxLen >= 4.
    
    
**/
var maxLen : GoInt = (0 : GoInt);
/**
    // PrimeRK is the prime base used in Rabin-Karp algorithm.
    
    
**/
final primeRK = (16777619i64 : GoUInt64);
/**
    
    
    
**/
final maxBruteForce = (0i64 : GoUInt64);
/**
    // HashStrBytes returns the hash and the appropriate multiplicative
    // factor for use in Rabin-Karp algorithm.
**/
function hashStrBytes(_sep:Slice<GoByte>):{ var _0 : GoUInt32; var _1 : GoUInt32; } {
        var _hash:GoUInt32 = (0u32 : GoUInt32);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (_sep.length), _i++, {
                _hash = (_hash * (16777619u32 : GoUInt32)) + (_sep[(_i : GoInt)] : GoUInt32);
            });
        };
        var __0:GoUInt32 = (1u32 : GoUInt32), __1:GoUInt32 = (16777619u32 : GoUInt32), _sq:GoUInt32 = __1, _pow:GoUInt32 = __0;
        {
            var _i:GoInt = (_sep.length);
            Go.cfor(_i > (0 : GoInt), _i = _i >> ((1i64 : GoUInt64)), {
                if (_i & (1 : GoInt) != ((0 : GoInt))) {
                    _pow = _pow * (_sq);
                };
                _sq = _sq * (_sq);
            });
        };
        return { _0 : _hash, _1 : _pow };
    }
/**
    // HashStr returns the hash and the appropriate multiplicative
    // factor for use in Rabin-Karp algorithm.
**/
function hashStr(_sep:GoString):{ var _0 : GoUInt32; var _1 : GoUInt32; } {
        var _hash:GoUInt32 = (0u32 : GoUInt32);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (_sep.length), _i++, {
                _hash = (_hash * (16777619u32 : GoUInt32)) + (_sep[(_i : GoInt)] : GoUInt32);
            });
        };
        var __0:GoUInt32 = (1u32 : GoUInt32), __1:GoUInt32 = (16777619u32 : GoUInt32), _sq:GoUInt32 = __1, _pow:GoUInt32 = __0;
        {
            var _i:GoInt = (_sep.length);
            Go.cfor(_i > (0 : GoInt), _i = _i >> ((1i64 : GoUInt64)), {
                if (_i & (1 : GoInt) != ((0 : GoInt))) {
                    _pow = _pow * (_sq);
                };
                _sq = _sq * (_sq);
            });
        };
        return { _0 : _hash, _1 : _pow };
    }
/**
    // HashStrRevBytes returns the hash of the reverse of sep and the
    // appropriate multiplicative factor for use in Rabin-Karp algorithm.
**/
function hashStrRevBytes(_sep:Slice<GoByte>):{ var _0 : GoUInt32; var _1 : GoUInt32; } {
        var _hash:GoUInt32 = (0u32 : GoUInt32);
        {
            var _i:GoInt = (_sep.length) - (1 : GoInt);
            Go.cfor(_i >= (0 : GoInt), _i--, {
                _hash = (_hash * (16777619u32 : GoUInt32)) + (_sep[(_i : GoInt)] : GoUInt32);
            });
        };
        var __0:GoUInt32 = (1u32 : GoUInt32), __1:GoUInt32 = (16777619u32 : GoUInt32), _sq:GoUInt32 = __1, _pow:GoUInt32 = __0;
        {
            var _i:GoInt = (_sep.length);
            Go.cfor(_i > (0 : GoInt), _i = _i >> ((1i64 : GoUInt64)), {
                if (_i & (1 : GoInt) != ((0 : GoInt))) {
                    _pow = _pow * (_sq);
                };
                _sq = _sq * (_sq);
            });
        };
        return { _0 : _hash, _1 : _pow };
    }
/**
    // HashStrRev returns the hash of the reverse of sep and the
    // appropriate multiplicative factor for use in Rabin-Karp algorithm.
**/
function hashStrRev(_sep:GoString):{ var _0 : GoUInt32; var _1 : GoUInt32; } {
        var _hash:GoUInt32 = (0u32 : GoUInt32);
        {
            var _i:GoInt = (_sep.length) - (1 : GoInt);
            Go.cfor(_i >= (0 : GoInt), _i--, {
                _hash = (_hash * (16777619u32 : GoUInt32)) + (_sep[(_i : GoInt)] : GoUInt32);
            });
        };
        var __0:GoUInt32 = (1u32 : GoUInt32), __1:GoUInt32 = (16777619u32 : GoUInt32), _sq:GoUInt32 = __1, _pow:GoUInt32 = __0;
        {
            var _i:GoInt = (_sep.length);
            Go.cfor(_i > (0 : GoInt), _i = _i >> ((1i64 : GoUInt64)), {
                if (_i & (1 : GoInt) != ((0 : GoInt))) {
                    _pow = _pow * (_sq);
                };
                _sq = _sq * (_sq);
            });
        };
        return { _0 : _hash, _1 : _pow };
    }
/**
    // IndexRabinKarpBytes uses the Rabin-Karp search algorithm to return the index of the
    // first occurrence of substr in s, or -1 if not present.
**/
function indexRabinKarpBytes(_s:Slice<GoByte>, _sep:Slice<GoByte>):GoInt {
        var __tmp__ = hashStrBytes(_sep), _hashsep:GoUInt32 = __tmp__._0, _pow:GoUInt32 = __tmp__._1;
        var _n:GoInt = (_sep.length);
        var _h:GoUInt32 = (0 : GoUInt32);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _n, _i++, {
                _h = (_h * (16777619u32 : GoUInt32)) + (_s[(_i : GoInt)] : GoUInt32);
            });
        };
        if ((_h == _hashsep) && equal((_s.__slice__(0, _n) : Slice<GoUInt8>), _sep)) {
            return (0 : GoInt);
        };
        {
            var _i:GoInt = _n;
            while (_i < (_s.length)) {
                _h = _h * ((16777619u32 : GoUInt32));
                _h = _h + ((_s[(_i : GoInt)] : GoUInt32));
                _h = _h - (_pow * (_s[(_i - _n : GoInt)] : GoUInt32));
                _i++;
                if ((_h == _hashsep) && equal((_s.__slice__(_i - _n, _i) : Slice<GoUInt8>), _sep)) {
                    return _i - _n;
                };
            };
        };
        return (-1 : GoInt);
    }
/**
    // IndexRabinKarp uses the Rabin-Karp search algorithm to return the index of the
    // first occurrence of substr in s, or -1 if not present.
**/
function indexRabinKarp(_s:GoString, _substr:GoString):GoInt {
        var __tmp__ = hashStr(_substr), _hashss:GoUInt32 = __tmp__._0, _pow:GoUInt32 = __tmp__._1;
        var _n:GoInt = (_substr.length);
        var _h:GoUInt32 = (0 : GoUInt32);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _n, _i++, {
                _h = (_h * (16777619u32 : GoUInt32)) + (_s[(_i : GoInt)] : GoUInt32);
            });
        };
        if ((_h == _hashss) && ((_s.__slice__(0, _n) : GoString) == _substr)) {
            return (0 : GoInt);
        };
        {
            var _i:GoInt = _n;
            while (_i < (_s.length)) {
                _h = _h * ((16777619u32 : GoUInt32));
                _h = _h + ((_s[(_i : GoInt)] : GoUInt32));
                _h = _h - (_pow * (_s[(_i - _n : GoInt)] : GoUInt32));
                _i++;
                if ((_h == _hashss) && ((_s.__slice__(_i - _n, _i) : GoString) == _substr)) {
                    return _i - _n;
                };
            };
        };
        return (-1 : GoInt);
    }
/**
    //go:noescape
**/
function compare(_a:Slice<GoByte>, _b:Slice<GoByte>):GoInt {
        var l = _a.length;
        if (_b.length < l) {
            l = _b.length;
        };
        function samebytes() {
            if (_a.length < _b.length) {
                return -1;
            };
            if (_a.length > _b.length) {
                return 1;
            };
            return 0;
        };
        if (l == 0 || Go.pointer(_a[0]) == (Go.pointer(_b[0]))) {
            return samebytes();
        };
        for (i in 0 ... l) {
            var c1 = _a[i];
            var c2 = _b[i];
            if (c1 < c2) {
                return -1;
            };
            if (c1 > c2) {
                return 1;
            };
        };
        return samebytes();
    }
/**
    //go:linkname abigen_runtime_cmpstring runtime.cmpstring
**/
private function _abigen_runtime_cmpstring(_a:GoString, _b:GoString):GoInt throw "not implemented: _abigen_runtime_cmpstring";
function count(_b:Slice<GoByte>, _c:GoByte):GoInt {
        var _n:GoInt = (0 : GoInt);
        for (__0 => _x in _b) {
            if (_x == (_c)) {
                _n++;
            };
        };
        return _n;
    }
function countString(_s:GoString, _c:GoByte):GoInt {
        var _n:GoInt = (0 : GoInt);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (_s.length), _i++, {
                if (_s[(_i : GoInt)] == (_c)) {
                    _n++;
                };
            });
        };
        return _n;
    }
/**
    // Equal reports whether a and b
    // are the same length and contain the same bytes.
    // A nil argument is equivalent to an empty slice.
    //
    // Equal is equivalent to bytes.Equal.
    // It is provided here for convenience,
    // because some packages cannot depend on bytes.
**/
function equal(_a:Slice<GoByte>, _b:Slice<GoByte>):Bool {
        return (_a : GoString) == ((_b : GoString));
    }
/**
    //go:linkname abigen_runtime_memequal runtime.memequal
**/
private function _abigen_runtime_memequal(_a:stdgo.unsafe.Unsafe.UnsafePointer, _b:stdgo.unsafe.Unsafe.UnsafePointer, _size:GoUIntptr):Bool throw "not implemented: _abigen_runtime_memequal";
/**
    //go:linkname abigen_runtime_memequal_varlen runtime.memequal_varlen
**/
private function _abigen_runtime_memequal_varlen(_a:stdgo.unsafe.Unsafe.UnsafePointer, _b:stdgo.unsafe.Unsafe.UnsafePointer):Bool throw "not implemented: _abigen_runtime_memequal_varlen";
/**
    // Index returns the index of the first instance of b in a, or -1 if b is not present in a.
    // Requires 2 <= len(b) <= MaxLen.
**/
function index(_a:Slice<GoByte>, _b:Slice<GoByte>):GoInt {
        throw Go.toInterface(("unimplemented" : GoString));
    }
/**
    // IndexString returns the index of the first instance of b in a, or -1 if b is not present in a.
    // Requires 2 <= len(b) <= MaxLen.
**/
function indexString(_a:GoString, _b:GoString):GoInt {
        throw Go.toInterface(("unimplemented" : GoString));
    }
/**
    // Cutover reports the number of failures of IndexByte we should tolerate
    // before switching over to Index.
    // n is the number of bytes processed so far.
    // See the bytes.Index implementation for details.
**/
function cutover(_n:GoInt):GoInt {
        throw Go.toInterface(("unimplemented" : GoString));
    }
/**
    //go:noescape
**/
function indexByte(_b:Slice<GoByte>, _c:GoByte):GoInt {
        for (i in 0 ... _b.length.toBasic()) {
            if (_b[i] == _c) return i;
        };
        return -1;
    }
/**
    //go:noescape
**/
function indexByteString(_s:GoString, _c:GoByte):GoInt {
        for (i in 0 ... _s.length.toBasic()) {
            if (_s[i] == _c) return i;
        };
        return -1;
    }
