package stdgo._internal.text.template;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.errors.Errors;
import stdgo._internal.flag.Flag;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.testing.Testing;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.net.url.Url;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.path.Path;
import stdgo._internal.internal.fmtsort.Fmtsort;
var _multiExecTests : stdgo.Slice<stdgo._internal.text.template.Template_T_execTest.T_execTest> = (new stdgo.Slice<stdgo._internal.text.template.Template_T_execTest.T_execTest>(11, 11, ...[
(new stdgo._internal.text.template.Template_T_execTest.T_execTest(("empty" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), (null : stdgo.AnyInterface), true) : stdgo._internal.text.template.Template_T_execTest.T_execTest),
(new stdgo._internal.text.template.Template_T_execTest.T_execTest(("text" : stdgo.GoString), ("some text" : stdgo.GoString), ("some text" : stdgo.GoString), (null : stdgo.AnyInterface), true) : stdgo._internal.text.template.Template_T_execTest.T_execTest),
(new stdgo._internal.text.template.Template_T_execTest.T_execTest(("invoke x" : stdgo.GoString), ("{{template \"x\" .SI}}" : stdgo.GoString), ("TEXT" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.text.template.Template__tVal._tVal)), true) : stdgo._internal.text.template.Template_T_execTest.T_execTest),
(new stdgo._internal.text.template.Template_T_execTest.T_execTest(("invoke x no args" : stdgo.GoString), ("{{template \"x\"}}" : stdgo.GoString), ("TEXT" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.text.template.Template__tVal._tVal)), true) : stdgo._internal.text.template.Template_T_execTest.T_execTest),
(new stdgo._internal.text.template.Template_T_execTest.T_execTest(("invoke dot int" : stdgo.GoString), ("{{template \"dot\" .I}}" : stdgo.GoString), ("17" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.text.template.Template__tVal._tVal)), true) : stdgo._internal.text.template.Template_T_execTest.T_execTest),
(new stdgo._internal.text.template.Template_T_execTest.T_execTest(("invoke dot []int" : stdgo.GoString), ("{{template \"dot\" .SI}}" : stdgo.GoString), ("[3 4 5]" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.text.template.Template__tVal._tVal)), true) : stdgo._internal.text.template.Template_T_execTest.T_execTest),
(new stdgo._internal.text.template.Template_T_execTest.T_execTest(("invoke dotV" : stdgo.GoString), ("{{template \"dotV\" .U}}" : stdgo.GoString), ("v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.text.template.Template__tVal._tVal)), true) : stdgo._internal.text.template.Template_T_execTest.T_execTest),
(new stdgo._internal.text.template.Template_T_execTest.T_execTest(("invoke nested int" : stdgo.GoString), ("{{template \"nested\" .I}}" : stdgo.GoString), ("17" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.text.template.Template__tVal._tVal)), true) : stdgo._internal.text.template.Template_T_execTest.T_execTest),
(new stdgo._internal.text.template.Template_T_execTest.T_execTest(("variable declared by template" : stdgo.GoString), ("{{template \"nested\" $x:=.SI}},{{index $x 1}}" : stdgo.GoString), ("[3 4 5],4" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.text.template.Template__tVal._tVal)), true) : stdgo._internal.text.template.Template_T_execTest.T_execTest),
(new stdgo._internal.text.template.Template_T_execTest.T_execTest(("testFunc literal" : stdgo.GoString), ("{{oneArg \"joe\"}}" : stdgo.GoString), ("oneArg=joe" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.text.template.Template__tVal._tVal)), true) : stdgo._internal.text.template.Template_T_execTest.T_execTest),
(new stdgo._internal.text.template.Template_T_execTest.T_execTest(("testFunc ." : stdgo.GoString), ("{{oneArg .}}" : stdgo.GoString), ("oneArg=joe" : stdgo.GoString), stdgo.Go.toInterface(("joe" : stdgo.GoString)), true) : stdgo._internal.text.template.Template_T_execTest.T_execTest)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.text.template.Template_T_execTest.T_execTest)])) : stdgo.Slice<stdgo._internal.text.template.Template_T_execTest.T_execTest>);
