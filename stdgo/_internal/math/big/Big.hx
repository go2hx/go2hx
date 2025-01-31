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
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.math.big.Big___Accuracy_index.__Accuracy_index, __tmp__1 = stdgo._internal.math.big.Big__pow5tab._pow5tab, __tmp__2 = stdgo._internal.math.big.Big__natOne._natOne, __tmp__3 = stdgo._internal.math.big.Big__intOne._intOne, __tmp__4 = stdgo._internal.math.big.Big__natTwo._natTwo, __tmp__5 = stdgo._internal.math.big.Big__natFive._natFive, __tmp__6 = stdgo._internal.math.big.Big__natTen._natTen, __tmp__7 = stdgo._internal.math.big.Big__karatsubaThreshold._karatsubaThreshold, __tmp__8 = stdgo._internal.math.big.Big__basicSqrThreshold._basicSqrThreshold, __tmp__9 = stdgo._internal.math.big.Big__karatsubaSqrThreshold._karatsubaSqrThreshold, __tmp__10 = stdgo._internal.math.big.Big__errNoDigits._errNoDigits, __tmp__11 = stdgo._internal.math.big.Big__errInvalSep._errInvalSep, __tmp__12 = stdgo._internal.math.big.Big__leafSize._leafSize, __tmp__13 = stdgo._internal.math.big.Big___RoundingMode_index.__RoundingMode_index, __tmp__14 = stdgo._internal.math.big.Big__isRaceBuilder._isRaceBuilder, __tmp__15 = stdgo._internal.math.big.Big__sumVV._sumVV, __tmp__16 = stdgo._internal.math.big.Big__rnd._rnd, __tmp__17 = stdgo._internal.math.big.Big__benchSizes._benchSizes, __tmp__18 = stdgo._internal.math.big.Big__sumVW._sumVW, __tmp__19 = stdgo._internal.math.big.Big__lshVW._lshVW, __tmp__20 = stdgo._internal.math.big.Big__rshVW._rshVW, __tmp__21 = stdgo._internal.math.big.Big__argshlVUIn._argshlVUIn, __tmp__22 = stdgo._internal.math.big.Big__argshlVUr0._argshlVUr0, __tmp__23 = stdgo._internal.math.big.Big__argshlVUr1._argshlVUr1, __tmp__24 = stdgo._internal.math.big.Big__argshlVUrWm1._argshlVUrWm1, __tmp__25 = stdgo._internal.math.big.Big__argshlVU._argshlVU, __tmp__26 = stdgo._internal.math.big.Big__argshrVUIn._argshrVUIn, __tmp__27 = stdgo._internal.math.big.Big__argshrVUr0._argshrVUr0, __tmp__28 = stdgo._internal.math.big.Big__argshrVUr1._argshrVUr1, __tmp__29 = stdgo._internal.math.big.Big__argshrVUrWm1._argshrVUrWm1, __tmp__30 = stdgo._internal.math.big.Big__argshrVU._argshrVU, __tmp__31 = stdgo._internal.math.big.Big__prodVWW._prodVWW, __tmp__32 = stdgo._internal.math.big.Big__mulWWTests._mulWWTests, __tmp__33 = stdgo._internal.math.big.Big__mulAddWWWTests._mulAddWWWTests, __tmp__34 = stdgo._internal.math.big.Big__divWWTests._divWWTests, __tmp__35 = stdgo._internal.math.big.Big__calibrate._calibrate, __tmp__36 = stdgo._internal.math.big.Big__precList._precList, __tmp__37 = stdgo._internal.math.big.Big__bitsList._bitsList, __tmp__38 = stdgo._internal.math.big.Big__long._long, __tmp__39 = stdgo._internal.math.big.Big__floatVals._floatVals, __tmp__40 = stdgo._internal.math.big.Big__sumZZ._sumZZ, __tmp__41 = stdgo._internal.math.big.Big__prodZZ._prodZZ, __tmp__42 = stdgo._internal.math.big.Big__mulRangesZ._mulRangesZ, __tmp__43 = stdgo._internal.math.big.Big__divisionSignsTests._divisionSignsTests, __tmp__44 = stdgo._internal.math.big.Big__quoTests._quoTests, __tmp__45 = stdgo._internal.math.big.Big__bitLenTests._bitLenTests, __tmp__46 = stdgo._internal.math.big.Big__expTests._expTests, __tmp__47 = stdgo._internal.math.big.Big__gcdTests._gcdTests, __tmp__48 = stdgo._internal.math.big.Big__rshTests._rshTests, __tmp__49 = stdgo._internal.math.big.Big__lshTests._lshTests, __tmp__50 = stdgo._internal.math.big.Big__cmpAbsTests._cmpAbsTests, __tmp__51 = stdgo._internal.math.big.Big__int64Tests._int64Tests, __tmp__52 = stdgo._internal.math.big.Big__uint64Tests._uint64Tests, __tmp__53 = stdgo._internal.math.big.Big__bitwiseTests._bitwiseTests, __tmp__54 = stdgo._internal.math.big.Big__bitsetTests._bitsetTests, __tmp__55 = stdgo._internal.math.big.Big__tzbTests._tzbTests, __tmp__56 = stdgo._internal.math.big.Big__notTests._notTests, __tmp__57 = stdgo._internal.math.big.Big__modInverseTests._modInverseTests, __tmp__58 = stdgo._internal.math.big.Big__stringTests._stringTests, __tmp__59 = stdgo._internal.math.big.Big__formatTests._formatTests, __tmp__60 = stdgo._internal.math.big.Big__scanTests._scanTests, __tmp__61 = stdgo._internal.math.big.Big__encodingTests._encodingTests, __tmp__62 = stdgo._internal.math.big.Big__cmpTests._cmpTests, __tmp__63 = stdgo._internal.math.big.Big__sumNN._sumNN, __tmp__64 = stdgo._internal.math.big.Big__prodNN._prodNN, __tmp__65 = stdgo._internal.math.big.Big__mulRangesN._mulRangesN, __tmp__66 = stdgo._internal.math.big.Big__mulBenchSizes._mulBenchSizes, __tmp__67 = stdgo._internal.math.big.Big__leftShiftTests._leftShiftTests, __tmp__68 = stdgo._internal.math.big.Big__rightShiftTests._rightShiftTests, __tmp__69 = stdgo._internal.math.big.Big__modWTests32._modWTests32, __tmp__70 = stdgo._internal.math.big.Big__modWTests64._modWTests64, __tmp__71 = stdgo._internal.math.big.Big__montgomeryTests._montgomeryTests, __tmp__72 = stdgo._internal.math.big.Big__expNNTests._expNNTests, __tmp__73 = stdgo._internal.math.big.Big__fiboNums._fiboNums, __tmp__74 = stdgo._internal.math.big.Big__bitTests._bitTests, __tmp__75 = stdgo._internal.math.big.Big__stickyTests._stickyTests, __tmp__76 = stdgo._internal.math.big.Big__sqrBenchSizes._sqrBenchSizes, __tmp__77 = stdgo._internal.math.big.Big__subMod2NTests._subMod2NTests, __tmp__78 = stdgo._internal.math.big.Big__strTests._strTests, __tmp__79 = stdgo._internal.math.big.Big__natScanTests._natScanTests, __tmp__80 = stdgo._internal.math.big.Big__pi._pi, __tmp__81 = stdgo._internal.math.big.Big__primes._primes, __tmp__82 = stdgo._internal.math.big.Big__composites._composites, __tmp__83 = stdgo._internal.math.big.Big__ratCmpTests._ratCmpTests, __tmp__84 = stdgo._internal.math.big.Big__ratBinTests._ratBinTests, __tmp__85 = stdgo._internal.math.big.Big__setFrac64Tests._setFrac64Tests, __tmp__86 = stdgo._internal.math.big.Big__exponentTests._exponentTests, __tmp__87 = stdgo._internal.math.big.Big__setStringTests._setStringTests, __tmp__88 = stdgo._internal.math.big.Big__setStringTests2._setStringTests2, __tmp__89 = stdgo._internal.math.big.Big__floatStringTests._floatStringTests, __tmp__90 = stdgo._internal.math.big.Big__float64inputs._float64inputs, __tmp__91 = stdgo._internal.math.big.Big__ratNums._ratNums, __tmp__92 = stdgo._internal.math.big.Big__ratDenoms._ratDenoms, __tmp__93 = stdgo._internal.math.big.Big___2.__2, __tmp__94 = stdgo._internal.math.big.Big___3.__3, __tmp__95 = stdgo._internal.math.big.Big___4.__4, __tmp__96 = stdgo._internal.math.big.Big___5.__5, __tmp__97 = stdgo._internal.math.big.Big___6.__6, __tmp__98 = stdgo._internal.math.big.Big___7.__7;
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
