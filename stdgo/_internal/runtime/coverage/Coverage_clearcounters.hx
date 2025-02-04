package stdgo._internal.runtime.coverage;
function clearCounters():stdgo.Error {
        var _cl = stdgo._internal.runtime.coverage.Coverage__getcovcounterlist._getCovCounterList();
        if ((_cl.length) == ((0 : stdgo.GoInt))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("program not built with -cover" : stdgo.GoString));
        };
        if (stdgo._internal.runtime.coverage.Coverage__cmode._cmode != ((3 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("ClearCounters invoked for program built with -covermode=%s (please use -covermode=atomic)" : stdgo.GoString), stdgo.Go.toInterface((stdgo._internal.runtime.coverage.Coverage__cmode._cmode.string() : stdgo.GoString)));
        };
        var _sd:stdgo.Slice<stdgo._internal.sync.atomic_.Atomic__uint32.Uint32> = (null : stdgo.Slice<stdgo._internal.sync.atomic_.Atomic__uint32.Uint32>);
        var _bufHdr = ((stdgo.Go.toInterface((stdgo.Go.setRef(_sd) : stdgo.Ref<stdgo.Slice<stdgo._internal.sync.atomic_.Atomic__uint32.Uint32>>)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_sliceheader.SliceHeader", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }, { name : "len", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }, { name : "cap", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.reflect.Reflect_sliceheader.SliceHeader>);
        for (__4 => _c in _cl) {
            (@:checkr _bufHdr ?? throw "null pointer dereference").data = (new stdgo.GoUIntptr((stdgo.Go.toInterface(_c.counters) : stdgo._internal.unsafe.Unsafe.UnsafePointer)) : stdgo.GoUIntptr);
            (@:checkr _bufHdr ?? throw "null pointer dereference").len = (_c.len : stdgo.GoInt);
            (@:checkr _bufHdr ?? throw "null pointer dereference").cap = (_c.len : stdgo.GoInt);
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (_sd.length) : Bool)) {
                    var _sdi = (@:check2 _sd[(_i : stdgo.GoInt)].load() : stdgo.GoUInt32);
if (_sdi == ((0u32 : stdgo.GoUInt32))) {
                        {
                            _i++;
                            continue;
                        };
                    };
var _nCtrs = (_sdi : stdgo.GoUInt32);
{
                        var _j = (0 : stdgo.GoInt);
                        while ((_j < (_nCtrs : stdgo.GoInt) : Bool)) {
                            @:check2 _sd[((_i + (3 : stdgo.GoInt) : stdgo.GoInt) + _j : stdgo.GoInt)].store((0u32 : stdgo.GoUInt32));
                            _j++;
                        };
                    };
_i = (_i + ((((3 : stdgo.GoInt) + (_nCtrs : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                    _i++;
                };
            };
        };
        return (null : stdgo.Error);
    }
