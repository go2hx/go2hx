package stdgo._internal.runtime.coverage;
function _snapshot():stdgo.GoFloat64 {
        var _cl = stdgo._internal.runtime.coverage.Coverage__getcovcounterlist._getCovCounterList();
        if ((_cl.length) == ((0 : stdgo.GoInt))) {
            return (0 : stdgo.GoFloat64);
        };
        var _tot = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _totExec = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        for (__0 => _c in _cl) {
            var _sd = stdgo._internal.unsafe.Unsafe_slice.slice(((stdgo.Go.toInterface(_c.counters) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("_internal.runtime.internal.atomic_.Atomic__uint32.Uint32", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_noCopy", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("_internal.runtime.internal.atomic_.Atomic__t_nocopy.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32>), _c.len);
            _tot = (_tot + ((_sd.length : stdgo.GoUInt64)) : stdgo.GoUInt64);
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (_sd.length) : Bool)) {
                    if (@:check2 _sd[(_i : stdgo.GoInt)].load() == ((0u32 : stdgo.GoUInt32))) {
                        {
                            _i++;
                            continue;
                        };
                    };
var _nCtrs = (@:check2 _sd[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)].load() : stdgo.GoUInt32);
var _cst = (_i + (3 : stdgo.GoInt) : stdgo.GoInt);
if (((_cst + (_nCtrs : stdgo.GoInt) : stdgo.GoInt) > (_sd.length) : Bool)) {
                        break;
                    };
var _counters = (_sd.__slice__(_cst, (_cst + (_nCtrs : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32>);
for (_i => _ in _counters) {
                        if (@:check2 _counters[(_i : stdgo.GoInt)].load() != ((0u32 : stdgo.GoUInt32))) {
                            _totExec++;
                        };
                    };
_i = (_i + ((((3 : stdgo.GoInt) + (_nCtrs : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                    _i++;
                };
            };
        };
        if (_tot == ((0i64 : stdgo.GoUInt64))) {
            return (0 : stdgo.GoFloat64);
        };
        return ((_totExec : stdgo.GoFloat64) / (_tot : stdgo.GoFloat64) : stdgo.GoFloat64);
    }
