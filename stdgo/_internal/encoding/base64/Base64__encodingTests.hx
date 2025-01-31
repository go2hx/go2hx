package stdgo._internal.encoding.base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.strconv.Strconv;
var _encodingTests : stdgo.Slice<stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest> = (new stdgo.Slice<stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest>(10, 10, ...[(new stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest(stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding, stdgo._internal.encoding.base64.Base64__stdRef._stdRef) : stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest), (new stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest(stdgo._internal.encoding.base64.Base64_uRLEncoding.uRLEncoding, stdgo._internal.encoding.base64.Base64__urlRef._urlRef) : stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest), (new stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest(stdgo._internal.encoding.base64.Base64_rawStdEncoding.rawStdEncoding, stdgo._internal.encoding.base64.Base64__rawRef._rawRef) : stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest), (new stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest(stdgo._internal.encoding.base64.Base64_rawURLEncoding.rawURLEncoding, stdgo._internal.encoding.base64.Base64__rawURLRef._rawURLRef) : stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest), (new stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest(stdgo._internal.encoding.base64.Base64__funnyEncoding._funnyEncoding, stdgo._internal.encoding.base64.Base64__funnyRef._funnyRef) : stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest), (new stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest((@:checkr stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding ?? throw "null pointer dereference").strict(), stdgo._internal.encoding.base64.Base64__stdRef._stdRef) : stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest), (new stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest((@:checkr stdgo._internal.encoding.base64.Base64_uRLEncoding.uRLEncoding ?? throw "null pointer dereference").strict(), stdgo._internal.encoding.base64.Base64__urlRef._urlRef) : stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest), (new stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest((@:checkr stdgo._internal.encoding.base64.Base64_rawStdEncoding.rawStdEncoding ?? throw "null pointer dereference").strict(), stdgo._internal.encoding.base64.Base64__rawRef._rawRef) : stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest), (new stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest((@:checkr stdgo._internal.encoding.base64.Base64_rawURLEncoding.rawURLEncoding ?? throw "null pointer dereference").strict(), stdgo._internal.encoding.base64.Base64__rawURLRef._rawURLRef) : stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest), (new stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest((@:checkr stdgo._internal.encoding.base64.Base64__funnyEncoding._funnyEncoding ?? throw "null pointer dereference").strict(), stdgo._internal.encoding.base64.Base64__funnyRef._funnyRef) : stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest)].concat([for (i in 10 ... (10 > 10 ? 10 : 10 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest)])) : stdgo.Slice<stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest>);
