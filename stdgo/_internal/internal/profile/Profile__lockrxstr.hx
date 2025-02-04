package stdgo._internal.internal.profile;
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
