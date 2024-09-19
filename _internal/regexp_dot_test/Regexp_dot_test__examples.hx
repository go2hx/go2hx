package _internal.regexp_dot_test;
var _examples : stdgo.Slice<stdgo._internal.testing.Testing_InternalExample.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing_InternalExample.InternalExample>(31, 31, ...[
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("Example" : stdgo.GoString), _internal.regexp_test.Regexp_test_example.example, ("true\ntrue\nfalse\nfalse\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleMatch" : stdgo.GoString), _internal.regexp_test.Regexp_test_exampleMatch.exampleMatch, ("true <nil>\nfalse <nil>\nfalse error parsing regexp: missing closing ): `a(b`\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleMatchString" : stdgo.GoString), _internal.regexp_test.Regexp_test_exampleMatchString.exampleMatchString, ("true <nil>\nfalse <nil>\nfalse error parsing regexp: missing closing ): `a(b`\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleQuoteMeta" : stdgo.GoString), _internal.regexp_test.Regexp_test_exampleQuoteMeta.exampleQuoteMeta, ("Escaping symbols like: \\.\\+\\*\\?\\(\\)\\|\\[\\]\\{\\}\\^\\$\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRegexp_Find" : stdgo.GoString), _internal.regexp_test.Regexp_test_exampleRegexp_Find.exampleRegexp_Find, ("\"food\"\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRegexp_FindAll" : stdgo.GoString), _internal.regexp_test.Regexp_test_exampleRegexp_FindAll.exampleRegexp_FindAll, ("[\"food\" \"fool\"]\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRegexp_FindAllSubmatch" : stdgo.GoString), _internal.regexp_test.Regexp_test_exampleRegexp_FindAllSubmatch.exampleRegexp_FindAllSubmatch, ("[[\"food\" \"d\"] [\"fool\" \"l\"]]\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRegexp_FindSubmatch" : stdgo.GoString), _internal.regexp_test.Regexp_test_exampleRegexp_FindSubmatch.exampleRegexp_FindSubmatch, ("[\"food\" \"d\"]\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRegexp_Match" : stdgo.GoString), _internal.regexp_test.Regexp_test_exampleRegexp_Match.exampleRegexp_Match, ("true\nfalse\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRegexp_FindString" : stdgo.GoString), _internal.regexp_test.Regexp_test_exampleRegexp_FindString.exampleRegexp_FindString, ("\"food\"\n\"\"\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRegexp_FindStringIndex" : stdgo.GoString), _internal.regexp_test.Regexp_test_exampleRegexp_FindStringIndex.exampleRegexp_FindStringIndex, ("[1 3]\ntrue\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRegexp_FindStringSubmatch" : stdgo.GoString), _internal.regexp_test.Regexp_test_exampleRegexp_FindStringSubmatch.exampleRegexp_FindStringSubmatch, ("[\"axxxbyc\" \"xxx\" \"y\"]\n[\"abzc\" \"\" \"z\"]\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRegexp_FindAllString" : stdgo.GoString), _internal.regexp_test.Regexp_test_exampleRegexp_FindAllString.exampleRegexp_FindAllString, ("[ar an al]\n[ar an]\n[aa]\n[]\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRegexp_FindAllStringSubmatch" : stdgo.GoString), _internal.regexp_test.Regexp_test_exampleRegexp_FindAllStringSubmatch.exampleRegexp_FindAllStringSubmatch, ("[[\"ab\" \"\"]]\n[[\"axxb\" \"xx\"]]\n[[\"ab\" \"\"] [\"axb\" \"x\"]]\n[[\"axxb\" \"xx\"] [\"ab\" \"\"]]\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRegexp_FindAllStringSubmatchIndex" : stdgo.GoString), _internal.regexp_test.Regexp_test_exampleRegexp_FindAllStringSubmatchIndex.exampleRegexp_FindAllStringSubmatchIndex, ("[[1 3 2 2]]\n[[1 5 2 4]]\n[[1 3 2 2] [4 7 5 6]]\n[[1 5 2 4] [6 8 7 7]]\n[]\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRegexp_FindSubmatchIndex" : stdgo.GoString), _internal.regexp_test.Regexp_test_exampleRegexp_FindSubmatchIndex.exampleRegexp_FindSubmatchIndex, ("[1 3 2 2]\n[1 5 2 4]\n[1 3 2 2]\n[1 5 2 4]\n[]\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRegexp_Longest" : stdgo.GoString), _internal.regexp_test.Regexp_test_exampleRegexp_Longest.exampleRegexp_Longest, ("a\nab\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRegexp_MatchString" : stdgo.GoString), _internal.regexp_test.Regexp_test_exampleRegexp_MatchString.exampleRegexp_MatchString, ("false\ntrue\ntrue\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRegexp_NumSubexp" : stdgo.GoString), _internal.regexp_test.Regexp_test_exampleRegexp_NumSubexp.exampleRegexp_NumSubexp, ("0\n4\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRegexp_ReplaceAll" : stdgo.GoString), _internal.regexp_test.Regexp_test_exampleRegexp_ReplaceAll.exampleRegexp_ReplaceAll, ("-T-T-\n--xx-\n---\n-W-xxW-\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRegexp_ReplaceAllLiteralString" : stdgo.GoString), _internal.regexp_test.Regexp_test_exampleRegexp_ReplaceAllLiteralString.exampleRegexp_ReplaceAllLiteralString, ("-T-T-\n-$1-$1-\n-${1}-${1}-\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRegexp_ReplaceAllString" : stdgo.GoString), _internal.regexp_test.Regexp_test_exampleRegexp_ReplaceAllString.exampleRegexp_ReplaceAllString, ("-T-T-\n--xx-\n---\n-W-xxW-\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRegexp_ReplaceAllStringFunc" : stdgo.GoString), _internal.regexp_test.Regexp_test_exampleRegexp_ReplaceAllStringFunc.exampleRegexp_ReplaceAllStringFunc, ("SeaFooD FooL\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRegexp_SubexpNames" : stdgo.GoString), _internal.regexp_test.Regexp_test_exampleRegexp_SubexpNames.exampleRegexp_SubexpNames, ("true\n[\"\" \"first\" \"last\"]\n${last} ${first}\nTuring Alan\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRegexp_SubexpIndex" : stdgo.GoString), _internal.regexp_test.Regexp_test_exampleRegexp_SubexpIndex.exampleRegexp_SubexpIndex, ("true\nlast => 2\nTuring\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRegexp_Split" : stdgo.GoString), _internal.regexp_test.Regexp_test_exampleRegexp_Split.exampleRegexp_Split, ("[b n n ]\n[]\n[banana]\n[b nana]\n[pi a]\n[]\n[pizza]\n[pi a]\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRegexp_Expand" : stdgo.GoString), _internal.regexp_test.Regexp_test_exampleRegexp_Expand.exampleRegexp_Expand, ("option1=value1\noption2=value2\noption3=value3\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRegexp_ExpandString" : stdgo.GoString), _internal.regexp_test.Regexp_test_exampleRegexp_ExpandString.exampleRegexp_ExpandString, ("option1=value1\noption2=value2\noption3=value3\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRegexp_FindIndex" : stdgo.GoString), _internal.regexp_test.Regexp_test_exampleRegexp_FindIndex.exampleRegexp_FindIndex, ("[18 33]\noption1: value1\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRegexp_FindAllSubmatchIndex" : stdgo.GoString), _internal.regexp_test.Regexp_test_exampleRegexp_FindAllSubmatchIndex.exampleRegexp_FindAllSubmatchIndex, ("[18 33 18 25 27 33]\noption1: value1\noption1\nvalue1\n[35 50 35 42 44 50]\noption2: value2\noption2\nvalue2\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRegexp_FindAllIndex" : stdgo.GoString), _internal.regexp_test.Regexp_test_exampleRegexp_FindAllIndex.exampleRegexp_FindAllIndex, ("[[1 3]]\n[[1 3] [4 6]]\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample)].concat([for (i in 31 ... (31 > 31 ? 31 : 31 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing_InternalExample.InternalExample)])) : stdgo.Slice<stdgo._internal.testing.Testing_InternalExample.InternalExample>);