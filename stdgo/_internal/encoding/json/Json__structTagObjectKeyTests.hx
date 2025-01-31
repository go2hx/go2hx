package stdgo._internal.encoding.json;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.Math;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.os.Os;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.math.big.Big;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.testing.Testing;
import stdgo._internal.log.Log;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.net.Net;
import stdgo._internal.net.http.httptest.Httptest;
import stdgo._internal.net.http.Http;
var _structTagObjectKeyTests : stdgo.Slice<stdgo._internal.encoding.json.Json_T__struct_45.T__struct_45> = (new stdgo.Slice<stdgo._internal.encoding.json.Json_T__struct_45.T__struct_45>(16, 16, ...[
({ _raw : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_T_basicLatin2xTag.T_basicLatin2xTag(("2x" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_T_basicLatin2xTag.T_basicLatin2xTag))), _value : ("2x" : stdgo.GoString), _key : ("$%-/" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_45.T__struct_45),
({ _raw : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_T_basicLatin3xTag.T_basicLatin3xTag(("3x" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_T_basicLatin3xTag.T_basicLatin3xTag))), _value : ("3x" : stdgo.GoString), _key : ("0123456789" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_45.T__struct_45),
({ _raw : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_T_basicLatin4xTag.T_basicLatin4xTag(("4x" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_T_basicLatin4xTag.T_basicLatin4xTag))), _value : ("4x" : stdgo.GoString), _key : ("ABCDEFGHIJKLMO" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_45.T__struct_45),
({ _raw : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_T_basicLatin5xTag.T_basicLatin5xTag(("5x" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_T_basicLatin5xTag.T_basicLatin5xTag))), _value : ("5x" : stdgo.GoString), _key : ("PQRSTUVWXYZ_" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_45.T__struct_45),
({ _raw : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_T_basicLatin6xTag.T_basicLatin6xTag(("6x" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_T_basicLatin6xTag.T_basicLatin6xTag))), _value : ("6x" : stdgo.GoString), _key : ("abcdefghijklmno" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_45.T__struct_45),
({ _raw : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_T_basicLatin7xTag.T_basicLatin7xTag(("7x" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_T_basicLatin7xTag.T_basicLatin7xTag))), _value : ("7x" : stdgo.GoString), _key : ("pqrstuvwxyz" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_45.T__struct_45),
({ _raw : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_T_miscPlaneTag.T_miscPlaneTag(("いろはにほへと" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_T_miscPlaneTag.T_miscPlaneTag))), _value : ("いろはにほへと" : stdgo.GoString), _key : ("色は匂へど" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_45.T__struct_45),
({ _raw : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_T_dashTag.T_dashTag(("foo" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_T_dashTag.T_dashTag))), _value : ("foo" : stdgo.GoString), _key : ("-" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_45.T__struct_45),
({ _raw : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_T_emptyTag.T_emptyTag(("Pour Moi" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_T_emptyTag.T_emptyTag))), _value : ("Pour Moi" : stdgo.GoString), _key : ("W" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_45.T__struct_45),
({ _raw : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_T_misnamedTag.T_misnamedTag(("Animal Kingdom" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_T_misnamedTag.T_misnamedTag))), _value : ("Animal Kingdom" : stdgo.GoString), _key : ("X" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_45.T__struct_45),
({ _raw : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_T_badFormatTag.T_badFormatTag(("Orfevre" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_T_badFormatTag.T_badFormatTag))), _value : ("Orfevre" : stdgo.GoString), _key : ("Y" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_45.T__struct_45),
({ _raw : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_T_badCodeTag.T_badCodeTag(("Reliable Man" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_T_badCodeTag.T_badCodeTag))), _value : ("Reliable Man" : stdgo.GoString), _key : ("Z" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_45.T__struct_45),
({ _raw : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_T_percentSlashTag.T_percentSlashTag(("brut" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_T_percentSlashTag.T_percentSlashTag))), _value : ("brut" : stdgo.GoString), _key : ("text/html%" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_45.T__struct_45),
({ _raw : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_T_punctuationTag.T_punctuationTag(("Union Rags" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_T_punctuationTag.T_punctuationTag))), _value : ("Union Rags" : stdgo.GoString), _key : ("!#$%&()*+-./:;<=>?@[]^_{|}~ " : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_45.T__struct_45),
({ _raw : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_T_spaceTag.T_spaceTag(("Perreddu" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_T_spaceTag.T_spaceTag))), _value : ("Perreddu" : stdgo.GoString), _key : ("With space" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_45.T__struct_45),
({ _raw : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_T_unicodeTag.T_unicodeTag(("Loukanikos" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_T_unicodeTag.T_unicodeTag))), _value : ("Loukanikos" : stdgo.GoString), _key : ("Ελλάδα" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_45.T__struct_45)].concat([for (i in 16 ... (16 > 16 ? 16 : 16 : stdgo.GoInt).toBasic()) ({ _raw : (null : stdgo.AnyInterface), _value : ("" : stdgo.GoString), _key : ("" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_45.T__struct_45)])) : stdgo.Slice<stdgo._internal.encoding.json.Json_T__struct_45.T__struct_45>);
