package stdgo._internal.text.template;
private var __go2hxdoc__package : Bool;
var _zero : stdgo._internal.reflect.Reflect.Value = ({} : stdgo._internal.reflect.Reflect.Value);
final _execErrorText : stdgo.GoString = ("line 1\nline 2\nline 3\n{{template \"one\" .}}\n{{define \"one\"}}{{template \"two\" .}}{{end}}\n{{define \"two\"}}{{template \"three\" .}}{{end}}\n{{define \"three\"}}{{index \"hi\" $}}{{end}}" : stdgo.GoString);
final _treeTemplate : stdgo.GoString = ("\n\t(- define \"tree\" -)\n\t[\n\t\t(- .Val -)\n\t\t(- with .Left -)\n\t\t\t(template \"tree\" . -)\n\t\t(- end -)\n\t\t(- with .Right -)\n\t\t\t(- template \"tree\" . -)\n\t\t(- end -)\n\t]\n\t(- end -)\n" : stdgo.GoString);
final _testTemplates : stdgo.GoString = ("{{define \"one\"}}one{{end}}{{define \"two\"}}two{{end}}" : stdgo.GoString);
final _alwaysErrorText : stdgo.GoString = ("always be failing" : stdgo.GoString);
var _builtinFuncsOnce : T__struct_7 = ({ once : ({} : stdgo._internal.sync.Sync.Once), _v : (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect.Value>) } : T__struct_7);
final _invalidKind : stdgo._internal.text.template.Template.T_kind = (6 : stdgo._internal.text.template.Template.T_kind);
final _boolKind = (6 : stdgo._internal.text.template.Template.T_kind);
final _complexKind = (6 : stdgo._internal.text.template.Template.T_kind);
final _intKind = (6 : stdgo._internal.text.template.Template.T_kind);
final _floatKind = (6 : stdgo._internal.text.template.Template.T_kind);
final _stringKind = (6 : stdgo._internal.text.template.Template.T_kind);
final _uintKind = (6 : stdgo._internal.text.template.Template.T_kind);
final _noError : Bool = true;
final _hasError : Bool = false;
final _multiText1 : stdgo.GoString = ("\n\t{{define \"x\"}}TEXT{{end}}\n\t{{define \"dotV\"}}{{.V}}{{end}}\n" : stdgo.GoString);
final _multiText2 : stdgo.GoString = ("\n\t{{define \"dot\"}}{{.}}{{end}}\n\t{{define \"nested\"}}{{template \"dot\" .}}{{end}}\n" : stdgo.GoString);
final _cloneText1 : stdgo.GoString = ("{{define \"a\"}}{{template \"b\"}}{{template \"c\"}}{{end}}" : stdgo.GoString);
final _cloneText2 : stdgo.GoString = ("{{define \"b\"}}b{{end}}" : stdgo.GoString);
final _cloneText3 : stdgo.GoString = ("{{define \"c\"}}root{{end}}" : stdgo.GoString);
final _cloneText4 : stdgo.GoString = ("{{define \"c\"}}clone{{end}}" : stdgo.GoString);
final _mapInvalid : stdgo._internal.text.template.Template.T_missingKeyAction = (2 : stdgo._internal.text.template.Template.T_missingKeyAction);
final _mapZeroValue = (2 : stdgo._internal.text.template.Template.T_missingKeyAction);
final _mapError = (2 : stdgo._internal.text.template.Template.T_missingKeyAction);
var _maxExecDepth : stdgo.GoInt = _initMaxExecDepth();
var _missingVal : stdgo._internal.reflect.Reflect.Value = stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface((new stdgo._internal.text.template.Template.T_missingValType() : stdgo._internal.text.template.Template.T_missingValType)));
var _missingValReflectType : stdgo._internal.reflect.Reflect.Type_ = stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface((new stdgo._internal.text.template.Template.T_missingValType() : stdgo._internal.text.template.Template.T_missingValType)));
var _walkBreak : stdgo.Error = stdgo._internal.errors.Errors.new_(("break" : stdgo.GoString));
var _walkContinue : stdgo.Error = stdgo._internal.errors.Errors.new_(("continue" : stdgo.GoString));
var _errorType : stdgo._internal.reflect.Reflect.Type_ = stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface((null : stdgo.Ref<stdgo.Error>))).elem();
var _fmtStringerType : stdgo._internal.reflect.Reflect.Type_ = stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface((null : stdgo.Ref<stdgo._internal.fmt.Fmt.Stringer>))).elem();
var _reflectValueType : stdgo._internal.reflect.Reflect.Type_ = stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.reflect.Reflect.Value>)))).elem();
var _errBadComparisonType : stdgo.Error = stdgo._internal.errors.Errors.new_(("invalid type for comparison" : stdgo.GoString));
var _errBadComparison : stdgo.Error = stdgo._internal.errors.Errors.new_(("incompatible types for comparison" : stdgo.GoString));
var _errNoComparison : stdgo.Error = stdgo._internal.errors.Errors.new_(("missing argument for comparison" : stdgo.GoString));
var _htmlQuot : stdgo.Slice<stdgo.GoUInt8> = (("&#34;" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
var _htmlApos : stdgo.Slice<stdgo.GoUInt8> = (("&#39;" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
var _htmlAmp : stdgo.Slice<stdgo.GoUInt8> = (("&amp;" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
var _htmlLt : stdgo.Slice<stdgo.GoUInt8> = (("&lt;" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
var _htmlGt : stdgo.Slice<stdgo.GoUInt8> = (("&gt;" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
var _htmlNull : stdgo.Slice<stdgo.GoUInt8> = (("�" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
var _jsLowUni : stdgo.Slice<stdgo.GoUInt8> = (("\\u00" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
var _hex : stdgo.Slice<stdgo.GoUInt8> = (("0123456789ABCDEF" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
var _jsBackslash : stdgo.Slice<stdgo.GoUInt8> = (("\\\\" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
var _jsApos : stdgo.Slice<stdgo.GoUInt8> = (("\\\'" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
var _jsQuot : stdgo.Slice<stdgo.GoUInt8> = (("\\\"" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
var _jsLt : stdgo.Slice<stdgo.GoUInt8> = (("\\u003C" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
var _jsGt : stdgo.Slice<stdgo.GoUInt8> = (("\\u003E" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
var _jsAmp : stdgo.Slice<stdgo.GoUInt8> = (("\\u0026" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
var _jsEq : stdgo.Slice<stdgo.GoUInt8> = (("\\u003D" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
var _debug : stdgo.Pointer<Bool> = stdgo._internal.flag.Flag.bool_(("debug" : stdgo.GoString), false, ("show the errors produced by the tests" : stdgo.GoString));
var _siVal : stdgo._internal.text.template.Template.I = stdgo.Go.asInterface((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString)]).__setString__() : stdgo._internal.text.template.Template.S));
var _tVal : stdgo.Ref<stdgo._internal.text.template.Template.T_> = (stdgo.Go.setRef(({ _True : true, i : (17 : stdgo.GoInt), u16 : (16 : stdgo.GoUInt16), x : ("x" : stdgo.GoString), s : ("xyz" : stdgo.GoString), u : (stdgo.Go.setRef((new stdgo._internal.text.template.Template.U(("v" : stdgo.GoString)) : stdgo._internal.text.template.Template.U)) : stdgo.Ref<stdgo._internal.text.template.Template.U>), v0 : (new stdgo._internal.text.template.Template.V((6666 : stdgo.GoInt)) : stdgo._internal.text.template.Template.V), v1 : (stdgo.Go.setRef((new stdgo._internal.text.template.Template.V((7777 : stdgo.GoInt)) : stdgo._internal.text.template.Template.V)) : stdgo.Ref<stdgo._internal.text.template.Template.V>), w0 : (new stdgo._internal.text.template.Template.W((888 : stdgo.GoInt)) : stdgo._internal.text.template.Template.W), w1 : (stdgo.Go.setRef((new stdgo._internal.text.template.Template.W((999 : stdgo.GoInt)) : stdgo._internal.text.template.Template.W)) : stdgo.Ref<stdgo._internal.text.template.Template.W>), si : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), sicap : (new stdgo.Slice<stdgo.GoInt>((5 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), ai : (new stdgo.GoArray<stdgo.GoInt>(3, 3, ...[(3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__(), sb : (new stdgo.Slice<Bool>(2, 2, ...[true, false]) : stdgo.Slice<Bool>), msi : ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
        x.__defaultValue__ = () -> (0 : stdgo.GoInt);
        @:mergeBlock {
            x.set(("one" : stdgo.GoString), (1 : stdgo.GoInt));
            x.set(("two" : stdgo.GoString), (2 : stdgo.GoInt));
            x.set(("three" : stdgo.GoString), (3 : stdgo.GoInt));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>), msione : ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
        x.__defaultValue__ = () -> (0 : stdgo.GoInt);
        @:mergeBlock {
            x.set(("one" : stdgo.GoString), (1 : stdgo.GoInt));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>), mxi : ({
        final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.GoInt>();
        x.__defaultValue__ = () -> (0 : stdgo.GoInt);
        @:mergeBlock {
            x.set(stdgo.Go.toInterface(("one" : stdgo.GoString)), (1 : stdgo.GoInt));
        };
        cast x;
    } : stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>), mii : ({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
        x.__defaultValue__ = () -> (0 : stdgo.GoInt);
        @:mergeBlock {
            x.set((1 : stdgo.GoInt), (1 : stdgo.GoInt));
        };
        x;
    } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>), mi32s : ({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        @:mergeBlock {
            x.set((1 : stdgo.GoInt32), ("one" : stdgo.GoString));
            x.set((2 : stdgo.GoInt32), ("two" : stdgo.GoString));
        };
        x;
    } : stdgo.GoMap<stdgo.GoInt32, stdgo.GoString>), mi64s : ({
        final x = new stdgo.GoMap.GoInt64Map<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        @:mergeBlock {
            x.set((2i64 : stdgo.GoInt64), ("i642" : stdgo.GoString));
            x.set((3i64 : stdgo.GoInt64), ("i643" : stdgo.GoString));
        };
        x;
    } : stdgo.GoMap<stdgo.GoInt64, stdgo.GoString>), mui32s : ({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        @:mergeBlock {
            x.set((2u32 : stdgo.GoUInt32), ("u322" : stdgo.GoString));
            x.set((3u32 : stdgo.GoUInt32), ("u323" : stdgo.GoString));
        };
        x;
    } : stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>), mui64s : ({
        final x = new stdgo.GoMap.GoInt64Map<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        @:mergeBlock {
            x.set((2i64 : stdgo.GoUInt64), ("ui642" : stdgo.GoString));
            x.set((3i64 : stdgo.GoUInt64), ("ui643" : stdgo.GoString));
        };
        x;
    } : stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>), mi8s : ({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        @:mergeBlock {
            x.set((2 : stdgo.GoInt8), ("i82" : stdgo.GoString));
            x.set((3 : stdgo.GoInt8), ("i83" : stdgo.GoString));
        };
        x;
    } : stdgo.GoMap<stdgo.GoInt8, stdgo.GoString>), mui8s : ({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        @:mergeBlock {
            x.set((2 : stdgo.GoUInt8), ("u82" : stdgo.GoString));
            x.set((3 : stdgo.GoUInt8), ("u83" : stdgo.GoString));
        };
        x;
    } : stdgo.GoMap<stdgo.GoUInt8, stdgo.GoString>), smsi : (new stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>(2, 2, ...[({
        final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
        x.__defaultValue__ = () -> (0 : stdgo.GoInt);
        @:mergeBlock {
            x.set(("one" : stdgo.GoString), (1 : stdgo.GoInt));
            x.set(("two" : stdgo.GoString), (2 : stdgo.GoInt));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>), ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
        x.__defaultValue__ = () -> (0 : stdgo.GoInt);
        @:mergeBlock {
            x.set(("eleven" : stdgo.GoString), (11 : stdgo.GoInt));
            x.set(("twelve" : stdgo.GoString), (12 : stdgo.GoInt));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>)]) : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>), empty1 : stdgo.Go.toInterface((3 : stdgo.GoInt)), empty2 : stdgo.Go.toInterface(("empty2" : stdgo.GoString)), empty3 : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(7 : stdgo.GoInt), (8 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)), empty4 : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.text.template.Template.U(("UinEmpty" : stdgo.GoString)) : stdgo._internal.text.template.Template.U)) : stdgo.Ref<stdgo._internal.text.template.Template.U>))), nonEmptyInterface : stdgo.Go.asInterface((stdgo.Go.setRef(({ x : ("x" : stdgo.GoString) } : stdgo._internal.text.template.Template.T_)) : stdgo.Ref<stdgo._internal.text.template.Template.T_>)), nonEmptyInterfacePtS : (stdgo.Go.setRef(_siVal) : stdgo.Ref<stdgo._internal.text.template.Template.I>), nonEmptyInterfaceTypedNil : stdgo.Go.asInterface(((null : stdgo.Ref<stdgo._internal.text.template.Template.T_>) : stdgo.Ref<T_>)), str : stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newBuffer((("foozle" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))), err : stdgo._internal.errors.Errors.new_(("erroozle" : stdgo.GoString)), pi : _newInt((23 : stdgo.GoInt)), ps : _newString(("a string" : stdgo.GoString)), psi : _newIntSlice((21 : stdgo.GoInt), (22 : stdgo.GoInt), (23 : stdgo.GoInt)), binaryFunc : function(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.fmt.Fmt.sprintf(("[%s=%s]" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b))?.__copy__();
    }, variadicFunc : function(_s:haxe.Rest<stdgo.GoString>):stdgo.GoString {
        return stdgo._internal.fmt.Fmt.sprint(stdgo.Go.toInterface(("<" : stdgo.GoString)), stdgo.Go.toInterface(stdgo._internal.strings.Strings.join(_s, ("+" : stdgo.GoString))), stdgo.Go.toInterface((">" : stdgo.GoString)))?.__copy__();
    }, variadicFuncInt : function(_a:stdgo.GoInt, _s:haxe.Rest<stdgo.GoString>):stdgo.GoString {
        return stdgo._internal.fmt.Fmt.sprint(stdgo.Go.toInterface(_a), stdgo.Go.toInterface(("=<" : stdgo.GoString)), stdgo.Go.toInterface(stdgo._internal.strings.Strings.join(_s, ("+" : stdgo.GoString))), stdgo.Go.toInterface((">" : stdgo.GoString)))?.__copy__();
    }, nilOKFunc : function(_s:stdgo.Pointer<stdgo.GoInt>):Bool {
        return _s == null;
    }, errFunc : function():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        return { _0 : ("bla" : stdgo.GoString), _1 : (null : stdgo.Error) };
    }, panicFunc : function():stdgo.GoString {
        throw stdgo.Go.toInterface(("test panic" : stdgo.GoString));
    }, tmpl : ({
        var __tmp__ = new_(("x" : stdgo.GoString)).parse(("test template" : stdgo.GoString));
        must((__tmp__._0 : stdgo.Ref<stdgo._internal.text.template.Template.Template>), (__tmp__._1 : stdgo.Error));
    }) } : stdgo._internal.text.template.Template.T_)) : stdgo.Ref<stdgo._internal.text.template.Template.T_>);
var _tSliceOfNil : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.Template.T_>> = (new stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.Template.T_>>(1, 1, ...[null]) : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.Template.T_>>);
var _iVal : stdgo._internal.text.template.Template.I = stdgo.Go.asInterface(_tVal);
var _myError : stdgo.Error = stdgo._internal.errors.Errors.new_(("my error" : stdgo.GoString));
var _bigInt : stdgo.GoString = stdgo._internal.fmt.Fmt.sprintf(("0x%x" : stdgo.GoString), stdgo.Go.toInterface((((1 : stdgo.GoInt) << ((stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface((0 : stdgo.GoInt))).bits() - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)));
var _bigUint : stdgo.GoString = stdgo._internal.fmt.Fmt.sprintf(("0x%x" : stdgo.GoString), stdgo.Go.toInterface(((1u32 : stdgo.GoUInt) << ((stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface((0 : stdgo.GoInt))).bits() - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt)));
var _execTests : stdgo.Slice<stdgo._internal.text.template.Template.T_execTest> = (new stdgo.Slice<stdgo._internal.text.template.Template.T_execTest>(320, 320, ...[
(new stdgo._internal.text.template.Template.T_execTest(("empty" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), (null : stdgo.AnyInterface), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("text" : stdgo.GoString), ("some text" : stdgo.GoString), ("some text" : stdgo.GoString), (null : stdgo.AnyInterface), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("nil action" : stdgo.GoString), ("{{nil}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (null : stdgo.AnyInterface), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("ideal int" : stdgo.GoString), ("{{typeOf 3}}" : stdgo.GoString), ("int" : stdgo.GoString), stdgo.Go.toInterface((0 : stdgo.GoInt)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("ideal float" : stdgo.GoString), ("{{typeOf 1.0}}" : stdgo.GoString), ("float64" : stdgo.GoString), stdgo.Go.toInterface((0 : stdgo.GoInt)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("ideal exp float" : stdgo.GoString), ("{{typeOf 1e1}}" : stdgo.GoString), ("float64" : stdgo.GoString), stdgo.Go.toInterface((0 : stdgo.GoInt)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("ideal complex" : stdgo.GoString), ("{{typeOf 1i}}" : stdgo.GoString), ("complex128" : stdgo.GoString), stdgo.Go.toInterface((0 : stdgo.GoInt)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("ideal int" : stdgo.GoString), ((("{{typeOf " : stdgo.GoString) + _bigInt?.__copy__() : stdgo.GoString) + ("}}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), ("int" : stdgo.GoString), stdgo.Go.toInterface((0 : stdgo.GoInt)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("ideal too big" : stdgo.GoString), ((("{{typeOf " : stdgo.GoString) + _bigUint?.__copy__() : stdgo.GoString) + ("}}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface((0 : stdgo.GoInt)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("ideal nil without type" : stdgo.GoString), ("{{nil}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface((0 : stdgo.GoInt)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest((".X" : stdgo.GoString), ("-{{.X}}-" : stdgo.GoString), ("-x-" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest((".U.V" : stdgo.GoString), ("-{{.U.V}}-" : stdgo.GoString), ("-v-" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest((".unexported" : stdgo.GoString), ("{{.unexported}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("map .one" : stdgo.GoString), ("{{.MSI.one}}" : stdgo.GoString), ("1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("map .two" : stdgo.GoString), ("{{.MSI.two}}" : stdgo.GoString), ("2" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("map .NO" : stdgo.GoString), ("{{.MSI.NO}}" : stdgo.GoString), ("<no value>" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("map .one interface" : stdgo.GoString), ("{{.MXI.one}}" : stdgo.GoString), ("1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("map .WRONG args" : stdgo.GoString), ("{{.MSI.one 1}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("map .WRONG type" : stdgo.GoString), ("{{.MII.one}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("dot int" : stdgo.GoString), ("<{{.}}>" : stdgo.GoString), ("<13>" : stdgo.GoString), stdgo.Go.toInterface((13 : stdgo.GoInt)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("dot uint" : stdgo.GoString), ("<{{.}}>" : stdgo.GoString), ("<14>" : stdgo.GoString), stdgo.Go.toInterface((14u32 : stdgo.GoUInt)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("dot float" : stdgo.GoString), ("<{{.}}>" : stdgo.GoString), ("<15.1>" : stdgo.GoString), stdgo.Go.toInterface((15.1 : stdgo.GoFloat64)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("dot bool" : stdgo.GoString), ("<{{.}}>" : stdgo.GoString), ("<true>" : stdgo.GoString), stdgo.Go.toInterface(true), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("dot complex" : stdgo.GoString), ("<{{.}}>" : stdgo.GoString), ("<(16.2-17i)>" : stdgo.GoString), stdgo.Go.toInterface(((16.2f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -17f64))), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("dot string" : stdgo.GoString), ("<{{.}}>" : stdgo.GoString), ("<hello>" : stdgo.GoString), stdgo.Go.toInterface(("hello" : stdgo.GoString)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("dot slice" : stdgo.GoString), ("<{{.}}>" : stdgo.GoString), ("<[-1 -2 -3]>" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(-1 : stdgo.GoInt), (-2 : stdgo.GoInt), (-3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("dot map" : stdgo.GoString), ("<{{.}}>" : stdgo.GoString), ("<map[two:22]>" : stdgo.GoString), stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
        x.__defaultValue__ = () -> (0 : stdgo.GoInt);
        @:mergeBlock {
            x.set(("two" : stdgo.GoString), (22 : stdgo.GoInt));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("dot struct" : stdgo.GoString), ("<{{.}}>" : stdgo.GoString), ("<{7 seven}>" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(({ _a : (7 : stdgo.GoInt), _b : ("seven" : stdgo.GoString) } : T__struct_0))), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("$ int" : stdgo.GoString), ("{{$}}" : stdgo.GoString), ("123" : stdgo.GoString), stdgo.Go.toInterface((123 : stdgo.GoInt)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("$.I" : stdgo.GoString), ("{{$.I}}" : stdgo.GoString), ("17" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("$.U.V" : stdgo.GoString), ("{{$.U.V}}" : stdgo.GoString), ("v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("declare in action" : stdgo.GoString), ("{{$x := $.U.V}}{{$x}}" : stdgo.GoString), ("v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("simple assignment" : stdgo.GoString), ("{{$x := 2}}{{$x = 3}}{{$x}}" : stdgo.GoString), ("3" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("nested assignment" : stdgo.GoString), ("{{$x := 2}}{{if true}}{{$x = 3}}{{end}}{{$x}}" : stdgo.GoString), ("3" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("nested assignment changes the last declaration" : stdgo.GoString), ("{{$x := 1}}{{if true}}{{$x := 2}}{{if true}}{{$x = 3}}{{end}}{{end}}{{$x}}" : stdgo.GoString), ("1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("V{6666}.String()" : stdgo.GoString), ("-{{.V0}}-" : stdgo.GoString), ("-<6666>-" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("&V{7777}.String()" : stdgo.GoString), ("-{{.V1}}-" : stdgo.GoString), ("-<7777>-" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("(*V)(nil).String()" : stdgo.GoString), ("-{{.V2}}-" : stdgo.GoString), ("-nilV-" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("W{888}.Error()" : stdgo.GoString), ("-{{.W0}}-" : stdgo.GoString), ("-[888]-" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("&W{999}.Error()" : stdgo.GoString), ("-{{.W1}}-" : stdgo.GoString), ("-[999]-" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("(*W)(nil).Error()" : stdgo.GoString), ("-{{.W2}}-" : stdgo.GoString), ("-nilW-" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("*int" : stdgo.GoString), ("{{.PI}}" : stdgo.GoString), ("23" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("*string" : stdgo.GoString), ("{{.PS}}" : stdgo.GoString), ("a string" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("*[]int" : stdgo.GoString), ("{{.PSI}}" : stdgo.GoString), ("[21 22 23]" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("*[]int[1]" : stdgo.GoString), ("{{index .PSI 1}}" : stdgo.GoString), ("22" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("NIL" : stdgo.GoString), ("{{.NIL}}" : stdgo.GoString), ("<nil>" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("empty nil" : stdgo.GoString), ("{{.Empty0}}" : stdgo.GoString), ("<no value>" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("empty with int" : stdgo.GoString), ("{{.Empty1}}" : stdgo.GoString), ("3" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("empty with string" : stdgo.GoString), ("{{.Empty2}}" : stdgo.GoString), ("empty2" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("empty with slice" : stdgo.GoString), ("{{.Empty3}}" : stdgo.GoString), ("[7 8]" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("empty with struct" : stdgo.GoString), ("{{.Empty4}}" : stdgo.GoString), ("{UinEmpty}" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("empty with struct, field" : stdgo.GoString), ("{{.Empty4.V}}" : stdgo.GoString), ("UinEmpty" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("field on interface" : stdgo.GoString), ("{{.foo}}" : stdgo.GoString), ("<no value>" : stdgo.GoString), (null : stdgo.AnyInterface), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("field on parenthesized interface" : stdgo.GoString), ("{{(.).foo}}" : stdgo.GoString), ("<no value>" : stdgo.GoString), (null : stdgo.AnyInterface), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("unparenthesized non-function" : stdgo.GoString), ("{{1 2}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (null : stdgo.AnyInterface), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("parenthesized non-function" : stdgo.GoString), ("{{(1) 2}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (null : stdgo.AnyInterface), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("parenthesized non-function with no args" : stdgo.GoString), ("{{(1)}}" : stdgo.GoString), ("1" : stdgo.GoString), (null : stdgo.AnyInterface), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest((".Method0" : stdgo.GoString), ("-{{.Method0}}-" : stdgo.GoString), ("-M0-" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest((".Method1(1234)" : stdgo.GoString), ("-{{.Method1 1234}}-" : stdgo.GoString), ("-1234-" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest((".Method1(.I)" : stdgo.GoString), ("-{{.Method1 .I}}-" : stdgo.GoString), ("-17-" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest((".Method2(3, .X)" : stdgo.GoString), ("-{{.Method2 3 .X}}-" : stdgo.GoString), ("-Method2: 3 x-" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest((".Method2(.U16, `str`)" : stdgo.GoString), ("-{{.Method2 .U16 `str`}}-" : stdgo.GoString), ("-Method2: 16 str-" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest((".Method2(.U16, $x)" : stdgo.GoString), ("{{if $x := .X}}-{{.Method2 .U16 $x}}{{end}}-" : stdgo.GoString), ("-Method2: 16 x-" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest((".Method3(nil constant)" : stdgo.GoString), ("-{{.Method3 nil}}-" : stdgo.GoString), ("-Method3: <nil>-" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest((".Method3(nil value)" : stdgo.GoString), ("-{{.Method3 .MXI.unset}}-" : stdgo.GoString), ("-Method3: <nil>-" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("method on var" : stdgo.GoString), ("{{if $x := .}}-{{$x.Method2 .U16 $x.X}}{{end}}-" : stdgo.GoString), ("-Method2: 16 x-" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("method on chained var" : stdgo.GoString), ("{{range .MSIone}}{{if $.U.TrueFalse $.True}}{{$.U.TrueFalse $.True}}{{else}}WRONG{{end}}{{end}}" : stdgo.GoString), ("true" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("chained method" : stdgo.GoString), ("{{range .MSIone}}{{if $.GetU.TrueFalse $.True}}{{$.U.TrueFalse $.True}}{{else}}WRONG{{end}}{{end}}" : stdgo.GoString), ("true" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("chained method on variable" : stdgo.GoString), ("{{with $x := .}}{{with .SI}}{{$.GetU.TrueFalse $.True}}{{end}}{{end}}" : stdgo.GoString), ("true" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest((".NilOKFunc not nil" : stdgo.GoString), ("{{call .NilOKFunc .PI}}" : stdgo.GoString), ("false" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest((".NilOKFunc nil" : stdgo.GoString), ("{{call .NilOKFunc nil}}" : stdgo.GoString), ("true" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("method on nil value from slice" : stdgo.GoString), ("-{{range .}}{{.Method1 1234}}{{end}}-" : stdgo.GoString), ("-1234-" : stdgo.GoString), stdgo.Go.toInterface(_tSliceOfNil), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("method on typed nil interface value" : stdgo.GoString), ("{{.NonEmptyInterfaceTypedNil.Method0}}" : stdgo.GoString), ("M0" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest((".BinaryFunc" : stdgo.GoString), ("{{call .BinaryFunc `1` `2`}}" : stdgo.GoString), ("[1=2]" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest((".VariadicFunc0" : stdgo.GoString), ("{{call .VariadicFunc}}" : stdgo.GoString), ("<>" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest((".VariadicFunc2" : stdgo.GoString), ("{{call .VariadicFunc `he` `llo`}}" : stdgo.GoString), ("<he+llo>" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest((".VariadicFuncInt" : stdgo.GoString), ("{{call .VariadicFuncInt 33 `he` `llo`}}" : stdgo.GoString), ("33=<he+llo>" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("if .BinaryFunc call" : stdgo.GoString), ("{{ if .BinaryFunc}}{{call .BinaryFunc `1` `2`}}{{end}}" : stdgo.GoString), ("[1=2]" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("if not .BinaryFunc call" : stdgo.GoString), ("{{ if not .BinaryFunc}}{{call .BinaryFunc `1` `2`}}{{else}}No{{end}}" : stdgo.GoString), ("No" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("Interface Call" : stdgo.GoString), ("{{stringer .S}}" : stdgo.GoString), ("foozle" : stdgo.GoString), stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
        x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
        @:mergeBlock {
            x.set(("S" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newBufferString(("foozle" : stdgo.GoString)))));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest((".ErrFunc" : stdgo.GoString), ("{{call .ErrFunc}}" : stdgo.GoString), ("bla" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("call nil" : stdgo.GoString), ("{{call nil}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest((".BinaryFuncTooFew" : stdgo.GoString), ("{{call .BinaryFunc `1`}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest((".BinaryFuncTooMany" : stdgo.GoString), ("{{call .BinaryFunc `1` `2` `3`}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest((".BinaryFuncBad0" : stdgo.GoString), ("{{call .BinaryFunc 1 3}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest((".BinaryFuncBad1" : stdgo.GoString), ("{{call .BinaryFunc `1` 3}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest((".VariadicFuncBad0" : stdgo.GoString), ("{{call .VariadicFunc 3}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest((".VariadicFuncIntBad0" : stdgo.GoString), ("{{call .VariadicFuncInt}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest((".VariadicFuncIntBad`" : stdgo.GoString), ("{{call .VariadicFuncInt `x`}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest((".VariadicFuncNilBad" : stdgo.GoString), ("{{call .VariadicFunc nil}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("pipeline" : stdgo.GoString), ("-{{.Method0 | .Method2 .U16}}-" : stdgo.GoString), ("-Method2: 16 M0-" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("pipeline func" : stdgo.GoString), ("-{{call .VariadicFunc `llo` | call .VariadicFunc `he` }}-" : stdgo.GoString), ("-<he+<llo>>-" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("nil pipeline" : stdgo.GoString), ("{{ .Empty0 | call .NilOKFunc }}" : stdgo.GoString), ("true" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("nil call arg" : stdgo.GoString), ("{{ call .NilOKFunc .Empty0 }}" : stdgo.GoString), ("true" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bad nil pipeline" : stdgo.GoString), ("{{ .Empty0 | .VariadicFunc }}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("parens in pipeline" : stdgo.GoString), ("{{printf `%d %d %d` (1) (2 | add 3) (add 4 (add 5 6))}}" : stdgo.GoString), ("1 5 15" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("parens: $ in paren" : stdgo.GoString), ("{{($).X}}" : stdgo.GoString), ("x" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("parens: $.GetU in paren" : stdgo.GoString), ("{{($.GetU).V}}" : stdgo.GoString), ("v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("parens: $ in paren in pipe" : stdgo.GoString), ("{{($ | echo).X}}" : stdgo.GoString), ("x" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("parens: spaces and args" : stdgo.GoString), ("{{(makemap \"up\" \"down\" \"left\" \"right\").left}}" : stdgo.GoString), ("right" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("if true" : stdgo.GoString), ("{{if true}}TRUE{{end}}" : stdgo.GoString), ("TRUE" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("if false" : stdgo.GoString), ("{{if false}}TRUE{{else}}FALSE{{end}}" : stdgo.GoString), ("FALSE" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("if nil" : stdgo.GoString), ("{{if nil}}TRUE{{end}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("if on typed nil interface value" : stdgo.GoString), ("{{if .NonEmptyInterfaceTypedNil}}TRUE{{ end }}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("if 1" : stdgo.GoString), ("{{if 1}}NON-ZERO{{else}}ZERO{{end}}" : stdgo.GoString), ("NON-ZERO" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("if 0" : stdgo.GoString), ("{{if 0}}NON-ZERO{{else}}ZERO{{end}}" : stdgo.GoString), ("ZERO" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("if 1.5" : stdgo.GoString), ("{{if 1.5}}NON-ZERO{{else}}ZERO{{end}}" : stdgo.GoString), ("NON-ZERO" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("if 0.0" : stdgo.GoString), ("{{if .FloatZero}}NON-ZERO{{else}}ZERO{{end}}" : stdgo.GoString), ("ZERO" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("if 1.5i" : stdgo.GoString), ("{{if 1.5i}}NON-ZERO{{else}}ZERO{{end}}" : stdgo.GoString), ("NON-ZERO" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("if 0.0i" : stdgo.GoString), ("{{if .ComplexZero}}NON-ZERO{{else}}ZERO{{end}}" : stdgo.GoString), ("ZERO" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("if emptystring" : stdgo.GoString), ("{{if ``}}NON-EMPTY{{else}}EMPTY{{end}}" : stdgo.GoString), ("EMPTY" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("if string" : stdgo.GoString), ("{{if `notempty`}}NON-EMPTY{{else}}EMPTY{{end}}" : stdgo.GoString), ("NON-EMPTY" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("if emptyslice" : stdgo.GoString), ("{{if .SIEmpty}}NON-EMPTY{{else}}EMPTY{{end}}" : stdgo.GoString), ("EMPTY" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("if slice" : stdgo.GoString), ("{{if .SI}}NON-EMPTY{{else}}EMPTY{{end}}" : stdgo.GoString), ("NON-EMPTY" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("if emptymap" : stdgo.GoString), ("{{if .MSIEmpty}}NON-EMPTY{{else}}EMPTY{{end}}" : stdgo.GoString), ("EMPTY" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("if map" : stdgo.GoString), ("{{if .MSI}}NON-EMPTY{{else}}EMPTY{{end}}" : stdgo.GoString), ("NON-EMPTY" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("if map unset" : stdgo.GoString), ("{{if .MXI.none}}NON-ZERO{{else}}ZERO{{end}}" : stdgo.GoString), ("ZERO" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("if map not unset" : stdgo.GoString), ("{{if not .MXI.none}}ZERO{{else}}NON-ZERO{{end}}" : stdgo.GoString), ("ZERO" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("if $x with $y int" : stdgo.GoString), ("{{if $x := true}}{{with $y := .I}}{{$x}},{{$y}}{{end}}{{end}}" : stdgo.GoString), ("true,17" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("if $x with $x int" : stdgo.GoString), ("{{if $x := true}}{{with $x := .I}}{{$x}},{{end}}{{$x}}{{end}}" : stdgo.GoString), ("17,true" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("if else if" : stdgo.GoString), ("{{if false}}FALSE{{else if true}}TRUE{{end}}" : stdgo.GoString), ("TRUE" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("if else chain" : stdgo.GoString), ("{{if eq 1 3}}1{{else if eq 2 3}}2{{else if eq 3 3}}3{{end}}" : stdgo.GoString), ("3" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("print" : stdgo.GoString), ("{{print \"hello, print\"}}" : stdgo.GoString), ("hello, print" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("print 123" : stdgo.GoString), ("{{print 1 2 3}}" : stdgo.GoString), ("1 2 3" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("print nil" : stdgo.GoString), ("{{print nil}}" : stdgo.GoString), ("<nil>" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("println" : stdgo.GoString), ("{{println 1 2 3}}" : stdgo.GoString), ("1 2 3\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("printf int" : stdgo.GoString), ("{{printf \"%04x\" 127}}" : stdgo.GoString), ("007f" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("printf float" : stdgo.GoString), ("{{printf \"%g\" 3.5}}" : stdgo.GoString), ("3.5" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("printf complex" : stdgo.GoString), ("{{printf \"%g\" 1+7i}}" : stdgo.GoString), ("(1+7i)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("printf string" : stdgo.GoString), ("{{printf \"%s\" \"hello\"}}" : stdgo.GoString), ("hello" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("printf function" : stdgo.GoString), ("{{printf \"%#q\" zeroArgs}}" : stdgo.GoString), ("`zeroArgs`" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("printf field" : stdgo.GoString), ("{{printf \"%s\" .U.V}}" : stdgo.GoString), ("v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("printf method" : stdgo.GoString), ("{{printf \"%s\" .Method0}}" : stdgo.GoString), ("M0" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("printf dot" : stdgo.GoString), ("{{with .I}}{{printf \"%d\" .}}{{end}}" : stdgo.GoString), ("17" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("printf var" : stdgo.GoString), ("{{with $x := .I}}{{printf \"%d\" $x}}{{end}}" : stdgo.GoString), ("17" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("printf lots" : stdgo.GoString), ("{{printf \"%d %s %g %s\" 127 \"hello\" 7-3i .Method0}}" : stdgo.GoString), ("127 hello (7-3i) M0" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("html" : stdgo.GoString), ("{{html \"<script>alert(\\\"XSS\\\");</script>\"}}" : stdgo.GoString), ("&lt;script&gt;alert(&#34;XSS&#34;);&lt;/script&gt;" : stdgo.GoString), (null : stdgo.AnyInterface), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("html pipeline" : stdgo.GoString), ("{{printf \"<script>alert(\\\"XSS\\\");</script>\" | html}}" : stdgo.GoString), ("&lt;script&gt;alert(&#34;XSS&#34;);&lt;/script&gt;" : stdgo.GoString), (null : stdgo.AnyInterface), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("html" : stdgo.GoString), ("{{html .PS}}" : stdgo.GoString), ("a string" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("html typed nil" : stdgo.GoString), ("{{html .NIL}}" : stdgo.GoString), ("&lt;nil&gt;" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("html untyped nil" : stdgo.GoString), ("{{html .Empty0}}" : stdgo.GoString), ("&lt;no value&gt;" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("js" : stdgo.GoString), ("{{js .}}" : stdgo.GoString), ("It\\\'d be nice." : stdgo.GoString), stdgo.Go.toInterface(("It\'d be nice." : stdgo.GoString)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("urlquery" : stdgo.GoString), ("{{\"http://www.example.org/\"|urlquery}}" : stdgo.GoString), ("http%3A%2F%2Fwww.example.org%2F" : stdgo.GoString), (null : stdgo.AnyInterface), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("not" : stdgo.GoString), ("{{not true}} {{not false}}" : stdgo.GoString), ("false true" : stdgo.GoString), (null : stdgo.AnyInterface), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("and" : stdgo.GoString), ("{{and false 0}} {{and 1 0}} {{and 0 true}} {{and 1 1}}" : stdgo.GoString), ("false 0 0 1" : stdgo.GoString), (null : stdgo.AnyInterface), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("or" : stdgo.GoString), ("{{or 0 0}} {{or 1 0}} {{or 0 true}} {{or 1 1}}" : stdgo.GoString), ("0 1 true 1" : stdgo.GoString), (null : stdgo.AnyInterface), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("or short-circuit" : stdgo.GoString), ("{{or 0 1 (die)}}" : stdgo.GoString), ("1" : stdgo.GoString), (null : stdgo.AnyInterface), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("and short-circuit" : stdgo.GoString), ("{{and 1 0 (die)}}" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.AnyInterface), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("or short-circuit2" : stdgo.GoString), ("{{or 0 0 (die)}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (null : stdgo.AnyInterface), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("and short-circuit2" : stdgo.GoString), ("{{and 1 1 (die)}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (null : stdgo.AnyInterface), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("and pipe-true" : stdgo.GoString), ("{{1 | and 1}}" : stdgo.GoString), ("1" : stdgo.GoString), (null : stdgo.AnyInterface), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("and pipe-false" : stdgo.GoString), ("{{0 | and 1}}" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.AnyInterface), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("or pipe-true" : stdgo.GoString), ("{{1 | or 0}}" : stdgo.GoString), ("1" : stdgo.GoString), (null : stdgo.AnyInterface), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("or pipe-false" : stdgo.GoString), ("{{0 | or 0}}" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.AnyInterface), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("and undef" : stdgo.GoString), ("{{and 1 .Unknown}}" : stdgo.GoString), ("<no value>" : stdgo.GoString), (null : stdgo.AnyInterface), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("or undef" : stdgo.GoString), ("{{or 0 .Unknown}}" : stdgo.GoString), ("<no value>" : stdgo.GoString), (null : stdgo.AnyInterface), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("boolean if" : stdgo.GoString), ("{{if and true 1 `hi`}}TRUE{{else}}FALSE{{end}}" : stdgo.GoString), ("TRUE" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("boolean if not" : stdgo.GoString), ("{{if and true 1 `hi` | not}}TRUE{{else}}FALSE{{end}}" : stdgo.GoString), ("FALSE" : stdgo.GoString), (null : stdgo.AnyInterface), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("boolean if pipe" : stdgo.GoString), ("{{if true | not | and 1}}TRUE{{else}}FALSE{{end}}" : stdgo.GoString), ("FALSE" : stdgo.GoString), (null : stdgo.AnyInterface), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("slice[0]" : stdgo.GoString), ("{{index .SI 0}}" : stdgo.GoString), ("3" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("slice[1]" : stdgo.GoString), ("{{index .SI 1}}" : stdgo.GoString), ("4" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("slice[HUGE]" : stdgo.GoString), ("{{index .SI 10}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("slice[WRONG]" : stdgo.GoString), ("{{index .SI `hello`}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("slice[nil]" : stdgo.GoString), ("{{index .SI nil}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("map[one]" : stdgo.GoString), ("{{index .MSI `one`}}" : stdgo.GoString), ("1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("map[two]" : stdgo.GoString), ("{{index .MSI `two`}}" : stdgo.GoString), ("2" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("map[NO]" : stdgo.GoString), ("{{index .MSI `XXX`}}" : stdgo.GoString), ("0" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("map[nil]" : stdgo.GoString), ("{{index .MSI nil}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("map[``]" : stdgo.GoString), ("{{index .MSI ``}}" : stdgo.GoString), ("0" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("map[WRONG]" : stdgo.GoString), ("{{index .MSI 10}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("double index" : stdgo.GoString), ("{{index .SMSI 1 `eleven`}}" : stdgo.GoString), ("11" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("nil[1]" : stdgo.GoString), ("{{index nil 1}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("map MI64S" : stdgo.GoString), ("{{index .MI64S 2}}" : stdgo.GoString), ("i642" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("map MI32S" : stdgo.GoString), ("{{index .MI32S 2}}" : stdgo.GoString), ("two" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("map MUI64S" : stdgo.GoString), ("{{index .MUI64S 3}}" : stdgo.GoString), ("ui643" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("map MI8S" : stdgo.GoString), ("{{index .MI8S 3}}" : stdgo.GoString), ("i83" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("map MUI8S" : stdgo.GoString), ("{{index .MUI8S 2}}" : stdgo.GoString), ("u82" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("index of an interface field" : stdgo.GoString), ("{{index .Empty3 0}}" : stdgo.GoString), ("7" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("slice[:]" : stdgo.GoString), ("{{slice .SI}}" : stdgo.GoString), ("[3 4 5]" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("slice[1:]" : stdgo.GoString), ("{{slice .SI 1}}" : stdgo.GoString), ("[4 5]" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("slice[1:2]" : stdgo.GoString), ("{{slice .SI 1 2}}" : stdgo.GoString), ("[4]" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("slice[-1:]" : stdgo.GoString), ("{{slice .SI -1}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("slice[1:-2]" : stdgo.GoString), ("{{slice .SI 1 -2}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("slice[1:2:-1]" : stdgo.GoString), ("{{slice .SI 1 2 -1}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("slice[2:1]" : stdgo.GoString), ("{{slice .SI 2 1}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("slice[2:2:1]" : stdgo.GoString), ("{{slice .SI 2 2 1}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("out of range" : stdgo.GoString), ("{{slice .SI 4 5}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("out of range" : stdgo.GoString), ("{{slice .SI 2 2 5}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("len(s) < indexes < cap(s)" : stdgo.GoString), ("{{slice .SICap 6 10}}" : stdgo.GoString), ("[0 0 0 0]" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("len(s) < indexes < cap(s)" : stdgo.GoString), ("{{slice .SICap 6 10 10}}" : stdgo.GoString), ("[0 0 0 0]" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("indexes > cap(s)" : stdgo.GoString), ("{{slice .SICap 10 11}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("indexes > cap(s)" : stdgo.GoString), ("{{slice .SICap 6 10 11}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("array[:]" : stdgo.GoString), ("{{slice .AI}}" : stdgo.GoString), ("[3 4 5]" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("array[1:]" : stdgo.GoString), ("{{slice .AI 1}}" : stdgo.GoString), ("[4 5]" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("array[1:2]" : stdgo.GoString), ("{{slice .AI 1 2}}" : stdgo.GoString), ("[4]" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("string[:]" : stdgo.GoString), ("{{slice .S}}" : stdgo.GoString), ("xyz" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("string[0:1]" : stdgo.GoString), ("{{slice .S 0 1}}" : stdgo.GoString), ("x" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("string[1:]" : stdgo.GoString), ("{{slice .S 1}}" : stdgo.GoString), ("yz" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("string[1:2]" : stdgo.GoString), ("{{slice .S 1 2}}" : stdgo.GoString), ("y" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("out of range" : stdgo.GoString), ("{{slice .S 1 5}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("3-index slice of string" : stdgo.GoString), ("{{slice .S 1 2 2}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("slice of an interface field" : stdgo.GoString), ("{{slice .Empty3 0 1}}" : stdgo.GoString), ("[7]" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("slice" : stdgo.GoString), ("{{len .SI}}" : stdgo.GoString), ("3" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("map" : stdgo.GoString), ("{{len .MSI }}" : stdgo.GoString), ("3" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("len of int" : stdgo.GoString), ("{{len 3}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("len of nothing" : stdgo.GoString), ("{{len .Empty0}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("len of an interface field" : stdgo.GoString), ("{{len .Empty3}}" : stdgo.GoString), ("2" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("with true" : stdgo.GoString), ("{{with true}}{{.}}{{end}}" : stdgo.GoString), ("true" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("with false" : stdgo.GoString), ("{{with false}}{{.}}{{else}}FALSE{{end}}" : stdgo.GoString), ("FALSE" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("with 1" : stdgo.GoString), ("{{with 1}}{{.}}{{else}}ZERO{{end}}" : stdgo.GoString), ("1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("with 0" : stdgo.GoString), ("{{with 0}}{{.}}{{else}}ZERO{{end}}" : stdgo.GoString), ("ZERO" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("with 1.5" : stdgo.GoString), ("{{with 1.5}}{{.}}{{else}}ZERO{{end}}" : stdgo.GoString), ("1.5" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("with 0.0" : stdgo.GoString), ("{{with .FloatZero}}{{.}}{{else}}ZERO{{end}}" : stdgo.GoString), ("ZERO" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("with 1.5i" : stdgo.GoString), ("{{with 1.5i}}{{.}}{{else}}ZERO{{end}}" : stdgo.GoString), ("(0+1.5i)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("with 0.0i" : stdgo.GoString), ("{{with .ComplexZero}}{{.}}{{else}}ZERO{{end}}" : stdgo.GoString), ("ZERO" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("with emptystring" : stdgo.GoString), ("{{with ``}}{{.}}{{else}}EMPTY{{end}}" : stdgo.GoString), ("EMPTY" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("with string" : stdgo.GoString), ("{{with `notempty`}}{{.}}{{else}}EMPTY{{end}}" : stdgo.GoString), ("notempty" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("with emptyslice" : stdgo.GoString), ("{{with .SIEmpty}}{{.}}{{else}}EMPTY{{end}}" : stdgo.GoString), ("EMPTY" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("with slice" : stdgo.GoString), ("{{with .SI}}{{.}}{{else}}EMPTY{{end}}" : stdgo.GoString), ("[3 4 5]" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("with emptymap" : stdgo.GoString), ("{{with .MSIEmpty}}{{.}}{{else}}EMPTY{{end}}" : stdgo.GoString), ("EMPTY" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("with map" : stdgo.GoString), ("{{with .MSIone}}{{.}}{{else}}EMPTY{{end}}" : stdgo.GoString), ("map[one:1]" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("with empty interface, struct field" : stdgo.GoString), ("{{with .Empty4}}{{.V}}{{end}}" : stdgo.GoString), ("UinEmpty" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("with $x int" : stdgo.GoString), ("{{with $x := .I}}{{$x}}{{end}}" : stdgo.GoString), ("17" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("with $x struct.U.V" : stdgo.GoString), ("{{with $x := $}}{{$x.U.V}}{{end}}" : stdgo.GoString), ("v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("with variable and action" : stdgo.GoString), ("{{with $x := $}}{{$y := $.U.V}}{{$y}}{{end}}" : stdgo.GoString), ("v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("with on typed nil interface value" : stdgo.GoString), ("{{with .NonEmptyInterfaceTypedNil}}TRUE{{ end }}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("range []int" : stdgo.GoString), ("{{range .SI}}-{{.}}-{{end}}" : stdgo.GoString), ("-3--4--5-" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("range empty no else" : stdgo.GoString), ("{{range .SIEmpty}}-{{.}}-{{end}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("range []int else" : stdgo.GoString), ("{{range .SI}}-{{.}}-{{else}}EMPTY{{end}}" : stdgo.GoString), ("-3--4--5-" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("range empty else" : stdgo.GoString), ("{{range .SIEmpty}}-{{.}}-{{else}}EMPTY{{end}}" : stdgo.GoString), ("EMPTY" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("range []int break else" : stdgo.GoString), ("{{range .SI}}-{{.}}-{{break}}NOTREACHED{{else}}EMPTY{{end}}" : stdgo.GoString), ("-3-" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("range []int continue else" : stdgo.GoString), ("{{range .SI}}-{{.}}-{{continue}}NOTREACHED{{else}}EMPTY{{end}}" : stdgo.GoString), ("-3--4--5-" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("range []bool" : stdgo.GoString), ("{{range .SB}}-{{.}}-{{end}}" : stdgo.GoString), ("-true--false-" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("range []int method" : stdgo.GoString), ("{{range .SI | .MAdd .I}}-{{.}}-{{end}}" : stdgo.GoString), ("-20--21--22-" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("range map" : stdgo.GoString), ("{{range .MSI}}-{{.}}-{{end}}" : stdgo.GoString), ("-1--3--2-" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("range empty map no else" : stdgo.GoString), ("{{range .MSIEmpty}}-{{.}}-{{end}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("range map else" : stdgo.GoString), ("{{range .MSI}}-{{.}}-{{else}}EMPTY{{end}}" : stdgo.GoString), ("-1--3--2-" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("range empty map else" : stdgo.GoString), ("{{range .MSIEmpty}}-{{.}}-{{else}}EMPTY{{end}}" : stdgo.GoString), ("EMPTY" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("range empty interface" : stdgo.GoString), ("{{range .Empty3}}-{{.}}-{{else}}EMPTY{{end}}" : stdgo.GoString), ("-7--8-" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("range empty nil" : stdgo.GoString), ("{{range .Empty0}}-{{.}}-{{end}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("range $x SI" : stdgo.GoString), ("{{range $x := .SI}}<{{$x}}>{{end}}" : stdgo.GoString), ("<3><4><5>" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("range $x $y SI" : stdgo.GoString), ("{{range $x, $y := .SI}}<{{$x}}={{$y}}>{{end}}" : stdgo.GoString), ("<0=3><1=4><2=5>" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("range $x MSIone" : stdgo.GoString), ("{{range $x := .MSIone}}<{{$x}}>{{end}}" : stdgo.GoString), ("<1>" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("range $x $y MSIone" : stdgo.GoString), ("{{range $x, $y := .MSIone}}<{{$x}}={{$y}}>{{end}}" : stdgo.GoString), ("<one=1>" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("range $x PSI" : stdgo.GoString), ("{{range $x := .PSI}}<{{$x}}>{{end}}" : stdgo.GoString), ("<21><22><23>" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("declare in range" : stdgo.GoString), ("{{range $x := .PSI}}<{{$foo:=$x}}{{$x}}>{{end}}" : stdgo.GoString), ("<21><22><23>" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("range count" : stdgo.GoString), ("{{range $i, $x := count 5}}[{{$i}}]{{$x}}{{end}}" : stdgo.GoString), ("[0]a[1]b[2]c[3]d[4]e" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("range nil count" : stdgo.GoString), ("{{range $i, $x := count 0}}{{else}}empty{{end}}" : stdgo.GoString), ("empty" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("or as if true" : stdgo.GoString), ("{{or .SI \"slice is empty\"}}" : stdgo.GoString), ("[3 4 5]" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("or as if false" : stdgo.GoString), ("{{or .SIEmpty \"slice is empty\"}}" : stdgo.GoString), ("slice is empty" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("error method, error" : stdgo.GoString), ("{{.MyError true}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("error method, no error" : stdgo.GoString), ("{{.MyError false}}" : stdgo.GoString), ("false" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("decimal" : stdgo.GoString), ("{{print 1234}}" : stdgo.GoString), ("1234" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("decimal _" : stdgo.GoString), ("{{print 12_34}}" : stdgo.GoString), ("1234" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("binary" : stdgo.GoString), ("{{print 0b101}}" : stdgo.GoString), ("5" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("binary _" : stdgo.GoString), ("{{print 0b_1_0_1}}" : stdgo.GoString), ("5" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("BINARY" : stdgo.GoString), ("{{print 0B101}}" : stdgo.GoString), ("5" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("octal0" : stdgo.GoString), ("{{print 0377}}" : stdgo.GoString), ("255" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("octal" : stdgo.GoString), ("{{print 0o377}}" : stdgo.GoString), ("255" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("octal _" : stdgo.GoString), ("{{print 0o_3_7_7}}" : stdgo.GoString), ("255" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("OCTAL" : stdgo.GoString), ("{{print 0O377}}" : stdgo.GoString), ("255" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("hex" : stdgo.GoString), ("{{print 0x123}}" : stdgo.GoString), ("291" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("hex _" : stdgo.GoString), ("{{print 0x1_23}}" : stdgo.GoString), ("291" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("HEX" : stdgo.GoString), ("{{print 0X123ABC}}" : stdgo.GoString), ("1194684" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("float" : stdgo.GoString), ("{{print 123.4}}" : stdgo.GoString), ("123.4" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("float _" : stdgo.GoString), ("{{print 0_0_1_2_3.4}}" : stdgo.GoString), ("123.4" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("hex float" : stdgo.GoString), ("{{print +0x1.ep+2}}" : stdgo.GoString), ("7.5" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("hex float _" : stdgo.GoString), ("{{print +0x_1.e_0p+0_2}}" : stdgo.GoString), ("7.5" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("HEX float" : stdgo.GoString), ("{{print +0X1.EP+2}}" : stdgo.GoString), ("7.5" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("print multi" : stdgo.GoString), ("{{print 1_2_3_4 7.5_00_00_00}}" : stdgo.GoString), ("1234 7.5" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("print multi2" : stdgo.GoString), ("{{print 1234 0x0_1.e_0p+02}}" : stdgo.GoString), ("1234 7.5" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug0" : stdgo.GoString), ("{{range .MSIone}}{{if $.Method1 .}}X{{end}}{{end}}" : stdgo.GoString), ("X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug1" : stdgo.GoString), ("{{.Method0}}" : stdgo.GoString), ("M0" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_iVal) : stdgo.Ref<stdgo._internal.text.template.Template.I>)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug2" : stdgo.GoString), ("{{$.NonEmptyInterface.Method0}}" : stdgo.GoString), ("M0" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug3" : stdgo.GoString), ("{{with $}}{{.Method0}}{{end}}" : stdgo.GoString), ("M0" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug4" : stdgo.GoString), ("{{if .Empty0}}non-nil{{else}}nil{{end}}" : stdgo.GoString), ("nil" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug5" : stdgo.GoString), ("{{.Str}}" : stdgo.GoString), ("foozle" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug5a" : stdgo.GoString), ("{{.Err}}" : stdgo.GoString), ("erroozle" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug6a" : stdgo.GoString), ("{{vfunc .V0 .V1}}" : stdgo.GoString), ("vfunc" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug6b" : stdgo.GoString), ("{{vfunc .V0 .V0}}" : stdgo.GoString), ("vfunc" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug6c" : stdgo.GoString), ("{{vfunc .V1 .V0}}" : stdgo.GoString), ("vfunc" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug6d" : stdgo.GoString), ("{{vfunc .V1 .V1}}" : stdgo.GoString), ("vfunc" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug7a" : stdgo.GoString), ("{{3 2}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug7b" : stdgo.GoString), ("{{$x := 1}}{{$x 2}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug7c" : stdgo.GoString), ("{{$x := 1}}{{3 | $x}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug8a" : stdgo.GoString), ("{{3|oneArg}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug8b" : stdgo.GoString), ("{{4|dddArg 3}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug9" : stdgo.GoString), ("{{.cause}}" : stdgo.GoString), ("neglect" : stdgo.GoString), stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        @:mergeBlock {
            x.set(("cause" : stdgo.GoString), ("neglect" : stdgo.GoString));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug10" : stdgo.GoString), ("{{mapOfThree.three}}-{{(mapOfThree).three}}" : stdgo.GoString), ("3-3" : stdgo.GoString), stdgo.Go.toInterface((0 : stdgo.GoInt)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug11" : stdgo.GoString), ("{{valueString .PS}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.text.template.Template.T_() : stdgo._internal.text.template.Template.T_))), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug12xe" : stdgo.GoString), ("{{printf `%T` 0xef}}" : stdgo.GoString), ("int" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.text.template.Template.T_() : stdgo._internal.text.template.Template.T_))), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug12xE" : stdgo.GoString), ("{{printf `%T` 0xEE}}" : stdgo.GoString), ("int" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.text.template.Template.T_() : stdgo._internal.text.template.Template.T_))), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug12Xe" : stdgo.GoString), ("{{printf `%T` 0Xef}}" : stdgo.GoString), ("int" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.text.template.Template.T_() : stdgo._internal.text.template.Template.T_))), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug12XE" : stdgo.GoString), ("{{printf `%T` 0XEE}}" : stdgo.GoString), ("int" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.text.template.Template.T_() : stdgo._internal.text.template.Template.T_))), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug13" : stdgo.GoString), ("{{print (.Copy).I}}" : stdgo.GoString), ("17" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug14a" : stdgo.GoString), ("{{(nil).True}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug14b" : stdgo.GoString), ("{{$x := nil}}{{$x.anything}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug14c" : stdgo.GoString), ("{{$x := (1.0)}}{{$y := (\"hello\")}}{{$x.anything}}{{$y.true}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug15" : stdgo.GoString), ("{{valueString returnInt}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug16a" : stdgo.GoString), ("{{true|printf}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug16b" : stdgo.GoString), ("{{1|printf}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug16c" : stdgo.GoString), ("{{1.1|printf}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug16d" : stdgo.GoString), ("{{\'x\'|printf}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug16e" : stdgo.GoString), ("{{0i|printf}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug16f" : stdgo.GoString), ("{{true|twoArgs \"xxx\"}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug16g" : stdgo.GoString), ("{{\"aaa\" |twoArgs \"bbb\"}}" : stdgo.GoString), ("twoArgs=bbbaaa" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug16h" : stdgo.GoString), ("{{1|oneArg}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), false) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug16i" : stdgo.GoString), ("{{\"aaa\"|oneArg}}" : stdgo.GoString), ("oneArg=aaa" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug16j" : stdgo.GoString), ("{{1+2i|printf \"%v\"}}" : stdgo.GoString), ("(1+2i)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug16k" : stdgo.GoString), ("{{\"aaa\"|printf }}" : stdgo.GoString), ("aaa" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug17a" : stdgo.GoString), ("{{.NonEmptyInterface.X}}" : stdgo.GoString), ("x" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug17b" : stdgo.GoString), ("-{{.NonEmptyInterface.Method1 1234}}-" : stdgo.GoString), ("-1234-" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug17c" : stdgo.GoString), ("{{len .NonEmptyInterfacePtS}}" : stdgo.GoString), ("2" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug17d" : stdgo.GoString), ("{{index .NonEmptyInterfacePtS 0}}" : stdgo.GoString), ("a" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug17e" : stdgo.GoString), ("{{range .NonEmptyInterfacePtS}}-{{.}}-{{end}}" : stdgo.GoString), ("-a--b-" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug18a" : stdgo.GoString), ("{{eq . \'.\'}}" : stdgo.GoString), ("true" : stdgo.GoString), stdgo.Go.toInterface((46 : stdgo.GoInt32)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug18b" : stdgo.GoString), ("{{eq . \'e\'}}" : stdgo.GoString), ("true" : stdgo.GoString), stdgo.Go.toInterface((101 : stdgo.GoInt32)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("bug18c" : stdgo.GoString), ("{{eq . \'P\'}}" : stdgo.GoString), ("true" : stdgo.GoString), stdgo.Go.toInterface((80 : stdgo.GoInt32)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("issue56490" : stdgo.GoString), ("{{$i := 0}}{{$x := 0}}{{range $i = .AI}}{{end}}{{$i}}" : stdgo.GoString), ("5" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("issue60801" : stdgo.GoString), ("{{$k := 0}}{{$v := 0}}{{range $k, $v = .AI}}{{$k}}={{$v}} {{end}}" : stdgo.GoString), ("0=3 1=4 2=5 " : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest)].concat([for (i in 320 ... (320 > 320 ? 320 : 320 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.text.template.Template.T_execTest)])) : stdgo.Slice<stdgo._internal.text.template.Template.T_execTest>);
var _delimPairs : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(10, 10, ...[stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), ("{{" : stdgo.GoString), ("}}" : stdgo.GoString), ("<<" : stdgo.GoString), (">>" : stdgo.GoString), ("|" : stdgo.GoString), ("|" : stdgo.GoString), ("(日)" : stdgo.GoString), ("(本)" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _cmpTests : stdgo.Slice<stdgo._internal.text.template.Template.T_cmpTest> = (new stdgo.Slice<stdgo._internal.text.template.Template.T_cmpTest>(117, 117, ...[
(new stdgo._internal.text.template.Template.T_cmpTest(("eq true true" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq true false" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq 1+2i 1+2i" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq 1+2i 1+3i" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq 1.5 1.5" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq 1.5 2.5" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq 1 1" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq 1 2" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq `xy` `xy`" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq `xy` `xyz`" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq .Uthree .Uthree" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq .Uthree .Ufour" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq 3 4 5 6 3" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq 3 4 5 6 7" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("ne true true" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("ne true false" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("ne 1+2i 1+2i" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("ne 1+2i 1+3i" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("ne 1.5 1.5" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("ne 1.5 2.5" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("ne 1 1" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("ne 1 2" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("ne `xy` `xy`" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("ne `xy` `xyz`" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("ne .Uthree .Uthree" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("ne .Uthree .Ufour" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("lt 1.5 1.5" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("lt 1.5 2.5" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("lt 1 1" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("lt 1 2" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("lt `xy` `xy`" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("lt `xy` `xyz`" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("lt .Uthree .Uthree" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("lt .Uthree .Ufour" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("le 1.5 1.5" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("le 1.5 2.5" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("le 2.5 1.5" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("le 1 1" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("le 1 2" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("le 2 1" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("le `xy` `xy`" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("le `xy` `xyz`" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("le `xyz` `xy`" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("le .Uthree .Uthree" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("le .Uthree .Ufour" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("le .Ufour .Uthree" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("gt 1.5 1.5" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("gt 1.5 2.5" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("gt 1 1" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("gt 2 1" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("gt 1 2" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("gt `xy` `xy`" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("gt `xy` `xyz`" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("gt .Uthree .Uthree" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("gt .Uthree .Ufour" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("gt .Ufour .Uthree" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("ge 1.5 1.5" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("ge 1.5 2.5" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("ge 2.5 1.5" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("ge 1 1" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("ge 1 2" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("ge 2 1" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("ge `xy` `xy`" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("ge `xy` `xyz`" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("ge `xyz` `xy`" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("ge .Uthree .Uthree" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("ge .Uthree .Ufour" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("ge .Ufour .Uthree" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq .Uthree .Three" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq .Three .Uthree" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("le .Uthree .Three" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("le .Three .Uthree" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("ge .Uthree .Three" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("ge .Three .Uthree" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("lt .Uthree .Three" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("lt .Three .Uthree" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("gt .Uthree .Three" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("gt .Three .Uthree" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq .Ufour .Three" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("lt .Ufour .Three" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("gt .Ufour .Three" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq .NegOne .Uthree" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq .Uthree .NegOne" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("ne .NegOne .Uthree" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("ne .Uthree .NegOne" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("lt .NegOne .Uthree" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("lt .Uthree .NegOne" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("le .NegOne .Uthree" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("le .Uthree .NegOne" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("gt .NegOne .Uthree" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("gt .Uthree .NegOne" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("ge .NegOne .Uthree" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("ge .Uthree .NegOne" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq (index `x` 0) \'x\'" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq (index `x` 0) \'y\'" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq .V1 .V2" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq .Ptr .Ptr" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq .Ptr .NilPtr" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq .NilPtr .NilPtr" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq .Iface1 .Iface1" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq .Iface1 .NilIface" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq .NilIface .NilIface" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq .NilIface .Iface1" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq .NilIface 0" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq 0 .NilIface" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq .Map .Map" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq .Map nil" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq nil .Map" : stdgo.GoString), ("true" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq .Map .NonNilMap" : stdgo.GoString), ("false" : stdgo.GoString), true) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq `xy` 1" : stdgo.GoString), stdgo.Go.str()?.__copy__(), false) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq 2 2.0" : stdgo.GoString), stdgo.Go.str()?.__copy__(), false) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("lt true true" : stdgo.GoString), stdgo.Go.str()?.__copy__(), false) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("lt 1+0i 1+0i" : stdgo.GoString), stdgo.Go.str()?.__copy__(), false) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq .Ptr 1" : stdgo.GoString), stdgo.Go.str()?.__copy__(), false) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq .Ptr .NegOne" : stdgo.GoString), stdgo.Go.str()?.__copy__(), false) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq .Map .V1" : stdgo.GoString), stdgo.Go.str()?.__copy__(), false) : stdgo._internal.text.template.Template.T_cmpTest),
(new stdgo._internal.text.template.Template.T_cmpTest(("eq .NonNilMap .NonNilMap" : stdgo.GoString), stdgo.Go.str()?.__copy__(), false) : stdgo._internal.text.template.Template.T_cmpTest)].concat([for (i in 117 ... (117 > 117 ? 117 : 117 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.text.template.Template.T_cmpTest)])) : stdgo.Slice<stdgo._internal.text.template.Template.T_cmpTest>);
var _alwaysError : stdgo.Error = stdgo._internal.errors.Errors.new_(("always be failing" : stdgo.GoString));
var _multiParseTests : stdgo.Slice<stdgo._internal.text.template.Template.T_multiParseTest> = (new stdgo.Slice<stdgo._internal.text.template.Template.T_multiParseTest>(5, 5, ...[(new stdgo._internal.text.template.Template.T_multiParseTest(("empty" : stdgo.GoString), stdgo.Go.str()?.__copy__(), true, (null : stdgo.Slice<stdgo.GoString>), (null : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.text.template.Template.T_multiParseTest), (new stdgo._internal.text.template.Template.T_multiParseTest(("one" : stdgo.GoString), ("{{define \"foo\"}} FOO {{end}}" : stdgo.GoString), true, (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("foo" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[(" FOO " : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.text.template.Template.T_multiParseTest), (new stdgo._internal.text.template.Template.T_multiParseTest(("two" : stdgo.GoString), ("{{define \"foo\"}} FOO {{end}}{{define \"bar\"}} BAR {{end}}" : stdgo.GoString), true, (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("foo" : stdgo.GoString), ("bar" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[(" FOO " : stdgo.GoString), (" BAR " : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.text.template.Template.T_multiParseTest), (new stdgo._internal.text.template.Template.T_multiParseTest(("missing end" : stdgo.GoString), ("{{define \"foo\"}} FOO " : stdgo.GoString), false, (null : stdgo.Slice<stdgo.GoString>), (null : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.text.template.Template.T_multiParseTest), (new stdgo._internal.text.template.Template.T_multiParseTest(("malformed name" : stdgo.GoString), ("{{define \"foo}} FOO " : stdgo.GoString), false, (null : stdgo.Slice<stdgo.GoString>), (null : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.text.template.Template.T_multiParseTest)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.text.template.Template.T_multiParseTest)])) : stdgo.Slice<stdgo._internal.text.template.Template.T_multiParseTest>);
var _multiExecTests : stdgo.Slice<stdgo._internal.text.template.Template.T_execTest> = (new stdgo.Slice<stdgo._internal.text.template.Template.T_execTest>(11, 11, ...[
(new stdgo._internal.text.template.Template.T_execTest(("empty" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), (null : stdgo.AnyInterface), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("text" : stdgo.GoString), ("some text" : stdgo.GoString), ("some text" : stdgo.GoString), (null : stdgo.AnyInterface), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("invoke x" : stdgo.GoString), ("{{template \"x\" .SI}}" : stdgo.GoString), ("TEXT" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("invoke x no args" : stdgo.GoString), ("{{template \"x\"}}" : stdgo.GoString), ("TEXT" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("invoke dot int" : stdgo.GoString), ("{{template \"dot\" .I}}" : stdgo.GoString), ("17" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("invoke dot []int" : stdgo.GoString), ("{{template \"dot\" .SI}}" : stdgo.GoString), ("[3 4 5]" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("invoke dotV" : stdgo.GoString), ("{{template \"dotV\" .U}}" : stdgo.GoString), ("v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("invoke nested int" : stdgo.GoString), ("{{template \"nested\" .I}}" : stdgo.GoString), ("17" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("variable declared by template" : stdgo.GoString), ("{{template \"nested\" $x:=.SI}},{{index $x 1}}" : stdgo.GoString), ("[3 4 5],4" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("testFunc literal" : stdgo.GoString), ("{{oneArg \"joe\"}}" : stdgo.GoString), ("oneArg=joe" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), true) : stdgo._internal.text.template.Template.T_execTest),
(new stdgo._internal.text.template.Template.T_execTest(("testFunc ." : stdgo.GoString), ("{{oneArg .}}" : stdgo.GoString), ("oneArg=joe" : stdgo.GoString), stdgo.Go.toInterface(("joe" : stdgo.GoString)), true) : stdgo._internal.text.template.Template.T_execTest)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.text.template.Template.T_execTest)])) : stdgo.Slice<stdgo._internal.text.template.Template.T_execTest>);
var _templateFileExecTests : stdgo.Slice<stdgo._internal.text.template.Template.T_execTest> = (new stdgo.Slice<stdgo._internal.text.template.Template.T_execTest>(1, 1, ...[(new stdgo._internal.text.template.Template.T_execTest(("test" : stdgo.GoString), ("{{template \"tmpl1.tmpl\"}}{{template \"tmpl2.tmpl\"}}" : stdgo.GoString), ("template1\n\ny\ntemplate2\n\nx\n" : stdgo.GoString), stdgo.Go.toInterface((0 : stdgo.GoInt)), true) : stdgo._internal.text.template.Template.T_execTest)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.text.template.Template.T_execTest)])) : stdgo.Slice<stdgo._internal.text.template.Template.T_execTest>);
@:keep class I_static_extension {
    static public function method0(t:I):stdgo.GoString return t.method0();
}
typedef I = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function method0():stdgo.GoString;
};
@:structInit @:private @:using(stdgo._internal.text.template.Template.T_state_static_extension) class T_state {
    public var _tmpl : stdgo.Ref<stdgo._internal.text.template.Template.Template> = (null : stdgo.Ref<stdgo._internal.text.template.Template.Template>);
    public var _wr : stdgo._internal.io.Io.Writer = (null : stdgo._internal.io.Io.Writer);
    public var _node : stdgo._internal.text.template.parse.Parse.Node = (null : stdgo._internal.text.template.parse.Parse.Node);
    public var _vars : stdgo.Slice<stdgo._internal.text.template.Template.T_variable> = (null : stdgo.Slice<stdgo._internal.text.template.Template.T_variable>);
    public var _depth : stdgo.GoInt = 0;
    public function new(?_tmpl:stdgo.Ref<stdgo._internal.text.template.Template.Template>, ?_wr:stdgo._internal.io.Io.Writer, ?_node:stdgo._internal.text.template.parse.Parse.Node, ?_vars:stdgo.Slice<stdgo._internal.text.template.Template.T_variable>, ?_depth:stdgo.GoInt) {
        if (_tmpl != null) this._tmpl = _tmpl;
        if (_wr != null) this._wr = _wr;
        if (_node != null) this._node = _node;
        if (_vars != null) this._vars = _vars;
        if (_depth != null) this._depth = _depth;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_state(_tmpl, _wr, _node, _vars, _depth);
    }
}
@:structInit @:private class T_variable {
    public var _name : stdgo.GoString = "";
    public var _value : stdgo._internal.reflect.Reflect.Value = ({} : stdgo._internal.reflect.Reflect.Value);
    public function new(?_name:stdgo.GoString, ?_value:stdgo._internal.reflect.Reflect.Value) {
        if (_name != null) this._name = _name;
        if (_value != null) this._value = _value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_variable(_name, _value);
    }
}
@:structInit @:private class T_missingValType {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_missingValType();
    }
}
@:structInit @:using(stdgo._internal.text.template.Template.ExecError_static_extension) class ExecError {
    public var name : stdgo.GoString = "";
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?name:stdgo.GoString, ?err:stdgo.Error) {
        if (name != null) this.name = name;
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ExecError(name, err);
    }
}
@:structInit @:private class T_writeError {
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?err:stdgo.Error) {
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_writeError(err);
    }
}
@:structInit @:using(stdgo._internal.text.template.Template.T__static_extension) class T_ {
    public var _True : Bool = false;
    public var i : stdgo.GoInt = 0;
    public var u16 : stdgo.GoUInt16 = 0;
    public var x : stdgo.GoString = "";
    public var s : stdgo.GoString = "";
    public var floatZero : stdgo.GoFloat64 = 0;
    public var complexZero : stdgo.GoComplex128 = new stdgo.GoComplex128(0, 0);
    public var u : stdgo.Ref<stdgo._internal.text.template.Template.U> = (null : stdgo.Ref<stdgo._internal.text.template.Template.U>);
    public var v0 : stdgo._internal.text.template.Template.V = ({} : stdgo._internal.text.template.Template.V);
    public var v1 : stdgo.Ref<stdgo._internal.text.template.Template.V> = (null : stdgo.Ref<stdgo._internal.text.template.Template.V>);
    public var v2 : stdgo.Ref<stdgo._internal.text.template.Template.V> = (null : stdgo.Ref<stdgo._internal.text.template.Template.V>);
    public var w0 : stdgo._internal.text.template.Template.W = ({} : stdgo._internal.text.template.Template.W);
    public var w1 : stdgo.Ref<stdgo._internal.text.template.Template.W> = (null : stdgo.Ref<stdgo._internal.text.template.Template.W>);
    public var w2 : stdgo.Ref<stdgo._internal.text.template.Template.W> = (null : stdgo.Ref<stdgo._internal.text.template.Template.W>);
    public var si : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var sicap : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var siempty : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var sb : stdgo.Slice<Bool> = (null : stdgo.Slice<Bool>);
    public var ai : stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(3, 3, ...[for (i in 0 ... 3) (0 : stdgo.GoInt)]);
    public var msi : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    public var msione : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    public var msiempty : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    public var mxi : stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>);
    public var mii : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
    public var mi32s : stdgo.GoMap<stdgo.GoInt32, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoInt32, stdgo.GoString>);
    public var mi64s : stdgo.GoMap<stdgo.GoInt64, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoInt64, stdgo.GoString>);
    public var mui32s : stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>);
    public var mui64s : stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>);
    public var mi8s : stdgo.GoMap<stdgo.GoInt8, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoInt8, stdgo.GoString>);
    public var mui8s : stdgo.GoMap<stdgo.GoUInt8, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoUInt8, stdgo.GoString>);
    public var smsi : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>> = (null : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>);
    public var empty0 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var empty1 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var empty2 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var empty3 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var empty4 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var nonEmptyInterface : stdgo._internal.text.template.Template.I = (null : stdgo._internal.text.template.Template.I);
    public var nonEmptyInterfacePtS : stdgo.Ref<stdgo._internal.text.template.Template.I> = (null : stdgo.Ref<stdgo._internal.text.template.Template.I>);
    public var nonEmptyInterfaceNil : stdgo._internal.text.template.Template.I = (null : stdgo._internal.text.template.Template.I);
    public var nonEmptyInterfaceTypedNil : stdgo._internal.text.template.Template.I = (null : stdgo._internal.text.template.Template.I);
    public var str : stdgo._internal.fmt.Fmt.Stringer = (null : stdgo._internal.fmt.Fmt.Stringer);
    public var err : stdgo.Error = (null : stdgo.Error);
    public var pi : stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
    public var ps : stdgo.Pointer<stdgo.GoString> = (null : stdgo.Pointer<stdgo.GoString>);
    public var psi : stdgo.Ref<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>);
    public var nil : stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
    public var binaryFunc : (stdgo.GoString, stdgo.GoString) -> stdgo.GoString = null;
    public var variadicFunc : stdgo.Slice<stdgo.GoString> -> stdgo.GoString = null;
    public var variadicFuncInt : (stdgo.GoInt, stdgo.Slice<stdgo.GoString>) -> stdgo.GoString = null;
    public var nilOKFunc : stdgo.Pointer<stdgo.GoInt> -> Bool = null;
    public var errFunc : () -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; } = null;
    public var panicFunc : () -> stdgo.GoString = null;
    public var tmpl : stdgo.Ref<stdgo._internal.text.template.Template.Template> = (null : stdgo.Ref<stdgo._internal.text.template.Template.Template>);
    public var _unexported : stdgo.GoInt = 0;
    public function new(?_True:Bool, ?i:stdgo.GoInt, ?u16:stdgo.GoUInt16, ?x:stdgo.GoString, ?s:stdgo.GoString, ?floatZero:stdgo.GoFloat64, ?complexZero:stdgo.GoComplex128, ?u:stdgo.Ref<stdgo._internal.text.template.Template.U>, ?v0:stdgo._internal.text.template.Template.V, ?v1:stdgo.Ref<stdgo._internal.text.template.Template.V>, ?v2:stdgo.Ref<stdgo._internal.text.template.Template.V>, ?w0:stdgo._internal.text.template.Template.W, ?w1:stdgo.Ref<stdgo._internal.text.template.Template.W>, ?w2:stdgo.Ref<stdgo._internal.text.template.Template.W>, ?si:stdgo.Slice<stdgo.GoInt>, ?sicap:stdgo.Slice<stdgo.GoInt>, ?siempty:stdgo.Slice<stdgo.GoInt>, ?sb:stdgo.Slice<Bool>, ?ai:stdgo.GoArray<stdgo.GoInt>, ?msi:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?msione:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?msiempty:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?mxi:stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>, ?mii:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, ?mi32s:stdgo.GoMap<stdgo.GoInt32, stdgo.GoString>, ?mi64s:stdgo.GoMap<stdgo.GoInt64, stdgo.GoString>, ?mui32s:stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>, ?mui64s:stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>, ?mi8s:stdgo.GoMap<stdgo.GoInt8, stdgo.GoString>, ?mui8s:stdgo.GoMap<stdgo.GoUInt8, stdgo.GoString>, ?smsi:stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>, ?empty0:stdgo.AnyInterface, ?empty1:stdgo.AnyInterface, ?empty2:stdgo.AnyInterface, ?empty3:stdgo.AnyInterface, ?empty4:stdgo.AnyInterface, ?nonEmptyInterface:stdgo._internal.text.template.Template.I, ?nonEmptyInterfacePtS:stdgo.Ref<stdgo._internal.text.template.Template.I>, ?nonEmptyInterfaceNil:stdgo._internal.text.template.Template.I, ?nonEmptyInterfaceTypedNil:stdgo._internal.text.template.Template.I, ?str:stdgo._internal.fmt.Fmt.Stringer, ?err:stdgo.Error, ?pi:stdgo.Pointer<stdgo.GoInt>, ?ps:stdgo.Pointer<stdgo.GoString>, ?psi:stdgo.Ref<stdgo.Slice<stdgo.GoInt>>, ?nil:stdgo.Pointer<stdgo.GoInt>, ?binaryFunc:(stdgo.GoString, stdgo.GoString) -> stdgo.GoString, ?variadicFunc:stdgo.Slice<stdgo.GoString> -> stdgo.GoString, ?variadicFuncInt:(stdgo.GoInt, stdgo.Slice<stdgo.GoString>) -> stdgo.GoString, ?nilOKFunc:stdgo.Pointer<stdgo.GoInt> -> Bool, ?errFunc:() -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; }, ?panicFunc:() -> stdgo.GoString, ?tmpl:stdgo.Ref<stdgo._internal.text.template.Template.Template>, ?_unexported:stdgo.GoInt) {
        if (_True != null) this._True = _True;
        if (i != null) this.i = i;
        if (u16 != null) this.u16 = u16;
        if (x != null) this.x = x;
        if (s != null) this.s = s;
        if (floatZero != null) this.floatZero = floatZero;
        if (complexZero != null) this.complexZero = complexZero;
        if (u != null) this.u = u;
        if (v0 != null) this.v0 = v0;
        if (v1 != null) this.v1 = v1;
        if (v2 != null) this.v2 = v2;
        if (w0 != null) this.w0 = w0;
        if (w1 != null) this.w1 = w1;
        if (w2 != null) this.w2 = w2;
        if (si != null) this.si = si;
        if (sicap != null) this.sicap = sicap;
        if (siempty != null) this.siempty = siempty;
        if (sb != null) this.sb = sb;
        if (ai != null) this.ai = ai;
        if (msi != null) this.msi = msi;
        if (msione != null) this.msione = msione;
        if (msiempty != null) this.msiempty = msiempty;
        if (mxi != null) this.mxi = mxi;
        if (mii != null) this.mii = mii;
        if (mi32s != null) this.mi32s = mi32s;
        if (mi64s != null) this.mi64s = mi64s;
        if (mui32s != null) this.mui32s = mui32s;
        if (mui64s != null) this.mui64s = mui64s;
        if (mi8s != null) this.mi8s = mi8s;
        if (mui8s != null) this.mui8s = mui8s;
        if (smsi != null) this.smsi = smsi;
        if (empty0 != null) this.empty0 = empty0;
        if (empty1 != null) this.empty1 = empty1;
        if (empty2 != null) this.empty2 = empty2;
        if (empty3 != null) this.empty3 = empty3;
        if (empty4 != null) this.empty4 = empty4;
        if (nonEmptyInterface != null) this.nonEmptyInterface = nonEmptyInterface;
        if (nonEmptyInterfacePtS != null) this.nonEmptyInterfacePtS = nonEmptyInterfacePtS;
        if (nonEmptyInterfaceNil != null) this.nonEmptyInterfaceNil = nonEmptyInterfaceNil;
        if (nonEmptyInterfaceTypedNil != null) this.nonEmptyInterfaceTypedNil = nonEmptyInterfaceTypedNil;
        if (str != null) this.str = str;
        if (err != null) this.err = err;
        if (pi != null) this.pi = pi;
        if (ps != null) this.ps = ps;
        if (psi != null) this.psi = psi;
        if (nil != null) this.nil = nil;
        if (binaryFunc != null) this.binaryFunc = binaryFunc;
        if (variadicFunc != null) this.variadicFunc = variadicFunc;
        if (variadicFuncInt != null) this.variadicFuncInt = variadicFuncInt;
        if (nilOKFunc != null) this.nilOKFunc = nilOKFunc;
        if (errFunc != null) this.errFunc = errFunc;
        if (panicFunc != null) this.panicFunc = panicFunc;
        if (tmpl != null) this.tmpl = tmpl;
        if (_unexported != null) this._unexported = _unexported;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_(
_True,
i,
u16,
x,
s,
floatZero,
complexZero,
u,
v0,
v1,
v2,
w0,
w1,
w2,
si,
sicap,
siempty,
sb,
ai,
msi,
msione,
msiempty,
mxi,
mii,
mi32s,
mi64s,
mui32s,
mui64s,
mi8s,
mui8s,
smsi,
empty0,
empty1,
empty2,
empty3,
empty4,
nonEmptyInterface,
nonEmptyInterfacePtS,
nonEmptyInterfaceNil,
nonEmptyInterfaceTypedNil,
str,
err,
pi,
ps,
psi,
nil,
binaryFunc,
variadicFunc,
variadicFuncInt,
nilOKFunc,
errFunc,
panicFunc,
tmpl,
_unexported);
    }
}
@:structInit @:using(stdgo._internal.text.template.Template.U_static_extension) class U {
    public var v : stdgo.GoString = "";
    public function new(?v:stdgo.GoString) {
        if (v != null) this.v = v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new U(v);
    }
}
@:structInit @:using(stdgo._internal.text.template.Template.V_static_extension) class V {
    public var _j : stdgo.GoInt = 0;
    public function new(?_j:stdgo.GoInt) {
        if (_j != null) this._j = _j;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new V(_j);
    }
}
@:structInit @:using(stdgo._internal.text.template.Template.W_static_extension) class W {
    public var _k : stdgo.GoInt = 0;
    public function new(?_k:stdgo.GoInt) {
        if (_k != null) this._k = _k;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new W(_k);
    }
}
@:structInit @:private class T_execTest {
    public var _name : stdgo.GoString = "";
    public var _input : stdgo.GoString = "";
    public var _output : stdgo.GoString = "";
    public var _data : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _ok : Bool = false;
    public function new(?_name:stdgo.GoString, ?_input:stdgo.GoString, ?_output:stdgo.GoString, ?_data:stdgo.AnyInterface, ?_ok:Bool) {
        if (_name != null) this._name = _name;
        if (_input != null) this._input = _input;
        if (_output != null) this._output = _output;
        if (_data != null) this._data = _data;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_execTest(_name, _input, _output, _data, _ok);
    }
}
@:structInit @:using(stdgo._internal.text.template.Template.CustomError_static_extension) class CustomError {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CustomError();
    }
}
@:structInit class Tree {
    public var val : stdgo.GoInt = 0;
    public var left : stdgo.Ref<stdgo._internal.text.template.Template.Tree> = (null : stdgo.Ref<stdgo._internal.text.template.Template.Tree>);
    public var right : stdgo.Ref<stdgo._internal.text.template.Template.Tree> = (null : stdgo.Ref<stdgo._internal.text.template.Template.Tree>);
    public function new(?val:stdgo.GoInt, ?left:stdgo.Ref<stdgo._internal.text.template.Template.Tree>, ?right:stdgo.Ref<stdgo._internal.text.template.Template.Tree>) {
        if (val != null) this.val = val;
        if (left != null) this.left = left;
        if (right != null) this.right = right;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Tree(val, left, right);
    }
}
@:structInit @:private class T_cmpTest {
    public var _expr : stdgo.GoString = "";
    public var _truth : stdgo.GoString = "";
    public var _ok : Bool = false;
    public function new(?_expr:stdgo.GoString, ?_truth:stdgo.GoString, ?_ok:Bool) {
        if (_expr != null) this._expr = _expr;
        if (_truth != null) this._truth = _truth;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_cmpTest(_expr, _truth, _ok);
    }
}
@:structInit @:private class T_multiParseTest {
    public var _name : stdgo.GoString = "";
    public var _input : stdgo.GoString = "";
    public var _ok : Bool = false;
    public var _names : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _results : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_name:stdgo.GoString, ?_input:stdgo.GoString, ?_ok:Bool, ?_names:stdgo.Slice<stdgo.GoString>, ?_results:stdgo.Slice<stdgo.GoString>) {
        if (_name != null) this._name = _name;
        if (_input != null) this._input = _input;
        if (_ok != null) this._ok = _ok;
        if (_names != null) this._names = _names;
        if (_results != null) this._results = _results;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_multiParseTest(_name, _input, _ok, _names, _results);
    }
}
@:structInit @:private class T_option {
    public var _missingKey : stdgo._internal.text.template.Template.T_missingKeyAction = ((0 : stdgo.GoInt) : stdgo._internal.text.template.Template.T_missingKeyAction);
    public function new(?_missingKey:stdgo._internal.text.template.Template.T_missingKeyAction) {
        if (_missingKey != null) this._missingKey = _missingKey;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_option(_missingKey);
    }
}
@:structInit @:private class T_common {
    public var _tmpl : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template.Template>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template.Template>>);
    public var _muTmpl : stdgo._internal.sync.Sync.RWMutex = ({} : stdgo._internal.sync.Sync.RWMutex);
    public var _option : stdgo._internal.text.template.Template.T_option = ({} : stdgo._internal.text.template.Template.T_option);
    public var _muFuncs : stdgo._internal.sync.Sync.RWMutex = ({} : stdgo._internal.sync.Sync.RWMutex);
    public var _parseFuncs : stdgo._internal.text.template.Template.FuncMap = (null : stdgo._internal.text.template.Template.FuncMap);
    public var _execFuncs : stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect.Value> = (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect.Value>);
    public function new(?_tmpl:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template.Template>>, ?_muTmpl:stdgo._internal.sync.Sync.RWMutex, ?_option:stdgo._internal.text.template.Template.T_option, ?_muFuncs:stdgo._internal.sync.Sync.RWMutex, ?_parseFuncs:stdgo._internal.text.template.Template.FuncMap, ?_execFuncs:stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect.Value>) {
        if (_tmpl != null) this._tmpl = _tmpl;
        if (_muTmpl != null) this._muTmpl = _muTmpl;
        if (_option != null) this._option = _option;
        if (_muFuncs != null) this._muFuncs = _muFuncs;
        if (_parseFuncs != null) this._parseFuncs = _parseFuncs;
        if (_execFuncs != null) this._execFuncs = _execFuncs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_common(_tmpl, _muTmpl, _option, _muFuncs, _parseFuncs, _execFuncs);
    }
}
@:structInit @:using(stdgo._internal.text.template.Template.Template_static_extension) class Template {
    public var _name : stdgo.GoString = "";
    @:embedded
    public var tree : stdgo.Ref<stdgo._internal.text.template.parse.Parse.Tree> = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.Tree>);
    @:embedded
    public var _common : stdgo.Ref<stdgo._internal.text.template.Template.T_common> = (null : stdgo.Ref<stdgo._internal.text.template.Template.T_common>);
    public var _leftDelim : stdgo.GoString = "";
    public var _rightDelim : stdgo.GoString = "";
    public function new(?_name:stdgo.GoString, ?tree:stdgo.Ref<stdgo._internal.text.template.parse.Parse.Tree>, ?_common:stdgo.Ref<stdgo._internal.text.template.Template.T_common>, ?_leftDelim:stdgo.GoString, ?_rightDelim:stdgo.GoString) {
        if (_name != null) this._name = _name;
        if (tree != null) this.tree = tree;
        if (_common != null) this._common = _common;
        if (_leftDelim != null) this._leftDelim = _leftDelim;
        if (_rightDelim != null) this._rightDelim = _rightDelim;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function copy():stdgo.Ref<stdgo._internal.text.template.parse.Parse.Tree> return tree.copy();
    @:embedded
    public function errorContext(_node:stdgo._internal.text.template.parse.Parse.Node):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } return tree.errorContext(_node);
    @:embedded
    public function _action():stdgo._internal.text.template.parse.Parse.Node return tree._action();
    @:embedded
    public function _add() tree._add();
    @:embedded
    public function _backup() tree._backup();
    @:embedded
    public function _backup2(_t1:stdgo._internal.text.template.parse.Parse.T_item) tree._backup2(_t1);
    @:embedded
    public function _backup3(_t2:stdgo._internal.text.template.parse.Parse.T_item, _t1:stdgo._internal.text.template.parse.Parse.T_item) tree._backup3(_t2, _t1);
    @:embedded
    public function _blockControl():stdgo._internal.text.template.parse.Parse.Node return tree._blockControl();
    @:embedded
    public function _breakControl(_pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt):stdgo._internal.text.template.parse.Parse.Node return tree._breakControl(_pos, _line);
    @:embedded
    public function _checkPipeline(_pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>, _context:stdgo.GoString) tree._checkPipeline(_pipe, _context);
    @:embedded
    public function _clearActionLine() tree._clearActionLine();
    @:embedded
    public function _command():stdgo.Ref<stdgo._internal.text.template.parse.Parse.CommandNode> return tree._command();
    @:embedded
    public function _continueControl(_pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt):stdgo._internal.text.template.parse.Parse.Node return tree._continueControl(_pos, _line);
    @:embedded
    public function _elseControl():stdgo._internal.text.template.parse.Parse.Node return tree._elseControl();
    @:embedded
    public function _endControl():stdgo._internal.text.template.parse.Parse.Node return tree._endControl();
    @:embedded
    public function _error(__0:stdgo.Error) tree._error(__0);
    @:embedded
    public function _errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>) tree._errorf(_format, ..._args);
    @:embedded
    public function _expect(_expected:stdgo._internal.text.template.parse.Parse.T_itemType, _context:stdgo.GoString):stdgo._internal.text.template.parse.Parse.T_item return tree._expect(_expected, _context);
    @:embedded
    public function _expectOneOf(_expected1:stdgo._internal.text.template.parse.Parse.T_itemType, _expected2:stdgo._internal.text.template.parse.Parse.T_itemType, _context:stdgo.GoString):stdgo._internal.text.template.parse.Parse.T_item return tree._expectOneOf(_expected1, _expected2, _context);
    @:embedded
    public function _hasFunction(__0:stdgo.GoString):Bool return tree._hasFunction(__0);
    @:embedded
    public function _ifControl():stdgo._internal.text.template.parse.Parse.Node return tree._ifControl();
    @:embedded
    public function _itemList():{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>; var _1 : stdgo._internal.text.template.parse.Parse.Node; } return tree._itemList();
    @:embedded
    public function _newAction(_pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse.ActionNode> return tree._newAction(_pos, _line, _pipe);
    @:embedded
    public function _newBool(_pos:stdgo._internal.text.template.parse.Parse.Pos, true:Bool):stdgo.Ref<stdgo._internal.text.template.parse.Parse.BoolNode> return tree._newBool(_pos, true);
    @:embedded
    public function _newBreak(_pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse.BreakNode> return tree._newBreak(_pos, _line);
    @:embedded
    public function _newChain(_pos:stdgo._internal.text.template.parse.Parse.Pos, _node:stdgo._internal.text.template.parse.Parse.Node):stdgo.Ref<stdgo._internal.text.template.parse.Parse.ChainNode> return tree._newChain(_pos, _node);
    @:embedded
    public function _newCommand(__0:stdgo._internal.text.template.parse.Parse.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse.CommandNode> return tree._newCommand(__0);
    @:embedded
    public function _newComment(_pos:stdgo._internal.text.template.parse.Parse.Pos, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse.CommentNode> return tree._newComment(_pos, _text);
    @:embedded
    public function _newContinue(_pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse.ContinueNode> return tree._newContinue(_pos, _line);
    @:embedded
    public function _newDot(__0:stdgo._internal.text.template.parse.Parse.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse.DotNode> return tree._newDot(__0);
    @:embedded
    public function _newElse(_pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse.T_elseNode> return tree._newElse(_pos, _line);
    @:embedded
    public function _newEnd(__0:stdgo._internal.text.template.parse.Parse.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse.T_endNode> return tree._newEnd(__0);
    @:embedded
    public function _newField(_pos:stdgo._internal.text.template.parse.Parse.Pos, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse.FieldNode> return tree._newField(_pos, _text);
    @:embedded
    public function _newIf(_pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse.IfNode> return tree._newIf(_pos, _line, _pipe, _list, _elseList);
    @:embedded
    public function _newList(__0:stdgo._internal.text.template.parse.Parse.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode> return tree._newList(__0);
    @:embedded
    public function _newNil(__0:stdgo._internal.text.template.parse.Parse.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse.NilNode> return tree._newNil(__0);
    @:embedded
    public function _newNumber(_pos:stdgo._internal.text.template.parse.Parse.Pos, _text:stdgo.GoString, _typ:stdgo._internal.text.template.parse.Parse.T_itemType):{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NumberNode>; var _1 : stdgo.Error; } return tree._newNumber(_pos, _text, _typ);
    @:embedded
    public function _newPipeline(_pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt, _vars:stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse.VariableNode>>):stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode> return tree._newPipeline(_pos, _line, _vars);
    @:embedded
    public function _newRange(_pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse.RangeNode> return tree._newRange(_pos, _line, _pipe, _list, _elseList);
    @:embedded
    public function _newString(_pos:stdgo._internal.text.template.parse.Parse.Pos, _orig:stdgo.GoString, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse.StringNode> return tree._newString(_pos, _orig, _text);
    @:embedded
    public function _newTemplate(_pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt, _name:stdgo.GoString, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse.TemplateNode> return tree._newTemplate(_pos, _line, _name, _pipe);
    @:embedded
    public function _newText(_pos:stdgo._internal.text.template.parse.Parse.Pos, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse.TextNode> return tree._newText(_pos, _text);
    @:embedded
    public function _newVariable(_pos:stdgo._internal.text.template.parse.Parse.Pos, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse.VariableNode> return tree._newVariable(_pos, _text);
    @:embedded
    public function _newWith(_pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse.WithNode> return tree._newWith(_pos, _line, _pipe, _list, _elseList);
    @:embedded
    public function _next():stdgo._internal.text.template.parse.Parse.T_item return tree._next();
    @:embedded
    public function _nextNonSpace():stdgo._internal.text.template.parse.Parse.T_item return tree._nextNonSpace();
    @:embedded
    public function _operand():stdgo._internal.text.template.parse.Parse.Node return tree._operand();
    @:embedded
    public function _parse() tree._parse();
    @:embedded
    public function _parseControl(_allowElseIf:Bool, _context:stdgo.GoString):{ var _0 : stdgo._internal.text.template.parse.Parse.Pos; var _1 : stdgo.GoInt; var _2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>; var _3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>; var _4 : stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>; } return tree._parseControl(_allowElseIf, _context);
    @:embedded
    public function _parseDefinition() tree._parseDefinition();
    @:embedded
    public function _parseTemplateName(_token:stdgo._internal.text.template.parse.Parse.T_item, _context:stdgo.GoString):stdgo.GoString return tree._parseTemplateName(_token, _context);
    @:embedded
    public function _peek():stdgo._internal.text.template.parse.Parse.T_item return tree._peek();
    @:embedded
    public function _peekNonSpace():stdgo._internal.text.template.parse.Parse.T_item return tree._peekNonSpace();
    @:embedded
    public function _pipeline(_context:stdgo.GoString, _end:stdgo._internal.text.template.parse.Parse.T_itemType):stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode> return tree._pipeline(_context, _end);
    @:embedded
    public function _popVars(__0:stdgo.GoInt) tree._popVars(__0);
    @:embedded
    public function _rangeControl():stdgo._internal.text.template.parse.Parse.Node return tree._rangeControl();
    @:embedded
    public function _recover(_errp:stdgo.Ref<stdgo.Error>) tree._recover(_errp);
    @:embedded
    public function _startParse(_funcs:stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>, _lex:stdgo.Ref<stdgo._internal.text.template.parse.Parse.T_lexer>, _treeSet:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse.Tree>>) tree._startParse(_funcs, _lex, _treeSet);
    @:embedded
    public function _stopParse() tree._stopParse();
    @:embedded
    public function _templateControl():stdgo._internal.text.template.parse.Parse.Node return tree._templateControl();
    @:embedded
    public function _term():stdgo._internal.text.template.parse.Parse.Node return tree._term();
    @:embedded
    public function _textOrAction():stdgo._internal.text.template.parse.Parse.Node return tree._textOrAction();
    @:embedded
    public function _unexpected(_token:stdgo._internal.text.template.parse.Parse.T_item, _context:stdgo.GoString) tree._unexpected(_token, _context);
    @:embedded
    public function _useVar(_pos:stdgo._internal.text.template.parse.Parse.Pos, _text:stdgo.GoString):stdgo._internal.text.template.parse.Parse.Node return tree._useVar(_pos, _text);
    @:embedded
    public function _withControl():stdgo._internal.text.template.parse.Parse.Node return tree._withControl();
    public function __copy__() {
        return new Template(_name, tree, _common, _leftDelim, _rightDelim);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.text.template.Template.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.text.template.Template.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _a : stdgo.GoInt;
    public var _b : stdgo.GoString;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.text.template.Template.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo._internal.text.template.Template.T__struct_1_static_extension) typedef T__struct_1 = {
    public var str : stdgo.GoString;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.text.template.Template.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo._internal.text.template.Template.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _in : stdgo.GoString;
    public var _exp : stdgo.GoString;
};
class T__struct_3_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_3>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.text.template.Template.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo._internal.text.template.Template.T__struct_3_static_extension) typedef T__struct_3 = {
    public var uthree : stdgo.GoUInt;
    public var ufour : stdgo.GoUInt;
    public var negOne : stdgo.GoInt;
    public var three : stdgo.GoInt;
    public var ptr : stdgo.Pointer<stdgo.GoInt>;
    public var nilPtr : stdgo.Pointer<stdgo.GoInt>;
    public var nonNilMap : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>;
    public var map_ : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>;
    public var v1 : stdgo._internal.text.template.Template.V;
    public var v2 : stdgo._internal.text.template.Template.V;
    public var iface1 : stdgo._internal.fmt.Fmt.Stringer;
    public var nilIface : stdgo._internal.fmt.Fmt.Stringer;
};
class T__struct_4_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_4>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.text.template.Template.T__struct_4_asInterface) class T__struct_4_static_extension {

}
@:local @:using(stdgo._internal.text.template.Template.T__struct_4_static_extension) typedef T__struct_4 = {
    public var _name : stdgo.GoString;
    public var _src : stdgo.GoString;
    public var _value : stdgo.AnyInterface;
    public var _want : stdgo.GoString;
};
class T__struct_5_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_5>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.text.template.Template.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo._internal.text.template.Template.T__struct_5_static_extension) typedef T__struct_5 = {
    public var _text : stdgo.GoString;
    public var _out : stdgo.GoString;
};
class T__struct_6_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_6>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.text.template.Template.T__struct_6_asInterface) class T__struct_6_static_extension {

}
@:local @:using(stdgo._internal.text.template.Template.T__struct_6_static_extension) typedef T__struct_6 = {
    public var _name : stdgo.GoString;
    public var _input : stdgo.GoString;
    public var _data : stdgo.AnyInterface;
    public var _wantErr : stdgo.GoString;
};
class T__struct_7_asInterface {
    @:embedded
    public dynamic function _doSlow(_f:() -> Void):Void __self__.value._doSlow(_f);
    @:embedded
    public dynamic function do_(_f:() -> Void):Void __self__.value.do_(_f);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_7>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.text.template.Template.T__struct_7_asInterface) class T__struct_7_static_extension {
    @:embedded
    public static function _doSlow( __self__:T__struct_7, _f:() -> Void) __self__.once._doSlow(_f);
    @:embedded
    public static function do_( __self__:T__struct_7, _f:() -> Void) __self__.once.do_(_f);
}
@:local @:using(stdgo._internal.text.template.Template.T__struct_7_static_extension) typedef T__struct_7 = {
    @:embedded
    public var once : stdgo._internal.sync.Sync.Once;
    public var _v : stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect.Value>;
};
class T__struct_8_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_8>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.text.template.Template.T__struct_8_asInterface) class T__struct_8_static_extension {

}
@:local @:using(stdgo._internal.text.template.Template.T__struct_8_static_extension) typedef T__struct_8 = {
    public var _defn : stdgo.Slice<stdgo.GoString>;
    public var _in : stdgo.GoString;
    public var _want : stdgo.GoString;
};
@:named @:using(stdgo._internal.text.template.Template.S_static_extension) typedef S = stdgo.Slice<stdgo.GoString>;
@:named @:using(stdgo._internal.text.template.Template.ErrorWriter_static_extension) typedef ErrorWriter = stdgo.GoInt;
@:named typedef FuncMap = stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>;
@:named typedef T_kind = stdgo.GoInt;
@:named typedef T_missingKeyAction = stdgo.GoInt;
function _initMaxExecDepth():stdgo.GoInt {
        if (true) {
            return (1000 : stdgo.GoInt);
        };
        return (100000 : stdgo.GoInt);
    }
function _isMissing(_v:stdgo._internal.reflect.Reflect.Value):Bool {
        return (_v.isValid() && ((_v.type().string() : String) == (_missingValReflectType.string() : String)) : Bool);
    }
function _doublePercent(_str:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.strings.Strings.replaceAll(_str?.__copy__(), ("%" : stdgo.GoString), ("%%" : stdgo.GoString))?.__copy__();
    }
function _errRecover(_errp:stdgo.Ref<stdgo.Error>):Void {
        var _e:stdgo.AnyInterface = ({
            final r = stdgo.Go.recover_exception;
            stdgo.Go.recover_exception = null;
            r;
        });
        if (_e != null) {
            {
                final __type__ = _e;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.runtime.Runtime.Error))) {
                    var _err:stdgo._internal.runtime.Runtime.Error = __type__ == null ? (null : stdgo._internal.runtime.Runtime.Error) : __type__.__underlying__() == null ? (null : stdgo._internal.runtime.Runtime.Error) : __type__ == null ? (null : stdgo._internal.runtime.Runtime.Error) : __type__.__underlying__().value;
                    throw stdgo.Go.toInterface(_e);
                } else if (stdgo.Go.typeEquals((__type__ : T_writeError))) {
                    var _err:stdgo._internal.text.template.Template.T_writeError = __type__ == null ? ({} : stdgo._internal.text.template.Template.T_writeError) : __type__.__underlying__() == null ? ({} : stdgo._internal.text.template.Template.T_writeError) : __type__ == null ? ({} : stdgo._internal.text.template.Template.T_writeError) : __type__.__underlying__().value;
                    {
                        var __tmp__ = _err.err;
                        _errp.error = __tmp__.error;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : ExecError))) {
                    var _err:stdgo._internal.text.template.Template.ExecError = __type__ == null ? ({} : stdgo._internal.text.template.Template.ExecError) : __type__.__underlying__() == null ? ({} : stdgo._internal.text.template.Template.ExecError) : __type__ == null ? ({} : stdgo._internal.text.template.Template.ExecError) : __type__.__underlying__().value;
                    {
                        var __tmp__ = stdgo.Go.asInterface(_err);
                        _errp.error = __tmp__.error;
                    };
                } else {
                    var _err:stdgo.AnyInterface = __type__?.__underlying__();
                    throw stdgo.Go.toInterface(_e);
                };
            };
        };
    }
function isTrue(_val:stdgo.AnyInterface):{ var _0 : Bool; var _1 : Bool; } {
        var _truth:Bool = false, _ok:Bool = false;
        return _isTrue(stdgo._internal.reflect.Reflect.valueOf(_val)?.__copy__());
    }
function _isTrue(_val:stdgo._internal.reflect.Reflect.Value):{ var _0 : Bool; var _1 : Bool; } {
        var _truth:Bool = false, _ok:Bool = false;
        if (!_val.isValid()) {
            return { _0 : false, _1 : true };
        };
        {
            final __value__ = _val.kind();
            if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((21u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((24u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _truth = (_val.len() > (0 : stdgo.GoInt) : Bool);
            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _truth = _val.bool_();
            } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((16u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _truth = _val.complex() != (((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)));
            } else if (__value__ == ((18u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((19u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((22u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((20u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _truth = !_val.isNil();
            } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _truth = _val.int_() != ((0i64 : stdgo.GoInt64));
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _truth = _val.float_() != (0 : stdgo.GoFloat64);
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _truth = _val.uint() != ((0i64 : stdgo.GoUInt64));
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _truth = true;
            } else {
                return { _0 : _truth, _1 : _ok };
            };
        };
        return { _0 : _truth, _1 : true };
    }
function _isRuneInt(_s:stdgo.GoString):Bool {
        return (((_s.length) > (0 : stdgo.GoInt) : Bool) && (_s[(0 : stdgo.GoInt)] == (39 : stdgo.GoUInt8)) : Bool);
    }
function _isHexInt(_s:stdgo.GoString):Bool {
        return (((((_s.length) > (2 : stdgo.GoInt) : Bool) && _s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool) && !stdgo._internal.strings.Strings.containsAny(_s?.__copy__(), ("pP" : stdgo.GoString)) : Bool);
    }
function _canBeNil(_typ:stdgo._internal.reflect.Reflect.Type_):Bool {
        {
            final __value__ = _typ.kind();
            if (__value__ == ((18u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((19u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((20u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((21u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((22u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect.Kind))) {
                return true;
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect.Kind))) {
                return (_typ.string() : String) == (_reflectValueType.string() : String);
            };
        };
        return false;
    }
function _indirect(_v:stdgo._internal.reflect.Reflect.Value):{ var _0 : stdgo._internal.reflect.Reflect.Value; var _1 : Bool; } {
        var _rv:stdgo._internal.reflect.Reflect.Value = ({} : stdgo._internal.reflect.Reflect.Value), _isNil:Bool = false;
        stdgo.Go.cfor(((_v.kind() == (22u32 : stdgo._internal.reflect.Reflect.Kind)) || (_v.kind() == (20u32 : stdgo._internal.reflect.Reflect.Kind)) : Bool), _v = _v.elem()?.__copy__(), {
            if (_v.isNil()) {
                return { _0 : _v?.__copy__(), _1 : true };
            };
        });
        return { _0 : _v?.__copy__(), _1 : false };
    }
function _indirectInterface(_v:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value {
        if (_v.kind() != ((20u32 : stdgo._internal.reflect.Reflect.Kind))) {
            return _v?.__copy__();
        };
        if (_v.isNil()) {
            return (new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value);
        };
        return _v.elem()?.__copy__();
    }
function _printableValue(_v:stdgo._internal.reflect.Reflect.Value):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        if (_v.kind() == ((22u32 : stdgo._internal.reflect.Reflect.Kind))) {
            {
                var __tmp__ = _indirect(_v?.__copy__());
                _v = __tmp__._0?.__copy__();
            };
        };
        if (!_v.isValid()) {
            return { _0 : stdgo.Go.toInterface(("<no value>" : stdgo.GoString)), _1 : true };
        };
        if ((!_v.type().implements_(_errorType) && !_v.type().implements_(_fmtStringerType) : Bool)) {
            if ((_v.canAddr() && ((stdgo._internal.reflect.Reflect.pointerTo(_v.type()).implements_(_errorType) || stdgo._internal.reflect.Reflect.pointerTo(_v.type()).implements_(_fmtStringerType) : Bool)) : Bool)) {
                _v = _v.addr()?.__copy__();
            } else {
                {
                    final __value__ = _v.kind();
                    if (__value__ == ((18u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((19u32 : stdgo._internal.reflect.Reflect.Kind))) {
                        return { _0 : (null : stdgo.AnyInterface), _1 : false };
                    };
                };
            };
        };
        return { _0 : _v.interface_(), _1 : true };
    }
function _newInt(_n:stdgo.GoInt):stdgo.Pointer<stdgo.GoInt> {
        return stdgo.Go.pointer(_n);
    }
function _newString(_s:stdgo.GoString):stdgo.Pointer<stdgo.GoString> {
        return stdgo.Go.pointer(_s);
    }
function _newIntSlice(_n:haxe.Rest<stdgo.GoInt>):stdgo.Ref<stdgo.Slice<stdgo.GoInt>> {
        var _n = new stdgo.Slice<stdgo.GoInt>(_n.length, 0, ..._n);
        var _p = (stdgo.Go.setRef((null : stdgo.Slice<stdgo.GoInt>)) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>);
        _p.__setData__((new stdgo.Slice<stdgo.GoInt>((_n.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>));
        stdgo.Go.copySlice((_p : stdgo.Slice<stdgo.GoInt>), _n);
        return _p;
    }
function _typeOf(_arg:stdgo.AnyInterface):stdgo.GoString {
        return stdgo._internal.fmt.Fmt.sprintf(("%T" : stdgo.GoString), _arg)?.__copy__();
    }
function _zeroArgs():stdgo.GoString {
        return ("zeroArgs" : stdgo.GoString);
    }
function _oneArg(_a:stdgo.GoString):stdgo.GoString {
        return (("oneArg=" : stdgo.GoString) + _a?.__copy__() : stdgo.GoString)?.__copy__();
    }
function _twoArgs(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoString {
        return ((("twoArgs=" : stdgo.GoString) + _a?.__copy__() : stdgo.GoString) + _b?.__copy__() : stdgo.GoString)?.__copy__();
    }
function _dddArg(_a:stdgo.GoInt, _b:haxe.Rest<stdgo.GoString>):stdgo.GoString {
        var _b = new stdgo.Slice<stdgo.GoString>(_b.length, 0, ..._b);
        return stdgo._internal.fmt.Fmt.sprintln(stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b))?.__copy__();
    }
function _count(_n:stdgo.GoInt):stdgo.Chan<stdgo.GoString> {
        if (_n == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Chan<stdgo.GoString>);
        };
        var _c = (new stdgo.Chan<stdgo.GoString>(0, () -> ("" : stdgo.GoString)) : stdgo.Chan<stdgo.GoString>);
        stdgo.Go.routine(() -> {
            var a = function():Void {
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _n : Bool), _i++, {
                        _c.__send__((("abcdefghijklmnop" : stdgo.GoString).__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString));
                    });
                };
                if (_c != null) _c.__close__();
            };
            a();
        });
        return _c;
    }
function _vfunc(_0:V, _1:stdgo.Ref<V>):stdgo.GoString {
        return ("vfunc" : stdgo.GoString);
    }
function _valueString(_v:stdgo.GoString):stdgo.GoString {
        return ("value is ignored" : stdgo.GoString);
    }
function _returnInt():stdgo.GoInt {
        return (7 : stdgo.GoInt);
    }
function _add(_args:haxe.Rest<stdgo.GoInt>):stdgo.GoInt {
        var _args = new stdgo.Slice<stdgo.GoInt>(_args.length, 0, ..._args);
        var _sum:stdgo.GoInt = (0 : stdgo.GoInt);
        for (__8 => _x in _args) {
            _sum = (_sum + (_x) : stdgo.GoInt);
        };
        return _sum;
    }
function _echo(_arg:stdgo.AnyInterface):stdgo.AnyInterface {
        return _arg;
    }
function _makemap(_arg:haxe.Rest<stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        var _arg = new stdgo.Slice<stdgo.GoString>(_arg.length, 0, ..._arg);
        if (((_arg.length) % (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("bad makemap" : stdgo.GoString));
        };
        var _m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_arg.length) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                _m[_arg[(_i : stdgo.GoInt)]] = _arg[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__();
            });
        };
        return _m;
    }
function _stringer(_s:stdgo._internal.fmt.Fmt.Stringer):stdgo.GoString {
        return (_s.string() : stdgo.GoString)?.__copy__();
    }
function _mapOfThree():stdgo.AnyInterface {
        return stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            @:mergeBlock {
                x.set(("three" : stdgo.GoString), (3 : stdgo.GoInt));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>));
    }
function _testExecute(_execTests:stdgo.Slice<T_execTest>, _template:stdgo.Ref<Template>, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>);
        var _funcs:stdgo._internal.text.template.Template.FuncMap = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            @:mergeBlock {
                x.set(("add" : stdgo.GoString), stdgo.Go.toInterface(_add));
                x.set(("count" : stdgo.GoString), stdgo.Go.toInterface(_count));
                x.set(("dddArg" : stdgo.GoString), stdgo.Go.toInterface(_dddArg));
                x.set(("die" : stdgo.GoString), stdgo.Go.toInterface(function():Bool {
                    throw stdgo.Go.toInterface(("die" : stdgo.GoString));
                }));
                x.set(("echo" : stdgo.GoString), stdgo.Go.toInterface(_echo));
                x.set(("makemap" : stdgo.GoString), stdgo.Go.toInterface(_makemap));
                x.set(("mapOfThree" : stdgo.GoString), stdgo.Go.toInterface(_mapOfThree));
                x.set(("oneArg" : stdgo.GoString), stdgo.Go.toInterface(_oneArg));
                x.set(("returnInt" : stdgo.GoString), stdgo.Go.toInterface(_returnInt));
                x.set(("stringer" : stdgo.GoString), stdgo.Go.toInterface(_stringer));
                x.set(("twoArgs" : stdgo.GoString), stdgo.Go.toInterface(_twoArgs));
                x.set(("typeOf" : stdgo.GoString), stdgo.Go.toInterface(_typeOf));
                x.set(("valueString" : stdgo.GoString), stdgo.Go.toInterface(_valueString));
                x.set(("vfunc" : stdgo.GoString), stdgo.Go.toInterface(_vfunc));
                x.set(("zeroArgs" : stdgo.GoString), stdgo.Go.toInterface(_zeroArgs));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
        for (__8 => _test in _execTests) {
            var _tmpl:stdgo.Ref<Template> = (null : stdgo.Ref<stdgo._internal.text.template.Template.Template>);
            var _err:stdgo.Error = (null : stdgo.Error);
            if (_template == null || (_template : Dynamic).__nil__) {
                {
                    var __tmp__ = new_(_test._name?.__copy__()).funcs(_funcs).parse(_test._input?.__copy__());
                    _tmpl = __tmp__._0;
                    _err = __tmp__._1;
                };
            } else {
                {
                    var __tmp__ = _template.new_(_test._name?.__copy__()).funcs(_funcs).parse(_test._input?.__copy__());
                    _tmpl = __tmp__._0;
                    _err = __tmp__._1;
                };
            };
            if (_err != null) {
                _t.errorf(("%s: parse error: %s" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_err));
                continue;
            };
            _b.reset();
            _err = _tmpl.execute(stdgo.Go.asInterface(_b), _test._data);
            if ((!_test._ok && (_err == null) : Bool)) {
                _t.errorf(("%s: expected error; got none" : stdgo.GoString), stdgo.Go.toInterface(_test._name));
                continue;
            } else if ((_test._ok && (_err != null) : Bool)) {
                _t.errorf(("%s: unexpected execute error: %s" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_err));
                continue;
            } else if ((!_test._ok && (_err != null) : Bool)) {
                if (_debug.value) {
                    stdgo._internal.fmt.Fmt.printf(("%s: %s\n\t%s\n" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_test._input), stdgo.Go.toInterface(_err));
                };
            };
            var _result:stdgo.GoString = (_b.string() : stdgo.GoString)?.__copy__();
            if (_result != (_test._output)) {
                _t.errorf(("%s: expected\n\t%q\ngot\n\t%q" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_test._output), stdgo.Go.toInterface(_result));
            };
        };
    }
function testExecute(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testExecute(_execTests, null, _t);
    }
function testDelims(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _value:T__struct_1 = ({ str : ("Hello, world" : stdgo.GoString) } : T__struct_1);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_delimPairs.length) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                var _text:stdgo.GoString = (".Str" : stdgo.GoString);
                var _left:stdgo.GoString = _delimPairs[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__();
                var _trueLeft:stdgo.GoString = _left?.__copy__();
                var _right:stdgo.GoString = _delimPairs[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__();
                var _trueRight:stdgo.GoString = _right?.__copy__();
                if (_left == (stdgo.Go.str())) {
                    _trueLeft = ("{{" : stdgo.GoString);
                };
                if (_right == (stdgo.Go.str())) {
                    _trueRight = ("}}" : stdgo.GoString);
                };
                _text = ((_trueLeft + _text?.__copy__() : stdgo.GoString) + _trueRight?.__copy__() : stdgo.GoString)?.__copy__();
                _text = (_text + (((_trueLeft + ("/*comment*/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _trueRight?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                _text = (_text + (((((_trueLeft + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _trueLeft?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _trueRight?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                var __tmp__ = new_(("delims" : stdgo.GoString)).delims(_left?.__copy__(), _right?.__copy__()).parse(_text?.__copy__()), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("delim %q text %q parse err %s" : stdgo.GoString), stdgo.Go.toInterface(_left), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_err));
                };
                var _b:stdgo.Ref<stdgo._internal.strings.Strings.Builder> = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>);
                _err = _tmpl.execute(stdgo.Go.asInterface(_b), stdgo.Go.toInterface(stdgo.Go.asInterface(_value)));
                if (_err != null) {
                    _t.fatalf(("delim %q exec err %s" : stdgo.GoString), stdgo.Go.toInterface(_left), stdgo.Go.toInterface(_err));
                };
                if ((_b.string() : stdgo.GoString) != ((("Hello, world" : stdgo.GoString) + _trueLeft?.__copy__() : stdgo.GoString))) {
                    _t.errorf(("expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface((("Hello, world" : stdgo.GoString) + _trueLeft?.__copy__() : stdgo.GoString)), stdgo.Go.toInterface((_b.string() : stdgo.GoString)));
                };
            });
        };
    }
function testExecuteError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _tmpl = new_(("error" : stdgo.GoString));
        var __tmp__ = _tmpl.parse(("{{.MyError true}}" : stdgo.GoString)), __16:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("parse error: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _err = _tmpl.execute(stdgo.Go.asInterface(_b), stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)));
        if (_err == null) {
            _t.errorf(("expected error; got none" : stdgo.GoString));
        } else if (!stdgo._internal.strings.Strings.contains(_err.error()?.__copy__(), _myError.error()?.__copy__())) {
            if (_debug.value) {
                stdgo._internal.fmt.Fmt.printf(("test execute error: %s\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _t.errorf(("expected myError; got %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
function testExecError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = new_(("top" : stdgo.GoString)).parse(("line 1\nline 2\nline 3\n{{template \"one\" .}}\n{{define \"one\"}}{{template \"two\" .}}{{end}}\n{{define \"two\"}}{{template \"three\" .}}{{end}}\n{{define \"three\"}}{{index \"hi\" $}}{{end}}" : stdgo.GoString)), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("parse error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _b:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        _err = _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), stdgo.Go.toInterface((5 : stdgo.GoInt)));
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("expected error" : stdgo.GoString)));
        };
        {};
        var _got:stdgo.GoString = _err.error()?.__copy__();
        if (_got != (("template: top:7:20: executing \"three\" at <index \"hi\" $>: error calling index: index out of range: 5" : stdgo.GoString))) {
            _t.errorf(("expected\n%q\ngot\n%q" : stdgo.GoString), stdgo.Go.toInterface(("template: top:7:20: executing \"three\" at <index \"hi\" $>: error calling index: index out of range: 5" : stdgo.GoString)), stdgo.Go.toInterface(_got));
        };
    }
function testExecError_CustomError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _failingFunc:() -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; } = function():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.text.template.Template.CustomError() : stdgo._internal.text.template.Template.CustomError)) : stdgo.Ref<stdgo._internal.text.template.Template.CustomError>)) };
        };
        var _tmpl = ({
            var __tmp__ = new_(("top" : stdgo.GoString)).funcs(({
                final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                @:mergeBlock {
                    x.set(("err" : stdgo.GoString), stdgo.Go.toInterface(_failingFunc));
                };
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)).parse(("{{ err }}" : stdgo.GoString));
            must((__tmp__._0 : stdgo.Ref<stdgo._internal.text.template.Template.Template>), (__tmp__._1 : stdgo.Error));
        });
        var _b:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        var _err:stdgo.Error = _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), (null : stdgo.AnyInterface));
        var _e:stdgo.Ref<CustomError> = (null : stdgo.Ref<stdgo._internal.text.template.Template.CustomError>);
        if (!stdgo._internal.errors.Errors.as(_err, stdgo.Go.toInterface((stdgo.Go.setRef(_e) : stdgo.Ref<stdgo.Ref<stdgo._internal.text.template.Template.CustomError>>)))) {
            _t.fatalf(("expected custom error; got %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
function testJSEscaping(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _testCases = (new stdgo.Slice<T__struct_2>(8, 8, ...[({ _in : ("a" : stdgo.GoString), _exp : ("a" : stdgo.GoString) } : T__struct_2), ({ _in : ("\'foo" : stdgo.GoString), _exp : ("\\\'foo" : stdgo.GoString) } : T__struct_2), ({ _in : ("Go \"jump\" \\" : stdgo.GoString), _exp : ("Go \\\"jump\\\" \\\\" : stdgo.GoString) } : T__struct_2), ({ _in : ("Yukihiro says \"今日は世界\"" : stdgo.GoString), _exp : ("Yukihiro says \\\"今日は世界\\\"" : stdgo.GoString) } : T__struct_2), ({ _in : ("unprintable \ufffe" : stdgo.GoString), _exp : ("unprintable \\uFFFE" : stdgo.GoString) } : T__struct_2), ({ _in : ("<html>" : stdgo.GoString), _exp : ("\\u003Chtml\\u003E" : stdgo.GoString) } : T__struct_2), ({ _in : ("no = in attributes" : stdgo.GoString), _exp : ("no \\u003D in attributes" : stdgo.GoString) } : T__struct_2), ({ _in : ("&#x27; does not become HTML entity" : stdgo.GoString), _exp : ("\\u0026#x27; does not become HTML entity" : stdgo.GoString) } : T__struct_2)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _exp : ("" : stdgo.GoString) } : T__struct_2)])) : stdgo.Slice<T__struct_2>);
        for (__8 => _tc in _testCases) {
            var _s:stdgo.GoString = jsescapeString(_tc._in?.__copy__())?.__copy__();
            if (_s != (_tc._exp)) {
                _t.errorf(("JS escaping [%s] got [%s] want [%s]" : stdgo.GoString), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tc._exp));
            };
        };
    }
function testTree(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tree:stdgo.Ref<stdgo._internal.text.template.Template.Tree> = (stdgo.Go.setRef((new stdgo._internal.text.template.Template.Tree((1 : stdgo.GoInt), (stdgo.Go.setRef((new stdgo._internal.text.template.Template.Tree((2 : stdgo.GoInt), (stdgo.Go.setRef((new stdgo._internal.text.template.Template.Tree((3 : stdgo.GoInt), (stdgo.Go.setRef((new stdgo._internal.text.template.Template.Tree((4 : stdgo.GoInt), null, null) : stdgo._internal.text.template.Template.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template.Tree>), null) : stdgo._internal.text.template.Template.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template.Tree>), (stdgo.Go.setRef((new stdgo._internal.text.template.Template.Tree((5 : stdgo.GoInt), (stdgo.Go.setRef((new stdgo._internal.text.template.Template.Tree((6 : stdgo.GoInt), null, null) : stdgo._internal.text.template.Template.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template.Tree>), null) : stdgo._internal.text.template.Template.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template.Tree>)) : stdgo._internal.text.template.Template.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template.Tree>), (stdgo.Go.setRef((new stdgo._internal.text.template.Template.Tree((7 : stdgo.GoInt), (stdgo.Go.setRef((new stdgo._internal.text.template.Template.Tree((8 : stdgo.GoInt), (stdgo.Go.setRef((new stdgo._internal.text.template.Template.Tree((9 : stdgo.GoInt), null, null) : stdgo._internal.text.template.Template.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template.Tree>), null) : stdgo._internal.text.template.Template.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template.Tree>), (stdgo.Go.setRef((new stdgo._internal.text.template.Template.Tree((10 : stdgo.GoInt), (stdgo.Go.setRef((new stdgo._internal.text.template.Template.Tree((11 : stdgo.GoInt), null, null) : stdgo._internal.text.template.Template.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template.Tree>), null) : stdgo._internal.text.template.Template.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template.Tree>)) : stdgo._internal.text.template.Template.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template.Tree>)) : stdgo._internal.text.template.Template.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template.Tree>);
        var __tmp__ = new_(("root" : stdgo.GoString)).delims(("(" : stdgo.GoString), (")" : stdgo.GoString)).parse(("\n\t(- define \"tree\" -)\n\t[\n\t\t(- .Val -)\n\t\t(- with .Left -)\n\t\t\t(template \"tree\" . -)\n\t\t(- end -)\n\t\t(- with .Right -)\n\t\t\t(- template \"tree\" . -)\n\t\t(- end -)\n\t]\n\t(- end -)\n" : stdgo.GoString)), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("parse error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _b:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        {};
        _err = _tmpl.lookup(("tree" : stdgo.GoString)).execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), stdgo.Go.toInterface(_tree));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("exec error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _result:stdgo.GoString = (_b.string() : stdgo.GoString)?.__copy__();
        if (_result != (("[1[2[3[4]][5[6]]][7[8[9]][10[11]]]]" : stdgo.GoString))) {
            _t.errorf(("expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(("[1[2[3[4]][5[6]]][7[8[9]][10[11]]]]" : stdgo.GoString)), stdgo.Go.toInterface(_result));
        };
        _b.reset();
        _err = _tmpl.executeTemplate(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), ("tree" : stdgo.GoString), stdgo.Go.toInterface(_tree));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("exec error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _result = (_b.string() : stdgo.GoString)?.__copy__();
        if (_result != (("[1[2[3[4]][5[6]]][7[8[9]][10[11]]]]" : stdgo.GoString))) {
            _t.errorf(("expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(("[1[2[3[4]][5[6]]][7[8[9]][10[11]]]]" : stdgo.GoString)), stdgo.Go.toInterface(_result));
        };
    }
function testExecuteOnNewTemplate(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        new_(("Name" : stdgo.GoString)).templates();
        (stdgo.Go.setRef(({} : stdgo._internal.text.template.Template.Template)) : stdgo.Ref<stdgo._internal.text.template.Template.Template>).templates();
        (stdgo.Go.setRef(({} : stdgo._internal.text.template.Template.Template)) : stdgo.Ref<stdgo._internal.text.template.Template.Template>).parse(stdgo.Go.str()?.__copy__());
        (stdgo.Go.setRef(({} : stdgo._internal.text.template.Template.Template)) : stdgo.Ref<stdgo._internal.text.template.Template.Template>).new_(("abc" : stdgo.GoString)).parse(stdgo.Go.str()?.__copy__());
        (stdgo.Go.setRef(({} : stdgo._internal.text.template.Template.Template)) : stdgo.Ref<stdgo._internal.text.template.Template.Template>).execute((null : stdgo._internal.io.Io.Writer), (null : stdgo.AnyInterface));
        (stdgo.Go.setRef(({} : stdgo._internal.text.template.Template.Template)) : stdgo.Ref<stdgo._internal.text.template.Template.Template>).executeTemplate((null : stdgo._internal.io.Io.Writer), ("XXX" : stdgo.GoString), (null : stdgo.AnyInterface));
    }
function testMessageForExecuteEmpty(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tmpl = new_(("empty" : stdgo.GoString));
        var _b:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        var _err:stdgo.Error = _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("expected initial error" : stdgo.GoString)));
        };
        var _got:stdgo.GoString = _err.error()?.__copy__();
        var _want:stdgo.GoString = ("template: empty: \"empty\" is an incomplete or empty template" : stdgo.GoString);
        if (_got != (_want)) {
            _t.errorf(("expected error %s got %s" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
        };
        var __tmp__ = new_(stdgo.Go.str()?.__copy__()).parse(("{{define \"one\"}}one{{end}}{{define \"two\"}}two{{end}}" : stdgo.GoString)), _tests:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        _tmpl.addParseTree(("secondary" : stdgo.GoString), _tests.tree);
        _err = _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("expected second error" : stdgo.GoString)));
        };
        _got = _err.error()?.__copy__();
        _want = ("template: empty: \"empty\" is an incomplete or empty template" : stdgo.GoString);
        if (_got != (_want)) {
            _t.errorf(("expected error %s got %s" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
        };
        _err = _tmpl.executeTemplate(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), ("secondary" : stdgo.GoString), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
    }
function testFinalForPrintf(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = new_(stdgo.Go.str()?.__copy__()).parse(("{{\"x\" | printf}}" : stdgo.GoString)), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _b:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        _err = _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
    }
function testComparison(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>);
        var _cmpStruct:T__struct_3 = ({ uthree : (3u32 : stdgo.GoUInt), ufour : (4u32 : stdgo.GoUInt), negOne : (-1 : stdgo.GoInt), three : (3 : stdgo.GoInt), ptr : stdgo.Go.pointer((0 : stdgo.GoInt)), nonNilMap : ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>), iface1 : stdgo.Go.asInterface(_b), nilPtr : (null : stdgo.Pointer<stdgo.GoInt>), map_ : (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>), v1 : ({} : stdgo._internal.text.template.Template.V), v2 : ({} : stdgo._internal.text.template.Template.V), nilIface : (null : stdgo._internal.fmt.Fmt.Stringer) } : T__struct_3);
        for (__8 => _test in _cmpTests) {
            var _text:stdgo.GoString = stdgo._internal.fmt.Fmt.sprintf(("{{if %s}}true{{else}}false{{end}}" : stdgo.GoString), stdgo.Go.toInterface(_test._expr))?.__copy__();
            var __tmp__ = new_(("empty" : stdgo.GoString)).parse(_text?.__copy__()), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("%q: %s" : stdgo.GoString), stdgo.Go.toInterface(_test._expr), stdgo.Go.toInterface(_err));
            };
            _b.reset();
            _err = _tmpl.execute(stdgo.Go.asInterface(_b), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_cmpStruct) : stdgo.Ref<T__struct_3>))));
            if ((_test._ok && (_err != null) : Bool)) {
                _t.errorf(("%s errored incorrectly: %s" : stdgo.GoString), stdgo.Go.toInterface(_test._expr), stdgo.Go.toInterface(_err));
                continue;
            };
            if ((!_test._ok && (_err == null) : Bool)) {
                _t.errorf(("%s did not error" : stdgo.GoString), stdgo.Go.toInterface(_test._expr));
                continue;
            };
            if ((_b.string() : stdgo.GoString) != (_test._truth)) {
                _t.errorf(("%s: want %s; got %s" : stdgo.GoString), stdgo.Go.toInterface(_test._expr), stdgo.Go.toInterface(_test._truth), stdgo.Go.toInterface((_b.string() : stdgo.GoString)));
            };
        };
    }
function testMissingMapKey(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _data = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            @:mergeBlock {
                x.set(("x" : stdgo.GoString), (99 : stdgo.GoInt));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var __tmp__ = new_(("t1" : stdgo.GoString)).parse(("{{.x}} {{.y}}" : stdgo.GoString)), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _b:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        _err = _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), stdgo.Go.toInterface(_data));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _want:stdgo.GoString = ("99 <no value>" : stdgo.GoString);
        var _got:stdgo.GoString = (_b.string() : stdgo.GoString)?.__copy__();
        if (_got != (_want)) {
            _t.errorf(("got %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
        _tmpl.option(("missingkey=default" : stdgo.GoString));
        _b.reset();
        _err = _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), stdgo.Go.toInterface(_data));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("default:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _want = ("99 <no value>" : stdgo.GoString);
        _got = (_b.string() : stdgo.GoString)?.__copy__();
        if (_got != (_want)) {
            _t.errorf(("got %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
        _tmpl.option(("missingkey=zero" : stdgo.GoString));
        _b.reset();
        _err = _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), stdgo.Go.toInterface(_data));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("zero:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _want = ("99 0" : stdgo.GoString);
        _got = (_b.string() : stdgo.GoString)?.__copy__();
        if (_got != (_want)) {
            _t.errorf(("got %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
        _tmpl.option(("missingkey=error" : stdgo.GoString));
        _err = _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), stdgo.Go.toInterface(_data));
        if (_err == null) {
            _t.errorf(("expected error; got none" : stdgo.GoString));
        };
        _err = _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), (null : stdgo.AnyInterface));
        _t.log(stdgo.Go.toInterface(_err));
        if (_err == null) {
            _t.errorf(("expected error for nil-interface; got none" : stdgo.GoString));
        };
    }
function testUnterminatedStringError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = new_(("X" : stdgo.GoString)).parse(("hello\n\n{{`unterminated\n\n\n\n}}\n some more\n\n" : stdgo.GoString)), __16:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("expected error" : stdgo.GoString)));
        };
        var _str:stdgo.GoString = _err.error()?.__copy__();
        if (!stdgo._internal.strings.Strings.contains(_str?.__copy__(), ("X:3: unterminated raw quoted string" : stdgo.GoString))) {
            _t.fatalf(("unexpected error: %s" : stdgo.GoString), stdgo.Go.toInterface(_str));
        };
    }
function testExecuteGivesExecError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = new_(("X" : stdgo.GoString)).parse(("hello" : stdgo.GoString)), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        _err = _tmpl.execute(stdgo.Go.asInterface(((0 : stdgo._internal.text.template.Template.ErrorWriter) : ErrorWriter)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("expected error; got none" : stdgo.GoString)));
        };
        if (_err.error() != (("always be failing" : stdgo.GoString))) {
            _t.errorf(("expected %q error; got %q" : stdgo.GoString), stdgo.Go.toInterface(("always be failing" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = new_(("X" : stdgo.GoString)).parse(("hello, {{.X.Y}}" : stdgo.GoString));
            _tmpl = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        _err = _tmpl.execute(stdgo._internal.io.Io.discard, stdgo.Go.toInterface((0 : stdgo.GoInt)));
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("expected error; got none" : stdgo.GoString)));
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : ExecError)) : ExecError), _1 : true };
        } catch(_) {
            { _0 : ({} : stdgo._internal.text.template.Template.ExecError), _1 : false };
        }, _eerr = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _t.fatalf(("did not expect ExecError %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_eerr)));
        };
        var _expect:stdgo.GoString = ("field X in type int" : stdgo.GoString);
        if (!stdgo._internal.strings.Strings.contains(_err.error()?.__copy__(), _expect?.__copy__())) {
            _t.errorf(("expected %q; got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_err));
        };
    }
function _funcNameTestFunc():stdgo.GoInt {
        return (0 : stdgo.GoInt);
    }
function testGoodFuncNames(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _names = (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("_" : stdgo.GoString), ("a" : stdgo.GoString), ("a1" : stdgo.GoString), ("a1" : stdgo.GoString), ("Ӵ" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__8 => _name in _names) {
            var _tmpl = new_(("X" : stdgo.GoString)).funcs(({
                final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                @:mergeBlock {
                    x.set(_name, stdgo.Go.toInterface(_funcNameTestFunc));
                };
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>));
            if (_tmpl == null || (_tmpl : Dynamic).__nil__) {
                _t.fatalf(("nil result for %q" : stdgo.GoString), stdgo.Go.toInterface(_name));
            };
        };
    }
function testBadFuncNames(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _names = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[stdgo.Go.str()?.__copy__(), ("2" : stdgo.GoString), ("a-b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__8 => _name in _names) {
            _testBadFuncName(_name?.__copy__(), _t);
        };
    }
function _testBadFuncName(_name:stdgo.GoString, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.helper();
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    ({
                        final r = stdgo.Go.recover_exception;
                        stdgo.Go.recover_exception = null;
                        r;
                    });
                };
                a();
            });
            new_(("X" : stdgo.GoString)).funcs(({
                final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                @:mergeBlock {
                    x.set(_name, stdgo.Go.toInterface(_funcNameTestFunc));
                };
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>));
            _t.errorf(("%q succeeded incorrectly as function name" : stdgo.GoString), stdgo.Go.toInterface(_name));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testBlock(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var __tmp__ = new_(("outer" : stdgo.GoString)).parse(("a({{block \"inner\" .}}bar({{.}})baz{{end}})b" : stdgo.GoString)), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = ({
            var __tmp__ = _tmpl.clone();
            must((__tmp__._0 : stdgo.Ref<stdgo._internal.text.template.Template.Template>), (__tmp__._1 : stdgo.Error));
        }).parse(("{{define \"inner\"}}foo({{.}})bar{{end}}" : stdgo.GoString)), _tmpl2:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _buf:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        {
            var _err:stdgo.Error = _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), stdgo.Go.toInterface(("hello" : stdgo.GoString)));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _got:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__();
            if (_got != (("a(bar(hello)baz)b" : stdgo.GoString))) {
                _t.errorf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("a(bar(hello)baz)b" : stdgo.GoString)));
            };
        };
        _buf.reset();
        {
            var _err:stdgo.Error = _tmpl2.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), stdgo.Go.toInterface(("goodbye" : stdgo.GoString)));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _got:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__();
            if (_got != (("a(foo(goodbye)bar)b" : stdgo.GoString))) {
                _t.errorf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("a(foo(goodbye)bar)b" : stdgo.GoString)));
            };
        };
    }
function testEvalFieldErrors(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tests = (new stdgo.Slice<T__struct_4>(6, 6, ...[({ _name : ("MissingFieldOnNil" : stdgo.GoString), _src : ("{{.MissingField}}" : stdgo.GoString), _value : stdgo.Go.toInterface(stdgo.Go.asInterface(((null : stdgo.Ref<stdgo._internal.text.template.Template.T_>) : stdgo.Ref<T_>))), _want : ("can\'t evaluate field MissingField in type *template.T" : stdgo.GoString) } : T__struct_4), ({ _name : ("MissingFieldOnNonNil" : stdgo.GoString), _src : ("{{.MissingField}}" : stdgo.GoString), _value : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.text.template.Template.T_() : stdgo._internal.text.template.Template.T_)) : stdgo.Ref<stdgo._internal.text.template.Template.T_>))), _want : ("can\'t evaluate field MissingField in type *template.T" : stdgo.GoString) } : T__struct_4), ({ _name : ("ExistingFieldOnNil" : stdgo.GoString), _src : ("{{.X}}" : stdgo.GoString), _value : stdgo.Go.toInterface(stdgo.Go.asInterface(((null : stdgo.Ref<stdgo._internal.text.template.Template.T_>) : stdgo.Ref<T_>))), _want : ("nil pointer evaluating *template.T.X" : stdgo.GoString) } : T__struct_4), ({ _name : ("MissingKeyOnNilMap" : stdgo.GoString), _src : ("{{.MissingKey}}" : stdgo.GoString), _value : stdgo.Go.toInterface((null : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.GoString>>)), _want : ("nil pointer evaluating *map[string]string.MissingKey" : stdgo.GoString) } : T__struct_4), ({ _name : ("MissingKeyOnNilMapPtr" : stdgo.GoString), _src : ("{{.MissingKey}}" : stdgo.GoString), _value : stdgo.Go.toInterface((null : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.GoString>>)), _want : ("nil pointer evaluating *map[string]string.MissingKey" : stdgo.GoString) } : T__struct_4), ({ _name : ("MissingKeyOnMapPtrToNil" : stdgo.GoString), _src : ("{{.MissingKey}}" : stdgo.GoString), _value : stdgo.Go.toInterface((stdgo.Go.setRef(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>)) : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.GoString>>)), _want : ("<nil>" : stdgo.GoString) } : T__struct_4)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _src : ("" : stdgo.GoString), _value : (null : stdgo.AnyInterface), _want : ("" : stdgo.GoString) } : T__struct_4)])) : stdgo.Slice<T__struct_4>);
        for (__8 => _tc in _tests) {
            _t.run(_tc._name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                var _tmpl = ({
                    var __tmp__ = new_(("tmpl" : stdgo.GoString)).parse(_tc._src?.__copy__());
                    must((__tmp__._0 : stdgo.Ref<stdgo._internal.text.template.Template.Template>), (__tmp__._1 : stdgo.Error));
                });
                var _err:stdgo.Error = _tmpl.execute(stdgo._internal.io.Io.discard, _tc._value);
                var _got:stdgo.GoString = ("<nil>" : stdgo.GoString);
                if (_err != null) {
                    _got = _err.error()?.__copy__();
                };
                if (!stdgo._internal.strings.Strings.hasSuffix(_got?.__copy__(), _tc._want?.__copy__())) {
                    _t.fatalf(("got error %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tc._want));
                };
            });
        };
    }
function testMaxExecDepth(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (stdgo._internal.testing.Testing.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping in -short mode" : stdgo.GoString)));
        };
        var _tmpl = ({
            var __tmp__ = new_(("tmpl" : stdgo.GoString)).parse(("{{template \"tmpl\" .}}" : stdgo.GoString));
            must((__tmp__._0 : stdgo.Ref<stdgo._internal.text.template.Template.Template>), (__tmp__._1 : stdgo.Error));
        });
        var _err:stdgo.Error = _tmpl.execute(stdgo._internal.io.Io.discard, (null : stdgo.AnyInterface));
        var _got:stdgo.GoString = ("<nil>" : stdgo.GoString);
        if (_err != null) {
            _got = _err.error()?.__copy__();
        };
        {};
        if (!stdgo._internal.strings.Strings.contains(_got?.__copy__(), ("exceeded maximum template depth" : stdgo.GoString))) {
            _t.errorf(("got error %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("exceeded maximum template depth" : stdgo.GoString)));
        };
    }
function testAddrOfIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _texts = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("{{range .}}{{.String}}{{end}}" : stdgo.GoString), ("{{with index . 0}}{{.String}}{{end}}" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__8 => _text in _texts) {
            var _tmpl = ({
                var __tmp__ = new_(("tmpl" : stdgo.GoString)).parse(_text?.__copy__());
                must((__tmp__._0 : stdgo.Ref<stdgo._internal.text.template.Template.Template>), (__tmp__._1 : stdgo.Error));
            });
            var _buf:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
            var _err:stdgo.Error = _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface((new stdgo.Slice<stdgo._internal.text.template.Template.V>(1, 1, ...[(new stdgo._internal.text.template.Template.V((1 : stdgo.GoInt)) : stdgo._internal.text.template.Template.V)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.text.template.Template.V)])) : stdgo.Slice<stdgo._internal.text.template.Template.V>))))));
            if (_err != null) {
                _t.fatalf(("%s: Execute: %v" : stdgo.GoString), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_err));
            };
            if ((_buf.string() : stdgo.GoString) != (("<1>" : stdgo.GoString))) {
                _t.fatalf(("%s: template output = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>))), stdgo.Go.toInterface(("<1>" : stdgo.GoString)));
            };
        };
    }
function testInterfaceValues(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tests = (new stdgo.Slice<T__struct_5>(30, 30, ...[
({ _text : ("{{index .Nil 1}}" : stdgo.GoString), _out : ("ERROR: index of untyped nil" : stdgo.GoString) } : T__struct_5),
({ _text : ("{{index .Slice 2}}" : stdgo.GoString), _out : ("2" : stdgo.GoString) } : T__struct_5),
({ _text : ("{{index .Slice .Two}}" : stdgo.GoString), _out : ("2" : stdgo.GoString) } : T__struct_5),
({ _text : ("{{call .Nil 1}}" : stdgo.GoString), _out : ("ERROR: call of nil" : stdgo.GoString) } : T__struct_5),
({ _text : ("{{call .PlusOne 1}}" : stdgo.GoString), _out : ("2" : stdgo.GoString) } : T__struct_5),
({ _text : ("{{call .PlusOne .One}}" : stdgo.GoString), _out : ("2" : stdgo.GoString) } : T__struct_5),
({ _text : ("{{and (index .Slice 0) true}}" : stdgo.GoString), _out : ("0" : stdgo.GoString) } : T__struct_5),
({ _text : ("{{and .Zero true}}" : stdgo.GoString), _out : ("0" : stdgo.GoString) } : T__struct_5),
({ _text : ("{{and (index .Slice 1) false}}" : stdgo.GoString), _out : ("false" : stdgo.GoString) } : T__struct_5),
({ _text : ("{{and .One false}}" : stdgo.GoString), _out : ("false" : stdgo.GoString) } : T__struct_5),
({ _text : ("{{or (index .Slice 0) false}}" : stdgo.GoString), _out : ("false" : stdgo.GoString) } : T__struct_5),
({ _text : ("{{or .Zero false}}" : stdgo.GoString), _out : ("false" : stdgo.GoString) } : T__struct_5),
({ _text : ("{{or (index .Slice 1) true}}" : stdgo.GoString), _out : ("1" : stdgo.GoString) } : T__struct_5),
({ _text : ("{{or .One true}}" : stdgo.GoString), _out : ("1" : stdgo.GoString) } : T__struct_5),
({ _text : ("{{not (index .Slice 0)}}" : stdgo.GoString), _out : ("true" : stdgo.GoString) } : T__struct_5),
({ _text : ("{{not .Zero}}" : stdgo.GoString), _out : ("true" : stdgo.GoString) } : T__struct_5),
({ _text : ("{{not (index .Slice 1)}}" : stdgo.GoString), _out : ("false" : stdgo.GoString) } : T__struct_5),
({ _text : ("{{not .One}}" : stdgo.GoString), _out : ("false" : stdgo.GoString) } : T__struct_5),
({ _text : ("{{eq (index .Slice 0) .Zero}}" : stdgo.GoString), _out : ("true" : stdgo.GoString) } : T__struct_5),
({ _text : ("{{eq (index .Slice 1) .One}}" : stdgo.GoString), _out : ("true" : stdgo.GoString) } : T__struct_5),
({ _text : ("{{ne (index .Slice 0) .Zero}}" : stdgo.GoString), _out : ("false" : stdgo.GoString) } : T__struct_5),
({ _text : ("{{ne (index .Slice 1) .One}}" : stdgo.GoString), _out : ("false" : stdgo.GoString) } : T__struct_5),
({ _text : ("{{ge (index .Slice 0) .One}}" : stdgo.GoString), _out : ("false" : stdgo.GoString) } : T__struct_5),
({ _text : ("{{ge (index .Slice 1) .Zero}}" : stdgo.GoString), _out : ("true" : stdgo.GoString) } : T__struct_5),
({ _text : ("{{gt (index .Slice 0) .One}}" : stdgo.GoString), _out : ("false" : stdgo.GoString) } : T__struct_5),
({ _text : ("{{gt (index .Slice 1) .Zero}}" : stdgo.GoString), _out : ("true" : stdgo.GoString) } : T__struct_5),
({ _text : ("{{le (index .Slice 0) .One}}" : stdgo.GoString), _out : ("true" : stdgo.GoString) } : T__struct_5),
({ _text : ("{{le (index .Slice 1) .Zero}}" : stdgo.GoString), _out : ("false" : stdgo.GoString) } : T__struct_5),
({ _text : ("{{lt (index .Slice 0) .One}}" : stdgo.GoString), _out : ("true" : stdgo.GoString) } : T__struct_5),
({ _text : ("{{lt (index .Slice 1) .Zero}}" : stdgo.GoString), _out : ("false" : stdgo.GoString) } : T__struct_5)].concat([for (i in 30 ... (30 > 30 ? 30 : 30 : stdgo.GoInt).toBasic()) ({ _text : ("" : stdgo.GoString), _out : ("" : stdgo.GoString) } : T__struct_5)])) : stdgo.Slice<T__struct_5>);
        for (__8 => _tt in _tests) {
            var _tmpl = ({
                var __tmp__ = new_(("tmpl" : stdgo.GoString)).parse(_tt._text?.__copy__());
                must((__tmp__._0 : stdgo.Ref<stdgo._internal.text.template.Template.Template>), (__tmp__._1 : stdgo.Error));
            });
            var _buf:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
            var _err:stdgo.Error = _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), stdgo.Go.toInterface(({
                final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                @:mergeBlock {
                    x.set(("PlusOne" : stdgo.GoString), stdgo.Go.toInterface(function(_n:stdgo.GoInt):stdgo.GoInt {
                        return (_n + (1 : stdgo.GoInt) : stdgo.GoInt);
                    }));
                    x.set(("Slice" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)));
                    x.set(("One" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.GoInt)));
                    x.set(("Two" : stdgo.GoString), stdgo.Go.toInterface((2 : stdgo.GoInt)));
                    x.set(("Nil" : stdgo.GoString), (null : stdgo.AnyInterface));
                    x.set(("Zero" : stdgo.GoString), stdgo.Go.toInterface((0 : stdgo.GoInt)));
                };
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)));
            if (stdgo._internal.strings.Strings.hasPrefix(_tt._out?.__copy__(), ("ERROR:" : stdgo.GoString))) {
                var _e:stdgo.GoString = stdgo._internal.strings.Strings.trimSpace(stdgo._internal.strings.Strings.trimPrefix(_tt._out?.__copy__(), ("ERROR:" : stdgo.GoString))?.__copy__())?.__copy__();
                if (((_err == null) || !stdgo._internal.strings.Strings.contains(_err.error()?.__copy__(), _e?.__copy__()) : Bool)) {
                    _t.errorf(("%s: Execute: %v, want error %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._text), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_e));
                };
                continue;
            };
            if (_err != null) {
                _t.errorf(("%s: Execute: %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._text), stdgo.Go.toInterface(_err));
                continue;
            };
            if ((_buf.string() : stdgo.GoString) != (_tt._out)) {
                _t.errorf(("%s: template output = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._text), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>))), stdgo.Go.toInterface(_tt._out));
            };
        };
    }
function testExecutePanicDuringCall(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _funcs = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            @:mergeBlock {
                x.set(("doPanic" : stdgo.GoString), stdgo.Go.toInterface(function():stdgo.GoString {
                    throw stdgo.Go.toInterface(("custom panic string" : stdgo.GoString));
                }));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
        var _tests = (new stdgo.Slice<T__struct_6>(6, 6, ...[({ _name : ("direct func call panics" : stdgo.GoString), _input : ("{{doPanic}}" : stdgo.GoString), _data : stdgo.Go.toInterface(stdgo.Go.asInterface(((null : stdgo.Ref<stdgo._internal.text.template.Template.T_>) : stdgo.Ref<T_>))), _wantErr : ("template: t:1:2: executing \"t\" at <doPanic>: error calling doPanic: custom panic string" : stdgo.GoString) } : T__struct_6), ({ _name : ("indirect func call panics" : stdgo.GoString), _input : ("{{call doPanic}}" : stdgo.GoString), _data : stdgo.Go.toInterface(stdgo.Go.asInterface(((null : stdgo.Ref<stdgo._internal.text.template.Template.T_>) : stdgo.Ref<T_>))), _wantErr : ("template: t:1:7: executing \"t\" at <doPanic>: error calling doPanic: custom panic string" : stdgo.GoString) } : T__struct_6), ({ _name : ("direct method call panics" : stdgo.GoString), _input : ("{{.GetU}}" : stdgo.GoString), _data : stdgo.Go.toInterface(stdgo.Go.asInterface(((null : stdgo.Ref<stdgo._internal.text.template.Template.T_>) : stdgo.Ref<T_>))), _wantErr : ("template: t:1:2: executing \"t\" at <.GetU>: error calling GetU: runtime error: invalid memory address or nil pointer dereference" : stdgo.GoString) } : T__struct_6), ({ _name : ("indirect method call panics" : stdgo.GoString), _input : ("{{call .GetU}}" : stdgo.GoString), _data : stdgo.Go.toInterface(stdgo.Go.asInterface(((null : stdgo.Ref<stdgo._internal.text.template.Template.T_>) : stdgo.Ref<T_>))), _wantErr : ("template: t:1:7: executing \"t\" at <.GetU>: error calling GetU: runtime error: invalid memory address or nil pointer dereference" : stdgo.GoString) } : T__struct_6), ({ _name : ("func field call panics" : stdgo.GoString), _input : ("{{call .PanicFunc}}" : stdgo.GoString), _data : stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), _wantErr : ("template: t:1:2: executing \"t\" at <call .PanicFunc>: error calling call: test panic" : stdgo.GoString) } : T__struct_6), ({ _name : ("method call on nil interface" : stdgo.GoString), _input : ("{{.NonEmptyInterfaceNil.Method0}}" : stdgo.GoString), _data : stdgo.Go.toInterface(stdgo.Go.asInterface(_tVal)), _wantErr : ("template: t:1:23: executing \"t\" at <.NonEmptyInterfaceNil.Method0>: nil pointer evaluating template.I.Method0" : stdgo.GoString) } : T__struct_6)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _input : ("" : stdgo.GoString), _data : (null : stdgo.AnyInterface), _wantErr : ("" : stdgo.GoString) } : T__struct_6)])) : stdgo.Slice<T__struct_6>);
        for (__8 => _tc in _tests) {
            var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
            var __tmp__ = new_(("t" : stdgo.GoString)).funcs(_funcs).parse(_tc._input?.__copy__()), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("parse error: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _err = _tmpl.execute(stdgo.Go.asInterface(_b), _tc._data);
            if (_err == null) {
                _t.errorf(("%s: expected error; got none" : stdgo.GoString), stdgo.Go.toInterface(_tc._name));
            } else if (!stdgo._internal.strings.Strings.contains(_err.error()?.__copy__(), _tc._wantErr?.__copy__())) {
                if (_debug.value) {
                    stdgo._internal.fmt.Fmt.printf(("%s: test execute error: %s\n" : stdgo.GoString), stdgo.Go.toInterface(_tc._name), stdgo.Go.toInterface(_err));
                };
                _t.errorf(("%s: expected error:\n%s\ngot:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_tc._name), stdgo.Go.toInterface(_tc._wantErr), stdgo.Go.toInterface(_err));
            };
        };
    }
function testIssue31810(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        {};
        var __tmp__ = new_(stdgo.Go.str()?.__copy__()).parse(("{{ (.)  }}" : stdgo.GoString)), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
        };
        _err = _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), stdgo.Go.toInterface(("result" : stdgo.GoString)));
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
        };
        if ((_b.string() : stdgo.GoString) != (("result" : stdgo.GoString))) {
            _t.errorf(("%s got %q, expected %q" : stdgo.GoString), stdgo.Go.toInterface(("{{ (.)  }}" : stdgo.GoString)), stdgo.Go.toInterface((_b.string() : stdgo.GoString)), stdgo.Go.toInterface(("result" : stdgo.GoString)));
        };
        var _f:() -> stdgo.GoString = function():stdgo.GoString {
            return ("result" : stdgo.GoString);
        };
        _b.reset();
        _err = _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), stdgo.Go.toInterface(_f));
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("expected error with no call, got none" : stdgo.GoString)));
        };
        {};
        {
            var __tmp__ = new_(stdgo.Go.str()?.__copy__()).parse(("{{ (call .)  }}" : stdgo.GoString));
            _tmpl = __tmp__._0;
            _err = __tmp__._1;
        };
        _b.reset();
        _err = _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), stdgo.Go.toInterface(_f));
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
        };
        if ((_b.string() : stdgo.GoString) != (("result" : stdgo.GoString))) {
            _t.errorf(("%s got %q, expected %q" : stdgo.GoString), stdgo.Go.toInterface(("{{ (call .)  }}" : stdgo.GoString)), stdgo.Go.toInterface((_b.string() : stdgo.GoString)), stdgo.Go.toInterface(("result" : stdgo.GoString)));
        };
    }
function testIssue43065(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        var _tmp = ({
            var __tmp__ = new_(stdgo.Go.str()?.__copy__()).parse(("{{range .}}{{end}}" : stdgo.GoString));
            must((__tmp__._0 : stdgo.Ref<stdgo._internal.text.template.Template.Template>), (__tmp__._1 : stdgo.Error));
        });
        var _ch = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        var _err:stdgo.Error = _tmp.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), stdgo.Go.toInterface(_ch));
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("expected err got nil" : stdgo.GoString)));
        } else if (!stdgo._internal.strings.Strings.contains(_err.error()?.__copy__(), ("range over send-only channel" : stdgo.GoString))) {
            _t.errorf(("%s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
function testIssue39807(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _wg:stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
        var __tmp__ = new_(("foo" : stdgo.GoString)).parse(("{{ template \"bar\" . }}" : stdgo.GoString)), _tplFoo:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = new_(("bar" : stdgo.GoString)).parse(("bar" : stdgo.GoString)), _tplBar:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
        };
        var _gofuncs:stdgo.GoInt = (10 : stdgo.GoInt);
        var _numTemplates:stdgo.GoInt = (10 : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= _gofuncs : Bool), _i++, {
                _wg.add((1 : stdgo.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            __deferstack__.unshift(() -> _wg.done());
                            {
                                var _j:stdgo.GoInt = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_j < _numTemplates : Bool), _j++, {
                                    var __tmp__ = _tplFoo.addParseTree(_tplBar.tree.name()?.__copy__(), _tplBar.tree), __72:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                    if (_err != null) {
                                        _t.error(stdgo.Go.toInterface(_err));
                                    };
                                    _err = _tplFoo.execute(stdgo._internal.io.Io.discard, (null : stdgo.AnyInterface));
                                    if (_err != null) {
                                        _t.error(stdgo.Go.toInterface(_err));
                                    };
                                });
                            };
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                return;
                            };
                        } catch(__exception__) {
                            var exe:Dynamic = __exception__.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    };
                    a();
                });
            });
        };
        _wg.wait_();
    }
@:structInit class T_testIssue48215___localname___A_58273 {
    public var s : stdgo.GoString = "";
    public function new(?s:stdgo.GoString) {
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testIssue48215___localname___A_58273(s);
    }
}
@:structInit @:using(stdgo._internal.text.template.Template.T_testIssue48215___localname___B_58304_static_extension) class T_testIssue48215___localname___B_58304 {
    @:embedded
    public var a : stdgo.Ref<stdgo._internal.text.template.Template.T_testIssue48215___localname___A_58273> = (null : stdgo.Ref<stdgo._internal.text.template.Template.T_testIssue48215___localname___A_58273>);
    public function new(?a:stdgo.Ref<stdgo._internal.text.template.Template.T_testIssue48215___localname___A_58273>) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testIssue48215___localname___B_58304(a);
    }
}
function testIssue48215(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        {};
        var __tmp__ = new_(stdgo.Go.str()?.__copy__()).parse(("{{ .S }}" : stdgo.GoString)), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        _err = _tmpl.execute(stdgo._internal.io.Io.discard, stdgo.Go.toInterface((new stdgo._internal.text.template.Template.T_testIssue48215___localname___B_58304() : stdgo._internal.text.template.Template.T_testIssue48215___localname___B_58304)));
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("did not get error for nil embedded struct" : stdgo.GoString)));
        };
        if (!stdgo._internal.strings.Strings.contains(_err.error()?.__copy__(), ("reflect: indirection through nil pointer to embedded struct field A" : stdgo.GoString))) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
    }
function _builtins():FuncMap {
        return ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            @:mergeBlock {
                x.set(("and" : stdgo.GoString), stdgo.Go.toInterface(_and));
                x.set(("call" : stdgo.GoString), stdgo.Go.toInterface(_call));
                x.set(("html" : stdgo.GoString), stdgo.Go.toInterface(htmlescaper));
                x.set(("index" : stdgo.GoString), stdgo.Go.toInterface(_index));
                x.set(("slice" : stdgo.GoString), stdgo.Go.toInterface(_slice));
                x.set(("js" : stdgo.GoString), stdgo.Go.toInterface(jsescaper));
                x.set(("len" : stdgo.GoString), stdgo.Go.toInterface(_length));
                x.set(("not" : stdgo.GoString), stdgo.Go.toInterface(_not));
                x.set(("or" : stdgo.GoString), stdgo.Go.toInterface(_or));
                x.set(("print" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprint));
                x.set(("printf" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf));
                x.set(("println" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintln));
                x.set(("urlquery" : stdgo.GoString), stdgo.Go.toInterface(urlqueryEscaper));
                x.set(("eq" : stdgo.GoString), stdgo.Go.toInterface(_eq));
                x.set(("ge" : stdgo.GoString), stdgo.Go.toInterface(_ge));
                x.set(("gt" : stdgo.GoString), stdgo.Go.toInterface(_gt));
                x.set(("le" : stdgo.GoString), stdgo.Go.toInterface(_le));
                x.set(("lt" : stdgo.GoString), stdgo.Go.toInterface(_lt));
                x.set(("ne" : stdgo.GoString), stdgo.Go.toInterface(_ne));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
    }
function _builtinFuncs():stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect.Value> {
        _builtinFuncsOnce.do_(function():Void {
            _builtinFuncsOnce._v = _createValueFuncs(_builtins());
        });
        return _builtinFuncsOnce._v;
    }
function _createValueFuncs(_funcMap:FuncMap):stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect.Value> {
        var _m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo._internal.reflect.Reflect.Value>();
            x.__defaultValue__ = () -> ({} : stdgo._internal.reflect.Reflect.Value);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect.Value>);
        _addValueFuncs(_m, _funcMap);
        return _m;
    }
function _addValueFuncs(_out:stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect.Value>, _in:FuncMap):Void {
        for (_name => _fn in _in) {
            if (!_goodName(_name?.__copy__())) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.errorf(("function name %q is not a valid identifier" : stdgo.GoString), stdgo.Go.toInterface(_name)));
            };
            var _v:stdgo._internal.reflect.Reflect.Value = stdgo._internal.reflect.Reflect.valueOf(_fn)?.__copy__();
            if (_v.kind() != ((19u32 : stdgo._internal.reflect.Reflect.Kind))) {
                throw stdgo.Go.toInterface(((("value for " : stdgo.GoString) + _name?.__copy__() : stdgo.GoString) + (" not a function" : stdgo.GoString)?.__copy__() : stdgo.GoString));
            };
            if (!_goodFunc(_v.type())) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.errorf(("can\'t install method/function %q with %d results" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_v.type().numOut())));
            };
            _out[_name] = _v?.__copy__();
        };
    }
function _addFuncs(_out:FuncMap, _in:FuncMap):Void {
        for (_name => _fn in _in) {
            _out[_name] = _fn;
        };
    }
function _goodFunc(_typ:stdgo._internal.reflect.Reflect.Type_):Bool {
        if (_typ.numOut() == ((1 : stdgo.GoInt))) {
            return true;
        } else if (((_typ.numOut() == (2 : stdgo.GoInt)) && ((_typ.out((1 : stdgo.GoInt)).string() : String) == (_errorType.string() : String)) : Bool)) {
            return true;
        };
        return false;
    }
function _goodName(_name:stdgo.GoString):Bool {
        if (_name == (stdgo.Go.str())) {
            return false;
        };
        for (_i => _r in _name) {
            if (_r == ((95 : stdgo.GoInt32))) {} else if (((_i == (0 : stdgo.GoInt)) && !stdgo._internal.unicode.Unicode.isLetter(_r) : Bool)) {
                return false;
            } else if ((!stdgo._internal.unicode.Unicode.isLetter(_r) && !stdgo._internal.unicode.Unicode.isDigit(_r) : Bool)) {
                return false;
            };
        };
        return true;
    }
function _findFunction(_name:stdgo.GoString, _tmpl:stdgo.Ref<Template>):{ var _0 : stdgo._internal.reflect.Reflect.Value; var _1 : Bool; var _2 : Bool; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _v:stdgo._internal.reflect.Reflect.Value = ({} : stdgo._internal.reflect.Reflect.Value), _isBuiltin:Bool = false, _ok:Bool = false;
        try {
            if ((((_tmpl != null) && ((_tmpl : Dynamic).__nil__ == null || !(_tmpl : Dynamic).__nil__)) && ((_tmpl._common != null) && ((_tmpl._common : Dynamic).__nil__ == null || !(_tmpl._common : Dynamic).__nil__)) : Bool)) {
                _tmpl._common._muFuncs.rlock();
                __deferstack__.unshift(() -> _tmpl._common._muFuncs.runlock());
                {
                    var _fn:stdgo._internal.reflect.Reflect.Value = (_tmpl._common._execFuncs[_name] ?? ({} : stdgo._internal.reflect.Reflect.Value))?.__copy__();
                    if (_fn.isValid()) {
                        {
                            final __ret__:{ var _0 : stdgo._internal.reflect.Reflect.Value; var _1 : Bool; var _2 : Bool; } = { _0 : _fn?.__copy__(), _1 : false, _2 : true };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                };
            };
            {
                var _fn:stdgo._internal.reflect.Reflect.Value = (_builtinFuncs()[_name] ?? ({} : stdgo._internal.reflect.Reflect.Value))?.__copy__();
                if (_fn.isValid()) {
                    {
                        final __ret__:{ var _0 : stdgo._internal.reflect.Reflect.Value; var _1 : Bool; var _2 : Bool; } = { _0 : _fn?.__copy__(), _1 : true, _2 : true };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            {
                final __ret__:{ var _0 : stdgo._internal.reflect.Reflect.Value; var _1 : Bool; var _2 : Bool; } = { _0 : (new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value), _1 : false, _2 : false };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo._internal.reflect.Reflect.Value; var _1 : Bool; var _2 : Bool; } = { _0 : _v, _1 : _isBuiltin, _2 : _ok };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo._internal.reflect.Reflect.Value; var _1 : Bool; var _2 : Bool; } = { _0 : _v, _1 : _isBuiltin, _2 : _ok };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
function _prepareArg(_value:stdgo._internal.reflect.Reflect.Value, _argType:stdgo._internal.reflect.Reflect.Type_):{ var _0 : stdgo._internal.reflect.Reflect.Value; var _1 : stdgo.Error; } {
        if (!_value.isValid()) {
            if (!_canBeNil(_argType)) {
                return { _0 : (new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value), _1 : stdgo._internal.fmt.Fmt.errorf(("value is nil; should be of type %s" : stdgo.GoString), stdgo.Go.toInterface(_argType)) };
            };
            _value = stdgo._internal.reflect.Reflect.zero(_argType)?.__copy__();
        };
        if (_value.type().assignableTo(_argType)) {
            return { _0 : _value?.__copy__(), _1 : (null : stdgo.Error) };
        };
        if (((_intLike(_value.kind()) && _intLike(_argType.kind()) : Bool) && _value.type().convertibleTo(_argType) : Bool)) {
            _value = _value.convert(_argType)?.__copy__();
            return { _0 : _value?.__copy__(), _1 : (null : stdgo.Error) };
        };
        return { _0 : (new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value), _1 : stdgo._internal.fmt.Fmt.errorf(("value has type %s; should be %s" : stdgo.GoString), stdgo.Go.toInterface(_value.type()), stdgo.Go.toInterface(_argType)) };
    }
function _intLike(_typ:stdgo._internal.reflect.Reflect.Kind):Bool {
        {
            final __value__ = _typ;
            if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect.Kind))) {
                return true;
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect.Kind))) {
                return true;
            };
        };
        return false;
    }
function _indexArg(_index:stdgo._internal.reflect.Reflect.Value, _cap:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _x:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        {
            final __value__ = _index.kind();
            if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _x = _index.int_();
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _x = (_index.uint() : stdgo.GoInt64);
            } else if (__value__ == ((0u32 : stdgo._internal.reflect.Reflect.Kind))) {
                return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.fmt.Fmt.errorf(("cannot index slice/array with nil" : stdgo.GoString)) };
            } else {
                return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.fmt.Fmt.errorf(("cannot index slice/array with type %s" : stdgo.GoString), stdgo.Go.toInterface(_index.type())) };
            };
        };
        if ((((_x < (0i64 : stdgo.GoInt64) : Bool) || ((_x : stdgo.GoInt) < (0 : stdgo.GoInt) : Bool) : Bool) || ((_x : stdgo.GoInt) > _cap : Bool) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.fmt.Fmt.errorf(("index out of range: %d" : stdgo.GoString), stdgo.Go.toInterface(_x)) };
        };
        return { _0 : (_x : stdgo.GoInt), _1 : (null : stdgo.Error) };
    }
function _index(_item:stdgo._internal.reflect.Reflect.Value, _indexes:haxe.Rest<stdgo._internal.reflect.Reflect.Value>):{ var _0 : stdgo._internal.reflect.Reflect.Value; var _1 : stdgo.Error; } {
        var _indexes = new stdgo.Slice<stdgo._internal.reflect.Reflect.Value>(_indexes.length, 0, ..._indexes);
        _item = _indirectInterface(_item?.__copy__())?.__copy__();
        if (!_item.isValid()) {
            return { _0 : (new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value), _1 : stdgo._internal.fmt.Fmt.errorf(("index of untyped nil" : stdgo.GoString)) };
        };
        for (__8 => _index in _indexes) {
            _index = _indirectInterface(_index?.__copy__())?.__copy__();
            var _isNil:Bool = false;
            {
                {
                    var __tmp__ = _indirect(_item?.__copy__());
                    _item = __tmp__._0?.__copy__();
                    _isNil = __tmp__._1;
                };
                if (_isNil) {
                    return { _0 : (new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value), _1 : stdgo._internal.fmt.Fmt.errorf(("index of nil pointer" : stdgo.GoString)) };
                };
            };
            {
                final __value__ = _item.kind();
                if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((24u32 : stdgo._internal.reflect.Reflect.Kind))) {
                    var __tmp__ = _indexArg(_index?.__copy__(), _item.len()), _x:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : (new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value), _1 : _err };
                    };
                    _item = _item.index(_x)?.__copy__();
                } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect.Kind))) {
                    var __tmp__ = _prepareArg(_index?.__copy__(), _item.type().key()), _index:stdgo._internal.reflect.Reflect.Value = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : (new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value), _1 : _err };
                    };
                    {
                        var _x:stdgo._internal.reflect.Reflect.Value = _item.mapIndex(_index?.__copy__())?.__copy__();
                        if (_x.isValid()) {
                            _item = _x?.__copy__();
                        } else {
                            _item = stdgo._internal.reflect.Reflect.zero(_item.type().elem())?.__copy__();
                        };
                    };
                } else if (__value__ == ((0u32 : stdgo._internal.reflect.Reflect.Kind))) {
                    throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
                } else {
                    return { _0 : (new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value), _1 : stdgo._internal.fmt.Fmt.errorf(("can\'t index item of type %s" : stdgo.GoString), stdgo.Go.toInterface(_item.type())) };
                };
            };
        };
        return { _0 : _item?.__copy__(), _1 : (null : stdgo.Error) };
    }
function _slice(_item:stdgo._internal.reflect.Reflect.Value, _indexes:haxe.Rest<stdgo._internal.reflect.Reflect.Value>):{ var _0 : stdgo._internal.reflect.Reflect.Value; var _1 : stdgo.Error; } {
        var _indexes = new stdgo.Slice<stdgo._internal.reflect.Reflect.Value>(_indexes.length, 0, ..._indexes);
        _item = _indirectInterface(_item?.__copy__())?.__copy__();
        if (!_item.isValid()) {
            return { _0 : (new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value), _1 : stdgo._internal.fmt.Fmt.errorf(("slice of untyped nil" : stdgo.GoString)) };
        };
        if (((_indexes.length) > (3 : stdgo.GoInt) : Bool)) {
            return { _0 : (new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value), _1 : stdgo._internal.fmt.Fmt.errorf(("too many slice indexes: %d" : stdgo.GoString), stdgo.Go.toInterface((_indexes.length))) };
        };
        var _cap:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            final __value__ = _item.kind();
            if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect.Kind))) {
                if ((_indexes.length) == ((3 : stdgo.GoInt))) {
                    return { _0 : (new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value), _1 : stdgo._internal.fmt.Fmt.errorf(("cannot 3-index slice a string" : stdgo.GoString)) };
                };
                _cap = _item.len();
            } else if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _cap = _item.cap();
            } else {
                return { _0 : (new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value), _1 : stdgo._internal.fmt.Fmt.errorf(("can\'t slice item of type %s" : stdgo.GoString), stdgo.Go.toInterface(_item.type())) };
            };
        };
        var _idx = (new stdgo.GoArray<stdgo.GoInt>(3, 3, ...[(0 : stdgo.GoInt), _item.len()]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__();
        for (_i => _index in _indexes) {
            var __tmp__ = _indexArg(_index?.__copy__(), _cap), _x:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value), _1 : _err };
            };
            _idx[(_i : stdgo.GoInt)] = _x;
        };
        if ((_idx[(0 : stdgo.GoInt)] > _idx[(1 : stdgo.GoInt)] : Bool)) {
            return { _0 : (new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value), _1 : stdgo._internal.fmt.Fmt.errorf(("invalid slice index: %d > %d" : stdgo.GoString), stdgo.Go.toInterface(_idx[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_idx[(1 : stdgo.GoInt)])) };
        };
        if (((_indexes.length) < (3 : stdgo.GoInt) : Bool)) {
            return { _0 : _item.slice(_idx[(0 : stdgo.GoInt)], _idx[(1 : stdgo.GoInt)])?.__copy__(), _1 : (null : stdgo.Error) };
        };
        if ((_idx[(1 : stdgo.GoInt)] > _idx[(2 : stdgo.GoInt)] : Bool)) {
            return { _0 : (new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value), _1 : stdgo._internal.fmt.Fmt.errorf(("invalid slice index: %d > %d" : stdgo.GoString), stdgo.Go.toInterface(_idx[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_idx[(2 : stdgo.GoInt)])) };
        };
        return { _0 : _item.slice3(_idx[(0 : stdgo.GoInt)], _idx[(1 : stdgo.GoInt)], _idx[(2 : stdgo.GoInt)])?.__copy__(), _1 : (null : stdgo.Error) };
    }
function _length(_item:stdgo._internal.reflect.Reflect.Value):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var __tmp__ = _indirect(_item?.__copy__()), _item:stdgo._internal.reflect.Reflect.Value = __tmp__._0, _isNil:Bool = __tmp__._1;
        if (_isNil) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.fmt.Fmt.errorf(("len of nil pointer" : stdgo.GoString)) };
        };
        {
            final __value__ = _item.kind();
            if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((18u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((21u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((24u32 : stdgo._internal.reflect.Reflect.Kind))) {
                return { _0 : _item.len(), _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.fmt.Fmt.errorf(("len of type %s" : stdgo.GoString), stdgo.Go.toInterface(_item.type())) };
    }
function _call(_fn:stdgo._internal.reflect.Reflect.Value, _args:haxe.Rest<stdgo._internal.reflect.Reflect.Value>):{ var _0 : stdgo._internal.reflect.Reflect.Value; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo._internal.reflect.Reflect.Value>(_args.length, 0, ..._args);
        _fn = _indirectInterface(_fn?.__copy__())?.__copy__();
        if (!_fn.isValid()) {
            return { _0 : (new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value), _1 : stdgo._internal.fmt.Fmt.errorf(("call of nil" : stdgo.GoString)) };
        };
        var _typ:stdgo._internal.reflect.Reflect.Type_ = _fn.type();
        if (_typ.kind() != ((19u32 : stdgo._internal.reflect.Reflect.Kind))) {
            return { _0 : (new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value), _1 : stdgo._internal.fmt.Fmt.errorf(("non-function of type %s" : stdgo.GoString), stdgo.Go.toInterface(_typ)) };
        };
        if (!_goodFunc(_typ)) {
            return { _0 : (new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value), _1 : stdgo._internal.fmt.Fmt.errorf(("function called with %d args; should be 1 or 2" : stdgo.GoString), stdgo.Go.toInterface(_typ.numOut())) };
        };
        var _numIn:stdgo.GoInt = _typ.numIn();
        var _dddType:stdgo._internal.reflect.Reflect.Type_ = (null : stdgo._internal.reflect.Reflect.Type_);
        if (_typ.isVariadic()) {
            if (((_args.length) < (_numIn - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                return { _0 : (new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value), _1 : stdgo._internal.fmt.Fmt.errorf(("wrong number of args: got %d want at least %d" : stdgo.GoString), stdgo.Go.toInterface((_args.length)), stdgo.Go.toInterface((_numIn - (1 : stdgo.GoInt) : stdgo.GoInt))) };
            };
            _dddType = _typ.in_((_numIn - (1 : stdgo.GoInt) : stdgo.GoInt)).elem();
        } else {
            if ((_args.length) != (_numIn)) {
                return { _0 : (new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value), _1 : stdgo._internal.fmt.Fmt.errorf(("wrong number of args: got %d want %d" : stdgo.GoString), stdgo.Go.toInterface((_args.length)), stdgo.Go.toInterface(_numIn)) };
            };
        };
        var _argv = (new stdgo.Slice<stdgo._internal.reflect.Reflect.Value>((_args.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_args.length : stdgo.GoInt).toBasic() > 0 ? (_args.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect.Value)]) : stdgo.Slice<stdgo._internal.reflect.Reflect.Value>);
        for (_i => _arg in _args) {
            _arg = _indirectInterface(_arg?.__copy__())?.__copy__();
            var _argType:stdgo._internal.reflect.Reflect.Type_ = _dddType;
            if ((!_typ.isVariadic() || (_i < (_numIn - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) {
                _argType = _typ.in_(_i);
            };
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                {
                    var __tmp__ = _prepareArg(_arg?.__copy__(), _argType);
                    _argv[(_i : stdgo.GoInt)] = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : (new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value), _1 : stdgo._internal.fmt.Fmt.errorf(("arg %d: %w" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err)) };
                };
            };
        };
        return _safeCall(_fn?.__copy__(), _argv);
    }
function _safeCall(_fun:stdgo._internal.reflect.Reflect.Value, _args:stdgo.Slice<stdgo._internal.reflect.Reflect.Value>):{ var _0 : stdgo._internal.reflect.Reflect.Value; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _val:stdgo._internal.reflect.Reflect.Value = ({} : stdgo._internal.reflect.Reflect.Value), _err:stdgo.Error = (null : stdgo.Error);
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _r:stdgo.AnyInterface = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_r != null) {
                            {
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((_r : stdgo.Error)) : stdgo.Error), _1 : true };
                                } catch(_) {
                                    { _0 : (null : stdgo.Error), _1 : false };
                                }, _e = __tmp__._0, _ok = __tmp__._1;
                                if (_ok) {
                                    _err = _e;
                                } else {
                                    _err = stdgo._internal.fmt.Fmt.errorf(("%v" : stdgo.GoString), _r);
                                };
                            };
                        };
                    };
                };
                a();
            });
            var _ret = _fun.call(_args);
            if (((_ret.length == (2 : stdgo.GoInt)) && !_ret[(1 : stdgo.GoInt)].isNil() : Bool)) {
                {
                    final __ret__:{ var _0 : stdgo._internal.reflect.Reflect.Value; var _1 : stdgo.Error; } = { _0 : _ret[(0 : stdgo.GoInt)], _1 : (stdgo.Go.typeAssert((_ret[(1 : stdgo.GoInt)].interface_() : stdgo.Error)) : stdgo.Error) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:{ var _0 : stdgo._internal.reflect.Reflect.Value; var _1 : stdgo.Error; } = { _0 : _ret[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo._internal.reflect.Reflect.Value; var _1 : stdgo.Error; } = { _0 : _val, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo._internal.reflect.Reflect.Value; var _1 : stdgo.Error; } = { _0 : _val, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
function _truth(_arg:stdgo._internal.reflect.Reflect.Value):Bool {
        var __tmp__ = _isTrue(_indirectInterface(_arg?.__copy__())?.__copy__()), _t:Bool = __tmp__._0, __8:Bool = __tmp__._1;
        return _t;
    }
function _and(_arg0:stdgo._internal.reflect.Reflect.Value, _args:haxe.Rest<stdgo._internal.reflect.Reflect.Value>):stdgo._internal.reflect.Reflect.Value {
        var _args = new stdgo.Slice<stdgo._internal.reflect.Reflect.Value>(_args.length, 0, ..._args);
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
function _or(_arg0:stdgo._internal.reflect.Reflect.Value, _args:haxe.Rest<stdgo._internal.reflect.Reflect.Value>):stdgo._internal.reflect.Reflect.Value {
        var _args = new stdgo.Slice<stdgo._internal.reflect.Reflect.Value>(_args.length, 0, ..._args);
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
function _not(_arg:stdgo._internal.reflect.Reflect.Value):Bool {
        return !_truth(_arg?.__copy__());
    }
function _basicKind(_v:stdgo._internal.reflect.Reflect.Value):{ var _0 : T_kind; var _1 : stdgo.Error; } {
        {
            final __value__ = _v.kind();
            if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect.Kind))) {
                return { _0 : (1 : stdgo._internal.text.template.Template.T_kind), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect.Kind))) {
                return { _0 : (3 : stdgo._internal.text.template.Template.T_kind), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect.Kind))) {
                return { _0 : (6 : stdgo._internal.text.template.Template.T_kind), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect.Kind))) {
                return { _0 : (4 : stdgo._internal.text.template.Template.T_kind), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((16u32 : stdgo._internal.reflect.Reflect.Kind))) {
                return { _0 : (2 : stdgo._internal.text.template.Template.T_kind), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect.Kind))) {
                return { _0 : (5 : stdgo._internal.text.template.Template.T_kind), _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : (0 : stdgo._internal.text.template.Template.T_kind), _1 : _errBadComparisonType };
    }
function _isNil(_v:stdgo._internal.reflect.Reflect.Value):Bool {
        if (!_v.isValid()) {
            return true;
        };
        {
            final __value__ = _v.kind();
            if (__value__ == ((18u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((19u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((20u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((21u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((22u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect.Kind))) {
                return _v.isNil();
            };
        };
        return false;
    }
function _canCompare(_v1:stdgo._internal.reflect.Reflect.Value, _v2:stdgo._internal.reflect.Reflect.Value):Bool {
        var _k1:stdgo._internal.reflect.Reflect.Kind = _v1.kind();
        var _k2:stdgo._internal.reflect.Reflect.Kind = _v2.kind();
        if (_k1 == (_k2)) {
            return true;
        };
        return ((_k1 == (0u32 : stdgo._internal.reflect.Reflect.Kind)) || (_k2 == (0u32 : stdgo._internal.reflect.Reflect.Kind)) : Bool);
    }
function _eq(_arg1:stdgo._internal.reflect.Reflect.Value, _arg2:haxe.Rest<stdgo._internal.reflect.Reflect.Value>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _arg2 = new stdgo.Slice<stdgo._internal.reflect.Reflect.Value>(_arg2.length, 0, ..._arg2);
        _arg1 = _indirectInterface(_arg1?.__copy__())?.__copy__();
        if ((_arg2.length) == ((0 : stdgo.GoInt))) {
            return { _0 : false, _1 : _errNoComparison };
        };
        var __tmp__ = _basicKind(_arg1?.__copy__()), _k1:stdgo._internal.text.template.Template.T_kind = __tmp__._0, __8:stdgo.Error = __tmp__._1;
        for (__9 => _arg in _arg2) {
            _arg = _indirectInterface(_arg?.__copy__())?.__copy__();
            var __tmp__ = _basicKind(_arg?.__copy__()), _k2:stdgo._internal.text.template.Template.T_kind = __tmp__._0, __10:stdgo.Error = __tmp__._1;
            var _truth:Bool = false;
            if (_k1 != (_k2)) {
                if (((_k1 == (3 : stdgo._internal.text.template.Template.T_kind)) && (_k2 == (6 : stdgo._internal.text.template.Template.T_kind)) : Bool)) {
                    _truth = ((_arg1.int_() >= (0i64 : stdgo.GoInt64) : Bool) && ((_arg1.int_() : stdgo.GoUInt64) == _arg.uint()) : Bool);
                } else if (((_k1 == (6 : stdgo._internal.text.template.Template.T_kind)) && (_k2 == (3 : stdgo._internal.text.template.Template.T_kind)) : Bool)) {
                    _truth = ((_arg.int_() >= (0i64 : stdgo.GoInt64) : Bool) && (_arg1.uint() == (_arg.int_() : stdgo.GoUInt64)) : Bool);
                } else {
                    if (((stdgo.Go.toInterface(_arg1) != stdgo.Go.toInterface(_zero)) && (stdgo.Go.toInterface(_arg) != stdgo.Go.toInterface(_zero)) : Bool)) {
                        return { _0 : false, _1 : _errBadComparison };
                    };
                };
            } else {
                {
                    final __value__ = _k1;
                    if (__value__ == ((1 : stdgo._internal.text.template.Template.T_kind))) {
                        _truth = _arg1.bool_() == (_arg.bool_());
                    } else if (__value__ == ((2 : stdgo._internal.text.template.Template.T_kind))) {
                        _truth = _arg1.complex() == (_arg.complex());
                    } else if (__value__ == ((4 : stdgo._internal.text.template.Template.T_kind))) {
                        _truth = _arg1.float_() == (_arg.float_());
                    } else if (__value__ == ((3 : stdgo._internal.text.template.Template.T_kind))) {
                        _truth = _arg1.int_() == (_arg.int_());
                    } else if (__value__ == ((5 : stdgo._internal.text.template.Template.T_kind))) {
                        _truth = (_arg1.string() : stdgo.GoString) == ((_arg.string() : stdgo.GoString));
                    } else if (__value__ == ((6 : stdgo._internal.text.template.Template.T_kind))) {
                        _truth = _arg1.uint() == (_arg.uint());
                    } else {
                        if (!_canCompare(_arg1?.__copy__(), _arg?.__copy__())) {
                            return { _0 : false, _1 : stdgo._internal.fmt.Fmt.errorf(("non-comparable types %s: %v, %s: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_arg1)), stdgo.Go.toInterface(_arg1.type()), stdgo.Go.toInterface(_arg.type()), stdgo.Go.toInterface(stdgo.Go.asInterface(_arg))) };
                        };
                        if ((_isNil(_arg1?.__copy__()) || _isNil(_arg?.__copy__()) : Bool)) {
                            _truth = _isNil(_arg?.__copy__()) == (_isNil(_arg1?.__copy__()));
                        } else {
                            if (!_arg.type().comparable_()) {
                                return { _0 : false, _1 : stdgo._internal.fmt.Fmt.errorf(("non-comparable type %s: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_arg)), stdgo.Go.toInterface(_arg.type())) };
                            };
                            _truth = _arg1.interface_() == (_arg.interface_());
                        };
                    };
                };
            };
            if (_truth) {
                return { _0 : true, _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : false, _1 : (null : stdgo.Error) };
    }
function _ne(_arg1:stdgo._internal.reflect.Reflect.Value, _arg2:stdgo._internal.reflect.Reflect.Value):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var __tmp__ = _eq(_arg1?.__copy__(), _arg2?.__copy__()), _equal:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : !_equal, _1 : _err };
    }
function _lt(_arg1:stdgo._internal.reflect.Reflect.Value, _arg2:stdgo._internal.reflect.Reflect.Value):{ var _0 : Bool; var _1 : stdgo.Error; } {
        _arg1 = _indirectInterface(_arg1?.__copy__())?.__copy__();
        var __tmp__ = _basicKind(_arg1?.__copy__()), _k1:stdgo._internal.text.template.Template.T_kind = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : false, _1 : _err };
        };
        _arg2 = _indirectInterface(_arg2?.__copy__())?.__copy__();
        var __tmp__ = _basicKind(_arg2?.__copy__()), _k2:stdgo._internal.text.template.Template.T_kind = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : false, _1 : _err };
        };
        var _truth:Bool = false;
        if (_k1 != (_k2)) {
            if (((_k1 == (3 : stdgo._internal.text.template.Template.T_kind)) && (_k2 == (6 : stdgo._internal.text.template.Template.T_kind)) : Bool)) {
                _truth = ((_arg1.int_() < (0i64 : stdgo.GoInt64) : Bool) || ((_arg1.int_() : stdgo.GoUInt64) < _arg2.uint() : Bool) : Bool);
            } else if (((_k1 == (6 : stdgo._internal.text.template.Template.T_kind)) && (_k2 == (3 : stdgo._internal.text.template.Template.T_kind)) : Bool)) {
                _truth = ((_arg2.int_() >= (0i64 : stdgo.GoInt64) : Bool) && (_arg1.uint() < (_arg2.int_() : stdgo.GoUInt64) : Bool) : Bool);
            } else {
                return { _0 : false, _1 : _errBadComparison };
            };
        } else {
            {
                final __value__ = _k1;
                if (__value__ == ((1 : stdgo._internal.text.template.Template.T_kind)) || __value__ == ((2 : stdgo._internal.text.template.Template.T_kind))) {
                    return { _0 : false, _1 : _errBadComparisonType };
                } else if (__value__ == ((4 : stdgo._internal.text.template.Template.T_kind))) {
                    _truth = (_arg1.float_() < _arg2.float_() : Bool);
                } else if (__value__ == ((3 : stdgo._internal.text.template.Template.T_kind))) {
                    _truth = (_arg1.int_() < _arg2.int_() : Bool);
                } else if (__value__ == ((5 : stdgo._internal.text.template.Template.T_kind))) {
                    _truth = ((_arg1.string() : stdgo.GoString) < (_arg2.string() : stdgo.GoString) : Bool);
                } else if (__value__ == ((6 : stdgo._internal.text.template.Template.T_kind))) {
                    _truth = (_arg1.uint() < _arg2.uint() : Bool);
                } else {
                    throw stdgo.Go.toInterface(("invalid kind" : stdgo.GoString));
                };
            };
        };
        return { _0 : _truth, _1 : (null : stdgo.Error) };
    }
function _le(_arg1:stdgo._internal.reflect.Reflect.Value, _arg2:stdgo._internal.reflect.Reflect.Value):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var __tmp__ = _lt(_arg1?.__copy__(), _arg2?.__copy__()), _lessThan:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_lessThan || (_err != null) : Bool)) {
            return { _0 : _lessThan, _1 : _err };
        };
        return _eq(_arg1?.__copy__(), _arg2?.__copy__());
    }
function _gt(_arg1:stdgo._internal.reflect.Reflect.Value, _arg2:stdgo._internal.reflect.Reflect.Value):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var __tmp__ = _le(_arg1?.__copy__(), _arg2?.__copy__()), _lessOrEqual:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : false, _1 : _err };
        };
        return { _0 : !_lessOrEqual, _1 : (null : stdgo.Error) };
    }
function _ge(_arg1:stdgo._internal.reflect.Reflect.Value, _arg2:stdgo._internal.reflect.Reflect.Value):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var __tmp__ = _lt(_arg1?.__copy__(), _arg2?.__copy__()), _lessThan:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : false, _1 : _err };
        };
        return { _0 : !_lessThan, _1 : (null : stdgo.Error) };
    }
function htmlescape(_w:stdgo._internal.io.Io.Writer, _b:stdgo.Slice<stdgo.GoByte>):Void {
        var _last:stdgo.GoInt = (0 : stdgo.GoInt);
        for (_i => _c in _b) {
            var _html:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
            {
                final __value__ = _c;
                if (__value__ == ((0 : stdgo.GoUInt8))) {
                    _html = _htmlNull;
                } else if (__value__ == ((34 : stdgo.GoUInt8))) {
                    _html = _htmlQuot;
                } else if (__value__ == ((39 : stdgo.GoUInt8))) {
                    _html = _htmlApos;
                } else if (__value__ == ((38 : stdgo.GoUInt8))) {
                    _html = _htmlAmp;
                } else if (__value__ == ((60 : stdgo.GoUInt8))) {
                    _html = _htmlLt;
                } else if (__value__ == ((62 : stdgo.GoUInt8))) {
                    _html = _htmlGt;
                } else {
                    continue;
                };
            };
            _w.write((_b.__slice__(_last, _i) : stdgo.Slice<stdgo.GoUInt8>));
            _w.write(_html);
            _last = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        _w.write((_b.__slice__(_last) : stdgo.Slice<stdgo.GoUInt8>));
    }
function htmlescapeString(_s:stdgo.GoString):stdgo.GoString {
        if (!stdgo._internal.strings.Strings.containsAny(_s?.__copy__(), stdgo.Go.str("\'\"&<>", 0)?.__copy__())) {
            return _s?.__copy__();
        };
        var _b:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        htmlescape(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), (_s : stdgo.Slice<stdgo.GoByte>));
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
function htmlescaper(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        return htmlescapeString(_evalArgs(_args)?.__copy__())?.__copy__();
    }
function jsescape(_w:stdgo._internal.io.Io.Writer, _b:stdgo.Slice<stdgo.GoByte>):Void {
        var _last:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_b.length) : Bool), _i++, {
                var _c:stdgo.GoUInt8 = _b[(_i : stdgo.GoInt)];
                if (!_jsIsSpecial((_c : stdgo.GoRune))) {
                    continue;
                };
                _w.write((_b.__slice__(_last, _i) : stdgo.Slice<stdgo.GoUInt8>));
                if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
                    {
                        final __value__ = _c;
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _w.write(_jsBackslash);
                        } else if (__value__ == ((39 : stdgo.GoUInt8))) {
                            _w.write(_jsApos);
                        } else if (__value__ == ((34 : stdgo.GoUInt8))) {
                            _w.write(_jsQuot);
                        } else if (__value__ == ((60 : stdgo.GoUInt8))) {
                            _w.write(_jsLt);
                        } else if (__value__ == ((62 : stdgo.GoUInt8))) {
                            _w.write(_jsGt);
                        } else if (__value__ == ((38 : stdgo.GoUInt8))) {
                            _w.write(_jsAmp);
                        } else if (__value__ == ((61 : stdgo.GoUInt8))) {
                            _w.write(_jsEq);
                        } else {
                            _w.write(_jsLowUni);
                            var __0:stdgo.GoUInt8 = (_c >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8), __1:stdgo.GoUInt8 = (_c & (15 : stdgo.GoUInt8) : stdgo.GoUInt8), _b:stdgo.GoUInt8 = __1, _t:stdgo.GoUInt8 = __0;
                            _w.write((_hex.__slice__(_t, (_t + (1 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>));
                            _w.write((_hex.__slice__(_b, (_b + (1 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>));
                        };
                    };
                } else {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRune((_b.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                    if (stdgo._internal.unicode.Unicode.isPrint(_r)) {
                        _w.write((_b.__slice__(_i, (_i + _size : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    } else {
                        stdgo._internal.fmt.Fmt.fprintf(_w, ("\\u%04X" : stdgo.GoString), stdgo.Go.toInterface(_r));
                    };
                    _i = (_i + ((_size - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                };
                _last = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
            });
        };
        _w.write((_b.__slice__(_last) : stdgo.Slice<stdgo.GoUInt8>));
    }
function jsescapeString(_s:stdgo.GoString):stdgo.GoString {
        if ((stdgo._internal.strings.Strings.indexFunc(_s?.__copy__(), _jsIsSpecial) < (0 : stdgo.GoInt) : Bool)) {
            return _s?.__copy__();
        };
        var _b:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        jsescape(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), (_s : stdgo.Slice<stdgo.GoByte>));
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
function _jsIsSpecial(_r:stdgo.GoRune):Bool {
        {
            final __value__ = _r;
            if (__value__ == ((92 : stdgo.GoInt32)) || __value__ == ((39 : stdgo.GoInt32)) || __value__ == ((34 : stdgo.GoInt32)) || __value__ == ((60 : stdgo.GoInt32)) || __value__ == ((62 : stdgo.GoInt32)) || __value__ == ((38 : stdgo.GoInt32)) || __value__ == ((61 : stdgo.GoInt32))) {
                return true;
            };
        };
        return ((_r < (32 : stdgo.GoInt32) : Bool) || ((128 : stdgo.GoInt32) <= _r : Bool) : Bool);
    }
function jsescaper(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        return jsescapeString(_evalArgs(_args)?.__copy__())?.__copy__();
    }
function urlqueryEscaper(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        return stdgo._internal.net.url.Url.queryEscape(_evalArgs(_args)?.__copy__())?.__copy__();
    }
function _evalArgs(_args:stdgo.Slice<stdgo.AnyInterface>):stdgo.GoString {
        var _ok:Bool = false;
        var _s:stdgo.GoString = ("" : stdgo.GoString);
        if ((_args.length) == ((1 : stdgo.GoInt))) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_args[(0 : stdgo.GoInt)] : stdgo.GoString)) : stdgo.GoString), _1 : true };
                } catch(_) {
                    { _0 : ("" : stdgo.GoString), _1 : false };
                };
                _s = __tmp__._0?.__copy__();
                _ok = __tmp__._1;
            };
        };
        if (!_ok) {
            for (_i => _arg in _args) {
                var __tmp__ = _printableValue(stdgo._internal.reflect.Reflect.valueOf(_arg)?.__copy__()), _a:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _args[(_i : stdgo.GoInt)] = _a;
                };
            };
            _s = stdgo._internal.fmt.Fmt.sprint(...(_args : Array<stdgo.AnyInterface>))?.__copy__();
        };
        return _s?.__copy__();
    }
function must(_t:stdgo.Ref<Template>, _err:stdgo.Error):stdgo.Ref<Template> {
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        return _t;
    }
function parseFiles(_filenames:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<Template>; var _1 : stdgo.Error; } {
        var _filenames = new stdgo.Slice<stdgo.GoString>(_filenames.length, 0, ..._filenames);
        return _parseFiles(null, _readFileOS, ...(_filenames : Array<stdgo.GoString>));
    }
function _parseFiles(_t:stdgo.Ref<Template>, _readFile:stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoByte>; var _2 : stdgo.Error; }, _filenames:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<Template>; var _1 : stdgo.Error; } {
        var _filenames = new stdgo.Slice<stdgo.GoString>(_filenames.length, 0, ..._filenames);
        if ((_filenames.length) == ((0 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt.errorf(("template: no files named in call to ParseFiles" : stdgo.GoString)) };
        };
        for (__8 => _filename in _filenames) {
            var __tmp__ = _readFile(_filename?.__copy__()), _name:stdgo.GoString = __tmp__._0, _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            var _s:stdgo.GoString = (_b : stdgo.GoString)?.__copy__();
            var _tmpl:stdgo.Ref<Template> = (null : stdgo.Ref<stdgo._internal.text.template.Template.Template>);
            if (_t == null || (_t : Dynamic).__nil__) {
                _t = new_(_name?.__copy__());
            };
            if (_name == (_t.tree.name())) {
                _tmpl = _t;
            } else {
                _tmpl = _t.new_(_name?.__copy__());
            };
            {
                var __tmp__ = _tmpl.parse(_s?.__copy__());
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : _t, _1 : (null : stdgo.Error) };
    }
function parseGlob(_pattern:stdgo.GoString):{ var _0 : stdgo.Ref<Template>; var _1 : stdgo.Error; } {
        return _parseGlob(null, _pattern?.__copy__());
    }
function _parseGlob(_t:stdgo.Ref<Template>, _pattern:stdgo.GoString):{ var _0 : stdgo.Ref<Template>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.path.filepath.Filepath.glob(_pattern?.__copy__()), _filenames:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        if ((_filenames.length) == ((0 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt.errorf(("template: pattern matches no files: %#q" : stdgo.GoString), stdgo.Go.toInterface(_pattern)) };
        };
        return _parseFiles(_t, _readFileOS, ...(_filenames : Array<stdgo.GoString>));
    }
function parseFS(_fsys:stdgo._internal.io.fs.Fs.FS, _patterns:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<Template>; var _1 : stdgo.Error; } {
        var _patterns = new stdgo.Slice<stdgo.GoString>(_patterns.length, 0, ..._patterns);
        return _parseFS(null, _fsys, _patterns);
    }
function _parseFS(_t:stdgo.Ref<Template>, _fsys:stdgo._internal.io.fs.Fs.FS, _patterns:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Ref<Template>; var _1 : stdgo.Error; } {
        var _filenames:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        for (__8 => _pattern in _patterns) {
            var __tmp__ = stdgo._internal.io.fs.Fs.glob(_fsys, _pattern?.__copy__()), _list:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            if ((_list.length) == ((0 : stdgo.GoInt))) {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt.errorf(("template: pattern matches no files: %#q" : stdgo.GoString), stdgo.Go.toInterface(_pattern)) };
            };
            _filenames = (_filenames.__append__(...(_list : Array<stdgo.GoString>)));
        };
        return _parseFiles(_t, _readFileFS(_fsys), ...(_filenames : Array<stdgo.GoString>));
    }
function _readFileOS(_file:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoByte>; var _2 : stdgo.Error; } {
        var _name:stdgo.GoString = ("" : stdgo.GoString), _b:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>), _err:stdgo.Error = (null : stdgo.Error);
        _name = stdgo._internal.path.filepath.Filepath.base(_file?.__copy__())?.__copy__();
        {
            var __tmp__ = stdgo._internal.os.Os.readFile(_file?.__copy__());
            _b = __tmp__._0;
            _err = __tmp__._1;
        };
        return { _0 : _name, _1 : _b, _2 : _err };
    }
function _readFileFS(_fsys:stdgo._internal.io.fs.Fs.FS):stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoByte>; var _2 : stdgo.Error; } {
        return function(_file:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoByte>; var _2 : stdgo.Error; } {
            var _name:stdgo.GoString = ("" : stdgo.GoString), _b:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>), _err:stdgo.Error = (null : stdgo.Error);
            _name = stdgo._internal.path.Path.base(_file?.__copy__())?.__copy__();
            {
                var __tmp__ = stdgo._internal.io.fs.Fs.readFile(_fsys, _file?.__copy__());
                _b = __tmp__._0;
                _err = __tmp__._1;
            };
            return { _0 : _name, _1 : _b, _2 : _err };
        };
    }
function testMultiParse(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__8 => _test in _multiParseTests) {
            var __tmp__ = new_(("root" : stdgo.GoString)).parse(_test._input?.__copy__()), _template:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err == null) && !_test._ok : Bool)) {
                _t.errorf(("%q: expected error; got none" : stdgo.GoString), stdgo.Go.toInterface(_test._name));
                continue;
            } else if (((_err != null) && _test._ok : Bool)) {
                _t.errorf(("%q: unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_err));
                continue;
            } else if (((_err != null) && !_test._ok : Bool)) {
                if (_debug.value) {
                    stdgo._internal.fmt.Fmt.printf(("%s: %s\n\t%s\n" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_test._input), stdgo.Go.toInterface(_err));
                };
                continue;
            };
            if (_template == null || (_template : Dynamic).__nil__) {
                continue;
            };
            if ((_template._common._tmpl.length) != (((_test._names.length) + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                _t.errorf(("%s: wrong number of templates; wanted %d got %d" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface((_test._names.length)), stdgo.Go.toInterface((_template._common._tmpl.length)));
                continue;
            };
            for (_i => _name in _test._names) {
                var __tmp__ = (_template._common._tmpl != null && _template._common._tmpl.exists(_name?.__copy__()) ? { _0 : _template._common._tmpl[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.text.template.Template.Template>), _1 : false }), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    _t.errorf(("%s: can\'t find template %q" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_name));
                    continue;
                };
                var _result:stdgo.GoString = (_tmpl.tree.root.string() : stdgo.GoString)?.__copy__();
                if (_result != (_test._results[(_i : stdgo.GoInt)])) {
                    _t.errorf(("%s=(%q): got\n\t%v\nexpected\n\t%v" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_test._input), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(_test._results[(_i : stdgo.GoInt)]));
                };
            };
        };
    }
function testMultiExecute(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = new_(("root" : stdgo.GoString)).parse(("\n\t{{define \"x\"}}TEXT{{end}}\n\t{{define \"dotV\"}}{{.V}}{{end}}\n" : stdgo.GoString)), _template:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("parse error for 1: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = _template.parse(("\n\t{{define \"dot\"}}{{.}}{{end}}\n\t{{define \"nested\"}}{{template \"dot\" .}}{{end}}\n" : stdgo.GoString));
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatalf(("parse error for 2: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _testExecute(_multiExecTests, _template, _t);
    }
function testParseFiles(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = parseFiles(("DOES NOT EXIST" : stdgo.GoString)), __8:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("expected error for non-existent file; got none" : stdgo.GoString)));
        };
        var _template = new_(("root" : stdgo.GoString));
        {
            var __tmp__ = _template.parseFiles(("testdata/file1.tmpl" : stdgo.GoString), ("testdata/file2.tmpl" : stdgo.GoString));
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatalf(("error parsing files: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _testExecute(_multiExecTests, _template, _t);
    }
function testParseGlob(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = parseGlob(("DOES NOT EXIST" : stdgo.GoString)), __8:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("expected error for non-existent file; got none" : stdgo.GoString)));
        };
        {
            var __tmp__ = new_(("error" : stdgo.GoString)).parseGlob(("[x" : stdgo.GoString));
            _err = __tmp__._1;
        };
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("expected error for bad pattern; got none" : stdgo.GoString)));
        };
        var _template = new_(("root" : stdgo.GoString));
        {
            var __tmp__ = _template.parseGlob(("testdata/file*.tmpl" : stdgo.GoString));
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatalf(("error parsing files: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _testExecute(_multiExecTests, _template, _t);
    }
function testParseFS(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _fs:stdgo._internal.io.fs.Fs.FS = stdgo._internal.os.Os.dirFS(("testdata" : stdgo.GoString));
        {
            var __tmp__ = parseFS(_fs, ("DOES NOT EXIST" : stdgo.GoString)), __8:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("expected error for non-existent file; got none" : stdgo.GoString)));
            };
        };
        {
            var _template = new_(("root" : stdgo.GoString));
            var __tmp__ = _template.parseFS(_fs, ("file1.tmpl" : stdgo.GoString), ("file2.tmpl" : stdgo.GoString)), __25:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("error parsing files: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _testExecute(_multiExecTests, _template, _t);
        };
        {
            var _template = new_(("root" : stdgo.GoString));
            var __tmp__ = _template.parseFS(_fs, ("file*.tmpl" : stdgo.GoString)), __42:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("error parsing files: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _testExecute(_multiExecTests, _template, _t);
        };
    }
function testParseFilesWithData(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = new_(("root" : stdgo.GoString)).parseFiles(("testdata/tmpl1.tmpl" : stdgo.GoString), ("testdata/tmpl2.tmpl" : stdgo.GoString)), _template:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("error parsing files: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _testExecute(_templateFileExecTests, _template, _t);
    }
function testParseGlobWithData(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = new_(("root" : stdgo.GoString)).parseGlob(("testdata/tmpl*.tmpl" : stdgo.GoString)), _template:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("error parsing files: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _testExecute(_templateFileExecTests, _template, _t);
    }
function testClone(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = new_(("root" : stdgo.GoString)).parse(("{{define \"a\"}}{{template \"b\"}}{{template \"c\"}}{{end}}" : stdgo.GoString)), _root:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = _root.parse(("{{define \"b\"}}b{{end}}" : stdgo.GoString));
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _clone = ({
            var __tmp__ = _root.clone();
            must((__tmp__._0 : stdgo.Ref<stdgo._internal.text.template.Template.Template>), (__tmp__._1 : stdgo.Error));
        });
        {
            var __tmp__ = _root.parse(("{{define \"c\"}}root{{end}}" : stdgo.GoString));
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = _clone.parse(("{{define \"c\"}}clone{{end}}" : stdgo.GoString));
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        for (_k => _v in _clone._common._tmpl) {
            if (((_k == _clone._name) && ((_v._common._tmpl[_k] ?? (null : stdgo.Ref<stdgo._internal.text.template.Template.Template>)) != _clone) : Bool)) {
                _t.error(stdgo.Go.toInterface(("clone does not contain root" : stdgo.GoString)));
            };
            if (_v != ((_v._common._tmpl[_v._name] ?? (null : stdgo.Ref<stdgo._internal.text.template.Template.Template>)))) {
                _t.errorf(("clone does not contain self for %q" : stdgo.GoString), stdgo.Go.toInterface(_k));
            };
        };
        var _b:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        _err = _root.executeTemplate(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), ("a" : stdgo.GoString), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if ((_b.string() : stdgo.GoString) != (("broot" : stdgo.GoString))) {
            _t.errorf(("expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(("broot" : stdgo.GoString)), stdgo.Go.toInterface((_b.string() : stdgo.GoString)));
        };
        _b.reset();
        _err = _clone.executeTemplate(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), ("a" : stdgo.GoString), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if ((_b.string() : stdgo.GoString) != (("bclone" : stdgo.GoString))) {
            _t.errorf(("expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(("bclone" : stdgo.GoString)), stdgo.Go.toInterface((_b.string() : stdgo.GoString)));
        };
    }
function testAddParseTree(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = new_(("root" : stdgo.GoString)).parse(("{{define \"a\"}}{{template \"b\"}}{{template \"c\"}}{{end}}" : stdgo.GoString)), _root:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = _root.parse(("{{define \"b\"}}b{{end}}" : stdgo.GoString));
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.text.template.parse.Parse.parse(("cloneText3" : stdgo.GoString), ("{{define \"c\"}}root{{end}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), (null : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>), _builtins()), _tree:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse.Tree>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = _root.addParseTree(("c" : stdgo.GoString), (_tree[("c" : stdgo.GoString)] ?? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.Tree>))), _added:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _b:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        _err = _added.executeTemplate(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), ("a" : stdgo.GoString), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if ((_b.string() : stdgo.GoString) != (("broot" : stdgo.GoString))) {
            _t.errorf(("expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(("broot" : stdgo.GoString)), stdgo.Go.toInterface((_b.string() : stdgo.GoString)));
        };
    }
function testAddParseTreeToUnparsedTemplate(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _master:stdgo.GoString = ("{{define \"master\"}}{{end}}" : stdgo.GoString);
        var _tmpl = new_(("master" : stdgo.GoString));
        var __tmp__ = stdgo._internal.text.template.parse.Parse.parse(("master" : stdgo.GoString), _master?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), (null : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)), _tree:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse.Tree>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("unexpected parse err: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _masterTree = (_tree[("master" : stdgo.GoString)] ?? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.Tree>));
        _tmpl.addParseTree(("master" : stdgo.GoString), _masterTree);
    }
function testRedefinition(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tmpl:stdgo.Ref<Template> = (null : stdgo.Ref<stdgo._internal.text.template.Template.Template>);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            {
                var __tmp__ = new_(("tmpl1" : stdgo.GoString)).parse(("{{define \"test\"}}foo{{end}}" : stdgo.GoString));
                _tmpl = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatalf(("parse 1: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            {
                var __tmp__ = _tmpl.parse(("{{define \"test\"}}bar{{end}}" : stdgo.GoString));
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatalf(("got error %v, expected nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            {
                var __tmp__ = _tmpl.new_(("tmpl2" : stdgo.GoString)).parse(("{{define \"test\"}}bar{{end}}" : stdgo.GoString));
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatalf(("got error %v, expected nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
    }
function testEmptyTemplateCloneCrash(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _t1 = new_(("base" : stdgo.GoString));
        _t1.clone();
    }
function testTemplateLookUp(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _t1 = new_(("foo" : stdgo.GoString));
        if (_t1.lookup(("foo" : stdgo.GoString)) != null && ((_t1.lookup(("foo" : stdgo.GoString)) : Dynamic).__nil__ == null || !(_t1.lookup(("foo" : stdgo.GoString)) : Dynamic).__nil__)) {
            _t.error(stdgo.Go.toInterface(("Lookup returned non-nil value for undefined template foo" : stdgo.GoString)));
        };
        _t1.new_(("bar" : stdgo.GoString));
        if (_t1.lookup(("bar" : stdgo.GoString)) != null && ((_t1.lookup(("bar" : stdgo.GoString)) : Dynamic).__nil__ == null || !(_t1.lookup(("bar" : stdgo.GoString)) : Dynamic).__nil__)) {
            _t.error(stdgo.Go.toInterface(("Lookup returned non-nil value for undefined template bar" : stdgo.GoString)));
        };
        _t1.parse(("{{define \"foo\"}}test{{end}}" : stdgo.GoString));
        if (_t1.lookup(("foo" : stdgo.GoString)) == null || (_t1.lookup(("foo" : stdgo.GoString)) : Dynamic).__nil__) {
            _t.error(stdgo.Go.toInterface(("Lookup returned nil value for defined template" : stdgo.GoString)));
        };
    }
function testNew(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = new_(("test" : stdgo.GoString)).parse(("{{define \"test\"}}foo{{end}}" : stdgo.GoString)), _t1:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, __16:stdgo.Error = __tmp__._1;
        var _t2 = _t1.new_(("test" : stdgo.GoString));
        if (_t1._common != (_t2._common)) {
            _t.errorf(("t1 & t2 didn\'t share common struct; got %v != %v" : stdgo.GoString), stdgo.Go.toInterface(_t1._common), stdgo.Go.toInterface(_t2._common));
        };
        if (_t1.tree == null || (_t1.tree : Dynamic).__nil__) {
            _t.error(stdgo.Go.toInterface(("defined template got nil Tree" : stdgo.GoString)));
        };
        if (_t2.tree != null && ((_t2.tree : Dynamic).__nil__ == null || !(_t2.tree : Dynamic).__nil__)) {
            _t.error(stdgo.Go.toInterface(("undefined template got non-nil Tree" : stdgo.GoString)));
        };
        var _containsT1:Bool = false;
        for (__105 => _tmpl in _t1.templates()) {
            if (_tmpl == (_t2)) {
                _t.error(stdgo.Go.toInterface(("Templates included undefined template" : stdgo.GoString)));
            };
            if (_tmpl == (_t1)) {
                _containsT1 = true;
            };
        };
        if (!_containsT1) {
            _t.error(stdgo.Go.toInterface(("Templates didn\'t include defined template" : stdgo.GoString)));
        };
    }
function testParse(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _t1 = new_(("test" : stdgo.GoString));
        {
            var __tmp__ = _t1.parse(("{{define \"test\"}}{{end}}" : stdgo.GoString)), __16:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("parsing test: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _t1.parse(("{{define \"test\"}}{{/* this is a comment */}}{{end}}" : stdgo.GoString)), __33:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("parsing test: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _t1.parse(("{{define \"test\"}}foo{{end}}" : stdgo.GoString)), __50:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("parsing test: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
    }
function testEmptyTemplate(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _cases = (new stdgo.Slice<T__struct_8>(6, 6, ...[({ _defn : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("x" : stdgo.GoString), ("y" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _in : stdgo.Go.str()?.__copy__(), _want : ("y" : stdgo.GoString) } : T__struct_8), ({ _defn : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _in : ("once" : stdgo.GoString), _want : stdgo.Go.str()?.__copy__() } : T__struct_8), ({ _defn : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _in : ("twice" : stdgo.GoString), _want : stdgo.Go.str()?.__copy__() } : T__struct_8), ({ _defn : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("{{.}}" : stdgo.GoString), ("{{.}}" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _in : ("twice" : stdgo.GoString), _want : ("twice" : stdgo.GoString) } : T__struct_8), ({ _defn : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("{{/* a comment */}}" : stdgo.GoString), ("{{/* a comment */}}" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _in : ("comment" : stdgo.GoString), _want : stdgo.Go.str()?.__copy__() } : T__struct_8), ({ _defn : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("{{.}}" : stdgo.GoString), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _in : ("twice" : stdgo.GoString), _want : stdgo.Go.str()?.__copy__() } : T__struct_8)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _defn : (null : stdgo.Slice<stdgo.GoString>), _in : ("" : stdgo.GoString), _want : ("" : stdgo.GoString) } : T__struct_8)])) : stdgo.Slice<T__struct_8>);
        for (_i => _c in _cases) {
            var _root = new_(("root" : stdgo.GoString));
            var __0:stdgo.Ref<Template> = (null : stdgo.Ref<stdgo._internal.text.template.Template.Template>), __1:stdgo.Error = (null : stdgo.Error), _err:stdgo.Error = __1, _m:stdgo.Ref<Template> = __0;
            for (__8 => _d in _c._defn) {
                {
                    var __tmp__ = _root.new_(_c._in?.__copy__()).parse(_d?.__copy__());
                    _m = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            var _buf = (stdgo.Go.setRef((new stdgo._internal.strings.Strings.Builder() : stdgo._internal.strings.Strings.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>);
            {
                var _err:stdgo.Error = _m.execute(stdgo.Go.asInterface(_buf), stdgo.Go.toInterface(_c._in));
                if (_err != null) {
                    _t.error(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                    continue;
                };
            };
            if ((_buf.string() : stdgo.GoString) != (_c._want)) {
                _t.errorf(("expected string %q: got %q" : stdgo.GoString), stdgo.Go.toInterface(_c._want), stdgo.Go.toInterface((_buf.string() : stdgo.GoString)));
            };
        };
    }
function testIssue19294(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _inlined:stdgo.GoMap<stdgo.GoString, stdgo.GoString> = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            @:mergeBlock {
                x.set(("stylesheet" : stdgo.GoString), ("{{define \"stylesheet\"}}stylesheet{{end}}" : stdgo.GoString));
                x.set(("xhtml" : stdgo.GoString), ("{{block \"stylesheet\" .}}{{end}}" : stdgo.GoString));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        var _all = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("stylesheet" : stdgo.GoString), ("xhtml" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                var __tmp__ = new_(("title.xhtml" : stdgo.GoString)).parse(("{{template \"xhtml\" .}}" : stdgo.GoString)), _res:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                for (__24 => _name in _all) {
                    var __tmp__ = _res.new_(_name?.__copy__()).parse((_inlined[_name] ?? ("" : stdgo.GoString))?.__copy__()), __41:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
                var _buf:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
                _res.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
                if ((_buf.string() : stdgo.GoString) != (("stylesheet" : stdgo.GoString))) {
                    _t.fatalf(("iteration %d: got %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((_buf.string() : stdgo.GoString)), stdgo.Go.toInterface(("stylesheet" : stdgo.GoString)));
                };
            });
        };
    }
function testAddToZeroTemplate(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = stdgo._internal.text.template.parse.Parse.parse(("c" : stdgo.GoString), ("{{define \"c\"}}root{{end}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), (null : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>), _builtins()), _tree:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse.Tree>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _tmpl:Template = ({} : stdgo._internal.text.template.Template.Template);
        _tmpl.addParseTree(("x" : stdgo.GoString), (_tree[("c" : stdgo.GoString)] ?? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.Tree>)));
    }
function new_(_name:stdgo.GoString):stdgo.Ref<Template> {
        var _t = (stdgo.Go.setRef(({ _name : _name?.__copy__() } : stdgo._internal.text.template.Template.Template)) : stdgo.Ref<stdgo._internal.text.template.Template.Template>);
        _t._init();
        return _t;
    }
class T_state_asInterface {
    @:keep
    public dynamic function _printValue(_n:stdgo._internal.text.template.parse.Parse.Node, _v:stdgo._internal.reflect.Reflect.Value):Void __self__.value._printValue(_n, _v);
    @:keep
    public dynamic function _evalEmptyInterface(_dot:stdgo._internal.reflect.Reflect.Value, _n:stdgo._internal.text.template.parse.Parse.Node):stdgo._internal.reflect.Reflect.Value return __self__.value._evalEmptyInterface(_dot, _n);
    @:keep
    public dynamic function _evalComplex(_typ:stdgo._internal.reflect.Reflect.Type_, _n:stdgo._internal.text.template.parse.Parse.Node):stdgo._internal.reflect.Reflect.Value return __self__.value._evalComplex(_typ, _n);
    @:keep
    public dynamic function _evalFloat(_typ:stdgo._internal.reflect.Reflect.Type_, _n:stdgo._internal.text.template.parse.Parse.Node):stdgo._internal.reflect.Reflect.Value return __self__.value._evalFloat(_typ, _n);
    @:keep
    public dynamic function _evalUnsignedInteger(_typ:stdgo._internal.reflect.Reflect.Type_, _n:stdgo._internal.text.template.parse.Parse.Node):stdgo._internal.reflect.Reflect.Value return __self__.value._evalUnsignedInteger(_typ, _n);
    @:keep
    public dynamic function _evalInteger(_typ:stdgo._internal.reflect.Reflect.Type_, _n:stdgo._internal.text.template.parse.Parse.Node):stdgo._internal.reflect.Reflect.Value return __self__.value._evalInteger(_typ, _n);
    @:keep
    public dynamic function _evalString(_typ:stdgo._internal.reflect.Reflect.Type_, _n:stdgo._internal.text.template.parse.Parse.Node):stdgo._internal.reflect.Reflect.Value return __self__.value._evalString(_typ, _n);
    @:keep
    public dynamic function _evalBool(_typ:stdgo._internal.reflect.Reflect.Type_, _n:stdgo._internal.text.template.parse.Parse.Node):stdgo._internal.reflect.Reflect.Value return __self__.value._evalBool(_typ, _n);
    @:keep
    public dynamic function _evalArg(_dot:stdgo._internal.reflect.Reflect.Value, _typ:stdgo._internal.reflect.Reflect.Type_, _n:stdgo._internal.text.template.parse.Parse.Node):stdgo._internal.reflect.Reflect.Value return __self__.value._evalArg(_dot, _typ, _n);
    @:keep
    public dynamic function _validateType(_value:stdgo._internal.reflect.Reflect.Value, _typ:stdgo._internal.reflect.Reflect.Type_):stdgo._internal.reflect.Reflect.Value return __self__.value._validateType(_value, _typ);
    @:keep
    public dynamic function _evalCall(_dot:stdgo._internal.reflect.Reflect.Value, _fun:stdgo._internal.reflect.Reflect.Value, _isBuiltin:Bool, _node:stdgo._internal.text.template.parse.Parse.Node, _name:stdgo.GoString, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>, _final:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value return __self__.value._evalCall(_dot, _fun, _isBuiltin, _node, _name, _args, _final);
    @:keep
    public dynamic function _evalField(_dot:stdgo._internal.reflect.Reflect.Value, _fieldName:stdgo.GoString, _node:stdgo._internal.text.template.parse.Parse.Node, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>, _final:stdgo._internal.reflect.Reflect.Value, _receiver:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value return __self__.value._evalField(_dot, _fieldName, _node, _args, _final, _receiver);
    @:keep
    public dynamic function _evalFunction(_dot:stdgo._internal.reflect.Reflect.Value, _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse.IdentifierNode>, _cmd:stdgo._internal.text.template.parse.Parse.Node, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>, _final:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value return __self__.value._evalFunction(_dot, _node, _cmd, _args, _final);
    @:keep
    public dynamic function _evalFieldChain(_dot:stdgo._internal.reflect.Reflect.Value, _receiver:stdgo._internal.reflect.Reflect.Value, _node:stdgo._internal.text.template.parse.Parse.Node, _ident:stdgo.Slice<stdgo.GoString>, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>, _final:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value return __self__.value._evalFieldChain(_dot, _receiver, _node, _ident, _args, _final);
    @:keep
    public dynamic function _evalVariableNode(_dot:stdgo._internal.reflect.Reflect.Value, _variable:stdgo.Ref<stdgo._internal.text.template.parse.Parse.VariableNode>, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>, _final:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value return __self__.value._evalVariableNode(_dot, _variable, _args, _final);
    @:keep
    public dynamic function _evalChainNode(_dot:stdgo._internal.reflect.Reflect.Value, _chain:stdgo.Ref<stdgo._internal.text.template.parse.Parse.ChainNode>, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>, _final:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value return __self__.value._evalChainNode(_dot, _chain, _args, _final);
    @:keep
    public dynamic function _evalFieldNode(_dot:stdgo._internal.reflect.Reflect.Value, _field:stdgo.Ref<stdgo._internal.text.template.parse.Parse.FieldNode>, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>, _final:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value return __self__.value._evalFieldNode(_dot, _field, _args, _final);
    @:keep
    public dynamic function _idealConstant(_constant:stdgo.Ref<stdgo._internal.text.template.parse.Parse.NumberNode>):stdgo._internal.reflect.Reflect.Value return __self__.value._idealConstant(_constant);
    @:keep
    public dynamic function _evalCommand(_dot:stdgo._internal.reflect.Reflect.Value, _cmd:stdgo.Ref<stdgo._internal.text.template.parse.Parse.CommandNode>, _final:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value return __self__.value._evalCommand(_dot, _cmd, _final);
    @:keep
    public dynamic function _notAFunction(_args:stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>, _final:stdgo._internal.reflect.Reflect.Value):Void __self__.value._notAFunction(_args, _final);
    @:keep
    public dynamic function _evalPipeline(_dot:stdgo._internal.reflect.Reflect.Value, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>):stdgo._internal.reflect.Reflect.Value return __self__.value._evalPipeline(_dot, _pipe);
    @:keep
    public dynamic function _walkTemplate(_dot:stdgo._internal.reflect.Reflect.Value, _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse.TemplateNode>):Void __self__.value._walkTemplate(_dot, _t);
    @:keep
    public dynamic function _walkRange(_dot:stdgo._internal.reflect.Reflect.Value, _r:stdgo.Ref<stdgo._internal.text.template.parse.Parse.RangeNode>):Void __self__.value._walkRange(_dot, _r);
    @:keep
    public dynamic function _walkIfOrWith(_typ:stdgo._internal.text.template.parse.Parse.NodeType, _dot:stdgo._internal.reflect.Reflect.Value, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>):Void __self__.value._walkIfOrWith(_typ, _dot, _pipe, _list, _elseList);
    @:keep
    public dynamic function _walk(_dot:stdgo._internal.reflect.Reflect.Value, _node:stdgo._internal.text.template.parse.Parse.Node):Void __self__.value._walk(_dot, _node);
    @:keep
    public dynamic function _writeError(_err:stdgo.Error):Void __self__.value._writeError(_err);
    @:keep
    public dynamic function _errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value._errorf(_format, ..._args);
    @:keep
    public dynamic function _at(_node:stdgo._internal.text.template.parse.Parse.Node):Void __self__.value._at(_node);
    @:keep
    public dynamic function _varValue(_name:stdgo.GoString):stdgo._internal.reflect.Reflect.Value return __self__.value._varValue(_name);
    @:keep
    public dynamic function _setTopVar(_n:stdgo.GoInt, _value:stdgo._internal.reflect.Reflect.Value):Void __self__.value._setTopVar(_n, _value);
    @:keep
    public dynamic function _setVar(_name:stdgo.GoString, _value:stdgo._internal.reflect.Reflect.Value):Void __self__.value._setVar(_name, _value);
    @:keep
    public dynamic function _pop(_mark:stdgo.GoInt):Void __self__.value._pop(_mark);
    @:keep
    public dynamic function _mark():stdgo.GoInt return __self__.value._mark();
    @:keep
    public dynamic function _push(_name:stdgo.GoString, _value:stdgo._internal.reflect.Reflect.Value):Void __self__.value._push(_name, _value);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_state>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.text.template.Template.T_state_asInterface) class T_state_static_extension {
    @:keep
    static public function _printValue( _s:stdgo.Ref<T_state>, _n:stdgo._internal.text.template.parse.Parse.Node, _v:stdgo._internal.reflect.Reflect.Value):Void {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        _s._at(_n);
        var __tmp__ = _printableValue(_v?.__copy__()), _iface:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _s._errorf(("can\'t print %s of type %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_v.type()));
        };
        var __tmp__ = stdgo._internal.fmt.Fmt.fprint(_s._wr, _iface), __32:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _s._writeError(_err);
        };
    }
    @:keep
    static public function _evalEmptyInterface( _s:stdgo.Ref<T_state>, _dot:stdgo._internal.reflect.Reflect.Value, _n:stdgo._internal.text.template.parse.Parse.Node):stdgo._internal.reflect.Reflect.Value {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        _s._at(_n);
        {
            final __type__ = _n;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.BoolNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse.BoolNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.BoolNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.BoolNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.BoolNode>) : __type__.__underlying__().value;
                return stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(_n._True))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.DotNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse.DotNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.DotNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.DotNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.DotNode>) : __type__.__underlying__().value;
                return _dot?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.FieldNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse.FieldNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.FieldNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.FieldNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.FieldNode>) : __type__.__underlying__().value;
                return _s._evalFieldNode(_dot?.__copy__(), _n, (null : stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>), _missingVal?.__copy__())?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.IdentifierNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse.IdentifierNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.IdentifierNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.IdentifierNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.IdentifierNode>) : __type__.__underlying__().value;
                return _s._evalFunction(_dot?.__copy__(), _n, stdgo.Go.asInterface(_n), (null : stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>), _missingVal?.__copy__())?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NilNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse.NilNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NilNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NilNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NilNode>) : __type__.__underlying__().value;
                _s._errorf(("evalEmptyInterface: nil (can\'t happen)" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NumberNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse.NumberNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NumberNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NumberNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NumberNode>) : __type__.__underlying__().value;
                return _s._idealConstant(_n)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.StringNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse.StringNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.StringNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.StringNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.StringNode>) : __type__.__underlying__().value;
                return stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(_n.text))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.VariableNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse.VariableNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.VariableNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.VariableNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.VariableNode>) : __type__.__underlying__().value;
                return _s._evalVariableNode(_dot?.__copy__(), _n, (null : stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>), _missingVal?.__copy__())?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>) : __type__.__underlying__().value;
                return _s._evalPipeline(_dot?.__copy__(), _n)?.__copy__();
            };
        };
        _s._errorf(("can\'t handle assignment of %s to empty interface argument" : stdgo.GoString), stdgo.Go.toInterface(_n));
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    static public function _evalComplex( _s:stdgo.Ref<T_state>, _typ:stdgo._internal.reflect.Reflect.Type_, _n:stdgo._internal.text.template.parse.Parse.Node):stdgo._internal.reflect.Reflect.Value {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NumberNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NumberNode>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NumberNode>), _1 : false };
            }, _n = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && _n.isComplex : Bool)) {
                var _value:stdgo._internal.reflect.Reflect.Value = stdgo._internal.reflect.Reflect.new_(_typ).elem()?.__copy__();
                _value.setComplex(_n.complex128);
                return _value?.__copy__();
            };
        };
        _s._errorf(("expected complex; found %s" : stdgo.GoString), stdgo.Go.toInterface(_n));
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    static public function _evalFloat( _s:stdgo.Ref<T_state>, _typ:stdgo._internal.reflect.Reflect.Type_, _n:stdgo._internal.text.template.parse.Parse.Node):stdgo._internal.reflect.Reflect.Value {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        _s._at(_n);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NumberNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NumberNode>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NumberNode>), _1 : false };
            }, _n = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && _n.isFloat : Bool)) {
                var _value:stdgo._internal.reflect.Reflect.Value = stdgo._internal.reflect.Reflect.new_(_typ).elem()?.__copy__();
                _value.setFloat(_n.float64);
                return _value?.__copy__();
            };
        };
        _s._errorf(("expected float; found %s" : stdgo.GoString), stdgo.Go.toInterface(_n));
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    static public function _evalUnsignedInteger( _s:stdgo.Ref<T_state>, _typ:stdgo._internal.reflect.Reflect.Type_, _n:stdgo._internal.text.template.parse.Parse.Node):stdgo._internal.reflect.Reflect.Value {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        _s._at(_n);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NumberNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NumberNode>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NumberNode>), _1 : false };
            }, _n = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && _n.isUint : Bool)) {
                var _value:stdgo._internal.reflect.Reflect.Value = stdgo._internal.reflect.Reflect.new_(_typ).elem()?.__copy__();
                _value.setUint(_n.uint64);
                return _value?.__copy__();
            };
        };
        _s._errorf(("expected unsigned integer; found %s" : stdgo.GoString), stdgo.Go.toInterface(_n));
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    static public function _evalInteger( _s:stdgo.Ref<T_state>, _typ:stdgo._internal.reflect.Reflect.Type_, _n:stdgo._internal.text.template.parse.Parse.Node):stdgo._internal.reflect.Reflect.Value {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        _s._at(_n);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NumberNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NumberNode>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NumberNode>), _1 : false };
            }, _n = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && _n.isInt : Bool)) {
                var _value:stdgo._internal.reflect.Reflect.Value = stdgo._internal.reflect.Reflect.new_(_typ).elem()?.__copy__();
                _value.setInt(_n.int64);
                return _value?.__copy__();
            };
        };
        _s._errorf(("expected integer; found %s" : stdgo.GoString), stdgo.Go.toInterface(_n));
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    static public function _evalString( _s:stdgo.Ref<T_state>, _typ:stdgo._internal.reflect.Reflect.Type_, _n:stdgo._internal.text.template.parse.Parse.Node):stdgo._internal.reflect.Reflect.Value {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        _s._at(_n);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo._internal.text.template.parse.Parse.StringNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse.StringNode>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.StringNode>), _1 : false };
            }, _n = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var _value:stdgo._internal.reflect.Reflect.Value = stdgo._internal.reflect.Reflect.new_(_typ).elem()?.__copy__();
                _value.setString(_n.text?.__copy__());
                return _value?.__copy__();
            };
        };
        _s._errorf(("expected string; found %s" : stdgo.GoString), stdgo.Go.toInterface(_n));
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    static public function _evalBool( _s:stdgo.Ref<T_state>, _typ:stdgo._internal.reflect.Reflect.Type_, _n:stdgo._internal.text.template.parse.Parse.Node):stdgo._internal.reflect.Reflect.Value {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        _s._at(_n);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo._internal.text.template.parse.Parse.BoolNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse.BoolNode>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.BoolNode>), _1 : false };
            }, _n = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var _value:stdgo._internal.reflect.Reflect.Value = stdgo._internal.reflect.Reflect.new_(_typ).elem()?.__copy__();
                _value.setBool(_n._True);
                return _value?.__copy__();
            };
        };
        _s._errorf(("expected bool; found %s" : stdgo.GoString), stdgo.Go.toInterface(_n));
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    static public function _evalArg( _s:stdgo.Ref<T_state>, _dot:stdgo._internal.reflect.Reflect.Value, _typ:stdgo._internal.reflect.Reflect.Type_, _n:stdgo._internal.text.template.parse.Parse.Node):stdgo._internal.reflect.Reflect.Value {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        _s._at(_n);
        {
            final __type__ = _n;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.DotNode>))) {
                var _arg:stdgo.Ref<stdgo._internal.text.template.parse.Parse.DotNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.DotNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.DotNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.DotNode>) : __type__.__underlying__().value;
                return _s._validateType(_dot?.__copy__(), _typ)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NilNode>))) {
                var _arg:stdgo.Ref<stdgo._internal.text.template.parse.Parse.NilNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NilNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NilNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NilNode>) : __type__.__underlying__().value;
                if (_canBeNil(_typ)) {
                    return stdgo._internal.reflect.Reflect.zero(_typ)?.__copy__();
                };
                _s._errorf(("cannot assign nil to %s" : stdgo.GoString), stdgo.Go.toInterface(_typ));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.FieldNode>))) {
                var _arg:stdgo.Ref<stdgo._internal.text.template.parse.Parse.FieldNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.FieldNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.FieldNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.FieldNode>) : __type__.__underlying__().value;
                return _s._validateType(_s._evalFieldNode(_dot?.__copy__(), _arg, (new stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>(1, 1, ...[_n]) : stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>), _missingVal?.__copy__())?.__copy__(), _typ)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.VariableNode>))) {
                var _arg:stdgo.Ref<stdgo._internal.text.template.parse.Parse.VariableNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.VariableNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.VariableNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.VariableNode>) : __type__.__underlying__().value;
                return _s._validateType(_s._evalVariableNode(_dot?.__copy__(), _arg, (null : stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>), _missingVal?.__copy__())?.__copy__(), _typ)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>))) {
                var _arg:stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>) : __type__.__underlying__().value;
                return _s._validateType(_s._evalPipeline(_dot?.__copy__(), _arg)?.__copy__(), _typ)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.IdentifierNode>))) {
                var _arg:stdgo.Ref<stdgo._internal.text.template.parse.Parse.IdentifierNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.IdentifierNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.IdentifierNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.IdentifierNode>) : __type__.__underlying__().value;
                return _s._validateType(_s._evalFunction(_dot?.__copy__(), _arg, stdgo.Go.asInterface(_arg), (null : stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>), _missingVal?.__copy__())?.__copy__(), _typ)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.ChainNode>))) {
                var _arg:stdgo.Ref<stdgo._internal.text.template.parse.Parse.ChainNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.ChainNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.ChainNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.ChainNode>) : __type__.__underlying__().value;
                return _s._validateType(_s._evalChainNode(_dot?.__copy__(), _arg, (null : stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>), _missingVal?.__copy__())?.__copy__(), _typ)?.__copy__();
            };
        };
        {
            final __value__ = _typ.kind();
            if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect.Kind))) {
                return _s._evalBool(_typ, _n)?.__copy__();
            } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((16u32 : stdgo._internal.reflect.Reflect.Kind))) {
                return _s._evalComplex(_typ, _n)?.__copy__();
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect.Kind))) {
                return _s._evalFloat(_typ, _n)?.__copy__();
            } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect.Kind))) {
                return _s._evalInteger(_typ, _n)?.__copy__();
            } else if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect.Kind))) {
                if (_typ.numMethod() == ((0 : stdgo.GoInt))) {
                    return _s._evalEmptyInterface(_dot?.__copy__(), _n)?.__copy__();
                };
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect.Kind))) {
                if ((_typ.string() : String) == (_reflectValueType.string() : String)) {
                    return stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_s._evalEmptyInterface(_dot?.__copy__(), _n))))?.__copy__();
                };
            } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect.Kind))) {
                return _s._evalString(_typ, _n)?.__copy__();
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect.Kind))) {
                return _s._evalUnsignedInteger(_typ, _n)?.__copy__();
            };
        };
        _s._errorf(("can\'t handle %s for arg of type %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_typ));
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    static public function _validateType( _s:stdgo.Ref<T_state>, _value:stdgo._internal.reflect.Reflect.Value, _typ:stdgo._internal.reflect.Reflect.Type_):stdgo._internal.reflect.Reflect.Value {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        if (!_value.isValid()) {
            if ((_typ.string() : String) == (null.string() : String)) {
                return stdgo._internal.reflect.Reflect.valueOf((null : stdgo.AnyInterface))?.__copy__();
            };
            if (_canBeNil(_typ)) {
                return stdgo._internal.reflect.Reflect.zero(_typ)?.__copy__();
            };
            _s._errorf(("invalid value; expected %s" : stdgo.GoString), stdgo.Go.toInterface(_typ));
        };
        if ((((_typ.string() : String) == (_reflectValueType.string() : String)) && !((_value.type().string() : String) == (_typ.string() : String)) : Bool)) {
            return stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_value)))?.__copy__();
        };
        if ((!((_typ.string() : String) == (null.string() : String)) && !_value.type().assignableTo(_typ) : Bool)) {
            if (((_value.kind() == (20u32 : stdgo._internal.reflect.Reflect.Kind)) && !_value.isNil() : Bool)) {
                _value = _value.elem()?.__copy__();
                if (_value.type().assignableTo(_typ)) {
                    return _value?.__copy__();
                };
            };
            if (((_value.kind() == (22u32 : stdgo._internal.reflect.Reflect.Kind)) && _value.type().elem().assignableTo(_typ) : Bool)) {
                _value = _value.elem()?.__copy__();
                if (!_value.isValid()) {
                    _s._errorf(("dereference of nil pointer of type %s" : stdgo.GoString), stdgo.Go.toInterface(_typ));
                };
            } else if ((stdgo._internal.reflect.Reflect.pointerTo(_value.type()).assignableTo(_typ) && _value.canAddr() : Bool)) {
                _value = _value.addr()?.__copy__();
            } else {
                _s._errorf(("wrong type for value; expected %s; got %s" : stdgo.GoString), stdgo.Go.toInterface(_typ), stdgo.Go.toInterface(_value.type()));
            };
        };
        return _value?.__copy__();
    }
    @:keep
    static public function _evalCall( _s:stdgo.Ref<T_state>, _dot:stdgo._internal.reflect.Reflect.Value, _fun:stdgo._internal.reflect.Reflect.Value, _isBuiltin:Bool, _node:stdgo._internal.text.template.parse.Parse.Node, _name:stdgo.GoString, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>, _final:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        if (_args != null) {
            _args = (_args.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>);
        };
        var _typ:stdgo._internal.reflect.Reflect.Type_ = _fun.type();
        var _numIn:stdgo.GoInt = (_args.length);
        if (!_isMissing(_final?.__copy__())) {
            _numIn++;
        };
        var _numFixed:stdgo.GoInt = (_args.length);
        if (_typ.isVariadic()) {
            _numFixed = (_typ.numIn() - (1 : stdgo.GoInt) : stdgo.GoInt);
            if ((_numIn < _numFixed : Bool)) {
                _s._errorf(("wrong number of args for %s: want at least %d got %d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface((_typ.numIn() - (1 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface((_args.length)));
            };
        } else if (_numIn != (_typ.numIn())) {
            _s._errorf(("wrong number of args for %s: want %d got %d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_typ.numIn()), stdgo.Go.toInterface(_numIn));
        };
        if (!_goodFunc(_typ)) {
            _s._errorf(("can\'t call method/function %q with %d results" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_typ.numOut()));
        };
        var _unwrap:stdgo._internal.reflect.Reflect.Value -> stdgo._internal.reflect.Reflect.Value = function(_v:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value {
            if ((_v.type().string() : String) == (_reflectValueType.string() : String)) {
                _v = (stdgo.Go.typeAssert((_v.interface_() : stdgo._internal.reflect.Reflect.Value)) : stdgo._internal.reflect.Reflect.Value)?.__copy__();
            };
            return _v?.__copy__();
        };
        if ((_isBuiltin && (((_name == ("and" : stdgo.GoString)) || (_name == ("or" : stdgo.GoString)) : Bool)) : Bool)) {
            var _argType:stdgo._internal.reflect.Reflect.Type_ = _typ.in_((0 : stdgo.GoInt));
            var _v:stdgo._internal.reflect.Reflect.Value = ({} : stdgo._internal.reflect.Reflect.Value);
            for (__32 => _arg in _args) {
                _v = (stdgo.Go.typeAssert((_s._evalArg(_dot?.__copy__(), _argType, _arg).interface_() : stdgo._internal.reflect.Reflect.Value)) : stdgo._internal.reflect.Reflect.Value)?.__copy__();
                if (_truth(_v?.__copy__()) == ((_name == ("or" : stdgo.GoString)))) {
                    return _v?.__copy__();
                };
            };
            if (stdgo.Go.toInterface(_final) != stdgo.Go.toInterface(_missingVal)) {
                _v = _unwrap(_s._validateType(_final?.__copy__(), _argType)?.__copy__())?.__copy__();
            };
            return _v?.__copy__();
        };
        var _argv = (new stdgo.Slice<stdgo._internal.reflect.Reflect.Value>((_numIn : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_numIn : stdgo.GoInt).toBasic() > 0 ? (_numIn : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect.Value)]) : stdgo.Slice<stdgo._internal.reflect.Reflect.Value>);
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        stdgo.Go.cfor(((_i < _numFixed : Bool) && (_i < (_args.length) : Bool) : Bool), _i++, {
            _argv[(_i : stdgo.GoInt)] = _s._evalArg(_dot?.__copy__(), _typ.in_(_i), _args[(_i : stdgo.GoInt)])?.__copy__();
        });
        if (_typ.isVariadic()) {
            var _argType:stdgo._internal.reflect.Reflect.Type_ = _typ.in_((_typ.numIn() - (1 : stdgo.GoInt) : stdgo.GoInt)).elem();
            stdgo.Go.cfor((_i < (_args.length) : Bool), _i++, {
                _argv[(_i : stdgo.GoInt)] = _s._evalArg(_dot?.__copy__(), _argType, _args[(_i : stdgo.GoInt)])?.__copy__();
            });
        };
        if (!_isMissing(_final?.__copy__())) {
            var _t:stdgo._internal.reflect.Reflect.Type_ = _typ.in_((_typ.numIn() - (1 : stdgo.GoInt) : stdgo.GoInt));
            if (_typ.isVariadic()) {
                if (((_numIn - (1 : stdgo.GoInt) : stdgo.GoInt) < _numFixed : Bool)) {
                    _t = _typ.in_((_numIn - (1 : stdgo.GoInt) : stdgo.GoInt));
                } else {
                    _t = _t.elem();
                };
            };
            _argv[(_i : stdgo.GoInt)] = _s._validateType(_final?.__copy__(), _t)?.__copy__();
        };
        var __tmp__ = _safeCall(_fun?.__copy__(), _argv), _v:stdgo._internal.reflect.Reflect.Value = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _s._at(_node);
            _s._errorf(("error calling %s: %w" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err));
        };
        return _unwrap(_v?.__copy__())?.__copy__();
    }
    @:keep
    static public function _evalField( _s:stdgo.Ref<T_state>, _dot:stdgo._internal.reflect.Reflect.Value, _fieldName:stdgo.GoString, _node:stdgo._internal.text.template.parse.Parse.Node, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>, _final:stdgo._internal.reflect.Reflect.Value, _receiver:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        if (!_receiver.isValid()) {
            if (_s._tmpl._common._option._missingKey == ((2 : stdgo._internal.text.template.Template.T_missingKeyAction))) {
                _s._errorf(("nil data; no entry for key %q" : stdgo.GoString), stdgo.Go.toInterface(_fieldName));
            };
            return _zero?.__copy__();
        };
        var _typ:stdgo._internal.reflect.Reflect.Type_ = _receiver.type();
        var __tmp__ = _indirect(_receiver?.__copy__()), _receiver:stdgo._internal.reflect.Reflect.Value = __tmp__._0, _isNil:Bool = __tmp__._1;
        if (((_receiver.kind() == (20u32 : stdgo._internal.reflect.Reflect.Kind)) && _isNil : Bool)) {
            _s._errorf(("nil pointer evaluating %s.%s" : stdgo.GoString), stdgo.Go.toInterface(_typ), stdgo.Go.toInterface(_fieldName));
            return _zero?.__copy__();
        };
        var _ptr:stdgo._internal.reflect.Reflect.Value = _receiver?.__copy__();
        if (((_ptr.kind() != ((20u32 : stdgo._internal.reflect.Reflect.Kind)) && _ptr.kind() != ((22u32 : stdgo._internal.reflect.Reflect.Kind)) : Bool) && _ptr.canAddr() : Bool)) {
            _ptr = _ptr.addr()?.__copy__();
        };
        {
            var _method:stdgo._internal.reflect.Reflect.Value = _ptr.methodByName(_fieldName?.__copy__())?.__copy__();
            if (_method.isValid()) {
                return _s._evalCall(_dot?.__copy__(), _method?.__copy__(), false, _node, _fieldName?.__copy__(), _args, _final?.__copy__())?.__copy__();
            };
        };
        var _hasArgs:Bool = (((_args.length) > (1 : stdgo.GoInt) : Bool) || !_isMissing(_final?.__copy__()) : Bool);
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _receiver.kind();
                    if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect.Kind))) {
                        var __tmp__ = _receiver.type().fieldByName(_fieldName?.__copy__()), _tField:stdgo._internal.reflect.Reflect.StructField = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            var __tmp__ = _receiver.fieldByIndexErr(_tField.index), _field:stdgo._internal.reflect.Reflect.Value = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (!_tField.isExported()) {
                                _s._errorf(("%s is an unexported field of struct type %s" : stdgo.GoString), stdgo.Go.toInterface(_fieldName), stdgo.Go.toInterface(_typ));
                            };
                            if (_err != null) {
                                _s._errorf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                            };
                            if (_hasArgs) {
                                _s._errorf(("%s has arguments but cannot be invoked as function" : stdgo.GoString), stdgo.Go.toInterface(_fieldName));
                            };
                            return _field?.__copy__();
                        };
                        break;
                    } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect.Kind))) {
                        var _nameVal:stdgo._internal.reflect.Reflect.Value = stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(_fieldName))?.__copy__();
                        if (_nameVal.type().assignableTo(_receiver.type().key())) {
                            if (_hasArgs) {
                                _s._errorf(("%s is not a method but has arguments" : stdgo.GoString), stdgo.Go.toInterface(_fieldName));
                            };
                            var _result:stdgo._internal.reflect.Reflect.Value = _receiver.mapIndex(_nameVal?.__copy__())?.__copy__();
                            if (!_result.isValid()) {
                                {
                                    final __value__ = _s._tmpl._common._option._missingKey;
                                    if (__value__ == ((0 : stdgo._internal.text.template.Template.T_missingKeyAction))) {} else if (__value__ == ((1 : stdgo._internal.text.template.Template.T_missingKeyAction))) {
                                        _result = stdgo._internal.reflect.Reflect.zero(_receiver.type().elem())?.__copy__();
                                    } else if (__value__ == ((2 : stdgo._internal.text.template.Template.T_missingKeyAction))) {
                                        _s._errorf(("map has no entry for key %q" : stdgo.GoString), stdgo.Go.toInterface(_fieldName));
                                    };
                                };
                            };
                            return _result?.__copy__();
                        };
                        break;
                    } else if (__value__ == ((22u32 : stdgo._internal.reflect.Reflect.Kind))) {
                        var _etyp:stdgo._internal.reflect.Reflect.Type_ = _receiver.type().elem();
                        if (_etyp.kind() == ((25u32 : stdgo._internal.reflect.Reflect.Kind))) {
                            {
                                var __tmp__ = _etyp.fieldByName(_fieldName?.__copy__()), __104:stdgo._internal.reflect.Reflect.StructField = __tmp__._0, _ok:Bool = __tmp__._1;
                                if (!_ok) {
                                    break;
                                };
                            };
                        };
                        if (_isNil) {
                            _s._errorf(("nil pointer evaluating %s.%s" : stdgo.GoString), stdgo.Go.toInterface(_typ), stdgo.Go.toInterface(_fieldName));
                        };
                        break;
                    };
                };
                break;
            };
        };
        _s._errorf(("can\'t evaluate field %s in type %s" : stdgo.GoString), stdgo.Go.toInterface(_fieldName), stdgo.Go.toInterface(_typ));
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    static public function _evalFunction( _s:stdgo.Ref<T_state>, _dot:stdgo._internal.reflect.Reflect.Value, _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse.IdentifierNode>, _cmd:stdgo._internal.text.template.parse.Parse.Node, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>, _final:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        _s._at(stdgo.Go.asInterface(_node));
        var _name:stdgo.GoString = _node.ident?.__copy__();
        var __tmp__ = _findFunction(_name?.__copy__(), _s._tmpl), _function:stdgo._internal.reflect.Reflect.Value = __tmp__._0, _isBuiltin:Bool = __tmp__._1, _ok:Bool = __tmp__._2;
        if (!_ok) {
            _s._errorf(("%q is not a defined function" : stdgo.GoString), stdgo.Go.toInterface(_name));
        };
        return _s._evalCall(_dot?.__copy__(), _function?.__copy__(), _isBuiltin, _cmd, _name?.__copy__(), _args, _final?.__copy__())?.__copy__();
    }
    @:keep
    static public function _evalFieldChain( _s:stdgo.Ref<T_state>, _dot:stdgo._internal.reflect.Reflect.Value, _receiver:stdgo._internal.reflect.Reflect.Value, _node:stdgo._internal.text.template.parse.Parse.Node, _ident:stdgo.Slice<stdgo.GoString>, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>, _final:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        var _n:stdgo.GoInt = (_ident.length);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_n - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i++, {
                _receiver = _s._evalField(_dot?.__copy__(), _ident[(_i : stdgo.GoInt)]?.__copy__(), _node, (null : stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>), _missingVal?.__copy__(), _receiver?.__copy__())?.__copy__();
            });
        };
        return _s._evalField(_dot?.__copy__(), _ident[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), _node, _args, _final?.__copy__(), _receiver?.__copy__())?.__copy__();
    }
    @:keep
    static public function _evalVariableNode( _s:stdgo.Ref<T_state>, _dot:stdgo._internal.reflect.Reflect.Value, _variable:stdgo.Ref<stdgo._internal.text.template.parse.Parse.VariableNode>, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>, _final:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        _s._at(stdgo.Go.asInterface(_variable));
        var _value:stdgo._internal.reflect.Reflect.Value = _s._varValue(_variable.ident[(0 : stdgo.GoInt)]?.__copy__())?.__copy__();
        if ((_variable.ident.length) == ((1 : stdgo.GoInt))) {
            _s._notAFunction(_args, _final?.__copy__());
            return _value?.__copy__();
        };
        return _s._evalFieldChain(_dot?.__copy__(), _value?.__copy__(), stdgo.Go.asInterface(_variable), (_variable.ident.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>), _args, _final?.__copy__())?.__copy__();
    }
    @:keep
    static public function _evalChainNode( _s:stdgo.Ref<T_state>, _dot:stdgo._internal.reflect.Reflect.Value, _chain:stdgo.Ref<stdgo._internal.text.template.parse.Parse.ChainNode>, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>, _final:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        _s._at(stdgo.Go.asInterface(_chain));
        if ((_chain.field.length) == ((0 : stdgo.GoInt))) {
            _s._errorf(("internal error: no fields in evalChainNode" : stdgo.GoString));
        };
        if (_chain.node.type() == ((12 : stdgo._internal.text.template.parse.Parse.NodeType))) {
            _s._errorf(("indirection through explicit nil in %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_chain)));
        };
        var _pipe:stdgo._internal.reflect.Reflect.Value = _s._evalArg(_dot?.__copy__(), (null : stdgo._internal.reflect.Reflect.Type_), _chain.node)?.__copy__();
        return _s._evalFieldChain(_dot?.__copy__(), _pipe?.__copy__(), stdgo.Go.asInterface(_chain), _chain.field, _args, _final?.__copy__())?.__copy__();
    }
    @:keep
    static public function _evalFieldNode( _s:stdgo.Ref<T_state>, _dot:stdgo._internal.reflect.Reflect.Value, _field:stdgo.Ref<stdgo._internal.text.template.parse.Parse.FieldNode>, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>, _final:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        _s._at(stdgo.Go.asInterface(_field));
        return _s._evalFieldChain(_dot?.__copy__(), _dot?.__copy__(), stdgo.Go.asInterface(_field), _field.ident, _args, _final?.__copy__())?.__copy__();
    }
    @:keep
    static public function _idealConstant( _s:stdgo.Ref<T_state>, _constant:stdgo.Ref<stdgo._internal.text.template.parse.Parse.NumberNode>):stdgo._internal.reflect.Reflect.Value {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        _s._at(stdgo.Go.asInterface(_constant));
        if (_constant.isComplex) {
            return stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(_constant.complex128))?.__copy__();
        } else if ((((_constant.isFloat && !_isHexInt(_constant.text?.__copy__()) : Bool) && !_isRuneInt(_constant.text?.__copy__()) : Bool) && stdgo._internal.strings.Strings.containsAny(_constant.text?.__copy__(), (".eEpP" : stdgo.GoString)) : Bool)) {
            return stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(_constant.float64))?.__copy__();
        } else if (_constant.isInt) {
            var _n:stdgo.GoInt = (_constant.int64 : stdgo.GoInt);
            if ((_n : stdgo.GoInt64) != (_constant.int64)) {
                _s._errorf(("%s overflows int" : stdgo.GoString), stdgo.Go.toInterface(_constant.text));
            };
            return stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(_n))?.__copy__();
        } else if (_constant.isUint) {
            _s._errorf(("%s overflows int" : stdgo.GoString), stdgo.Go.toInterface(_constant.text));
        };
        return _zero?.__copy__();
    }
    @:keep
    static public function _evalCommand( _s:stdgo.Ref<T_state>, _dot:stdgo._internal.reflect.Reflect.Value, _cmd:stdgo.Ref<stdgo._internal.text.template.parse.Parse.CommandNode>, _final:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        var _firstWord:stdgo._internal.text.template.parse.Parse.Node = _cmd.args[(0 : stdgo.GoInt)];
        {
            final __type__ = _firstWord;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.FieldNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse.FieldNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.FieldNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.FieldNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.FieldNode>) : __type__.__underlying__().value;
                return _s._evalFieldNode(_dot?.__copy__(), _n, _cmd.args, _final?.__copy__())?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.ChainNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse.ChainNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.ChainNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.ChainNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.ChainNode>) : __type__.__underlying__().value;
                return _s._evalChainNode(_dot?.__copy__(), _n, _cmd.args, _final?.__copy__())?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.IdentifierNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse.IdentifierNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.IdentifierNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.IdentifierNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.IdentifierNode>) : __type__.__underlying__().value;
                return _s._evalFunction(_dot?.__copy__(), _n, stdgo.Go.asInterface(_cmd), _cmd.args, _final?.__copy__())?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>) : __type__.__underlying__().value;
                _s._notAFunction(_cmd.args, _final?.__copy__());
                return _s._evalPipeline(_dot?.__copy__(), _n)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.VariableNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse.VariableNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.VariableNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.VariableNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.VariableNode>) : __type__.__underlying__().value;
                return _s._evalVariableNode(_dot?.__copy__(), _n, _cmd.args, _final?.__copy__())?.__copy__();
            };
        };
        _s._at(_firstWord);
        _s._notAFunction(_cmd.args, _final?.__copy__());
        {
            final __type__ = _firstWord;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.BoolNode>))) {
                var _word:stdgo.Ref<stdgo._internal.text.template.parse.Parse.BoolNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.BoolNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.BoolNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.BoolNode>) : __type__.__underlying__().value;
                return stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(_word._True))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.DotNode>))) {
                var _word:stdgo.Ref<stdgo._internal.text.template.parse.Parse.DotNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.DotNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.DotNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.DotNode>) : __type__.__underlying__().value;
                return _dot?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NilNode>))) {
                var _word:stdgo.Ref<stdgo._internal.text.template.parse.Parse.NilNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NilNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NilNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NilNode>) : __type__.__underlying__().value;
                _s._errorf(("nil is not a command" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NumberNode>))) {
                var _word:stdgo.Ref<stdgo._internal.text.template.parse.Parse.NumberNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NumberNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NumberNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NumberNode>) : __type__.__underlying__().value;
                return _s._idealConstant(_word)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.StringNode>))) {
                var _word:stdgo.Ref<stdgo._internal.text.template.parse.Parse.StringNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.StringNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.StringNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.StringNode>) : __type__.__underlying__().value;
                return stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(_word.text))?.__copy__();
            };
        };
        _s._errorf(("can\'t evaluate command %q" : stdgo.GoString), stdgo.Go.toInterface(_firstWord));
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    static public function _notAFunction( _s:stdgo.Ref<T_state>, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>, _final:stdgo._internal.reflect.Reflect.Value):Void {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        if ((((_args.length) > (1 : stdgo.GoInt) : Bool) || !_isMissing(_final?.__copy__()) : Bool)) {
            _s._errorf(("can\'t give argument to non-function %s" : stdgo.GoString), stdgo.Go.toInterface(_args[(0 : stdgo.GoInt)]));
        };
    }
    @:keep
    static public function _evalPipeline( _s:stdgo.Ref<T_state>, _dot:stdgo._internal.reflect.Reflect.Value, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>):stdgo._internal.reflect.Reflect.Value {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        var _value:stdgo._internal.reflect.Reflect.Value = ({} : stdgo._internal.reflect.Reflect.Value);
        if (_pipe == null || (_pipe : Dynamic).__nil__) {
            return _value;
        };
        _s._at(stdgo.Go.asInterface(_pipe));
        _value = _missingVal?.__copy__();
        for (__16 => _cmd in _pipe.cmds) {
            _value = _s._evalCommand(_dot?.__copy__(), _cmd, _value?.__copy__())?.__copy__();
            if (((_value.kind() == (20u32 : stdgo._internal.reflect.Reflect.Kind)) && (_value.type().numMethod() == (0 : stdgo.GoInt)) : Bool)) {
                _value = stdgo._internal.reflect.Reflect.valueOf(_value.interface_())?.__copy__();
            };
        };
        for (__25 => _variable in _pipe.decl) {
            if (_pipe.isAssign) {
                _s._setVar(_variable.ident[(0 : stdgo.GoInt)]?.__copy__(), _value?.__copy__());
            } else {
                _s._push(_variable.ident[(0 : stdgo.GoInt)]?.__copy__(), _value?.__copy__());
            };
        };
        return _value?.__copy__();
    }
    @:keep
    static public function _walkTemplate( _s:stdgo.Ref<T_state>, _dot:stdgo._internal.reflect.Reflect.Value, _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse.TemplateNode>):Void {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        _s._at(stdgo.Go.asInterface(_t));
        var _tmpl = _s._tmpl.lookup(_t.name?.__copy__());
        if (_tmpl == null || (_tmpl : Dynamic).__nil__) {
            _s._errorf(("template %q not defined" : stdgo.GoString), stdgo.Go.toInterface(_t.name));
        };
        if (_s._depth == (_maxExecDepth)) {
            _s._errorf(("exceeded maximum template depth (%v)" : stdgo.GoString), stdgo.Go.toInterface(_maxExecDepth));
        };
        _dot = _s._evalPipeline(_dot?.__copy__(), _t.pipe)?.__copy__();
        var _newState:stdgo._internal.text.template.Template.T_state = (_s : stdgo._internal.text.template.Template.T_state)?.__copy__();
        _newState._depth++;
        _newState._tmpl = _tmpl;
        _newState._vars = (new stdgo.Slice<stdgo._internal.text.template.Template.T_variable>(1, 1, ...[(new stdgo._internal.text.template.Template.T_variable(("$" : stdgo.GoString), _dot?.__copy__()) : stdgo._internal.text.template.Template.T_variable)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.text.template.Template.T_variable)])) : stdgo.Slice<stdgo._internal.text.template.Template.T_variable>);
        _newState._walk(_dot?.__copy__(), stdgo.Go.asInterface(_tmpl.tree.root));
    }
    @:keep
    static public function _walkRange( _s:stdgo.Ref<T_state>, _dot:stdgo._internal.reflect.Reflect.Value, _r:stdgo.Ref<stdgo._internal.text.template.parse.Parse.RangeNode>):Void {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _s._at(stdgo.Go.asInterface(_r));
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _r:stdgo.AnyInterface = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (((_r != null) && (_r != stdgo.Go.toInterface(_walkBreak)) : Bool)) {
                            throw stdgo.Go.toInterface(_r);
                        };
                    };
                };
                a();
            });
            {
                var _a0 = _s._mark();
                __deferstack__.unshift(() -> _s._pop(_a0));
            };
            var __tmp__ = _indirect(_s._evalPipeline(_dot?.__copy__(), _r.branchNode.pipe)?.__copy__()), _val:stdgo._internal.reflect.Reflect.Value = __tmp__._0, __40:Bool = __tmp__._1;
            var _mark:stdgo.GoInt = _s._mark();
            var _oneIteration:(stdgo._internal.reflect.Reflect.Value, stdgo._internal.reflect.Reflect.Value) -> Void = function(_index:stdgo._internal.reflect.Reflect.Value, _elem:stdgo._internal.reflect.Reflect.Value):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    if (((_r.branchNode.pipe.decl.length) > (0 : stdgo.GoInt) : Bool)) {
                        if (_r.branchNode.pipe.isAssign) {
                            if (((_r.branchNode.pipe.decl.length) > (1 : stdgo.GoInt) : Bool)) {
                                _s._setVar(_r.branchNode.pipe.decl[(0 : stdgo.GoInt)].ident[(0 : stdgo.GoInt)]?.__copy__(), _index?.__copy__());
                            } else {
                                _s._setVar(_r.branchNode.pipe.decl[(0 : stdgo.GoInt)].ident[(0 : stdgo.GoInt)]?.__copy__(), _elem?.__copy__());
                            };
                        } else {
                            _s._setTopVar((1 : stdgo.GoInt), _elem?.__copy__());
                        };
                    };
                    if (((_r.branchNode.pipe.decl.length) > (1 : stdgo.GoInt) : Bool)) {
                        if (_r.branchNode.pipe.isAssign) {
                            _s._setVar(_r.branchNode.pipe.decl[(1 : stdgo.GoInt)].ident[(0 : stdgo.GoInt)]?.__copy__(), _elem?.__copy__());
                        } else {
                            _s._setTopVar((2 : stdgo.GoInt), _index?.__copy__());
                        };
                    };
                    {
                        var _a0 = _mark;
                        __deferstack__.unshift(() -> _s._pop(_a0));
                    };
                    __deferstack__.unshift(() -> {
                        var a = function():Void {
                            {
                                var _r:stdgo.AnyInterface = ({
                                    final r = stdgo.Go.recover_exception;
                                    stdgo.Go.recover_exception = null;
                                    r;
                                });
                                if (((_r != null) && (_r != stdgo.Go.toInterface(_walkContinue)) : Bool)) {
                                    throw stdgo.Go.toInterface(_r);
                                };
                            };
                        };
                        a();
                    });
                    _s._walk(_elem?.__copy__(), stdgo.Go.asInterface(_r.branchNode.list));
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            };
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _val.kind();
                        if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect.Kind))) {
                            if (_val.len() == ((0 : stdgo.GoInt))) {
                                break;
                            };
                            {
                                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < _val.len() : Bool), _i++, {
                                    _oneIteration(stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(_i))?.__copy__(), _val.index(_i)?.__copy__());
                                });
                            };
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return;
                            };
                            break;
                        } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect.Kind))) {
                            if (_val.len() == ((0 : stdgo.GoInt))) {
                                break;
                            };
                            var _om = stdgo._internal.internal.fmtsort.Fmtsort.sort(_val?.__copy__());
                            for (_i => _key in _om.key) {
                                _oneIteration(_key?.__copy__(), _om.value[(_i : stdgo.GoInt)]);
                            };
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return;
                            };
                            break;
                        } else if (__value__ == ((18u32 : stdgo._internal.reflect.Reflect.Kind))) {
                            if (_val.isNil()) {
                                break;
                            };
                            if (_val.type().chanDir() == ((2 : stdgo._internal.reflect.Reflect.ChanDir))) {
                                _s._errorf(("range over send-only channel %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_val)));
                                break;
                            };
                            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                            stdgo.Go.cfor(true, _i++, {
                                var __tmp__ = _val.recv(), _elem:stdgo._internal.reflect.Reflect.Value = __tmp__._0, _ok:Bool = __tmp__._1;
                                if (!_ok) {
                                    break;
                                };
                                _oneIteration(stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(_i))?.__copy__(), _elem?.__copy__());
                            });
                            if (_i == ((0 : stdgo.GoInt))) {
                                break;
                            };
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return;
                            };
                            break;
                        } else if (__value__ == ((0u32 : stdgo._internal.reflect.Reflect.Kind))) {
                            break;
                            break;
                        } else {
                            _s._errorf(("range can\'t iterate over %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_val)));
                        };
                    };
                    break;
                };
            };
            if (_r.branchNode.elseList != null && ((_r.branchNode.elseList : Dynamic).__nil__ == null || !(_r.branchNode.elseList : Dynamic).__nil__)) {
                _s._walk(_dot?.__copy__(), stdgo.Go.asInterface(_r.branchNode.elseList));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    static public function _walkIfOrWith( _s:stdgo.Ref<T_state>, _typ:stdgo._internal.text.template.parse.Parse.NodeType, _dot:stdgo._internal.reflect.Reflect.Value, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>):Void {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = _s._mark();
                __deferstack__.unshift(() -> _s._pop(_a0));
            };
            var _val:stdgo._internal.reflect.Reflect.Value = _s._evalPipeline(_dot?.__copy__(), _pipe)?.__copy__();
            var __tmp__ = _isTrue(_indirectInterface(_val?.__copy__())?.__copy__()), _truth:Bool = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                _s._errorf(("if/with can\'t use %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_val)));
            };
            if (_truth) {
                if (_typ == ((19 : stdgo._internal.text.template.parse.Parse.NodeType))) {
                    _s._walk(_val?.__copy__(), stdgo.Go.asInterface(_list));
                } else {
                    _s._walk(_dot?.__copy__(), stdgo.Go.asInterface(_list));
                };
            } else if (_elseList != null && ((_elseList : Dynamic).__nil__ == null || !(_elseList : Dynamic).__nil__)) {
                _s._walk(_dot?.__copy__(), stdgo.Go.asInterface(_elseList));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    static public function _walk( _s:stdgo.Ref<T_state>, _dot:stdgo._internal.reflect.Reflect.Value, _node:stdgo._internal.text.template.parse.Parse.Node):Void {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        _s._at(_node);
        {
            final __type__ = _node;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.ActionNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse.ActionNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.ActionNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.ActionNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.ActionNode>) : __type__.__underlying__().value;
                var _val:stdgo._internal.reflect.Reflect.Value = _s._evalPipeline(_dot?.__copy__(), _node.pipe)?.__copy__();
                if ((_node.pipe.decl.length) == ((0 : stdgo.GoInt))) {
                    _s._printValue(stdgo.Go.asInterface(_node), _val?.__copy__());
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.BreakNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse.BreakNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.BreakNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.BreakNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.BreakNode>) : __type__.__underlying__().value;
                throw stdgo.Go.toInterface(_walkBreak);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.CommentNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse.CommentNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.CommentNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.CommentNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.CommentNode>) : __type__.__underlying__().value;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.ContinueNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse.ContinueNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.ContinueNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.ContinueNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.ContinueNode>) : __type__.__underlying__().value;
                throw stdgo.Go.toInterface(_walkContinue);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.IfNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse.IfNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.IfNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.IfNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.IfNode>) : __type__.__underlying__().value;
                _s._walkIfOrWith((10 : stdgo._internal.text.template.parse.Parse.NodeType), _dot?.__copy__(), _node.branchNode.pipe, _node.branchNode.list, _node.branchNode.elseList);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>) : __type__.__underlying__().value;
                for (__40 => _node in _node.nodes) {
                    _s._walk(_dot?.__copy__(), _node);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.RangeNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse.RangeNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.RangeNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.RangeNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.RangeNode>) : __type__.__underlying__().value;
                _s._walkRange(_dot?.__copy__(), _node);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.TemplateNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse.TemplateNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.TemplateNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.TemplateNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.TemplateNode>) : __type__.__underlying__().value;
                _s._walkTemplate(_dot?.__copy__(), _node);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.TextNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse.TextNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.TextNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.TextNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.TextNode>) : __type__.__underlying__().value;
                {
                    var __tmp__ = _s._wr.write(_node.text), __73:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _s._writeError(_err);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse.WithNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse.WithNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.WithNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.WithNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse.WithNode>) : __type__.__underlying__().value;
                _s._walkIfOrWith((19 : stdgo._internal.text.template.parse.Parse.NodeType), _dot?.__copy__(), _node.branchNode.pipe, _node.branchNode.list, _node.branchNode.elseList);
            } else {
                var _node:stdgo._internal.text.template.parse.Parse.Node = __type__ == null ? (null : stdgo._internal.text.template.parse.Parse.Node) : cast __type__;
                _s._errorf(("unknown node: %s" : stdgo.GoString), stdgo.Go.toInterface(_node));
            };
        };
    }
    @:keep
    static public function _writeError( _s:stdgo.Ref<T_state>, _err:stdgo.Error):Void {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        throw stdgo.Go.toInterface(({ err : _err } : stdgo._internal.text.template.Template.T_writeError));
    }
    @:keep
    static public function _errorf( _s:stdgo.Ref<T_state>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<T_state> = _s;
        var _name:stdgo.GoString = _doublePercent(_s._tmpl.tree.name()?.__copy__())?.__copy__();
        if (_s._node == null) {
            _format = stdgo._internal.fmt.Fmt.sprintf(("template: %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_format))?.__copy__();
        } else {
            var __tmp__ = _s._tmpl.errorContext(_s._node), _location:stdgo.GoString = __tmp__._0, _context:stdgo.GoString = __tmp__._1;
            _format = stdgo._internal.fmt.Fmt.sprintf(("template: %s: executing %q at <%s>: %s" : stdgo.GoString), stdgo.Go.toInterface(_location), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_doublePercent(_context?.__copy__())), stdgo.Go.toInterface(_format))?.__copy__();
        };
        throw stdgo.Go.toInterface(stdgo.Go.asInterface(({ name : _s._tmpl.tree.name()?.__copy__(), err : stdgo._internal.fmt.Fmt.errorf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>)) } : stdgo._internal.text.template.Template.ExecError)));
    }
    @:keep
    static public function _at( _s:stdgo.Ref<T_state>, _node:stdgo._internal.text.template.parse.Parse.Node):Void {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        _s._node = _node;
    }
    @:keep
    static public function _varValue( _s:stdgo.Ref<T_state>, _name:stdgo.GoString):stdgo._internal.reflect.Reflect.Value {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        {
            var _i:stdgo.GoInt = (_s._mark() - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                if (_s._vars[(_i : stdgo.GoInt)]._name == (_name)) {
                    return _s._vars[(_i : stdgo.GoInt)]._value?.__copy__();
                };
            });
        };
        _s._errorf(("undefined variable: %s" : stdgo.GoString), stdgo.Go.toInterface(_name));
        return _zero?.__copy__();
    }
    @:keep
    static public function _setTopVar( _s:stdgo.Ref<T_state>, _n:stdgo.GoInt, _value:stdgo._internal.reflect.Reflect.Value):Void {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        _s._vars[((_s._vars.length) - _n : stdgo.GoInt)]._value = _value?.__copy__();
    }
    @:keep
    static public function _setVar( _s:stdgo.Ref<T_state>, _name:stdgo.GoString, _value:stdgo._internal.reflect.Reflect.Value):Void {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        {
            var _i:stdgo.GoInt = (_s._mark() - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                if (_s._vars[(_i : stdgo.GoInt)]._name == (_name)) {
                    _s._vars[(_i : stdgo.GoInt)]._value = _value?.__copy__();
                    return;
                };
            });
        };
        _s._errorf(("undefined variable: %s" : stdgo.GoString), stdgo.Go.toInterface(_name));
    }
    @:keep
    static public function _pop( _s:stdgo.Ref<T_state>, _mark:stdgo.GoInt):Void {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        _s._vars = (_s._vars.__slice__((0 : stdgo.GoInt), _mark) : stdgo.Slice<stdgo._internal.text.template.Template.T_variable>);
    }
    @:keep
    static public function _mark( _s:stdgo.Ref<T_state>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        return (_s._vars.length);
    }
    @:keep
    static public function _push( _s:stdgo.Ref<T_state>, _name:stdgo.GoString, _value:stdgo._internal.reflect.Reflect.Value):Void {
        @:recv var _s:stdgo.Ref<T_state> = _s;
        _s._vars = (_s._vars.__append__((new stdgo._internal.text.template.Template.T_variable(_name?.__copy__(), _value?.__copy__()) : stdgo._internal.text.template.Template.T_variable)));
    }
}
class ExecError_asInterface {
    @:keep
    public dynamic function unwrap():stdgo.Error return __self__.value.unwrap();
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ExecError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.text.template.Template.ExecError_asInterface) class ExecError_static_extension {
    @:keep
    static public function unwrap( _e:ExecError):stdgo.Error {
        @:recv var _e:ExecError = _e?.__copy__();
        return _e.err;
    }
    @:keep
    static public function error( _e:ExecError):stdgo.GoString {
        @:recv var _e:ExecError = _e?.__copy__();
        return _e.err.error()?.__copy__();
    }
}
class T__asInterface {
    @:keep
    public dynamic function getU():stdgo.Ref<U> return __self__.value.getU();
    @:keep
    public dynamic function myError(_error:Bool):{ var _0 : Bool; var _1 : stdgo.Error; } return __self__.value.myError(_error);
    @:keep
    public dynamic function madd(_a:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> return __self__.value.madd(_a, _b);
    @:keep
    public dynamic function copy():stdgo.Ref<T_> return __self__.value.copy();
    @:keep
    public dynamic function method3(_v:stdgo.AnyInterface):stdgo.GoString return __self__.value.method3(_v);
    @:keep
    public dynamic function method2(_a:stdgo.GoUInt16, _b:stdgo.GoString):stdgo.GoString return __self__.value.method2(_a, _b);
    @:keep
    public dynamic function method1(_a:stdgo.GoInt):stdgo.GoInt return __self__.value.method1(_a);
    @:keep
    public dynamic function method0():stdgo.GoString return __self__.value.method0();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.text.template.Template.T__asInterface) class T__static_extension {
    @:keep
    static public function getU( _t:stdgo.Ref<T_>):stdgo.Ref<U> {
        @:recv var _t:stdgo.Ref<T_> = _t;
        return _t.u;
    }
    @:keep
    static public function myError( _t:stdgo.Ref<T_>, _error:Bool):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<T_> = _t;
        if (_error) {
            return { _0 : true, _1 : _myError };
        };
        return { _0 : false, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function madd( _t:stdgo.Ref<T_>, _a:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _t:stdgo.Ref<T_> = _t;
        var _v = (new stdgo.Slice<stdgo.GoInt>((_b.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        for (_i => _x in _b) {
            _v[(_i : stdgo.GoInt)] = (_x + _a : stdgo.GoInt);
        };
        return _v;
    }
    @:keep
    static public function copy( _t:stdgo.Ref<T_>):stdgo.Ref<T_> {
        @:recv var _t:stdgo.Ref<T_> = _t;
        var _n = (stdgo.Go.setRef(({} : stdgo._internal.text.template.Template.T_)) : stdgo.Ref<stdgo._internal.text.template.Template.T_>);
        {
            var __tmp__ = (_t : stdgo._internal.text.template.Template.T_)?.__copy__();
            _n._True = __tmp__._True;
            _n.i = __tmp__.i;
            _n.u16 = __tmp__.u16;
            _n.x = __tmp__.x;
            _n.s = __tmp__.s;
            _n.floatZero = __tmp__.floatZero;
            _n.complexZero = __tmp__.complexZero;
            _n.u = __tmp__.u;
            _n.v0 = __tmp__.v0;
            _n.v1 = __tmp__.v1;
            _n.v2 = __tmp__.v2;
            _n.w0 = __tmp__.w0;
            _n.w1 = __tmp__.w1;
            _n.w2 = __tmp__.w2;
            _n.si = __tmp__.si;
            _n.sicap = __tmp__.sicap;
            _n.siempty = __tmp__.siempty;
            _n.sb = __tmp__.sb;
            _n.ai = __tmp__.ai;
            _n.msi = __tmp__.msi;
            _n.msione = __tmp__.msione;
            _n.msiempty = __tmp__.msiempty;
            _n.mxi = __tmp__.mxi;
            _n.mii = __tmp__.mii;
            _n.mi32s = __tmp__.mi32s;
            _n.mi64s = __tmp__.mi64s;
            _n.mui32s = __tmp__.mui32s;
            _n.mui64s = __tmp__.mui64s;
            _n.mi8s = __tmp__.mi8s;
            _n.mui8s = __tmp__.mui8s;
            _n.smsi = __tmp__.smsi;
            _n.empty0 = __tmp__.empty0;
            _n.empty1 = __tmp__.empty1;
            _n.empty2 = __tmp__.empty2;
            _n.empty3 = __tmp__.empty3;
            _n.empty4 = __tmp__.empty4;
            _n.nonEmptyInterface = __tmp__.nonEmptyInterface;
            _n.nonEmptyInterfacePtS = __tmp__.nonEmptyInterfacePtS;
            _n.nonEmptyInterfaceNil = __tmp__.nonEmptyInterfaceNil;
            _n.nonEmptyInterfaceTypedNil = __tmp__.nonEmptyInterfaceTypedNil;
            _n.str = __tmp__.str;
            _n.err = __tmp__.err;
            _n.pi = __tmp__.pi;
            _n.ps = __tmp__.ps;
            _n.psi = __tmp__.psi;
            _n.nil = __tmp__.nil;
            _n.binaryFunc = __tmp__.binaryFunc;
            _n.variadicFunc = __tmp__.variadicFunc;
            _n.variadicFuncInt = __tmp__.variadicFuncInt;
            _n.nilOKFunc = __tmp__.nilOKFunc;
            _n.errFunc = __tmp__.errFunc;
            _n.panicFunc = __tmp__.panicFunc;
            _n.tmpl = __tmp__.tmpl;
            _n._unexported = __tmp__._unexported;
        };
        return _n;
    }
    @:keep
    static public function method3( _t:stdgo.Ref<T_>, _v:stdgo.AnyInterface):stdgo.GoString {
        @:recv var _t:stdgo.Ref<T_> = _t;
        return stdgo._internal.fmt.Fmt.sprintf(("Method3: %v" : stdgo.GoString), _v)?.__copy__();
    }
    @:keep
    static public function method2( _t:stdgo.Ref<T_>, _a:stdgo.GoUInt16, _b:stdgo.GoString):stdgo.GoString {
        @:recv var _t:stdgo.Ref<T_> = _t;
        return stdgo._internal.fmt.Fmt.sprintf(("Method2: %d %s" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b))?.__copy__();
    }
    @:keep
    static public function method1( _t:stdgo.Ref<T_>, _a:stdgo.GoInt):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<T_> = _t;
        return _a;
    }
    @:keep
    static public function method0( _t:stdgo.Ref<T_>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<T_> = _t;
        return ("M0" : stdgo.GoString);
    }
}
class U_asInterface {
    @:keep
    public dynamic function trueFalse(_b:Bool):stdgo.GoString return __self__.value.trueFalse(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<U>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.text.template.Template.U_asInterface) class U_static_extension {
    @:keep
    static public function trueFalse( _u:stdgo.Ref<U>, _b:Bool):stdgo.GoString {
        @:recv var _u:stdgo.Ref<U> = _u;
        if (_b) {
            return ("true" : stdgo.GoString);
        };
        return stdgo.Go.str()?.__copy__();
    }
}
class V_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<V>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.text.template.Template.V_asInterface) class V_static_extension {
    @:keep
    static public function string( _v:stdgo.Ref<V>):stdgo.GoString {
        @:recv var _v:stdgo.Ref<V> = _v;
        if (_v == null || (_v : Dynamic).__nil__) {
            return ("nilV" : stdgo.GoString);
        };
        return stdgo._internal.fmt.Fmt.sprintf(("<%d>" : stdgo.GoString), stdgo.Go.toInterface(_v._j))?.__copy__();
    }
}
class W_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<W>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.text.template.Template.W_asInterface) class W_static_extension {
    @:keep
    static public function error( _w:stdgo.Ref<W>):stdgo.GoString {
        @:recv var _w:stdgo.Ref<W> = _w;
        if (_w == null || (_w : Dynamic).__nil__) {
            return ("nilW" : stdgo.GoString);
        };
        return stdgo._internal.fmt.Fmt.sprintf(("[%d]" : stdgo.GoString), stdgo.Go.toInterface(_w._k))?.__copy__();
    }
}
class CustomError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<CustomError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.text.template.Template.CustomError_asInterface) class CustomError_static_extension {
    @:keep
    static public function error( _:stdgo.Ref<CustomError>):stdgo.GoString {
        @:recv var _:stdgo.Ref<CustomError> = _;
        return ("heyo !" : stdgo.GoString);
    }
}
class Template_asInterface {
    @:keep
    public dynamic function _associate(_new:stdgo.Ref<Template>, _tree:stdgo.Ref<stdgo._internal.text.template.parse.Parse.Tree>):Bool return __self__.value._associate(_new, _tree);
    @:keep
    public dynamic function parse(_text:stdgo.GoString):{ var _0 : stdgo.Ref<Template>; var _1 : stdgo.Error; } return __self__.value.parse(_text);
    @:keep
    public dynamic function lookup(_name:stdgo.GoString):stdgo.Ref<Template> return __self__.value.lookup(_name);
    @:keep
    public dynamic function funcs(_funcMap:FuncMap):stdgo.Ref<Template> return __self__.value.funcs(_funcMap);
    @:keep
    public dynamic function delims(_left:stdgo.GoString, _right:stdgo.GoString):stdgo.Ref<Template> return __self__.value.delims(_left, _right);
    @:keep
    public dynamic function templates():stdgo.Slice<stdgo.Ref<Template>> return __self__.value.templates();
    @:keep
    public dynamic function addParseTree(_name:stdgo.GoString, _tree:stdgo.Ref<stdgo._internal.text.template.parse.Parse.Tree>):{ var _0 : stdgo.Ref<Template>; var _1 : stdgo.Error; } return __self__.value.addParseTree(_name, _tree);
    @:keep
    public dynamic function _copy(_c:stdgo.Ref<T_common>):stdgo.Ref<Template> return __self__.value._copy(_c);
    @:keep
    public dynamic function clone():{ var _0 : stdgo.Ref<Template>; var _1 : stdgo.Error; } return __self__.value.clone();
    @:keep
    public dynamic function _init():Void __self__.value._init();
    @:keep
    public dynamic function new_(_name:stdgo.GoString):stdgo.Ref<Template> return __self__.value.new_(_name);
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    @:keep
    public dynamic function _setOption(_opt:stdgo.GoString):Void __self__.value._setOption(_opt);
    @:keep
    public dynamic function option(_opt:haxe.Rest<stdgo.GoString>):stdgo.Ref<Template> return __self__.value.option(..._opt);
    @:keep
    public dynamic function parseFS(_fsys:stdgo._internal.io.fs.Fs.FS, _patterns:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<Template>; var _1 : stdgo.Error; } return __self__.value.parseFS(_fsys, ..._patterns);
    @:keep
    public dynamic function parseGlob(_pattern:stdgo.GoString):{ var _0 : stdgo.Ref<Template>; var _1 : stdgo.Error; } return __self__.value.parseGlob(_pattern);
    @:keep
    public dynamic function parseFiles(_filenames:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<Template>; var _1 : stdgo.Error; } return __self__.value.parseFiles(..._filenames);
    @:keep
    public dynamic function definedTemplates():stdgo.GoString return __self__.value.definedTemplates();
    @:keep
    public dynamic function _execute(_wr:stdgo._internal.io.Io.Writer, _data:stdgo.AnyInterface):stdgo.Error return __self__.value._execute(_wr, _data);
    @:keep
    public dynamic function execute(_wr:stdgo._internal.io.Io.Writer, _data:stdgo.AnyInterface):stdgo.Error return __self__.value.execute(_wr, _data);
    @:keep
    public dynamic function executeTemplate(_wr:stdgo._internal.io.Io.Writer, _name:stdgo.GoString, _data:stdgo.AnyInterface):stdgo.Error return __self__.value.executeTemplate(_wr, _name, _data);
    @:embedded
    public dynamic function _withControl():stdgo._internal.text.template.parse.Parse.Node return __self__.value._withControl();
    @:embedded
    public dynamic function _useVar(_pos:stdgo._internal.text.template.parse.Parse.Pos, _text:stdgo.GoString):stdgo._internal.text.template.parse.Parse.Node return __self__.value._useVar(_pos, _text);
    @:embedded
    public dynamic function _unexpected(_token:stdgo._internal.text.template.parse.Parse.T_item, _context:stdgo.GoString):Void __self__.value._unexpected(_token, _context);
    @:embedded
    public dynamic function _textOrAction():stdgo._internal.text.template.parse.Parse.Node return __self__.value._textOrAction();
    @:embedded
    public dynamic function _term():stdgo._internal.text.template.parse.Parse.Node return __self__.value._term();
    @:embedded
    public dynamic function _templateControl():stdgo._internal.text.template.parse.Parse.Node return __self__.value._templateControl();
    @:embedded
    public dynamic function _stopParse():Void __self__.value._stopParse();
    @:embedded
    public dynamic function _startParse(_funcs:stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>, _lex:stdgo.Ref<stdgo._internal.text.template.parse.Parse.T_lexer>, _treeSet:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse.Tree>>):Void __self__.value._startParse(_funcs, _lex, _treeSet);
    @:embedded
    public dynamic function _recover(_errp:stdgo.Ref<stdgo.Error>):Void __self__.value._recover(_errp);
    @:embedded
    public dynamic function _rangeControl():stdgo._internal.text.template.parse.Parse.Node return __self__.value._rangeControl();
    @:embedded
    public dynamic function _popVars(__0:stdgo.GoInt):Void __self__.value._popVars(__0);
    @:embedded
    public dynamic function _pipeline(_context:stdgo.GoString, _end:stdgo._internal.text.template.parse.Parse.T_itemType):stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode> return __self__.value._pipeline(_context, _end);
    @:embedded
    public dynamic function _peekNonSpace():stdgo._internal.text.template.parse.Parse.T_item return __self__.value._peekNonSpace();
    @:embedded
    public dynamic function _peek():stdgo._internal.text.template.parse.Parse.T_item return __self__.value._peek();
    @:embedded
    public dynamic function _parseTemplateName(_token:stdgo._internal.text.template.parse.Parse.T_item, _context:stdgo.GoString):stdgo.GoString return __self__.value._parseTemplateName(_token, _context);
    @:embedded
    public dynamic function _parseDefinition():Void __self__.value._parseDefinition();
    @:embedded
    public dynamic function _parseControl(_allowElseIf:Bool, _context:stdgo.GoString):{ var _0 : stdgo._internal.text.template.parse.Parse.Pos; var _1 : stdgo.GoInt; var _2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>; var _3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>; var _4 : stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>; } return __self__.value._parseControl(_allowElseIf, _context);
    @:embedded
    public dynamic function _parse():Void __self__.value._parse();
    @:embedded
    public dynamic function _operand():stdgo._internal.text.template.parse.Parse.Node return __self__.value._operand();
    @:embedded
    public dynamic function _nextNonSpace():stdgo._internal.text.template.parse.Parse.T_item return __self__.value._nextNonSpace();
    @:embedded
    public dynamic function _next():stdgo._internal.text.template.parse.Parse.T_item return __self__.value._next();
    @:embedded
    public dynamic function _newWith(_pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse.WithNode> return __self__.value._newWith(_pos, _line, _pipe, _list, _elseList);
    @:embedded
    public dynamic function _newVariable(_pos:stdgo._internal.text.template.parse.Parse.Pos, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse.VariableNode> return __self__.value._newVariable(_pos, _text);
    @:embedded
    public dynamic function _newText(_pos:stdgo._internal.text.template.parse.Parse.Pos, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse.TextNode> return __self__.value._newText(_pos, _text);
    @:embedded
    public dynamic function _newTemplate(_pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt, _name:stdgo.GoString, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse.TemplateNode> return __self__.value._newTemplate(_pos, _line, _name, _pipe);
    @:embedded
    public dynamic function _newString(_pos:stdgo._internal.text.template.parse.Parse.Pos, _orig:stdgo.GoString, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse.StringNode> return __self__.value._newString(_pos, _orig, _text);
    @:embedded
    public dynamic function _newRange(_pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse.RangeNode> return __self__.value._newRange(_pos, _line, _pipe, _list, _elseList);
    @:embedded
    public dynamic function _newPipeline(_pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt, _vars:stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse.VariableNode>>):stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode> return __self__.value._newPipeline(_pos, _line, _vars);
    @:embedded
    public dynamic function _newNumber(_pos:stdgo._internal.text.template.parse.Parse.Pos, _text:stdgo.GoString, _typ:stdgo._internal.text.template.parse.Parse.T_itemType):{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NumberNode>; var _1 : stdgo.Error; } return __self__.value._newNumber(_pos, _text, _typ);
    @:embedded
    public dynamic function _newNil(__0:stdgo._internal.text.template.parse.Parse.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse.NilNode> return __self__.value._newNil(__0);
    @:embedded
    public dynamic function _newList(__0:stdgo._internal.text.template.parse.Parse.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode> return __self__.value._newList(__0);
    @:embedded
    public dynamic function _newIf(_pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse.IfNode> return __self__.value._newIf(_pos, _line, _pipe, _list, _elseList);
    @:embedded
    public dynamic function _newField(_pos:stdgo._internal.text.template.parse.Parse.Pos, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse.FieldNode> return __self__.value._newField(_pos, _text);
    @:embedded
    public dynamic function _newEnd(__0:stdgo._internal.text.template.parse.Parse.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse.T_endNode> return __self__.value._newEnd(__0);
    @:embedded
    public dynamic function _newElse(_pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse.T_elseNode> return __self__.value._newElse(_pos, _line);
    @:embedded
    public dynamic function _newDot(__0:stdgo._internal.text.template.parse.Parse.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse.DotNode> return __self__.value._newDot(__0);
    @:embedded
    public dynamic function _newContinue(_pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse.ContinueNode> return __self__.value._newContinue(_pos, _line);
    @:embedded
    public dynamic function _newComment(_pos:stdgo._internal.text.template.parse.Parse.Pos, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse.CommentNode> return __self__.value._newComment(_pos, _text);
    @:embedded
    public dynamic function _newCommand(__0:stdgo._internal.text.template.parse.Parse.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse.CommandNode> return __self__.value._newCommand(__0);
    @:embedded
    public dynamic function _newChain(_pos:stdgo._internal.text.template.parse.Parse.Pos, _node:stdgo._internal.text.template.parse.Parse.Node):stdgo.Ref<stdgo._internal.text.template.parse.Parse.ChainNode> return __self__.value._newChain(_pos, _node);
    @:embedded
    public dynamic function _newBreak(_pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse.BreakNode> return __self__.value._newBreak(_pos, _line);
    @:embedded
    public dynamic function _newBool(_pos:stdgo._internal.text.template.parse.Parse.Pos, true:Bool):stdgo.Ref<stdgo._internal.text.template.parse.Parse.BoolNode> return __self__.value._newBool(_pos, true);
    @:embedded
    public dynamic function _newAction(_pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse.ActionNode> return __self__.value._newAction(_pos, _line, _pipe);
    @:embedded
    public dynamic function _itemList():{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>; var _1 : stdgo._internal.text.template.parse.Parse.Node; } return __self__.value._itemList();
    @:embedded
    public dynamic function _ifControl():stdgo._internal.text.template.parse.Parse.Node return __self__.value._ifControl();
    @:embedded
    public dynamic function _hasFunction(__0:stdgo.GoString):Bool return __self__.value._hasFunction(__0);
    @:embedded
    public dynamic function _expectOneOf(_expected1:stdgo._internal.text.template.parse.Parse.T_itemType, _expected2:stdgo._internal.text.template.parse.Parse.T_itemType, _context:stdgo.GoString):stdgo._internal.text.template.parse.Parse.T_item return __self__.value._expectOneOf(_expected1, _expected2, _context);
    @:embedded
    public dynamic function _expect(_expected:stdgo._internal.text.template.parse.Parse.T_itemType, _context:stdgo.GoString):stdgo._internal.text.template.parse.Parse.T_item return __self__.value._expect(_expected, _context);
    @:embedded
    public dynamic function _errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value._errorf(_format, ..._args);
    @:embedded
    public dynamic function _error(__0:stdgo.Error):Void __self__.value._error(__0);
    @:embedded
    public dynamic function _endControl():stdgo._internal.text.template.parse.Parse.Node return __self__.value._endControl();
    @:embedded
    public dynamic function _elseControl():stdgo._internal.text.template.parse.Parse.Node return __self__.value._elseControl();
    @:embedded
    public dynamic function _continueControl(_pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt):stdgo._internal.text.template.parse.Parse.Node return __self__.value._continueControl(_pos, _line);
    @:embedded
    public dynamic function _command():stdgo.Ref<stdgo._internal.text.template.parse.Parse.CommandNode> return __self__.value._command();
    @:embedded
    public dynamic function _clearActionLine():Void __self__.value._clearActionLine();
    @:embedded
    public dynamic function _checkPipeline(_pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>, _context:stdgo.GoString):Void __self__.value._checkPipeline(_pipe, _context);
    @:embedded
    public dynamic function _breakControl(_pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt):stdgo._internal.text.template.parse.Parse.Node return __self__.value._breakControl(_pos, _line);
    @:embedded
    public dynamic function _blockControl():stdgo._internal.text.template.parse.Parse.Node return __self__.value._blockControl();
    @:embedded
    public dynamic function _backup3(_t2:stdgo._internal.text.template.parse.Parse.T_item, _t1:stdgo._internal.text.template.parse.Parse.T_item):Void __self__.value._backup3(_t2, _t1);
    @:embedded
    public dynamic function _backup2(_t1:stdgo._internal.text.template.parse.Parse.T_item):Void __self__.value._backup2(_t1);
    @:embedded
    public dynamic function _backup():Void __self__.value._backup();
    @:embedded
    public dynamic function _add():Void __self__.value._add();
    @:embedded
    public dynamic function _action():stdgo._internal.text.template.parse.Parse.Node return __self__.value._action();
    @:embedded
    public dynamic function errorContext(_node:stdgo._internal.text.template.parse.Parse.Node):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } return __self__.value.errorContext(_node);
    @:embedded
    public dynamic function copy():stdgo.Ref<stdgo._internal.text.template.parse.Parse.Tree> return __self__.value.copy();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Template>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.text.template.Template.Template_asInterface) class Template_static_extension {
    @:keep
    static public function _associate( _t:stdgo.Ref<Template>, _new:stdgo.Ref<Template>, _tree:stdgo.Ref<stdgo._internal.text.template.parse.Parse.Tree>):Bool {
        @:recv var _t:stdgo.Ref<Template> = _t;
        if (_new._common != (_t._common)) {
            throw stdgo.Go.toInterface(("internal error: associate not common" : stdgo.GoString));
        };
        {
            var _old = (_t._common._tmpl[_new._name] ?? (null : stdgo.Ref<stdgo._internal.text.template.Template.Template>));
            if (((_old != null && ((_old : Dynamic).__nil__ == null || !(_old : Dynamic).__nil__) && stdgo._internal.text.template.parse.Parse.isEmptyTree(stdgo.Go.asInterface(_tree.root)) : Bool) && ((_old.tree != null) && ((_old.tree : Dynamic).__nil__ == null || !(_old.tree : Dynamic).__nil__)) : Bool)) {
                return false;
            };
        };
        _t._common._tmpl[_new._name] = _new;
        return true;
    }
    @:keep
    static public function parse( _t:stdgo.Ref<Template>, _text:stdgo.GoString):{ var _0 : stdgo.Ref<Template>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<Template> = _t;
        _t._init();
        _t._common._muFuncs.rlock();
        var __tmp__ = stdgo._internal.text.template.parse.Parse.parse(_t._name?.__copy__(), _text?.__copy__(), _t._leftDelim?.__copy__(), _t._rightDelim?.__copy__(), _t._common._parseFuncs, _builtins()), _trees:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse.Tree>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _t._common._muFuncs.runlock();
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        for (_name => _tree in _trees) {
            {
                var __tmp__ = _t.addParseTree(_name?.__copy__(), _tree), __80:stdgo.Ref<stdgo._internal.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
        };
        return { _0 : _t, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function lookup( _t:stdgo.Ref<Template>, _name:stdgo.GoString):stdgo.Ref<Template> {
        @:recv var _t:stdgo.Ref<Template> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_t._common == null || (_t._common : Dynamic).__nil__) {
                return null;
            };
            _t._common._muTmpl.rlock();
            __deferstack__.unshift(() -> _t._common._muTmpl.runlock());
            {
                final __ret__:stdgo.Ref<Template> = (_t._common._tmpl[_name] ?? (null : stdgo.Ref<stdgo._internal.text.template.Template.Template>));
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Ref<Template> = (null : stdgo.Ref<stdgo._internal.text.template.Template.Template>);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Ref<Template> = (null : stdgo.Ref<stdgo._internal.text.template.Template.Template>);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function funcs( _t:stdgo.Ref<Template>, _funcMap:FuncMap):stdgo.Ref<Template> {
        @:recv var _t:stdgo.Ref<Template> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t._init();
            _t._common._muFuncs.lock();
            __deferstack__.unshift(() -> _t._common._muFuncs.unlock());
            _addValueFuncs(_t._common._execFuncs, _funcMap);
            _addFuncs(_t._common._parseFuncs, _funcMap);
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _t;
            };
            {
                final __ret__:stdgo.Ref<Template> = (null : stdgo.Ref<stdgo._internal.text.template.Template.Template>);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Ref<Template> = (null : stdgo.Ref<stdgo._internal.text.template.Template.Template>);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function delims( _t:stdgo.Ref<Template>, _left:stdgo.GoString, _right:stdgo.GoString):stdgo.Ref<Template> {
        @:recv var _t:stdgo.Ref<Template> = _t;
        _t._init();
        _t._leftDelim = _left?.__copy__();
        _t._rightDelim = _right?.__copy__();
        return _t;
    }
    @:keep
    static public function templates( _t:stdgo.Ref<Template>):stdgo.Slice<stdgo.Ref<Template>> {
        @:recv var _t:stdgo.Ref<Template> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_t._common == null || (_t._common : Dynamic).__nil__) {
                return (null : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.Template.Template>>);
            };
            _t._common._muTmpl.rlock();
            __deferstack__.unshift(() -> _t._common._muTmpl.runlock());
            var _m = (new stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.Template.Template>>((0 : stdgo.GoInt).toBasic(), (_t._common._tmpl.length)) : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.Template.Template>>);
            for (__56 => _v in _t._common._tmpl) {
                _m = (_m.__append__(_v));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _m;
            };
            {
                final __ret__:stdgo.Slice<stdgo.Ref<Template>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.Template.Template>>);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Slice<stdgo.Ref<Template>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.Template.Template>>);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function addParseTree( _t:stdgo.Ref<Template>, _name:stdgo.GoString, _tree:stdgo.Ref<stdgo._internal.text.template.parse.Parse.Tree>):{ var _0 : stdgo.Ref<Template>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<Template> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t._init();
            _t._common._muTmpl.lock();
            __deferstack__.unshift(() -> _t._common._muTmpl.unlock());
            var _nt = _t;
            if (_name != (_t._name)) {
                _nt = _t.new_(_name?.__copy__());
            };
            if ((_t._associate(_nt, _tree) || ((_nt.tree == null) || (_nt.tree : Dynamic).__nil__) : Bool)) {
                _nt.tree = _tree;
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<Template>; var _1 : stdgo.Error; } = { _0 : _nt, _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<Template>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Ref<stdgo._internal.text.template.Template.Template>), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.Ref<Template>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Ref<stdgo._internal.text.template.Template.Template>), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _copy( _t:stdgo.Ref<Template>, _c:stdgo.Ref<T_common>):stdgo.Ref<Template> {
        @:recv var _t:stdgo.Ref<Template> = _t;
        return (stdgo.Go.setRef(({ _name : _t._name?.__copy__(), tree : _t.tree, _common : _c, _leftDelim : _t._leftDelim?.__copy__(), _rightDelim : _t._rightDelim?.__copy__() } : stdgo._internal.text.template.Template.Template)) : stdgo.Ref<stdgo._internal.text.template.Template.Template>);
    }
    @:keep
    static public function clone( _t:stdgo.Ref<Template>):{ var _0 : stdgo.Ref<Template>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<Template> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _nt = _t._copy(null);
            _nt._init();
            if (_t._common == null || (_t._common : Dynamic).__nil__) {
                return { _0 : _nt, _1 : (null : stdgo.Error) };
            };
            _t._common._muTmpl.rlock();
            __deferstack__.unshift(() -> _t._common._muTmpl.runlock());
            for (_k => _v in _t._common._tmpl) {
                if (_k == (_t._name)) {
                    _nt._common._tmpl[_t._name] = _nt;
                    continue;
                };
                var _tmpl = _v._copy(_nt._common);
                _nt._common._tmpl[_k] = _tmpl;
            };
            _t._common._muFuncs.rlock();
            __deferstack__.unshift(() -> _t._common._muFuncs.runlock());
            for (_k => _v in _t._common._parseFuncs) {
                _nt._common._parseFuncs[_k] = _v;
            };
            for (_k => _v in _t._common._execFuncs) {
                _nt._common._execFuncs[_k] = _v?.__copy__();
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<Template>; var _1 : stdgo.Error; } = { _0 : _nt, _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<Template>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Ref<stdgo._internal.text.template.Template.Template>), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.Ref<Template>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Ref<stdgo._internal.text.template.Template.Template>), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _init( _t:stdgo.Ref<Template>):Void {
        @:recv var _t:stdgo.Ref<Template> = _t;
        if (_t._common == null || (_t._common : Dynamic).__nil__) {
            var _c = (stdgo.Go.setRef(({} : stdgo._internal.text.template.Template.T_common)) : stdgo.Ref<stdgo._internal.text.template.Template.T_common>);
            _c._tmpl = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.text.template.Template.Template>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.text.template.Template.Template>);
                @:mergeBlock {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template.Template>>);
            _c._parseFuncs = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                @:mergeBlock {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>) : stdgo._internal.text.template.Template.FuncMap);
            _c._execFuncs = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo._internal.reflect.Reflect.Value>();
                x.__defaultValue__ = () -> ({} : stdgo._internal.reflect.Reflect.Value);
                @:mergeBlock {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect.Value>);
            _t._common = _c;
        };
    }
    @:keep
    static public function new_( _t:stdgo.Ref<Template>, _name:stdgo.GoString):stdgo.Ref<Template> {
        @:recv var _t:stdgo.Ref<Template> = _t;
        _t._init();
        var _nt = (stdgo.Go.setRef(({ _name : _name?.__copy__(), _common : _t._common, _leftDelim : _t._leftDelim?.__copy__(), _rightDelim : _t._rightDelim?.__copy__() } : stdgo._internal.text.template.Template.Template)) : stdgo.Ref<stdgo._internal.text.template.Template.Template>);
        return _nt;
    }
    @:keep
    static public function name( _t:stdgo.Ref<Template>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<Template> = _t;
        return _t._name?.__copy__();
    }
    @:keep
    static public function _setOption( _t:stdgo.Ref<Template>, _opt:stdgo.GoString):Void {
        @:recv var _t:stdgo.Ref<Template> = _t;
        if (_opt == (stdgo.Go.str())) {
            throw stdgo.Go.toInterface(("empty option string" : stdgo.GoString));
        };
        {
            var __tmp__ = stdgo._internal.strings.Strings.cut(_opt?.__copy__(), ("=" : stdgo.GoString)), _key:stdgo.GoString = __tmp__._0, _value:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (_ok) {
                {
                    final __value__ = _key;
                    if (__value__ == (("missingkey" : stdgo.GoString))) {
                        {
                            final __value__ = _value;
                            if (__value__ == (("invalid" : stdgo.GoString)) || __value__ == (("default" : stdgo.GoString))) {
                                _t._common._option._missingKey = (0 : stdgo._internal.text.template.Template.T_missingKeyAction);
                                return;
                            } else if (__value__ == (("zero" : stdgo.GoString))) {
                                _t._common._option._missingKey = (1 : stdgo._internal.text.template.Template.T_missingKeyAction);
                                return;
                            } else if (__value__ == (("error" : stdgo.GoString))) {
                                _t._common._option._missingKey = (2 : stdgo._internal.text.template.Template.T_missingKeyAction);
                                return;
                            };
                        };
                    };
                };
            };
        };
        throw stdgo.Go.toInterface((("unrecognized option: " : stdgo.GoString) + _opt?.__copy__() : stdgo.GoString));
    }
    @:keep
    static public function option( _t:stdgo.Ref<Template>, _opt:haxe.Rest<stdgo.GoString>):stdgo.Ref<Template> {
        var _opt = new stdgo.Slice<stdgo.GoString>(_opt.length, 0, ..._opt);
        @:recv var _t:stdgo.Ref<Template> = _t;
        _t._init();
        for (__16 => _s in _opt) {
            _t._setOption(_s?.__copy__());
        };
        return _t;
    }
    @:keep
    static public function parseFS( _t:stdgo.Ref<Template>, _fsys:stdgo._internal.io.fs.Fs.FS, _patterns:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<Template>; var _1 : stdgo.Error; } {
        var _patterns = new stdgo.Slice<stdgo.GoString>(_patterns.length, 0, ..._patterns);
        @:recv var _t:stdgo.Ref<Template> = _t;
        _t._init();
        return _parseFS(_t, _fsys, _patterns);
    }
    @:keep
    static public function parseGlob( _t:stdgo.Ref<Template>, _pattern:stdgo.GoString):{ var _0 : stdgo.Ref<Template>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<Template> = _t;
        _t._init();
        return _parseGlob(_t, _pattern?.__copy__());
    }
    @:keep
    static public function parseFiles( _t:stdgo.Ref<Template>, _filenames:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<Template>; var _1 : stdgo.Error; } {
        var _filenames = new stdgo.Slice<stdgo.GoString>(_filenames.length, 0, ..._filenames);
        @:recv var _t:stdgo.Ref<Template> = _t;
        _t._init();
        return _parseFiles(_t, _readFileOS, ...(_filenames : Array<stdgo.GoString>));
    }
    @:keep
    static public function definedTemplates( _t:stdgo.Ref<Template>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<Template> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_t._common == null || (_t._common : Dynamic).__nil__) {
                return stdgo.Go.str()?.__copy__();
            };
            var _b:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
            _t._common._muTmpl.rlock();
            __deferstack__.unshift(() -> _t._common._muTmpl.runlock());
            for (_name => _tmpl in _t._common._tmpl) {
                if ((((_tmpl.tree == null) || (_tmpl.tree : Dynamic).__nil__) || ((_tmpl.tree.root == null) || (_tmpl.tree.root : Dynamic).__nil__) : Bool)) {
                    continue;
                };
                if (_b.len() == ((0 : stdgo.GoInt))) {
                    _b.writeString(("; defined templates are: " : stdgo.GoString));
                } else {
                    _b.writeString((", " : stdgo.GoString));
                };
                stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), ("%q" : stdgo.GoString), stdgo.Go.toInterface(_name));
            };
            {
                final __ret__:stdgo.GoString = (_b.string() : stdgo.GoString)?.__copy__();
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.GoString = ("" : stdgo.GoString);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.GoString = ("" : stdgo.GoString);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _execute( _t:stdgo.Ref<Template>, _wr:stdgo._internal.io.Io.Writer, _data:stdgo.AnyInterface):stdgo.Error {
        @:recv var _t:stdgo.Ref<Template> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        var _err:stdgo.Error = (null : stdgo.Error);
        try {
            {
                var _a0 = (stdgo.Go.setRef(_err) : stdgo.Ref<stdgo.Error>);
                __deferstack__.unshift(() -> _errRecover(_a0));
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_data : stdgo._internal.reflect.Reflect.Value)) : stdgo._internal.reflect.Reflect.Value), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo._internal.reflect.Reflect.Value), _1 : false };
            }, _value = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                _value = stdgo._internal.reflect.Reflect.valueOf(_data)?.__copy__();
            };
            var _state = (stdgo.Go.setRef(({ _tmpl : _t, _wr : _wr, _vars : (new stdgo.Slice<stdgo._internal.text.template.Template.T_variable>(1, 1, ...[(new stdgo._internal.text.template.Template.T_variable(("$" : stdgo.GoString), _value?.__copy__()) : stdgo._internal.text.template.Template.T_variable)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.text.template.Template.T_variable)])) : stdgo.Slice<stdgo._internal.text.template.Template.T_variable>) } : stdgo._internal.text.template.Template.T_state)) : stdgo.Ref<stdgo._internal.text.template.Template.T_state>);
            if ((((_t.tree == null) || (_t.tree : Dynamic).__nil__) || ((_t.tree.root == null) || (_t.tree.root : Dynamic).__nil__) : Bool)) {
                _state._errorf(("%q is an incomplete or empty template" : stdgo.GoString), stdgo.Go.toInterface(_t.tree.name()));
            };
            _state._walk(_value?.__copy__(), stdgo.Go.asInterface(_t.tree.root));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _err;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _err;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _err;
        };
    }
    @:keep
    static public function execute( _t:stdgo.Ref<Template>, _wr:stdgo._internal.io.Io.Writer, _data:stdgo.AnyInterface):stdgo.Error {
        @:recv var _t:stdgo.Ref<Template> = _t;
        return _t._execute(_wr, _data);
    }
    @:keep
    static public function executeTemplate( _t:stdgo.Ref<Template>, _wr:stdgo._internal.io.Io.Writer, _name:stdgo.GoString, _data:stdgo.AnyInterface):stdgo.Error {
        @:recv var _t:stdgo.Ref<Template> = _t;
        var _tmpl = _t.lookup(_name?.__copy__());
        if (_tmpl == null || (_tmpl : Dynamic).__nil__) {
            return stdgo._internal.fmt.Fmt.errorf(("template: no template %q associated with template %q" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_t._name));
        };
        return _tmpl.execute(_wr, _data);
    }
    @:embedded
    public static function _withControl( __self__:Template):stdgo._internal.text.template.parse.Parse.Node return __self__._withControl();
    @:embedded
    public static function _useVar( __self__:Template, _pos:stdgo._internal.text.template.parse.Parse.Pos, _text:stdgo.GoString):stdgo._internal.text.template.parse.Parse.Node return __self__._useVar(_pos, _text);
    @:embedded
    public static function _unexpected( __self__:Template, _token:stdgo._internal.text.template.parse.Parse.T_item, _context:stdgo.GoString) __self__._unexpected(_token, _context);
    @:embedded
    public static function _textOrAction( __self__:Template):stdgo._internal.text.template.parse.Parse.Node return __self__._textOrAction();
    @:embedded
    public static function _term( __self__:Template):stdgo._internal.text.template.parse.Parse.Node return __self__._term();
    @:embedded
    public static function _templateControl( __self__:Template):stdgo._internal.text.template.parse.Parse.Node return __self__._templateControl();
    @:embedded
    public static function _stopParse( __self__:Template) __self__._stopParse();
    @:embedded
    public static function _startParse( __self__:Template, _funcs:stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>, _lex:stdgo.Ref<stdgo._internal.text.template.parse.Parse.T_lexer>, _treeSet:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse.Tree>>) __self__._startParse(_funcs, _lex, _treeSet);
    @:embedded
    public static function _recover( __self__:Template, _errp:stdgo.Ref<stdgo.Error>) __self__._recover(_errp);
    @:embedded
    public static function _rangeControl( __self__:Template):stdgo._internal.text.template.parse.Parse.Node return __self__._rangeControl();
    @:embedded
    public static function _popVars( __self__:Template, __0:stdgo.GoInt) __self__._popVars(__0);
    @:embedded
    public static function _pipeline( __self__:Template, _context:stdgo.GoString, _end:stdgo._internal.text.template.parse.Parse.T_itemType):stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode> return __self__._pipeline(_context, _end);
    @:embedded
    public static function _peekNonSpace( __self__:Template):stdgo._internal.text.template.parse.Parse.T_item return __self__._peekNonSpace();
    @:embedded
    public static function _peek( __self__:Template):stdgo._internal.text.template.parse.Parse.T_item return __self__._peek();
    @:embedded
    public static function _parseTemplateName( __self__:Template, _token:stdgo._internal.text.template.parse.Parse.T_item, _context:stdgo.GoString):stdgo.GoString return __self__._parseTemplateName(_token, _context);
    @:embedded
    public static function _parseDefinition( __self__:Template) __self__._parseDefinition();
    @:embedded
    public static function _parseControl( __self__:Template, _allowElseIf:Bool, _context:stdgo.GoString):{ var _0 : stdgo._internal.text.template.parse.Parse.Pos; var _1 : stdgo.GoInt; var _2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>; var _3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>; var _4 : stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>; } return __self__._parseControl(_allowElseIf, _context);
    @:embedded
    public static function _parse( __self__:Template) __self__._parse();
    @:embedded
    public static function _operand( __self__:Template):stdgo._internal.text.template.parse.Parse.Node return __self__._operand();
    @:embedded
    public static function _nextNonSpace( __self__:Template):stdgo._internal.text.template.parse.Parse.T_item return __self__._nextNonSpace();
    @:embedded
    public static function _next( __self__:Template):stdgo._internal.text.template.parse.Parse.T_item return __self__._next();
    @:embedded
    public static function _newWith( __self__:Template, _pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse.WithNode> return __self__._newWith(_pos, _line, _pipe, _list, _elseList);
    @:embedded
    public static function _newVariable( __self__:Template, _pos:stdgo._internal.text.template.parse.Parse.Pos, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse.VariableNode> return __self__._newVariable(_pos, _text);
    @:embedded
    public static function _newText( __self__:Template, _pos:stdgo._internal.text.template.parse.Parse.Pos, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse.TextNode> return __self__._newText(_pos, _text);
    @:embedded
    public static function _newTemplate( __self__:Template, _pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt, _name:stdgo.GoString, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse.TemplateNode> return __self__._newTemplate(_pos, _line, _name, _pipe);
    @:embedded
    public static function _newString( __self__:Template, _pos:stdgo._internal.text.template.parse.Parse.Pos, _orig:stdgo.GoString, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse.StringNode> return __self__._newString(_pos, _orig, _text);
    @:embedded
    public static function _newRange( __self__:Template, _pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse.RangeNode> return __self__._newRange(_pos, _line, _pipe, _list, _elseList);
    @:embedded
    public static function _newPipeline( __self__:Template, _pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt, _vars:stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse.VariableNode>>):stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode> return __self__._newPipeline(_pos, _line, _vars);
    @:embedded
    public static function _newNumber( __self__:Template, _pos:stdgo._internal.text.template.parse.Parse.Pos, _text:stdgo.GoString, _typ:stdgo._internal.text.template.parse.Parse.T_itemType):{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse.NumberNode>; var _1 : stdgo.Error; } return __self__._newNumber(_pos, _text, _typ);
    @:embedded
    public static function _newNil( __self__:Template, __0:stdgo._internal.text.template.parse.Parse.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse.NilNode> return __self__._newNil(__0);
    @:embedded
    public static function _newList( __self__:Template, __0:stdgo._internal.text.template.parse.Parse.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode> return __self__._newList(__0);
    @:embedded
    public static function _newIf( __self__:Template, _pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse.IfNode> return __self__._newIf(_pos, _line, _pipe, _list, _elseList);
    @:embedded
    public static function _newField( __self__:Template, _pos:stdgo._internal.text.template.parse.Parse.Pos, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse.FieldNode> return __self__._newField(_pos, _text);
    @:embedded
    public static function _newEnd( __self__:Template, __0:stdgo._internal.text.template.parse.Parse.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse.T_endNode> return __self__._newEnd(__0);
    @:embedded
    public static function _newElse( __self__:Template, _pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse.T_elseNode> return __self__._newElse(_pos, _line);
    @:embedded
    public static function _newDot( __self__:Template, __0:stdgo._internal.text.template.parse.Parse.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse.DotNode> return __self__._newDot(__0);
    @:embedded
    public static function _newContinue( __self__:Template, _pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse.ContinueNode> return __self__._newContinue(_pos, _line);
    @:embedded
    public static function _newComment( __self__:Template, _pos:stdgo._internal.text.template.parse.Parse.Pos, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse.CommentNode> return __self__._newComment(_pos, _text);
    @:embedded
    public static function _newCommand( __self__:Template, __0:stdgo._internal.text.template.parse.Parse.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse.CommandNode> return __self__._newCommand(__0);
    @:embedded
    public static function _newChain( __self__:Template, _pos:stdgo._internal.text.template.parse.Parse.Pos, _node:stdgo._internal.text.template.parse.Parse.Node):stdgo.Ref<stdgo._internal.text.template.parse.Parse.ChainNode> return __self__._newChain(_pos, _node);
    @:embedded
    public static function _newBreak( __self__:Template, _pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse.BreakNode> return __self__._newBreak(_pos, _line);
    @:embedded
    public static function _newBool( __self__:Template, _pos:stdgo._internal.text.template.parse.Parse.Pos, true:Bool):stdgo.Ref<stdgo._internal.text.template.parse.Parse.BoolNode> return __self__._newBool(_pos, true);
    @:embedded
    public static function _newAction( __self__:Template, _pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse.ActionNode> return __self__._newAction(_pos, _line, _pipe);
    @:embedded
    public static function _itemList( __self__:Template):{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse.ListNode>; var _1 : stdgo._internal.text.template.parse.Parse.Node; } return __self__._itemList();
    @:embedded
    public static function _ifControl( __self__:Template):stdgo._internal.text.template.parse.Parse.Node return __self__._ifControl();
    @:embedded
    public static function _hasFunction( __self__:Template, __0:stdgo.GoString):Bool return __self__._hasFunction(__0);
    @:embedded
    public static function _expectOneOf( __self__:Template, _expected1:stdgo._internal.text.template.parse.Parse.T_itemType, _expected2:stdgo._internal.text.template.parse.Parse.T_itemType, _context:stdgo.GoString):stdgo._internal.text.template.parse.Parse.T_item return __self__._expectOneOf(_expected1, _expected2, _context);
    @:embedded
    public static function _expect( __self__:Template, _expected:stdgo._internal.text.template.parse.Parse.T_itemType, _context:stdgo.GoString):stdgo._internal.text.template.parse.Parse.T_item return __self__._expect(_expected, _context);
    @:embedded
    public static function _errorf( __self__:Template, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>) __self__._errorf(_format, ...[for (i in _args) i]);
    @:embedded
    public static function _error( __self__:Template, __0:stdgo.Error) __self__._error(__0);
    @:embedded
    public static function _endControl( __self__:Template):stdgo._internal.text.template.parse.Parse.Node return __self__._endControl();
    @:embedded
    public static function _elseControl( __self__:Template):stdgo._internal.text.template.parse.Parse.Node return __self__._elseControl();
    @:embedded
    public static function _continueControl( __self__:Template, _pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt):stdgo._internal.text.template.parse.Parse.Node return __self__._continueControl(_pos, _line);
    @:embedded
    public static function _command( __self__:Template):stdgo.Ref<stdgo._internal.text.template.parse.Parse.CommandNode> return __self__._command();
    @:embedded
    public static function _clearActionLine( __self__:Template) __self__._clearActionLine();
    @:embedded
    public static function _checkPipeline( __self__:Template, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse.PipeNode>, _context:stdgo.GoString) __self__._checkPipeline(_pipe, _context);
    @:embedded
    public static function _breakControl( __self__:Template, _pos:stdgo._internal.text.template.parse.Parse.Pos, _line:stdgo.GoInt):stdgo._internal.text.template.parse.Parse.Node return __self__._breakControl(_pos, _line);
    @:embedded
    public static function _blockControl( __self__:Template):stdgo._internal.text.template.parse.Parse.Node return __self__._blockControl();
    @:embedded
    public static function _backup3( __self__:Template, _t2:stdgo._internal.text.template.parse.Parse.T_item, _t1:stdgo._internal.text.template.parse.Parse.T_item) __self__._backup3(_t2, _t1);
    @:embedded
    public static function _backup2( __self__:Template, _t1:stdgo._internal.text.template.parse.Parse.T_item) __self__._backup2(_t1);
    @:embedded
    public static function _backup( __self__:Template) __self__._backup();
    @:embedded
    public static function _add( __self__:Template) __self__._add();
    @:embedded
    public static function _action( __self__:Template):stdgo._internal.text.template.parse.Parse.Node return __self__._action();
    @:embedded
    public static function errorContext( __self__:Template, _node:stdgo._internal.text.template.parse.Parse.Node):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } return __self__.errorContext(_node);
    @:embedded
    public static function copy( __self__:Template):stdgo.Ref<stdgo._internal.text.template.parse.Parse.Tree> return __self__.copy();
}
class S_asInterface {
    @:keep
    public dynamic function method0():stdgo.GoString return __self__.value.method0();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<S>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.text.template.Template.S_asInterface) class S_static_extension {
    @:keep
    static public function method0( _:S):stdgo.GoString {
        @:recv var _:S = _;
        return ("M0" : stdgo.GoString);
    }
}
class ErrorWriter_asInterface {
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ErrorWriter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.text.template.Template.ErrorWriter_asInterface) class ErrorWriter_static_extension {
    @:keep
    static public function write( _e:ErrorWriter, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _e:ErrorWriter = _e;
        return { _0 : (0 : stdgo.GoInt), _1 : _alwaysError };
    }
}
class T_testIssue48215___localname___B_58304_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testIssue48215___localname___B_58304>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.text.template.Template.T_testIssue48215___localname___B_58304_asInterface) class T_testIssue48215___localname___B_58304_static_extension {

}
