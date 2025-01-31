package stdgo._internal.internal.fuzz;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.math.Math;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.go.parser.Parser;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.context.Context;
import stdgo._internal.os.Os;
import stdgo._internal.time.Time;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.json.Json;
var _byteSliceMutators : stdgo.Slice<stdgo._internal.internal.fuzz.Fuzz_T_byteSliceMutator.T_byteSliceMutator> = (new stdgo.Slice<stdgo._internal.internal.fuzz.Fuzz_T_byteSliceMutator.T_byteSliceMutator>(18, 18, ...[
stdgo._internal.internal.fuzz.Fuzz__byteSliceRemoveBytes._byteSliceRemoveBytes,
stdgo._internal.internal.fuzz.Fuzz__byteSliceInsertRandomBytes._byteSliceInsertRandomBytes,
stdgo._internal.internal.fuzz.Fuzz__byteSliceDuplicateBytes._byteSliceDuplicateBytes,
stdgo._internal.internal.fuzz.Fuzz__byteSliceOverwriteBytes._byteSliceOverwriteBytes,
stdgo._internal.internal.fuzz.Fuzz__byteSliceBitFlip._byteSliceBitFlip,
stdgo._internal.internal.fuzz.Fuzz__byteSliceXORByte._byteSliceXORByte,
stdgo._internal.internal.fuzz.Fuzz__byteSliceSwapByte._byteSliceSwapByte,
stdgo._internal.internal.fuzz.Fuzz__byteSliceArithmeticUint8._byteSliceArithmeticUint8,
stdgo._internal.internal.fuzz.Fuzz__byteSliceArithmeticUint16._byteSliceArithmeticUint16,
stdgo._internal.internal.fuzz.Fuzz__byteSliceArithmeticUint32._byteSliceArithmeticUint32,
stdgo._internal.internal.fuzz.Fuzz__byteSliceArithmeticUint64._byteSliceArithmeticUint64,
stdgo._internal.internal.fuzz.Fuzz__byteSliceOverwriteInterestingUint8._byteSliceOverwriteInterestingUint8,
stdgo._internal.internal.fuzz.Fuzz__byteSliceOverwriteInterestingUint16._byteSliceOverwriteInterestingUint16,
stdgo._internal.internal.fuzz.Fuzz__byteSliceOverwriteInterestingUint32._byteSliceOverwriteInterestingUint32,
stdgo._internal.internal.fuzz.Fuzz__byteSliceInsertConstantBytes._byteSliceInsertConstantBytes,
stdgo._internal.internal.fuzz.Fuzz__byteSliceOverwriteConstantBytes._byteSliceOverwriteConstantBytes,
stdgo._internal.internal.fuzz.Fuzz__byteSliceShuffleBytes._byteSliceShuffleBytes,
stdgo._internal.internal.fuzz.Fuzz__byteSliceSwapBytes._byteSliceSwapBytes]) : stdgo.Slice<stdgo._internal.internal.fuzz.Fuzz_T_byteSliceMutator.T_byteSliceMutator>);
