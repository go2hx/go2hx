package stdgo._internal.regexp;
var _splitTests : stdgo.Slice<stdgo._internal.regexp.Regexp_T__struct_0.T__struct_0> = (new stdgo.Slice<stdgo._internal.regexp.Regexp_T__struct_0.T__struct_0>(23, 23, ...[
({ _s : ("foo:and:bar" : stdgo.GoString), _r : (":" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("foo" : stdgo.GoString), ("and" : stdgo.GoString), ("bar" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.regexp.Regexp_T__struct_0.T__struct_0),
({ _s : ("foo:and:bar" : stdgo.GoString), _r : (":" : stdgo.GoString), _n : (1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("foo:and:bar" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.regexp.Regexp_T__struct_0.T__struct_0),
({ _s : ("foo:and:bar" : stdgo.GoString), _r : (":" : stdgo.GoString), _n : (2 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("foo" : stdgo.GoString), ("and:bar" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.regexp.Regexp_T__struct_0.T__struct_0),
({ _s : ("foo:and:bar" : stdgo.GoString), _r : ("foo" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[stdgo.Go.str()?.__copy__(), (":and:bar" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.regexp.Regexp_T__struct_0.T__struct_0),
({ _s : ("foo:and:bar" : stdgo.GoString), _r : ("bar" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("foo:and:" : stdgo.GoString), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.regexp.Regexp_T__struct_0.T__struct_0),
({ _s : ("foo:and:bar" : stdgo.GoString), _r : ("baz" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("foo:and:bar" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.regexp.Regexp_T__struct_0.T__struct_0),
({ _s : ("baabaab" : stdgo.GoString), _r : ("a" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("b" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("b" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.regexp.Regexp_T__struct_0.T__struct_0),
({ _s : ("baabaab" : stdgo.GoString), _r : ("a*" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("b" : stdgo.GoString), ("b" : stdgo.GoString), ("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.regexp.Regexp_T__struct_0.T__struct_0),
({ _s : ("baabaab" : stdgo.GoString), _r : ("ba*" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(4, 4, ...[stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.regexp.Regexp_T__struct_0.T__struct_0),
({ _s : ("foobar" : stdgo.GoString), _r : ("f*b*" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(5, 5, ...[stdgo.Go.str()?.__copy__(), ("o" : stdgo.GoString), ("o" : stdgo.GoString), ("a" : stdgo.GoString), ("r" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.regexp.Regexp_T__struct_0.T__struct_0),
({ _s : ("foobar" : stdgo.GoString), _r : ("f+.*b+" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[stdgo.Go.str()?.__copy__(), ("ar" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.regexp.Regexp_T__struct_0.T__struct_0),
({ _s : ("foobooboar" : stdgo.GoString), _r : ("o{2}" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("f" : stdgo.GoString), ("b" : stdgo.GoString), ("boar" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.regexp.Regexp_T__struct_0.T__struct_0),
({ _s : ("a,b,c,d,e,f" : stdgo.GoString), _r : ("," : stdgo.GoString), _n : (3 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString), ("c,d,e,f" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.regexp.Regexp_T__struct_0.T__struct_0),
({ _s : ("a,b,c,d,e,f" : stdgo.GoString), _r : ("," : stdgo.GoString), _n : (0 : stdgo.GoInt), _out : (null : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.regexp.Regexp_T__struct_0.T__struct_0),
({ _s : ("," : stdgo.GoString), _r : ("," : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.regexp.Regexp_T__struct_0.T__struct_0),
({ _s : (",,," : stdgo.GoString), _r : ("," : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(4, 4, ...[stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.regexp.Regexp_T__struct_0.T__struct_0),
({ _s : stdgo.Go.str()?.__copy__(), _r : ("," : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.regexp.Regexp_T__struct_0.T__struct_0),
({ _s : stdgo.Go.str()?.__copy__(), _r : (".*" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.regexp.Regexp_T__struct_0.T__struct_0),
({ _s : stdgo.Go.str()?.__copy__(), _r : (".+" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.regexp.Regexp_T__struct_0.T__struct_0),
({ _s : stdgo.Go.str()?.__copy__(), _r : stdgo.Go.str()?.__copy__(), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.regexp.Regexp_T__struct_0.T__struct_0),
({ _s : ("foobar" : stdgo.GoString), _r : stdgo.Go.str()?.__copy__(), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(6, 6, ...[("f" : stdgo.GoString), ("o" : stdgo.GoString), ("o" : stdgo.GoString), ("b" : stdgo.GoString), ("a" : stdgo.GoString), ("r" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.regexp.Regexp_T__struct_0.T__struct_0),
({ _s : ("abaabaccadaaae" : stdgo.GoString), _r : ("a*" : stdgo.GoString), _n : (5 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(5, 5, ...[stdgo.Go.str()?.__copy__(), ("b" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString), ("cadaaae" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.regexp.Regexp_T__struct_0.T__struct_0),
({ _s : (":x:y:z:" : stdgo.GoString), _r : (":" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(5, 5, ...[stdgo.Go.str()?.__copy__(), ("x" : stdgo.GoString), ("y" : stdgo.GoString), ("z" : stdgo.GoString), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.regexp.Regexp_T__struct_0.T__struct_0)].concat([for (i in 23 ... (23 > 23 ? 23 : 23 : stdgo.GoInt).toBasic()) ({ _s : ("" : stdgo.GoString), _r : ("" : stdgo.GoString), _n : (0 : stdgo.GoInt), _out : (null : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.regexp.Regexp_T__struct_0.T__struct_0)])) : stdgo.Slice<stdgo._internal.regexp.Regexp_T__struct_0.T__struct_0>);
