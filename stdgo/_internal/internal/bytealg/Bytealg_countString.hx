package stdgo._internal.internal.bytealg;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.internal.cpu.Cpu;
function countString(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoInt {
        var count = 0;
        for (i in 0 ... _s.length.toBasic()) {
            if (_s[i] == _c) count++;
        };
        return count;
    }
