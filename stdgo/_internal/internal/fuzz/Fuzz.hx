package stdgo._internal.internal.fuzz;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.internal.fuzz.Fuzz__coverageenabled._coverageEnabled, __tmp__1 = stdgo._internal.internal.fuzz.Fuzz__coveragesnapshot._coverageSnapshot, __tmp__2 = stdgo._internal.internal.fuzz.Fuzz__encversion1._encVersion1, __tmp__3 = stdgo._internal.internal.fuzz.Fuzz__zerovals._zeroVals, __tmp__4 = stdgo._internal.internal.fuzz.Fuzz__debuginfo._debugInfo, __tmp__5 = stdgo._internal.internal.fuzz.Fuzz__interesting8._interesting8, __tmp__6 = stdgo._internal.internal.fuzz.Fuzz__interesting16._interesting16, __tmp__7 = stdgo._internal.internal.fuzz.Fuzz__interesting32._interesting32, __tmp__8 = stdgo._internal.internal.fuzz.Fuzz__byteslicemutators._byteSliceMutators, __tmp__9 = stdgo._internal.internal.fuzz.Fuzz__errsharedmemclosed._errSharedMemClosed;
            for (__8 => _v in stdgo._internal.internal.fuzz.Fuzz__interesting8._interesting8) {
                stdgo._internal.internal.fuzz.Fuzz__interesting16._interesting16 = (stdgo._internal.internal.fuzz.Fuzz__interesting16._interesting16.__append__((_v : stdgo.GoInt16)));
            };
            for (__9 => _v in stdgo._internal.internal.fuzz.Fuzz__interesting16._interesting16) {
                stdgo._internal.internal.fuzz.Fuzz__interesting32._interesting32 = (stdgo._internal.internal.fuzz.Fuzz__interesting32._interesting32.__append__((_v : stdgo.GoInt32)));
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
