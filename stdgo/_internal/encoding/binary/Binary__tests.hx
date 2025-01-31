package stdgo._internal.encoding.binary;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unsafe.Unsafe;
var _tests : stdgo.Slice<stdgo.GoInt64> = (new stdgo.Slice<stdgo.GoInt64>(18, 18, ...[
(-9223372036854775808i64 : stdgo.GoInt64),
(-9223372036854775807i64 : stdgo.GoInt64),
(-1i64 : stdgo.GoInt64),
(0i64 : stdgo.GoInt64),
(1i64 : stdgo.GoInt64),
(2i64 : stdgo.GoInt64),
(10i64 : stdgo.GoInt64),
(20i64 : stdgo.GoInt64),
(63i64 : stdgo.GoInt64),
(64i64 : stdgo.GoInt64),
(65i64 : stdgo.GoInt64),
(127i64 : stdgo.GoInt64),
(128i64 : stdgo.GoInt64),
(129i64 : stdgo.GoInt64),
(255i64 : stdgo.GoInt64),
(256i64 : stdgo.GoInt64),
(257i64 : stdgo.GoInt64),
(9223372036854775807i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
