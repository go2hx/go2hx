package stdgo.text.template;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _maxExecDepth : Dynamic;
@:invalid var _missingVal : Dynamic;
@:invalid var _missingValReflectType : Dynamic;
@:invalid var _walkBreak : Dynamic;
@:invalid var _walkContinue : Dynamic;
@:invalid var _errorType : Dynamic;
@:invalid var _fmtStringerType : Dynamic;
@:invalid var _reflectValueType : Dynamic;
@:invalid var _errBadComparisonType : Dynamic;
@:invalid var _errBadComparison : Dynamic;
@:invalid var _errNoComparison : Dynamic;
@:invalid var _htmlQuot : Dynamic;
@:invalid var _htmlApos : Dynamic;
@:invalid var _htmlAmp : Dynamic;
@:invalid var _htmlLt : Dynamic;
@:invalid var _htmlGt : Dynamic;
@:invalid var _htmlNull : Dynamic;
@:invalid var _jsLowUni : Dynamic;
@:invalid var _hex : Dynamic;
@:invalid var _jsBackslash : Dynamic;
@:invalid var _jsApos : Dynamic;
@:invalid var _jsQuot : Dynamic;
@:invalid var _jsLt : Dynamic;
@:invalid var _jsGt : Dynamic;
@:invalid var _jsAmp : Dynamic;
@:invalid var _jsEq : Dynamic;
@:invalid var _debug : Dynamic;
@:invalid var _siVal : Dynamic;
@:invalid var _tVal : Dynamic;
@:invalid var _tSliceOfNil : Dynamic;
@:invalid var _iVal : Dynamic;
@:invalid var _myError : Dynamic;
@:invalid var _bigInt : Dynamic;
@:invalid var _bigUint : Dynamic;
@:invalid var _execTests : Dynamic;
@:invalid var _delimPairs : Dynamic;
@:invalid var _cmpTests : Dynamic;
@:invalid var _alwaysError : Dynamic;
@:invalid var _multiParseTests : Dynamic;
@:invalid var _multiExecTests : Dynamic;
@:invalid var _templateFileExecTests : Dynamic;
@:invalid var _zero : Dynamic;
@:invalid var _execErrorText : Dynamic;
@:invalid var _treeTemplate : Dynamic;
@:invalid var _testTemplates : Dynamic;
@:invalid var _alwaysErrorText : Dynamic;
@:invalid var _builtinFuncsOnce : Dynamic;
@:invalid var _invalidKind : Dynamic;
@:invalid var _boolKind : Dynamic;
@:invalid var _complexKind : Dynamic;
@:invalid var _intKind : Dynamic;
@:invalid var _floatKind : Dynamic;
@:invalid var _stringKind : Dynamic;
@:invalid var _uintKind : Dynamic;
@:invalid var _noError : Dynamic;
@:invalid var _hasError : Dynamic;
@:invalid var _multiText1 : Dynamic;
@:invalid var _multiText2 : Dynamic;
@:invalid var _cloneText1 : Dynamic;
@:invalid var _cloneText2 : Dynamic;
@:invalid var _cloneText3 : Dynamic;
@:invalid var _cloneText4 : Dynamic;
@:invalid var _mapInvalid : Dynamic;
@:invalid var _mapZeroValue : Dynamic;
@:invalid var _mapError : Dynamic;
typedef I = stdgo._internal.text.template.Template.I;
@:invalid typedef T_state = Dynamic;
@:invalid typedef T_variable = Dynamic;
@:invalid typedef T_missingValType = Dynamic;
@:invalid typedef ExecError = Dynamic;
@:invalid typedef T_writeError = Dynamic;
@:invalid typedef T_ = Dynamic;
@:invalid typedef U = Dynamic;
@:invalid typedef V = Dynamic;
@:invalid typedef W = Dynamic;
@:invalid typedef T_execTest = Dynamic;
@:invalid typedef CustomError = Dynamic;
@:invalid typedef Tree = Dynamic;
@:invalid typedef T_cmpTest = Dynamic;
@:invalid typedef T_multiParseTest = Dynamic;
@:invalid typedef T_option = Dynamic;
@:invalid typedef T_common = Dynamic;
@:invalid typedef Template = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.text.template.Template.T__struct_0;
@:invalid typedef T__struct_1_asInterface = Dynamic;
@:invalid typedef T__struct_1_static_extension = Dynamic;
typedef T__struct_1 = stdgo._internal.text.template.Template.T__struct_1;
@:invalid typedef T__struct_2_asInterface = Dynamic;
@:invalid typedef T__struct_2_static_extension = Dynamic;
typedef T__struct_2 = stdgo._internal.text.template.Template.T__struct_2;
@:invalid typedef T__struct_3_asInterface = Dynamic;
@:invalid typedef T__struct_3_static_extension = Dynamic;
typedef T__struct_3 = stdgo._internal.text.template.Template.T__struct_3;
@:invalid typedef T__struct_4_asInterface = Dynamic;
@:invalid typedef T__struct_4_static_extension = Dynamic;
typedef T__struct_4 = stdgo._internal.text.template.Template.T__struct_4;
@:invalid typedef T__struct_5_asInterface = Dynamic;
@:invalid typedef T__struct_5_static_extension = Dynamic;
typedef T__struct_5 = stdgo._internal.text.template.Template.T__struct_5;
@:invalid typedef T__struct_6_asInterface = Dynamic;
@:invalid typedef T__struct_6_static_extension = Dynamic;
typedef T__struct_6 = stdgo._internal.text.template.Template.T__struct_6;
@:invalid typedef T__struct_7_asInterface = Dynamic;
@:invalid typedef T__struct_7_static_extension = Dynamic;
typedef T__struct_7 = stdgo._internal.text.template.Template.T__struct_7;
@:invalid typedef T__struct_8_asInterface = Dynamic;
@:invalid typedef T__struct_8_static_extension = Dynamic;
typedef T__struct_8 = stdgo._internal.text.template.Template.T__struct_8;
typedef S = stdgo._internal.text.template.Template.S;
typedef ErrorWriter = stdgo._internal.text.template.Template.ErrorWriter;
typedef FuncMap = stdgo._internal.text.template.Template.FuncMap;
typedef T_kind = stdgo._internal.text.template.Template.T_kind;
typedef T_missingKeyAction = stdgo._internal.text.template.Template.T_missingKeyAction;
function _initMaxExecDepth():Void {}
function _isMissing(_v:stdgo._internal.reflect.Reflect.Value):Void {}
function _doublePercent(_str:stdgo.GoString):Void {}
function _errRecover(_errp:stdgo.Ref<stdgo.Error>):Void {}
function isTrue(_val:stdgo.AnyInterface):Void {}
function _isTrue(_val:stdgo._internal.reflect.Reflect.Value):Void {}
function _isRuneInt(_s:stdgo.GoString):Void {}
function _isHexInt(_s:stdgo.GoString):Void {}
function _canBeNil(_typ:stdgo._internal.reflect.Reflect.Type_):Void {}
function _indirect(_v:stdgo._internal.reflect.Reflect.Value):Void {}
function _indirectInterface(_v:stdgo._internal.reflect.Reflect.Value):Void {}
function _printableValue(_v:stdgo._internal.reflect.Reflect.Value):Void {}
function _newInt(_n:stdgo.GoInt):Void {}
function _newString(_s:stdgo.GoString):Void {}
function _newIntSlice(_n:haxe.Rest<stdgo.GoInt>):Void {}
function _typeOf(_arg:stdgo.AnyInterface):Void {}
function _zeroArgs():Void {}
function _oneArg(_a:stdgo.GoString):Void {}
function _twoArgs(_a:stdgo.GoString, _b:stdgo.GoString):Void {}
function _dddArg(_a:stdgo.GoInt, _b:haxe.Rest<stdgo.GoString>):Void {}
function _count(_n:stdgo.GoInt):Void {}
function _vfunc(_0:V, _1:stdgo.Ref<V>):Void {}
function _valueString(_v:stdgo.GoString):Void {}
function _returnInt():Void {}
function _add(_args:haxe.Rest<stdgo.GoInt>):Void {}
function _echo(_arg:stdgo.AnyInterface):Void {}
function _makemap(_arg:haxe.Rest<stdgo.GoString>):Void {}
function _stringer(_s:stdgo._internal.fmt.Fmt.Stringer):Void {}
function _mapOfThree():Void {}
function _testExecute(_execTests:stdgo.Slice<T_execTest>, _template:stdgo.Ref<Template>, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testExecute(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDelims(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testExecuteError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testExecError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testExecError_CustomError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testJSEscaping(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testTree(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testExecuteOnNewTemplate(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testMessageForExecuteEmpty(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testFinalForPrintf(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testComparison(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testMissingMapKey(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testUnterminatedStringError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testExecuteGivesExecError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _funcNameTestFunc():Void {}
function testGoodFuncNames(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testBadFuncNames(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _testBadFuncName(_name:stdgo.GoString, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testBlock(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testEvalFieldErrors(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testMaxExecDepth(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testAddrOfIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testInterfaceValues(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testExecutePanicDuringCall(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testIssue31810(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testIssue43065(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testIssue39807(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid typedef T_testIssue48215_51___localname___A = Dynamic;
@:invalid typedef T_testIssue48215_52___localname___B = Dynamic;
function testIssue48215(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _builtins():Void {}
function _builtinFuncs():Void {}
function _createValueFuncs(_funcMap:FuncMap):Void {}
function _addValueFuncs(_out:stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect.Value>, _in:FuncMap):Void {}
function _addFuncs(_out:FuncMap, _in:FuncMap):Void {}
function _goodFunc(_typ:stdgo._internal.reflect.Reflect.Type_):Void {}
function _goodName(_name:stdgo.GoString):Void {}
function _findFunction(_name:stdgo.GoString, _tmpl:stdgo.Ref<Template>):Void {}
function _prepareArg(_value:stdgo._internal.reflect.Reflect.Value, _argType:stdgo._internal.reflect.Reflect.Type_):Void {}
function _intLike(_typ:stdgo._internal.reflect.Reflect.Kind):Void {}
function _indexArg(_index:stdgo._internal.reflect.Reflect.Value, _cap:stdgo.GoInt):Void {}
function _index(_item:stdgo._internal.reflect.Reflect.Value, _indexes:haxe.Rest<stdgo._internal.reflect.Reflect.Value>):Void {}
function _slice(_item:stdgo._internal.reflect.Reflect.Value, _indexes:haxe.Rest<stdgo._internal.reflect.Reflect.Value>):Void {}
function _length(_item:stdgo._internal.reflect.Reflect.Value):Void {}
function _call(_fn:stdgo._internal.reflect.Reflect.Value, _args:haxe.Rest<stdgo._internal.reflect.Reflect.Value>):Void {}
function _safeCall(_fun:stdgo._internal.reflect.Reflect.Value, _args:stdgo.Slice<stdgo._internal.reflect.Reflect.Value>):Void {}
function _truth(_arg:stdgo._internal.reflect.Reflect.Value):Void {}
function _and(_arg0:stdgo._internal.reflect.Reflect.Value, _args:haxe.Rest<stdgo._internal.reflect.Reflect.Value>):Void {}
function _or(_arg0:stdgo._internal.reflect.Reflect.Value, _args:haxe.Rest<stdgo._internal.reflect.Reflect.Value>):Void {}
function _not(_arg:stdgo._internal.reflect.Reflect.Value):Void {}
function _basicKind(_v:stdgo._internal.reflect.Reflect.Value):Void {}
function _isNil(_v:stdgo._internal.reflect.Reflect.Value):Void {}
function _canCompare(_v1:stdgo._internal.reflect.Reflect.Value, _v2:stdgo._internal.reflect.Reflect.Value):Void {}
function _eq(_arg1:stdgo._internal.reflect.Reflect.Value, _arg2:haxe.Rest<stdgo._internal.reflect.Reflect.Value>):Void {}
function _ne(_arg1:stdgo._internal.reflect.Reflect.Value, _arg2:stdgo._internal.reflect.Reflect.Value):Void {}
function _lt(_arg1:stdgo._internal.reflect.Reflect.Value, _arg2:stdgo._internal.reflect.Reflect.Value):Void {}
function _le(_arg1:stdgo._internal.reflect.Reflect.Value, _arg2:stdgo._internal.reflect.Reflect.Value):Void {}
function _gt(_arg1:stdgo._internal.reflect.Reflect.Value, _arg2:stdgo._internal.reflect.Reflect.Value):Void {}
function _ge(_arg1:stdgo._internal.reflect.Reflect.Value, _arg2:stdgo._internal.reflect.Reflect.Value):Void {}
function htmlescape(_w:stdgo._internal.io.Io.Writer, _b:stdgo.Slice<stdgo.GoByte>):Void {}
function htmlescapeString(_s:stdgo.GoString):Void {}
function htmlescaper(_args:haxe.Rest<stdgo.AnyInterface>):Void {}
function jsescape(_w:stdgo._internal.io.Io.Writer, _b:stdgo.Slice<stdgo.GoByte>):Void {}
function jsescapeString(_s:stdgo.GoString):Void {}
function _jsIsSpecial(_r:stdgo.GoRune):Void {}
function jsescaper(_args:haxe.Rest<stdgo.AnyInterface>):Void {}
function urlqueryEscaper(_args:haxe.Rest<stdgo.AnyInterface>):Void {}
function _evalArgs(_args:stdgo.Slice<stdgo.AnyInterface>):Void {}
function must(_t:stdgo.Ref<Template>, _err:stdgo.Error):Void {}
function parseFiles(_filenames:haxe.Rest<stdgo.GoString>):Void {}
function _parseFiles(_t:stdgo.Ref<Template>, _readFile:stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoByte>; var _2 : stdgo.Error; }, _filenames:haxe.Rest<stdgo.GoString>):Void {}
function parseGlob(_pattern:stdgo.GoString):Void {}
function _parseGlob(_t:stdgo.Ref<Template>, _pattern:stdgo.GoString):Void {}
function parseFS(_fsys:stdgo._internal.io.fs.Fs.FS, _patterns:haxe.Rest<stdgo.GoString>):Void {}
function _parseFS(_t:stdgo.Ref<Template>, _fsys:stdgo._internal.io.fs.Fs.FS, _patterns:stdgo.Slice<stdgo.GoString>):Void {}
function _readFileOS(_file:stdgo.GoString):Void {}
function _readFileFS(_fsys:stdgo._internal.io.fs.Fs.FS):Void {}
function testMultiParse(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testMultiExecute(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testParseFiles(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testParseGlob(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testParseFS(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testParseFilesWithData(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testParseGlobWithData(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testClone(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testAddParseTree(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testAddParseTreeToUnparsedTemplate(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testRedefinition(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testEmptyTemplateCloneCrash(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testTemplateLookUp(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testNew(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testParse(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testEmptyTemplate(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testIssue19294(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testAddToZeroTemplate(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function new_(_name:stdgo.GoString):Void {}
@:invalid typedef T_state_asInterface = Dynamic;
@:invalid typedef T_state_static_extension = Dynamic;
@:invalid typedef ExecError_asInterface = Dynamic;
@:invalid typedef ExecError_static_extension = Dynamic;
@:invalid typedef T__asInterface = Dynamic;
@:invalid typedef T__static_extension = Dynamic;
@:invalid typedef U_asInterface = Dynamic;
@:invalid typedef U_static_extension = Dynamic;
@:invalid typedef V_asInterface = Dynamic;
@:invalid typedef V_static_extension = Dynamic;
@:invalid typedef W_asInterface = Dynamic;
@:invalid typedef W_static_extension = Dynamic;
@:invalid typedef CustomError_asInterface = Dynamic;
@:invalid typedef CustomError_static_extension = Dynamic;
@:invalid typedef Template_asInterface = Dynamic;
@:invalid typedef Template_static_extension = Dynamic;
@:invalid typedef S_asInterface = Dynamic;
@:invalid typedef S_static_extension = Dynamic;
@:invalid typedef ErrorWriter_asInterface = Dynamic;
@:invalid typedef ErrorWriter_static_extension = Dynamic;
@:invalid typedef T_testIssue48215_52___localname___B_asInterface = Dynamic;
@:invalid typedef T_testIssue48215_52___localname___B_static_extension = Dynamic;
