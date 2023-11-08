package stdgo.internal.bytealg;
/**
    // Offsets into internal/cpu records for use in assembly.
    
    
**/
final _offsetX86HasSSE42 : stdgo.StdGoTypes.GoUIntptr = stdgo.unsafe.Unsafe.offsetof_(stdgo.Go.toInterface(stdgo.internal.cpu.Cpu.x86.hasSSE42));
/**
    // Offsets into internal/cpu records for use in assembly.
    
    
**/
final _offsetX86HasAVX2 : stdgo.StdGoTypes.GoUIntptr = stdgo.unsafe.Unsafe.offsetof_(stdgo.Go.toInterface(stdgo.internal.cpu.Cpu.x86.hasAVX2));
/**
    // Offsets into internal/cpu records for use in assembly.
    
    
**/
final _offsetX86HasPOPCNT : stdgo.StdGoTypes.GoUIntptr = stdgo.unsafe.Unsafe.offsetof_(stdgo.Go.toInterface(stdgo.internal.cpu.Cpu.x86.hasPOPCNT));
/**
    // Offsets into internal/cpu records for use in assembly.
    
    
**/
final _offsetS390xHasVX : stdgo.StdGoTypes.GoUIntptr = stdgo.unsafe.Unsafe.offsetof_(stdgo.Go.toInterface(stdgo.internal.cpu.Cpu.s390x.hasVX));
/**
    // Offsets into internal/cpu records for use in assembly.
    
    
**/
final _offsetPPC64HasPOWER9 : stdgo.StdGoTypes.GoUIntptr = stdgo.unsafe.Unsafe.offsetof_(stdgo.Go.toInterface(stdgo.internal.cpu.Cpu.ppc64.isPOWER9));
/**
    // MaxLen is the maximum length of the string to be searched for (argument b) in Index.
    // If MaxLen is not 0, make sure MaxLen >= 4.
    
    
**/
var maxLen = (0 : stdgo.StdGoTypes.GoInt);
/**
    // PrimeRK is the prime base used in Rabin-Karp algorithm.
    
    
**/
final primeRK : stdgo.StdGoTypes.GoUInt64 = (16777619i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final maxBruteForce : stdgo.StdGoTypes.GoUInt64 = (0i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // HashStrBytes returns the hash and the appropriate multiplicative
    // factor for use in Rabin-Karp algorithm.
**/
function hashStrBytes(_sep:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; } {
        var _hash:stdgo.StdGoTypes.GoUInt32 = (0u32 : stdgo.StdGoTypes.GoUInt32);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (_sep.length), _i++, {
                _hash = (_hash * (16777619u32 : stdgo.StdGoTypes.GoUInt32)) + (_sep[(_i : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt32);
            });
        };
        var __0:stdgo.StdGoTypes.GoUInt32 = (1u32 : stdgo.StdGoTypes.GoUInt32), __1:stdgo.StdGoTypes.GoUInt32 = (16777619u32 : stdgo.StdGoTypes.GoUInt32), _sq:stdgo.StdGoTypes.GoUInt32 = __1, _pow:stdgo.StdGoTypes.GoUInt32 = __0;
        {
            var _i:stdgo.StdGoTypes.GoInt = (_sep.length);
            stdgo.Go.cfor(_i > (0 : stdgo.StdGoTypes.GoInt), _i = _i >> ((1i64 : stdgo.StdGoTypes.GoUInt64)), {
                if (_i & (1 : stdgo.StdGoTypes.GoInt) != ((0 : stdgo.StdGoTypes.GoInt))) {
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
function hashStr(_sep:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; } {
        var _hash:stdgo.StdGoTypes.GoUInt32 = (0u32 : stdgo.StdGoTypes.GoUInt32);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (_sep.length), _i++, {
                _hash = (_hash * (16777619u32 : stdgo.StdGoTypes.GoUInt32)) + (_sep[(_i : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt32);
            });
        };
        var __0:stdgo.StdGoTypes.GoUInt32 = (1u32 : stdgo.StdGoTypes.GoUInt32), __1:stdgo.StdGoTypes.GoUInt32 = (16777619u32 : stdgo.StdGoTypes.GoUInt32), _sq:stdgo.StdGoTypes.GoUInt32 = __1, _pow:stdgo.StdGoTypes.GoUInt32 = __0;
        {
            var _i:stdgo.StdGoTypes.GoInt = (_sep.length);
            stdgo.Go.cfor(_i > (0 : stdgo.StdGoTypes.GoInt), _i = _i >> ((1i64 : stdgo.StdGoTypes.GoUInt64)), {
                if (_i & (1 : stdgo.StdGoTypes.GoInt) != ((0 : stdgo.StdGoTypes.GoInt))) {
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
function hashStrRevBytes(_sep:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; } {
        var _hash:stdgo.StdGoTypes.GoUInt32 = (0u32 : stdgo.StdGoTypes.GoUInt32);
        {
            var _i:stdgo.StdGoTypes.GoInt = (_sep.length) - (1 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i >= (0 : stdgo.StdGoTypes.GoInt), _i--, {
                _hash = (_hash * (16777619u32 : stdgo.StdGoTypes.GoUInt32)) + (_sep[(_i : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt32);
            });
        };
        var __0:stdgo.StdGoTypes.GoUInt32 = (1u32 : stdgo.StdGoTypes.GoUInt32), __1:stdgo.StdGoTypes.GoUInt32 = (16777619u32 : stdgo.StdGoTypes.GoUInt32), _sq:stdgo.StdGoTypes.GoUInt32 = __1, _pow:stdgo.StdGoTypes.GoUInt32 = __0;
        {
            var _i:stdgo.StdGoTypes.GoInt = (_sep.length);
            stdgo.Go.cfor(_i > (0 : stdgo.StdGoTypes.GoInt), _i = _i >> ((1i64 : stdgo.StdGoTypes.GoUInt64)), {
                if (_i & (1 : stdgo.StdGoTypes.GoInt) != ((0 : stdgo.StdGoTypes.GoInt))) {
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
function hashStrRev(_sep:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; } {
        var _hash:stdgo.StdGoTypes.GoUInt32 = (0u32 : stdgo.StdGoTypes.GoUInt32);
        {
            var _i:stdgo.StdGoTypes.GoInt = (_sep.length) - (1 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i >= (0 : stdgo.StdGoTypes.GoInt), _i--, {
                _hash = (_hash * (16777619u32 : stdgo.StdGoTypes.GoUInt32)) + (_sep[(_i : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt32);
            });
        };
        var __0:stdgo.StdGoTypes.GoUInt32 = (1u32 : stdgo.StdGoTypes.GoUInt32), __1:stdgo.StdGoTypes.GoUInt32 = (16777619u32 : stdgo.StdGoTypes.GoUInt32), _sq:stdgo.StdGoTypes.GoUInt32 = __1, _pow:stdgo.StdGoTypes.GoUInt32 = __0;
        {
            var _i:stdgo.StdGoTypes.GoInt = (_sep.length);
            stdgo.Go.cfor(_i > (0 : stdgo.StdGoTypes.GoInt), _i = _i >> ((1i64 : stdgo.StdGoTypes.GoUInt64)), {
                if (_i & (1 : stdgo.StdGoTypes.GoInt) != ((0 : stdgo.StdGoTypes.GoInt))) {
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
function indexRabinKarpBytes(_s:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _sep:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.StdGoTypes.GoInt {
        var __tmp__ = hashStrBytes(_sep), _hashsep:stdgo.StdGoTypes.GoUInt32 = __tmp__._0, _pow:stdgo.StdGoTypes.GoUInt32 = __tmp__._1;
        var _n:stdgo.StdGoTypes.GoInt = (_sep.length);
        var _h:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _n, _i++, {
                _h = (_h * (16777619u32 : stdgo.StdGoTypes.GoUInt32)) + (_s[(_i : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt32);
            });
        };
        if ((_h == _hashsep) && equal((_s.__slice__(0, _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _sep)) {
            return (0 : stdgo.StdGoTypes.GoInt);
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = _n;
            while (_i < (_s.length)) {
                _h = _h * ((16777619u32 : stdgo.StdGoTypes.GoUInt32));
                _h = _h + ((_s[(_i : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt32));
                _h = _h - (_pow * (_s[(_i - _n : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt32));
                _i++;
                if ((_h == _hashsep) && equal((_s.__slice__(_i - _n, _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _sep)) {
                    return _i - _n;
                };
            };
        };
        return (-1 : stdgo.StdGoTypes.GoInt);
    }
/**
    // IndexRabinKarp uses the Rabin-Karp search algorithm to return the index of the
    // first occurrence of substr in s, or -1 if not present.
**/
function indexRabinKarp(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.StdGoTypes.GoInt {
        var __tmp__ = hashStr(_substr), _hashss:stdgo.StdGoTypes.GoUInt32 = __tmp__._0, _pow:stdgo.StdGoTypes.GoUInt32 = __tmp__._1;
        var _n:stdgo.StdGoTypes.GoInt = (_substr.length);
        var _h:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _n, _i++, {
                _h = (_h * (16777619u32 : stdgo.StdGoTypes.GoUInt32)) + (_s[(_i : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt32);
            });
        };
        if ((_h == _hashss) && ((_s.__slice__(0, _n) : stdgo.GoString) == _substr)) {
            return (0 : stdgo.StdGoTypes.GoInt);
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = _n;
            while (_i < (_s.length)) {
                _h = _h * ((16777619u32 : stdgo.StdGoTypes.GoUInt32));
                _h = _h + ((_s[(_i : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt32));
                _h = _h - (_pow * (_s[(_i - _n : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt32));
                _i++;
                if ((_h == _hashss) && ((_s.__slice__(_i - _n, _i) : stdgo.GoString) == _substr)) {
                    return _i - _n;
                };
            };
        };
        return (-1 : stdgo.StdGoTypes.GoInt);
    }
/**
    // MakeNoZero makes a slice of length and capacity n without zeroing the bytes.
    // It is the caller's responsibility to ensure uninitialized bytes
    // do not leak to the end user.
**/
function makeNoZero(_n:stdgo.StdGoTypes.GoInt):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        final s = new stdgo.Slice<stdgo.StdGoTypes.GoByte>(_n, _n).__setNumber32__();
        return s;
    }
/**
    //go:noescape
**/
function compare(_a:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.StdGoTypes.GoInt {
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
/**
    //go:linkname abigen_runtime_cmpstring runtime.cmpstring
**/
function _abigen_runtime_cmpstring(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.StdGoTypes.GoInt {
        trace("funclit");
        throw "not implemented: _abigen_runtime_cmpstring";
    }
function count(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        var count = 0;
        for (i in 0 ... _b.length.toBasic()) {
            if (_b[i] == _c) count++;
        };
        return count;
    }
function countString(_s:stdgo.GoString, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        var count = 0;
        for (i in 0 ... _s.length.toBasic()) {
            if (_s[i] == _c) count++;
        };
        return count;
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
function equal(_a:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):Bool {
        return (_a : stdgo.GoString) == ((_b : stdgo.GoString));
    }
/**
    //go:linkname abigen_runtime_memequal runtime.memequal
**/
function _abigen_runtime_memequal(_a:stdgo.unsafe.Unsafe.UnsafePointer, _b:stdgo.unsafe.Unsafe.UnsafePointer, _size:stdgo.StdGoTypes.GoUIntptr):Bool {
        trace("funclit");
        throw "not implemented: _abigen_runtime_memequal";
    }
/**
    //go:linkname abigen_runtime_memequal_varlen runtime.memequal_varlen
**/
function _abigen_runtime_memequal_varlen(_a:stdgo.unsafe.Unsafe.UnsafePointer, _b:stdgo.unsafe.Unsafe.UnsafePointer):Bool {
        trace("funclit");
        throw "not implemented: _abigen_runtime_memequal_varlen";
    }
/**
    // Index returns the index of the first instance of b in a, or -1 if b is not present in a.
    // Requires 2 <= len(b) <= MaxLen.
**/
function index(_a:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.StdGoTypes.GoInt {
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
/**
    // IndexString returns the index of the first instance of b in a, or -1 if b is not present in a.
    // Requires 2 <= len(b) <= MaxLen.
**/
function indexString(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.StdGoTypes.GoInt {
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
/**
    // Cutover reports the number of failures of IndexByte we should tolerate
    // before switching over to Index.
    // n is the number of bytes processed so far.
    // See the bytes.Index implementation for details.
**/
function cutover(_n:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoInt {
        throw stdgo.Go.toInterface(("unimplemented" : stdgo.GoString));
    }
/**
    //go:noescape
**/
function indexByte(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        for (i in 0 ... _b.length.toBasic()) {
            if (_b[i] == _c) return i;
        };
        return -1;
    }
/**
    //go:noescape
**/
function indexByteString(_s:stdgo.GoString, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        for (i in 0 ... _s.length.toBasic()) {
            if (_s[i] == _c) return i;
        };
        return -1;
    }
