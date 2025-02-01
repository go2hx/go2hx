package stdgo._internal.internal.profile;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.lazyregexp.Lazyregexp;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.sort.Sort;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.regexp.Regexp;
var _lockRxStr : stdgo.GoString = stdgo._internal.strings.Strings_join.join((new stdgo.Slice<stdgo.GoString>(12, 12, ...[
("RecordLockProfileData" : stdgo.GoString),
("(base::)?RecordLockProfileData.*" : stdgo.GoString),
("(base::)?SubmitMutexProfileData.*" : stdgo.GoString),
("(base::)?SubmitSpinLockProfileData.*" : stdgo.GoString),
("(Mutex::)?AwaitCommon.*" : stdgo.GoString),
("(Mutex::)?Unlock.*" : stdgo.GoString),
("(Mutex::)?UnlockSlow.*" : stdgo.GoString),
("(Mutex::)?ReaderUnlock.*" : stdgo.GoString),
("(MutexLock::)?~MutexLock.*" : stdgo.GoString),
("(SpinLock::)?Unlock.*" : stdgo.GoString),
("(SpinLock::)?SlowUnlock.*" : stdgo.GoString),
("(SpinLockHolder::)?~SpinLockHolder.*" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("|" : stdgo.GoString));
