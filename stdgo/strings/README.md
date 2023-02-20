# Module: `stdgo.strings`

[(view library index)](../stdgo.md)


# Overview


Package strings implements simple functions to manipulate UTF\-8 encoded strings.  



For information about UTF\-8 strings in Go, see https://blog.golang.org/strings.  



<details><summary>hl tests passed</summary>
<p>

```
=== RUN  TestBuilder
--- PASS: TestBuilder (%!s(float64=9.703636169433594e-05))

=== RUN  TestBuilderString
--- PASS: TestBuilderString (%!s(float64=3.910064697265625e-05))

=== RUN  TestBuilderReset
--- PASS: TestBuilderReset (%!s(float64=2.8848648071289062e-05))

=== RUN  TestBuilderGrow
strings_test/Strings_test.hx:1557: testBuilderGrow skip function
--- PASS: TestBuilderGrow (%!s(float64=2.9087066650390625e-05))

=== RUN  TestBuilderWrite2
--- PASS: TestBuilderWrite2 (%!s(float64=1.0967254638671875e-05))

=== RUN  TestBuilderWriteByte
--- PASS: TestBuilderWriteByte (%!s(float64=1.2874603271484375e-05))

=== RUN  TestBuilderAllocs
strings_test/Strings_test.hx:1680: testBuilderAllocs skip function
--- PASS: TestBuilderAllocs (%!s(float64=1.4066696166992188e-05))

=== RUN  TestBuilderCopyPanic
strings_test/Strings_test.hx:1693: testBuilderCopyPanic skip function
--- PASS: TestBuilderCopyPanic (%!s(float64=1.1920928955078125e-05))

=== RUN  TestBuilderWriteInvalidRune
--- PASS: TestBuilderWriteInvalidRune (%!s(float64=3.1948089599609375e-05))

=== RUN  TestClone
strings_test/Strings_test.hx:1866: testClone skip function
--- PASS: TestClone (%!s(float64=2.09808349609375e-05))

=== RUN  TestCompare
--- PASS: TestCompare (%!s(float64=2.09808349609375e-05))

=== RUN  TestCompareIdenticalString
--- PASS: TestCompareIdenticalString (%!s(float64=2.09808349609375e-05))

=== RUN  TestCompareStrings
strings_test/Strings_test.hx:1910: testCompareStrings skip function
--- PASS: TestCompareStrings (%!s(float64=1.811981201171875e-05))

=== RUN  TestReader
--- PASS: TestReader (%!s(float64=0.0001010894775390625))

=== RUN  TestReadAfterBigSeek
--- PASS: TestReadAfterBigSeek (%!s(float64=2.09808349609375e-05))

=== RUN  TestReaderAt
--- PASS: TestReaderAt (%!s(float64=0.002671957015991211))

=== RUN  TestReaderAtConcurrent
--- PASS: TestReaderAtConcurrent (%!s(float64=0.0008590221405029297))

=== RUN  TestEmptyReaderConcurrent
--- PASS: TestEmptyReaderConcurrent (%!s(float64=0.0014030933380126953))

=== RUN  TestWriteTo
--- PASS: TestWriteTo (%!s(float64=0.0002758502960205078))

=== RUN  TestReaderLenSize
strings_test/Strings_test.hx:2426: testReaderLenSize skip function
--- PASS: TestReaderLenSize (%!s(float64=0.00013494491577148438))

=== RUN  TestReaderReset
--- PASS: TestReaderReset (%!s(float64=0.0001900196075439453))

=== RUN  TestReaderZero
--- PASS: TestReaderZero (%!s(float64=0.00011992454528808594))

=== RUN  TestReplacer
strings_test/Strings_test.hx:2554: testReplacer skip function
--- PASS: TestReplacer (%!s(float64=1.3828277587890625e-05))

=== RUN  TestPickAlgorithm
strings_test/Strings_test.hx:2685: testPickAlgorithm skip function
--- PASS: TestPickAlgorithm (%!s(float64=1.5974044799804688e-05))

=== RUN  TestWriteStringError
--- PASS: TestWriteStringError (%!s(float64=0.0016779899597167969))

=== RUN  TestGenericTrieBuilding
strings_test/Strings_test.hx:2712: testGenericTrieBuilding skip function
--- PASS: TestGenericTrieBuilding (%!s(float64=2.002716064453125e-05))

=== RUN  TestFinderNext
--- PASS: TestFinderNext (%!s(float64=0.0013048648834228516))

=== RUN  TestFinderCreation
--- PASS: TestFinderCreation (%!s(float64=0.0011560916900634766))

=== RUN  TestIndex
--- PASS: TestIndex (%!s(float64=0.0004229545593261719))

=== RUN  TestLastIndex
--- PASS: TestLastIndex (%!s(float64=3.2901763916015625e-05))

=== RUN  TestIndexAny
--- PASS: TestIndexAny (%!s(float64=0.00024199485778808594))

=== RUN  TestLastIndexAny
--- PASS: TestLastIndexAny (%!s(float64=0.00015306472778320312))

=== RUN  TestIndexByte
--- PASS: TestIndexByte (%!s(float64=1.0013580322265625e-05))

=== RUN  TestLastIndexByte
--- PASS: TestLastIndexByte (%!s(float64=1.5974044799804688e-05))

=== RUN  TestIndexRandom
--- PASS: TestIndexRandom (%!s(float64=0.26857709884643555))

=== RUN  TestIndexRune
--- PASS: TestIndexRune (%!s(float64=0.00013208389282226562))

=== RUN  TestSplit
--- PASS: TestSplit (%!s(float64=0.001249074935913086))

=== RUN  TestSplitAfter
--- PASS: TestSplitAfter (%!s(float64=0.0008668899536132812))

=== RUN  TestFields
--- PASS: TestFields (%!s(float64=0.0003650188446044922))

=== RUN  TestFieldsFunc
--- PASS: TestFieldsFunc (%!s(float64=0.0006198883056640625))

=== RUN  TestMap
strings_test/Strings_test.hx:3359: testMap skip function
--- PASS: TestMap (%!s(float64=2.8133392333984375e-05))

=== RUN  TestToUpper
--- PASS: TestToUpper (%!s(float64=0.0019240379333496094))

=== RUN  TestToLower
--- PASS: TestToLower (%!s(float64=0.0004649162292480469))

=== RUN  TestToValidUTF8
--- PASS: TestToValidUTF8 (%!s(float64=0.0005230903625488281))

=== RUN  TestSpecialCase
--- PASS: TestSpecialCase (%!s(float64=0.0011699199676513672))

=== RUN  TestTrimSpace
--- PASS: TestTrimSpace (%!s(float64=0.0002460479736328125))

=== RUN  TestTrim
--- PASS: TestTrim (%!s(float64=0.0002110004425048828))

=== RUN  TestTrimFunc
--- PASS: TestTrimFunc (%!s(float64=0.0008330345153808594))

=== RUN  TestIndexFunc
--- PASS: TestIndexFunc (%!s(float64=0.00026988983154296875))

=== RUN  TestCaseConsistency
--- PASS: TestCaseConsistency (%!s(float64=0.13807892799377441))

=== RUN  TestRepeat
--- PASS: TestRepeat (%!s(float64=0.08630895614624023))

=== RUN  TestRepeatCatchesOverflow
--- PASS: TestRepeatCatchesOverflow (%!s(float64=0.001001119613647461))

=== RUN  TestRunes
--- PASS: TestRunes (%!s(float64=0.0001571178436279297))

=== RUN  TestReadByte
--- PASS: TestReadByte (%!s(float64=0.00012803077697753906))

=== RUN  TestReadRune
--- PASS: TestReadRune (%!s(float64=0.00012803077697753906))

=== RUN  TestUnreadRuneError
--- PASS: TestUnreadRuneError (%!s(float64=7.605552673339844e-05))

=== RUN  TestReplace
--- PASS: TestReplace (%!s(float64=0.0006158351898193359))

=== RUN  TestTitle
--- PASS: TestTitle (%!s(float64=0.0005109310150146484))

=== RUN  TestContains
--- PASS: TestContains (%!s(float64=7.987022399902344e-05))

=== RUN  TestContainsAny
--- PASS: TestContainsAny (%!s(float64=0.00010800361633300781))

=== RUN  TestContainsRune
--- PASS: TestContainsRune (%!s(float64=1.2874603271484375e-05))

=== RUN  TestEqualFold
--- PASS: TestEqualFold (%!s(float64=0.0016260147094726562))

=== RUN  TestCount
--- PASS: TestCount (%!s(float64=3.218650817871094e-05))

=== RUN  TestCut
--- PASS: TestCut (%!s(float64=2.2172927856445312e-05))

=== RUN  TestCutPrefix
--- PASS: TestCutPrefix (%!s(float64=1.4781951904296875e-05))

=== RUN  TestCutSuffix
--- PASS: TestCutSuffix (%!s(float64=1.621246337890625e-05))

```
</p>
</details>

<details><summary>interp tests passed</summary>
<p>

```
=== RUN  TestBuilder
--- PASS: TestBuilder (%!s(float64=0.0001838207244873047))

=== RUN  TestBuilderString
--- PASS: TestBuilderString (%!s(float64=0.0001590251922607422))

=== RUN  TestBuilderReset
--- PASS: TestBuilderReset (%!s(float64=9.489059448242188e-05))

=== RUN  TestBuilderGrow
strings_test/Strings_test.hx:1557: testBuilderGrow skip function
--- PASS: TestBuilderGrow (%!s(float64=1.811981201171875e-05))

=== RUN  TestBuilderWrite2
--- PASS: TestBuilderWrite2 (%!s(float64=3.600120544433594e-05))

=== RUN  TestBuilderWriteByte
--- PASS: TestBuilderWriteByte (%!s(float64=3.504753112792969e-05))

=== RUN  TestBuilderAllocs
strings_test/Strings_test.hx:1680: testBuilderAllocs skip function
--- PASS: TestBuilderAllocs (%!s(float64=1.5020370483398438e-05))

=== RUN  TestBuilderCopyPanic
strings_test/Strings_test.hx:1693: testBuilderCopyPanic skip function
--- PASS: TestBuilderCopyPanic (%!s(float64=1.1920928955078125e-05))

=== RUN  TestBuilderWriteInvalidRune
--- PASS: TestBuilderWriteInvalidRune (%!s(float64=0.00014209747314453125))

=== RUN  TestClone
strings_test/Strings_test.hx:1866: testClone skip function
--- PASS: TestClone (%!s(float64=1.2874603271484375e-05))

=== RUN  TestCompare
--- PASS: TestCompare (%!s(float64=5.1021575927734375e-05))

=== RUN  TestCompareIdenticalString
--- PASS: TestCompareIdenticalString (%!s(float64=1.811981201171875e-05))

=== RUN  TestCompareStrings
strings_test/Strings_test.hx:1910: testCompareStrings skip function
--- PASS: TestCompareStrings (%!s(float64=1.3828277587890625e-05))

=== RUN  TestReader
--- PASS: TestReader (%!s(float64=0.0006268024444580078))

=== RUN  TestReadAfterBigSeek
--- PASS: TestReadAfterBigSeek (%!s(float64=7.891654968261719e-05))

=== RUN  TestReaderAt
--- PASS: TestReaderAt (%!s(float64=0.004797935485839844))

=== RUN  TestReaderAtConcurrent
--- PASS: TestReaderAtConcurrent (%!s(float64=0.003264188766479492))

=== RUN  TestEmptyReaderConcurrent
--- PASS: TestEmptyReaderConcurrent (%!s(float64=0.003576993942260742))

=== RUN  TestWriteTo
--- PASS: TestWriteTo (%!s(float64=0.0008759498596191406))

=== RUN  TestReaderLenSize
strings_test/Strings_test.hx:2426: testReaderLenSize skip function
--- PASS: TestReaderLenSize (%!s(float64=1.6927719116210938e-05))

=== RUN  TestReaderReset
--- PASS: TestReaderReset (%!s(float64=0.0001850128173828125))

=== RUN  TestReaderZero
--- PASS: TestReaderZero (%!s(float64=0.0001728534698486328))

=== RUN  TestReplacer
strings_test/Strings_test.hx:2554: testReplacer skip function
--- PASS: TestReplacer (%!s(float64=1.5974044799804688e-05))

=== RUN  TestPickAlgorithm
strings_test/Strings_test.hx:2685: testPickAlgorithm skip function
--- PASS: TestPickAlgorithm (%!s(float64=1.1920928955078125e-05))

=== RUN  TestWriteStringError
--- PASS: TestWriteStringError (%!s(float64=0.003545045852661133))

=== RUN  TestGenericTrieBuilding
strings_test/Strings_test.hx:2712: testGenericTrieBuilding skip function
--- PASS: TestGenericTrieBuilding (%!s(float64=1.3828277587890625e-05))

=== RUN  TestFinderNext
--- PASS: TestFinderNext (%!s(float64=0.0036499500274658203))

=== RUN  TestFinderCreation
--- PASS: TestFinderCreation (%!s(float64=0.003969907760620117))

=== RUN  TestIndex
--- PASS: TestIndex (%!s(float64=0.003392934799194336))

=== RUN  TestLastIndex
--- PASS: TestLastIndex (%!s(float64=0.0002110004425048828))

=== RUN  TestIndexAny
--- PASS: TestIndexAny (%!s(float64=0.0016140937805175781))

=== RUN  TestLastIndexAny
--- PASS: TestLastIndexAny (%!s(float64=0.0008981227874755859))

=== RUN  TestIndexByte
--- PASS: TestIndexByte (%!s(float64=0.00011682510375976562))

=== RUN  TestLastIndexByte
--- PASS: TestLastIndexByte (%!s(float64=6.389617919921875e-05))

=== RUN  TestIndexRandom
--- PASS: TestIndexRandom (%!s(float64=0.7074038982391357))

=== RUN  TestIndexRune
--- PASS: TestIndexRune (%!s(float64=0.0006389617919921875))

=== RUN  TestSplit
--- PASS: TestSplit (%!s(float64=0.0047991275787353516))

=== RUN  TestSplitAfter
--- PASS: TestSplitAfter (%!s(float64=0.004889011383056641))

=== RUN  TestFields
--- PASS: TestFields (%!s(float64=0.0024271011352539062))

=== RUN  TestFieldsFunc
--- PASS: TestFieldsFunc (%!s(float64=0.0038149356842041016))

=== RUN  TestMap
strings_test/Strings_test.hx:3359: testMap skip function
--- PASS: TestMap (%!s(float64=1.7881393432617188e-05))

=== RUN  TestToUpper
--- PASS: TestToUpper (%!s(float64=0.0027570724487304688))

=== RUN  TestToLower
--- PASS: TestToLower (%!s(float64=0.002457857131958008))

=== RUN  TestToValidUTF8
--- PASS: TestToValidUTF8 (%!s(float64=0.0024089813232421875))

=== RUN  TestSpecialCase
--- PASS: TestSpecialCase (%!s(float64=0.005524158477783203))

=== RUN  TestTrimSpace
--- PASS: TestTrimSpace (%!s(float64=0.0013358592987060547))

=== RUN  TestTrim
--- PASS: TestTrim (%!s(float64=0.0010981559753417969))

=== RUN  TestTrimFunc
--- PASS: TestTrimFunc (%!s(float64=0.005931854248046875))

=== RUN  TestIndexFunc
--- PASS: TestIndexFunc (%!s(float64=0.0015568733215332031))

=== RUN  TestCaseConsistency
--- PASS: TestCaseConsistency (%!s(float64=0.35490894317626953))

=== RUN  TestRepeat
--- PASS: TestRepeat (%!s(float64=0.6580169200897217))

=== RUN  TestRepeatCatchesOverflow
--- PASS: TestRepeatCatchesOverflow (%!s(float64=0.0027060508728027344))

=== RUN  TestRunes
--- PASS: TestRunes (%!s(float64=0.0006608963012695312))

=== RUN  TestReadByte
--- PASS: TestReadByte (%!s(float64=0.0006349086761474609))

=== RUN  TestReadRune
--- PASS: TestReadRune (%!s(float64=0.0006871223449707031))

=== RUN  TestUnreadRuneError
--- PASS: TestUnreadRuneError (%!s(float64=0.00030684471130371094))

=== RUN  TestReplace
--- PASS: TestReplace (%!s(float64=0.002763032913208008))

=== RUN  TestTitle
--- PASS: TestTitle (%!s(float64=0.003136157989501953))

=== RUN  TestContains
--- PASS: TestContains (%!s(float64=0.0004680156707763672))

=== RUN  TestContainsAny
--- PASS: TestContainsAny (%!s(float64=0.0007519721984863281))

=== RUN  TestContainsRune
--- PASS: TestContainsRune (%!s(float64=7.891654968261719e-05))

=== RUN  TestEqualFold
--- PASS: TestEqualFold (%!s(float64=0.0014460086822509766))

=== RUN  TestCount
--- PASS: TestCount (%!s(float64=0.00010919570922851562))

=== RUN  TestCut
--- PASS: TestCut (%!s(float64=7.891654968261719e-05))

=== RUN  TestCutPrefix
--- PASS: TestCutPrefix (%!s(float64=6.890296936035156e-05))

=== RUN  TestCutSuffix
--- PASS: TestCutSuffix (%!s(float64=6.008148193359375e-05))

```
</p>
</details>

<details><summary>jvm tests failed</summary>
<p>

```
IO.Overflow("write_ui16")
stdgo/internal/Macro.macro.hx:35: define
```
</p>
</details>


# Index


- [`function clone(_s:stdgo.GoString):stdgo.GoString`](<#function-clone>)

- [`function compare(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt`](<#function-compare>)

- [`function contains(_s:stdgo.GoString, _substr:stdgo.GoString):Bool`](<#function-contains>)

- [`function containsAny(_s:stdgo.GoString, _chars:stdgo.GoString):Bool`](<#function-containsany>)

- [`function containsRune(_s:stdgo.GoString, _r:stdgo.GoRune):Bool`](<#function-containsrune>)

- [`function count(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt`](<#function-count>)

- [`function cut(_s:stdgo.GoString, _sep:stdgo.GoString):{_2:Bool, _1:stdgo.GoString, _0:stdgo.GoString}`](<#function-cut>)

- [`function cutPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):{_1:Bool, _0:stdgo.GoString}`](<#function-cutprefix>)

- [`function cutSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):{_1:Bool, _0:stdgo.GoString}`](<#function-cutsuffix>)

- [`function dumpTables(_pattern:stdgo.GoString):{_1:stdgo.Slice<stdgo.GoInt>, _0:stdgo.Slice<stdgo.GoInt>}`](<#function-dumptables>)

- [`function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool`](<#function-equalfold>)

- [`function fields(_s:stdgo.GoString):stdgo.Slice<stdgo.GoString>`](<#function-fields>)

- [`function fieldsFunc(_s:stdgo.GoString, _f:()):stdgo.Slice<stdgo.GoString>`](<#function-fieldsfunc>)

- [`function hasPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):Bool`](<#function-hasprefix>)

- [`function hasSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):Bool`](<#function-hassuffix>)

- [`function index(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt`](<#function-index>)

- [`function indexAny(_s:stdgo.GoString, _chars:stdgo.GoString):stdgo.GoInt`](<#function-indexany>)

- [`function indexByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt`](<#function-indexbyte>)

- [`function indexFunc(_s:stdgo.GoString, _f:()):stdgo.GoInt`](<#function-indexfunc>)

- [`function indexRune(_s:stdgo.GoString, _r:stdgo.GoRune):stdgo.GoInt`](<#function-indexrune>)

- [`function join(_elems:stdgo.Slice<stdgo.GoString>, _sep:stdgo.GoString):stdgo.GoString`](<#function-join>)

- [`function lastIndex(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt`](<#function-lastindex>)

- [`function lastIndexAny(_s:stdgo.GoString, _chars:stdgo.GoString):stdgo.GoInt`](<#function-lastindexany>)

- [`function lastIndexByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt`](<#function-lastindexbyte>)

- [`function lastIndexFunc(_s:stdgo.GoString, _f:()):stdgo.GoInt`](<#function-lastindexfunc>)

- [`function map(_mapping:(), _s:stdgo.GoString):stdgo.GoString`](<#function-map>)

- [`function newReader(_s:stdgo.GoString):stdgo.Ref<stdgo.strings.Reader>`](<#function-newreader>)

- [`function newReplacer(_oldnew:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo.strings.Replacer>`](<#function-newreplacer>)

- [`function repeat(_s:stdgo.GoString, _count:stdgo.GoInt):stdgo.GoString`](<#function-repeat>)

- [`function replace(_s:stdgo.GoString, _old:stdgo.GoString, _new:stdgo.GoString, _n:stdgo.GoInt):stdgo.GoString`](<#function-replace>)

- [`function replaceAll(_s:stdgo.GoString, _old:stdgo.GoString, _new:stdgo.GoString):stdgo.GoString`](<#function-replaceall>)

- [`function split(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.Slice<stdgo.GoString>`](<#function-split>)

- [`function splitAfter(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.Slice<stdgo.GoString>`](<#function-splitafter>)

- [`function splitAfterN(_s:stdgo.GoString, _sep:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>`](<#function-splitaftern>)

- [`function splitN(_s:stdgo.GoString, _sep:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>`](<#function-splitn>)

- [`function stringFind(_pattern:stdgo.GoString, _text:stdgo.GoString):stdgo.GoInt`](<#function-stringfind>)

- [`function title(_s:stdgo.GoString):stdgo.GoString`](<#function-title>)

- [`function toLower(_s:stdgo.GoString):stdgo.GoString`](<#function-tolower>)

- [`function toLowerSpecial(_c:stdgo.unicode.SpecialCase, _s:stdgo.GoString):stdgo.GoString`](<#function-tolowerspecial>)

- [`function toTitle(_s:stdgo.GoString):stdgo.GoString`](<#function-totitle>)

- [`function toTitleSpecial(_c:stdgo.unicode.SpecialCase, _s:stdgo.GoString):stdgo.GoString`](<#function-totitlespecial>)

- [`function toUpper(_s:stdgo.GoString):stdgo.GoString`](<#function-toupper>)

- [`function toUpperSpecial(_c:stdgo.unicode.SpecialCase, _s:stdgo.GoString):stdgo.GoString`](<#function-toupperspecial>)

- [`function toValidUTF8(_s:stdgo.GoString, _replacement:stdgo.GoString):stdgo.GoString`](<#function-tovalidutf8>)

- [`function trim(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString`](<#function-trim>)

- [`function trimFunc(_s:stdgo.GoString, _f:()):stdgo.GoString`](<#function-trimfunc>)

- [`function trimLeft(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString`](<#function-trimleft>)

- [`function trimLeftFunc(_s:stdgo.GoString, _f:()):stdgo.GoString`](<#function-trimleftfunc>)

- [`function trimPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):stdgo.GoString`](<#function-trimprefix>)

- [`function trimRight(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString`](<#function-trimright>)

- [`function trimRightFunc(_s:stdgo.GoString, _f:()):stdgo.GoString`](<#function-trimrightfunc>)

- [`function trimSpace(_s:stdgo.GoString):stdgo.GoString`](<#function-trimspace>)

- [`function trimSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):stdgo.GoString`](<#function-trimsuffix>)

- [class Builder](<#class-builder>)

  - [`function new(?_addr:stdgo.Ref<stdgo.strings.Builder>, ?_buf:stdgo.Slice<stdgo.GoUInt8>):Void`](<#builder-function-new>)

  - [`function _copyCheck():Void`](<#builder-function-_copycheck>)

  - [`function _grow( _n:stdgo.GoInt):Void`](<#builder-function-_grow>)

  - [`function cap():stdgo.GoInt`](<#builder-function-cap>)

  - [`function grow( _n:stdgo.GoInt):Void`](<#builder-function-grow>)

  - [`function len():stdgo.GoInt`](<#builder-function-len>)

  - [`function reset():Void`](<#builder-function-reset>)

  - [`function string():stdgo.GoString`](<#builder-function-string>)

  - [`function write( _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#builder-function-write>)

  - [`function writeByte( _c:stdgo.GoByte):stdgo.Error`](<#builder-function-writebyte>)

  - [`function writeRune( _r:stdgo.GoRune):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#builder-function-writerune>)

  - [`function writeString( _s:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#builder-function-writestring>)

- [class Reader](<#class-reader>)

  - [`function new(?_s:stdgo.GoString, ?_i:stdgo.GoInt64, ?_prevRune:Null<stdgo.GoInt>):Void`](<#reader-function-new>)

  - [`function len():stdgo.GoInt`](<#reader-function-len>)

  - [`function read( _b:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#reader-function-read>)

  - [`function readAt( _b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#reader-function-readat>)

  - [`function readByte():{_1:stdgo.Error, _0:stdgo.GoByte}`](<#reader-function-readbyte>)

  - [`function readRune():{_2:stdgo.Error, _1:stdgo.GoInt, _0:stdgo.GoRune}`](<#reader-function-readrune>)

  - [`function reset( _s:stdgo.GoString):Void`](<#reader-function-reset>)

  - [`function seek( _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{_1:stdgo.Error, _0:stdgo.GoInt64}`](<#reader-function-seek>)

  - [`function size():stdgo.GoInt64`](<#reader-function-size>)

  - [`function unreadByte():stdgo.Error`](<#reader-function-unreadbyte>)

  - [`function unreadRune():stdgo.Error`](<#reader-function-unreadrune>)

  - [`function writeTo( _w:stdgo.io.Writer):{_1:stdgo.Error, _0:stdgo.GoInt64}`](<#reader-function-writeto>)

- [class Replacer](<#class-replacer>)

  - [`function new(?_once:stdgo.sync.Once, ?_r:Null<stdgo.strings._Strings.T_replacer>, ?_oldnew:stdgo.Slice<stdgo.GoString>):Void`](<#replacer-function-new>)

  - [`function _build():stdgo.strings._Strings.T_replacer`](<#replacer-function-_build>)

  - [`function _buildOnce():Void`](<#replacer-function-_buildonce>)

  - [`function printTrie():stdgo.GoString`](<#replacer-function-printtrie>)

  - [`function replace( _s:stdgo.GoString):stdgo.GoString`](<#replacer-function-replace>)

  - [`function replacer():stdgo.AnyInterface`](<#replacer-function-replacer>)

  - [`function writeString( _w:stdgo.io.Writer, _s:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#replacer-function-writestring>)

- [class T\_fieldsFunc\_0\_\_\_localname\_\_\_span](<#class-t_fieldsfunc_0localnamespan>)

  - [`function new(?_start:Null<stdgo.GoInt>, ?_end:Null<stdgo.GoInt>):Void`](<#t_fieldsfunc_0localnamespan-function-new>)

# Examples


- [`exampleCompare`](<#examplecompare>)

- [`exampleContains`](<#examplecontains>)

- [`exampleContainsAny`](<#examplecontainsany>)

- [`exampleContainsRune`](<#examplecontainsrune>)

- [`exampleCount`](<#examplecount>)

- [`exampleCut`](<#examplecut>)

- [`exampleEqualFold`](<#exampleequalfold>)

- [`exampleFields`](<#examplefields>)

- [`exampleFieldsFunc`](<#examplefieldsfunc>)

- [`exampleHasPrefix`](<#examplehasprefix>)

- [`exampleHasSuffix`](<#examplehassuffix>)

- [`exampleIndex`](<#exampleindex>)

- [`exampleIndexAny`](<#exampleindexany>)

- [`exampleIndexByte`](<#exampleindexbyte>)

- [`exampleIndexFunc`](<#exampleindexfunc>)

- [`exampleIndexRune`](<#exampleindexrune>)

- [`exampleJoin`](<#examplejoin>)

- [`exampleLastIndex`](<#examplelastindex>)

- [`exampleLastIndexAny`](<#examplelastindexany>)

- [`exampleLastIndexByte`](<#examplelastindexbyte>)

- [`exampleLastIndexFunc`](<#examplelastindexfunc>)

- [`exampleMap`](<#examplemap>)

- [`exampleNewReplacer`](<#examplenewreplacer>)

- [`exampleRepeat`](<#examplerepeat>)

- [`exampleReplace`](<#examplereplace>)

- [`exampleReplaceAll`](<#examplereplaceall>)

- [`exampleSplit`](<#examplesplit>)

- [`exampleSplitAfter`](<#examplesplitafter>)

- [`exampleSplitAfterN`](<#examplesplitaftern>)

- [`exampleSplitN`](<#examplesplitn>)

- [`exampleTitle`](<#exampletitle>)

- [`exampleToLower`](<#exampletolower>)

- [`exampleToLowerSpecial`](<#exampletolowerspecial>)

- [`exampleToTitle`](<#exampletotitle>)

- [`exampleToTitleSpecial`](<#exampletotitlespecial>)

- [`exampleToUpper`](<#exampletoupper>)

- [`exampleToUpperSpecial`](<#exampletoupperspecial>)

- [`exampleTrim`](<#exampletrim>)

- [`exampleTrimFunc`](<#exampletrimfunc>)

- [`exampleTrimLeft`](<#exampletrimleft>)

- [`exampleTrimLeftFunc`](<#exampletrimleftfunc>)

- [`exampleTrimPrefix`](<#exampletrimprefix>)

- [`exampleTrimRight`](<#exampletrimright>)

- [`exampleTrimRightFunc`](<#exampletrimrightfunc>)

- [`exampleTrimSpace`](<#exampletrimspace>)

- [`exampleTrimSuffix`](<#exampletrimsuffix>)

# Functions


```haxe
import stdgo.strings.Strings
```


## function clone


```haxe
function clone(_s:stdgo.GoString):stdgo.GoString
```


Clone returns a fresh copy of s.  
It guarantees to make a copy of s into a new allocation,  
which can be important when retaining only a small substring  
of a much larger string. Using Clone can help such programs  
use less memory. Of course, since using Clone makes a copy,  
overuse of Clone can make programs use more memory.  
Clone should typically be used only rarely, and only when  
profiling indicates that it is needed.  
For strings of length zero the string "" will be returned  
and no allocation is made.  



[\(view code\)](<./Strings.hx#L379>)


## function compare


```haxe
function compare(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt
```


Compare returns an integer comparing two strings lexicographically.  
The result will be 0 if a == b, \-1 if a \< b, and \+1 if a \> b.  



Compare is included only for symmetry with package bytes.  
It is usually clearer and always faster to use the built\-in  
string comparison operators ==, \<, \>, and so on.  



### exampleCompare


<details><summary></summary>
<p>


```haxe
function exampleCompare():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.compare(("a" : GoString), ("b" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.compare(("a" : GoString), ("a" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.compare(("b" : GoString), ("a" : GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L388>)


## function contains


```haxe
function contains(_s:stdgo.GoString, _substr:stdgo.GoString):Bool
```


Contains reports whether substr is within s.  



### exampleContains


<details><summary></summary>
<p>


```haxe
function exampleContains():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.contains(("seafood" : GoString), ("foo" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.contains(("seafood" : GoString), ("bar" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.contains(("seafood" : GoString), Go.str())));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.contains(Go.str(), Go.str())));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L571>)


## function containsAny


```haxe
function containsAny(_s:stdgo.GoString, _chars:stdgo.GoString):Bool
```


ContainsAny reports whether any Unicode code points in chars are within s.  



### exampleContainsAny


<details><summary></summary>
<p>


```haxe
function exampleContainsAny():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.containsAny(("team" : GoString), ("i" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.containsAny(("fail" : GoString), ("ui" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.containsAny(("ure" : GoString), ("ui" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.containsAny(("failure" : GoString), ("ui" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.containsAny(("foo" : GoString), Go.str())));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.containsAny(Go.str(), Go.str())));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L577>)


## function containsRune


```haxe
function containsRune(_s:stdgo.GoString, _r:stdgo.GoRune):Bool
```


ContainsRune reports whether the Unicode code point r is within s.  



### exampleContainsRune


<details><summary></summary>
<p>


```haxe
function exampleContainsRune():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.containsRune(("aardvark" : GoString), (97 : GoInt32))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.containsRune(("timeout" : GoString), (97 : GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L583>)


## function count


```haxe
function count(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt
```


Count counts the number of non\-overlapping instances of substr in s.  
If substr is an empty string, Count returns 1 \+ the number of Unicode code points in s.  



### exampleCount


<details><summary></summary>
<p>


```haxe
function exampleCount():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.count(("cheese" : GoString), ("e" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.count(("five" : GoString), Go.str())));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L551>)


## function cut


```haxe
function cut(_s:stdgo.GoString, _sep:stdgo.GoString):{_2:Bool, _1:stdgo.GoString, _0:stdgo.GoString}
```


Cut slices s around the first instance of sep,  
returning the text before and after sep.  
The found result reports whether sep appears in s.  
If sep does not appear in s, cut returns s, "", false.  



### exampleCut


<details><summary></summary>
<p>


```haxe
function exampleCut():Void {
        var _show:(GoString, GoString) -> Void = function(_s:GoString, _sep:GoString):Void {
            var __tmp__ = stdgo.strings.Strings.cut(_s, _sep), _before:GoString = __tmp__._0, _after:GoString = __tmp__._1, _found:Bool = __tmp__._2;
            stdgo.fmt.Fmt.printf(("Cut(%q, %q) = %q, %q, %v\n" : GoString), Go.toInterface(_s), Go.toInterface(_sep), Go.toInterface(_before), Go.toInterface(_after), Go.toInterface(_found));
        };
        _show(("Gopher" : GoString), ("Go" : GoString));
        _show(("Gopher" : GoString), ("ph" : GoString));
        _show(("Gopher" : GoString), ("er" : GoString));
        _show(("Gopher" : GoString), ("Badger" : GoString));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1786>)


## function cutPrefix


```haxe
function cutPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):{_1:Bool, _0:stdgo.GoString}
```


CutPrefix returns s without the provided leading prefix string  
and reports whether it found the prefix.  
If s doesn't start with prefix, CutPrefix returns s, false.  
If prefix is the empty string, CutPrefix returns s, true.  



[\(view code\)](<./Strings.hx#L1802>)


## function cutSuffix


```haxe
function cutSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):{_1:Bool, _0:stdgo.GoString}
```


CutSuffix returns s without the provided ending suffix string  
and reports whether it found the suffix.  
If s doesn't end with suffix, CutSuffix returns s, false.  
If suffix is the empty string, CutSuffix returns s, true.  



[\(view code\)](<./Strings.hx#L1815>)


## function dumpTables


```haxe
function dumpTables(_pattern:stdgo.GoString):{_1:stdgo.Slice<stdgo.GoInt>, _0:stdgo.Slice<stdgo.GoInt>}
```





[\(view code\)](<./Strings.hx#L400>)


## function equalFold


```haxe
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool
```


EqualFold reports whether s and t, interpreted as UTF\-8 strings,  
are equal under simple Unicode case\-folding, which is a more general  
form of case\-insensitivity.  



### exampleEqualFold


<details><summary></summary>
<p>


```haxe
function exampleEqualFold():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.equalFold(("Go" : GoString), ("go" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.equalFold(("AB" : GoString), ("ab" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.equalFold(("ß" : GoString), ("ss" : GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1626>)


## function fields


```haxe
function fields(_s:stdgo.GoString):stdgo.Slice<stdgo.GoString>
```


Fields splits the string s around each instance of one or more consecutive white space  
characters, as defined by unicode.IsSpace, returning a slice of substrings of s or an  
empty slice if s contains only white space.  



### exampleFields


<details><summary></summary>
<p>


```haxe
function exampleFields():Void {
        stdgo.fmt.Fmt.printf(("Fields are: %q" : GoString), Go.toInterface(stdgo.strings.Strings.fields(("  foo bar  baz   " : GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L875>)


## function fieldsFunc


```haxe
function fieldsFunc(_s:stdgo.GoString, _f:()):stdgo.Slice<stdgo.GoString>
```


FieldsFunc splits the string s at each run of Unicode code points c satisfying f\(c\)  
and returns an array of slices of s. If all code points in s satisfy f\(c\) or the  
string is empty, an empty slice is returned.  



FieldsFunc makes no guarantees about the order in which it calls f\(c\)  
and assumes that f always returns the same value for a given c.  



### exampleFieldsFunc


<details><summary></summary>
<p>


```haxe
function exampleFieldsFunc():Void {
        var _f:GoInt32 -> Bool = function(_c:GoRune):Bool {
            return !stdgo.unicode.Unicode.isLetter(_c) && !stdgo.unicode.Unicode.isNumber(_c);
        };
        stdgo.fmt.Fmt.printf(("Fields are: %q" : GoString), Go.toInterface(stdgo.strings.Strings.fieldsFunc(("  foo1;bar2,baz3..." : GoString), _f)));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L944>)


## function hasPrefix


```haxe
function hasPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):Bool
```


HasPrefix tests whether the string s begins with prefix.  



### exampleHasPrefix


<details><summary></summary>
<p>


```haxe
function exampleHasPrefix():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.hasPrefix(("Gopher" : GoString), ("Go" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.hasPrefix(("Gopher" : GoString), ("C" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.hasPrefix(("Gopher" : GoString), Go.str())));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L998>)


## function hasSuffix


```haxe
function hasSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):Bool
```


HasSuffix tests whether the string s ends with suffix.  



### exampleHasSuffix


<details><summary></summary>
<p>


```haxe
function exampleHasSuffix():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.hasSuffix(("Amigo" : GoString), ("go" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.hasSuffix(("Amigo" : GoString), ("O" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.hasSuffix(("Amigo" : GoString), ("Ami" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.hasSuffix(("Amigo" : GoString), Go.str())));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1004>)


## function index


```haxe
function index(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt
```


Index returns the index of the first instance of substr in s, or \-1 if substr is not present in s.  



### exampleIndex


<details><summary></summary>
<p>


```haxe
function exampleIndex():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.index(("chicken" : GoString), ("ken" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.index(("chicken" : GoString), ("dmr" : GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1707>)


## function indexAny


```haxe
function indexAny(_s:stdgo.GoString, _chars:stdgo.GoString):stdgo.GoInt
```


IndexAny returns the index of the first instance of any Unicode code point  
from chars in s, or \-1 if no Unicode code point from chars is present in s.  



### exampleIndexAny


<details><summary></summary>
<p>


```haxe
function exampleIndexAny():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.indexAny(("chicken" : GoString), ("aeiouy" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.indexAny(("crwth" : GoString), ("aeiouy" : GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L660>)


## function indexByte


```haxe
function indexByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt
```


IndexByte returns the index of the first instance of c in s, or \-1 if c is not present in s.  



### exampleIndexByte


<details><summary></summary>
<p>


```haxe
function exampleIndexByte():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.indexByte(("golang" : GoString), (103 : GoUInt8))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.indexByte(("gophers" : GoString), (104 : GoUInt8))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.indexByte(("golang" : GoString), (120 : GoUInt8))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L631>)


## function indexFunc


```haxe
function indexFunc(_s:stdgo.GoString, _f:()):stdgo.GoInt
```


IndexFunc returns the index into s of the first Unicode  
code point satisfying f\(c\), or \-1 if none do.  



### exampleIndexFunc


<details><summary></summary>
<p>


```haxe
function exampleIndexFunc():Void {
        var _f:GoInt32 -> Bool = function(_c:GoRune):Bool {
            return stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.han, _c);
        };
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.indexFunc(("Hello, 世界" : GoString), _f)));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.indexFunc(("Hello, world" : GoString), _f)));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1337>)


## function indexRune


```haxe
function indexRune(_s:stdgo.GoString, _r:stdgo.GoRune):stdgo.GoInt
```


IndexRune returns the index of the first instance of the Unicode code point  
r, or \-1 if rune is not present in s.  
If r is utf8.RuneError, it returns the first instance of any  
invalid UTF\-8 byte sequence.  



### exampleIndexRune


<details><summary></summary>
<p>


```haxe
function exampleIndexRune():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.indexRune(("chicken" : GoString), (107 : GoInt32))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.indexRune(("chicken" : GoString), (100 : GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L640>)


## function join


```haxe
function join(_elems:stdgo.Slice<stdgo.GoString>, _sep:stdgo.GoString):stdgo.GoString
```


Join concatenates the elements of its first argument to create a single string. The separator  
string sep is placed between elements in the resulting string.  



### exampleJoin


<details><summary></summary>
<p>


```haxe
function exampleJoin():Void {
        var _s = (new Slice<GoString>(0, 0, ("foo" : GoString), ("bar" : GoString), ("baz" : GoString)) : Slice<GoString>);
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.join(_s, (", " : GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L973>)


## function lastIndex


```haxe
function lastIndex(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt
```


LastIndex returns the index of the last instance of substr in s, or \-1 if substr is not present in s.  



### exampleLastIndex


<details><summary></summary>
<p>


```haxe
function exampleLastIndex():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.index(("go gopher" : GoString), ("go" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.lastIndex(("go gopher" : GoString), ("go" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.lastIndex(("go gopher" : GoString), ("rodent" : GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L589>)


## function lastIndexAny


```haxe
function lastIndexAny(_s:stdgo.GoString, _chars:stdgo.GoString):stdgo.GoInt
```


LastIndexAny returns the index of the last instance of any Unicode code  
point from chars in s, or \-1 if no Unicode code point from chars is  
present in s.  



### exampleLastIndexAny


<details><summary></summary>
<p>


```haxe
function exampleLastIndexAny():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.lastIndexAny(("go gopher" : GoString), ("go" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.lastIndexAny(("go gopher" : GoString), ("rodent" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.lastIndexAny(("go gopher" : GoString), ("fail" : GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L699>)


## function lastIndexByte


```haxe
function lastIndexByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt
```


LastIndexByte returns the index of the last instance of c in s, or \-1 if c is not present in s.  



### exampleLastIndexByte


<details><summary></summary>
<p>


```haxe
function exampleLastIndexByte():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.lastIndexByte(("Hello, world" : GoString), (108 : GoUInt8))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.lastIndexByte(("Hello, world" : GoString), (111 : GoUInt8))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.lastIndexByte(("Hello, world" : GoString), (120 : GoUInt8))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L761>)


## function lastIndexFunc


```haxe
function lastIndexFunc(_s:stdgo.GoString, _f:()):stdgo.GoInt
```


LastIndexFunc returns the index into s of the last  
Unicode code point satisfying f\(c\), or \-1 if none do.  



### exampleLastIndexFunc


<details><summary></summary>
<p>


```haxe
function exampleLastIndexFunc():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.lastIndexFunc(("go 123" : GoString), stdgo.unicode.Unicode.isNumber)));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.lastIndexFunc(("123 go" : GoString), stdgo.unicode.Unicode.isNumber)));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.lastIndexFunc(("go" : GoString), stdgo.unicode.Unicode.isNumber)));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1344>)


## function map


```haxe
function map(_mapping:(), _s:stdgo.GoString):stdgo.GoString
```


Map returns a copy of the string s with all its characters modified  
according to the mapping function. If mapping returns a negative value, the character is  
dropped from the string with no replacement.  



### exampleMap


<details><summary></summary>
<p>


```haxe
function exampleMap():Void {
        var _rot13:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            if ((_r >= (65 : GoInt32)) && (_r <= (90 : GoInt32))) {
                return (65 : GoInt32) + (((_r - (65 : GoInt32)) + (13 : GoInt32)) % (26 : GoInt32));
            } else if ((_r >= (97 : GoInt32)) && (_r <= (122 : GoInt32))) {
                return (97 : GoInt32) + (((_r - (97 : GoInt32)) + (13 : GoInt32)) % (26 : GoInt32));
            };
            return _r;
        };
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.map(_rot13, ("\'Twas brillig and the slithy gopher..." : GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1012>)


## function newReader


```haxe
function newReader(_s:stdgo.GoString):stdgo.Ref<stdgo.strings.Reader>
```


NewReader returns a new Reader reading from s.  
It is similar to bytes.NewBufferString but more efficient and read\-only.  



[\(view code\)](<./Strings.hx#L408>)


## function newReplacer


```haxe
function newReplacer(_oldnew:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo.strings.Replacer>
```


NewReplacer returns a new Replacer from a list of old, new string  
pairs. Replacements are performed in the order they appear in the  
target string, without overlapping matches. The old string  
comparisons are done in argument order.  



NewReplacer panics if given an odd number of arguments.  



### exampleNewReplacer


<details><summary></summary>
<p>


```haxe
function exampleNewReplacer():Void {
        var _r = stdgo.strings.Strings.newReplacer(("<" : GoString), ("&lt;" : GoString), (">" : GoString), ("&gt;" : GoString));
        stdgo.fmt.Fmt.println(Go.toInterface(_r.replace(("This is <b>HTML</b>!" : GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L419>)


## function repeat


```haxe
function repeat(_s:stdgo.GoString, _count:stdgo.GoInt):stdgo.GoString
```


Repeat returns a new string consisting of count copies of the string s.  



It panics if count is negative or if the result of \(len\(s\) \* count\)  
overflows.  



### exampleRepeat


<details><summary></summary>
<p>


```haxe
function exampleRepeat():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(("ba" : GoString) + stdgo.strings.Strings.repeat(("na" : GoString), (2 : GoInt))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1061>)


## function replace


```haxe
function replace(_s:stdgo.GoString, _old:stdgo.GoString, _new:stdgo.GoString, _n:stdgo.GoInt):stdgo.GoString
```


Replace returns a copy of the string s with the first n  
non\-overlapping instances of old replaced by new.  
If old is empty, it matches at the beginning of the string  
and after each UTF\-8 sequence, yielding up to k\+1 replacements  
for a k\-rune string.  
If n \< 0, there is no limit on the number of replacements.  



### exampleReplace


<details><summary></summary>
<p>


```haxe
function exampleReplace():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.replace(("oink oink oink" : GoString), ("k" : GoString), ("ky" : GoString), (2 : GoInt))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.replace(("oink oink oink" : GoString), ("oink" : GoString), ("moo" : GoString), (-1 : GoInt))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1576>)


## function replaceAll


```haxe
function replaceAll(_s:stdgo.GoString, _old:stdgo.GoString, _new:stdgo.GoString):stdgo.GoString
```


ReplaceAll returns a copy of the string s with all  
non\-overlapping instances of old replaced by new.  
If old is empty, it matches at the beginning of the string  
and after each UTF\-8 sequence, yielding up to k\+1 replacements  
for a k\-rune string.  



### exampleReplaceAll


<details><summary></summary>
<p>


```haxe
function exampleReplaceAll():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.replaceAll(("oink oink oink" : GoString), ("oink" : GoString), ("moo" : GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1618>)


## function split


```haxe
function split(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.Slice<stdgo.GoString>
```


Split slices s into all substrings separated by sep and returns a slice of  
the substrings between those separators.  



If s does not contain sep and sep is not empty, Split returns a  
slice of length 1 whose only element is s.  



If sep is empty, Split splits after each UTF\-8 sequence. If both s  
and sep are empty, Split returns an empty slice.  



It is equivalent to SplitN with a count of \-1.  



To split around the first instance of a separator, see Cut.  



### exampleSplit


<details><summary></summary>
<p>


```haxe
function exampleSplit():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(stdgo.strings.Strings.split(("a,b,c" : GoString), ("," : GoString))));
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(stdgo.strings.Strings.split(("a man a plan a canal panama" : GoString), ("a " : GoString))));
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(stdgo.strings.Strings.split((" xyz " : GoString), Go.str())));
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(stdgo.strings.Strings.split(Go.str(), ("Bernardo O\'Higgins" : GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L852>)


## function splitAfter


```haxe
function splitAfter(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.Slice<stdgo.GoString>
```


SplitAfter slices s into all substrings after each instance of sep and  
returns a slice of those substrings.  



If s does not contain sep and sep is not empty, SplitAfter returns  
a slice of length 1 whose only element is s.  



If sep is empty, SplitAfter splits after each UTF\-8 sequence. If  
both s and sep are empty, SplitAfter returns an empty slice.  



It is equivalent to SplitAfterN with a count of \-1.  



### exampleSplitAfter


<details><summary></summary>
<p>


```haxe
function exampleSplitAfter():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(stdgo.strings.Strings.splitAfter(("a,b,c" : GoString), ("," : GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L867>)


## function splitAfterN


```haxe
function splitAfterN(_s:stdgo.GoString, _sep:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>
```


SplitAfterN slices s into substrings after each instance of sep and  
returns a slice of those substrings.  



The count determines the number of substrings to return:  






n \> 0: at most n substrings; the last substring will be the unsplit remainder.  



n == 0: the result is nil \(zero substrings\)  



n \< 0: all substrings  



Edge cases for s and sep \(for example, empty strings\) are handled  
as described in the documentation for SplitAfter.  



### exampleSplitAfterN


<details><summary></summary>
<p>


```haxe
function exampleSplitAfterN():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(stdgo.strings.Strings.splitAfterN(("a,b,c" : GoString), ("," : GoString), (2 : GoInt))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L835>)


## function splitN


```haxe
function splitN(_s:stdgo.GoString, _sep:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>
```


SplitN slices s into substrings separated by sep and returns a slice of  
the substrings between those separators.  



The count determines the number of substrings to return:  






n \> 0: at most n substrings; the last substring will be the unsplit remainder.  



n == 0: the result is nil \(zero substrings\)  



n \< 0: all substrings  



Edge cases for s and sep \(for example, empty strings\) are handled  
as described in the documentation for Split.  



To split around the first instance of a separator, see Cut.  



### exampleSplitN


<details><summary></summary>
<p>


```haxe
function exampleSplitN():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(stdgo.strings.Strings.splitN(("a,b,c" : GoString), ("," : GoString), (2 : GoInt))));
        var _z = stdgo.strings.Strings.splitN(("a,b,c" : GoString), ("," : GoString), (0 : GoInt));
        stdgo.fmt.Fmt.printf(("%q (nil = %v)\n" : GoString), Go.toInterface(_z), Go.toInterface(_z == null));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L819>)


## function stringFind


```haxe
function stringFind(_pattern:stdgo.GoString, _text:stdgo.GoString):stdgo.GoInt
```





[\(view code\)](<./Strings.hx#L397>)


## function title


```haxe
function title(_s:stdgo.GoString):stdgo.GoString
```


Title returns a copy of the string s with all Unicode letters that begin words  
mapped to their Unicode title case.  



Deprecated: The rule Title uses for word boundaries does not handle Unicode  
punctuation properly. Use golang.org/x/text/cases instead.  



### exampleTitle


<details><summary></summary>
<p>


```haxe
function exampleTitle():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.title(("her royal highness" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.title(("loud noises" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.title(("хлеб" : GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1290>)


## function toLower


```haxe
function toLower(_s:stdgo.GoString):stdgo.GoString
```


ToLower returns s with all Unicode letters mapped to their lower case.  



### exampleToLower


<details><summary></summary>
<p>


```haxe
function exampleToLower():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.toLower(("Gopher" : GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1145>)


## function toLowerSpecial


```haxe
function toLowerSpecial(_c:stdgo.unicode.SpecialCase, _s:stdgo.GoString):stdgo.GoString
```


ToLowerSpecial returns a copy of the string s with all Unicode letters mapped to their  
lower case using the case mapping specified by c.  



### exampleToLowerSpecial


<details><summary></summary>
<p>


```haxe
function exampleToLowerSpecial():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.toLowerSpecial(stdgo.unicode.Unicode.turkishCase, ("Önnek İş" : GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1203>)


## function toTitle


```haxe
function toTitle(_s:stdgo.GoString):stdgo.GoString
```


ToTitle returns a copy of the string s with all Unicode letters mapped to  
their Unicode title case.  



### exampleToTitle


<details><summary></summary>
<p>


```haxe
function exampleToTitle():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.toTitle(("her royal highness" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.toTitle(("loud noises" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.toTitle(("хлеб" : GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1189>)


## function toTitleSpecial


```haxe
function toTitleSpecial(_c:stdgo.unicode.SpecialCase, _s:stdgo.GoString):stdgo.GoString
```


ToTitleSpecial returns a copy of the string s with all Unicode letters mapped to their  
Unicode title case, giving priority to the special casing rules.  



### exampleToTitleSpecial


<details><summary></summary>
<p>


```haxe
function exampleToTitleSpecial():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.toTitleSpecial(stdgo.unicode.Unicode.turkishCase, ("dünyanın ilk borsa yapısı Aizonai kabul edilir" : GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1210>)


## function toUpper


```haxe
function toUpper(_s:stdgo.GoString):stdgo.GoString
```


ToUpper returns s with all Unicode letters mapped to their upper case.  



### exampleToUpper


<details><summary></summary>
<p>


```haxe
function exampleToUpper():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.toUpper(("Gopher" : GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1102>)


## function toUpperSpecial


```haxe
function toUpperSpecial(_c:stdgo.unicode.SpecialCase, _s:stdgo.GoString):stdgo.GoString
```


ToUpperSpecial returns a copy of the string s with all Unicode letters mapped to their  
upper case using the case mapping specified by c.  



### exampleToUpperSpecial


<details><summary></summary>
<p>


```haxe
function exampleToUpperSpecial():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.toUpperSpecial(stdgo.unicode.Unicode.turkishCase, ("örnek iş" : GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1196>)


## function toValidUTF8


```haxe
function toValidUTF8(_s:stdgo.GoString, _replacement:stdgo.GoString):stdgo.GoString
```


ToValidUTF8 returns a copy of the string s with each run of invalid UTF\-8 byte sequences  
replaced by the replacement string, which may be empty.  



[\(view code\)](<./Strings.hx#L1217>)


## function trim


```haxe
function trim(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString
```


Trim returns a slice of the string s with all leading and  
trailing Unicode code points contained in cutset removed.  



### exampleTrim


<details><summary></summary>
<p>


```haxe
function exampleTrim():Void {
        stdgo.fmt.Fmt.print(Go.toInterface(stdgo.strings.Strings.trim(("¡¡¡Hello, Gophers!!!" : GoString), ("!¡" : GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1400>)


## function trimFunc


```haxe
function trimFunc(_s:stdgo.GoString, _f:()):stdgo.GoString
```


TrimFunc returns a slice of the string s with all leading  
and trailing Unicode code points c satisfying f\(c\) removed.  



### exampleTrimFunc


<details><summary></summary>
<p>


```haxe
function exampleTrimFunc():Void {
        stdgo.fmt.Fmt.print(Go.toInterface(stdgo.strings.Strings.trimFunc(("¡¡¡Hello, Gophers!!!" : GoString), function(_r:GoRune):Bool {
            return !stdgo.unicode.Unicode.isLetter(_r) && !stdgo.unicode.Unicode.isNumber(_r);
        })));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1330>)


## function trimLeft


```haxe
function trimLeft(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString
```


TrimLeft returns a slice of the string s with all leading  
Unicode code points contained in cutset removed.  



To remove a prefix, use TrimPrefix instead.  



### exampleTrimLeft


<details><summary></summary>
<p>


```haxe
function exampleTrimLeft():Void {
        stdgo.fmt.Fmt.print(Go.toInterface(stdgo.strings.Strings.trimLeft(("¡¡¡Hello, Gophers!!!" : GoString), ("!¡" : GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1421>)


## function trimLeftFunc


```haxe
function trimLeftFunc(_s:stdgo.GoString, _f:()):stdgo.GoString
```


TrimLeftFunc returns a slice of the string s with all leading  
Unicode code points c satisfying f\(c\) removed.  



### exampleTrimLeftFunc


<details><summary></summary>
<p>


```haxe
function exampleTrimLeftFunc():Void {
        stdgo.fmt.Fmt.print(Go.toInterface(stdgo.strings.Strings.trimLeftFunc(("¡¡¡Hello, Gophers!!!" : GoString), function(_r:GoRune):Bool {
            return !stdgo.unicode.Unicode.isLetter(_r) && !stdgo.unicode.Unicode.isNumber(_r);
        })));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1305>)


## function trimPrefix


```haxe
function trimPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):stdgo.GoString
```


TrimPrefix returns s without the provided leading prefix string.  
If s doesn't start with prefix, s is returned unchanged.  



### exampleTrimPrefix


<details><summary></summary>
<p>


```haxe
function exampleTrimPrefix():Void {
        var _s:GoString = ("¡¡¡Hello, Gophers!!!" : GoString);
        _s = stdgo.strings.Strings.trimPrefix(_s, ("¡¡¡Hello, " : GoString));
        _s = stdgo.strings.Strings.trimPrefix(_s, ("¡¡¡Howdy, " : GoString));
        stdgo.fmt.Fmt.print(Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1552>)


## function trimRight


```haxe
function trimRight(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString
```


TrimRight returns a slice of the string s, with all trailing  
Unicode code points contained in cutset removed.  



To remove a suffix, use TrimSuffix instead.  



### exampleTrimRight


<details><summary></summary>
<p>


```haxe
function exampleTrimRight():Void {
        stdgo.fmt.Fmt.print(Go.toInterface(stdgo.strings.Strings.trimRight(("¡¡¡Hello, Gophers!!!" : GoString), ("!¡" : GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1474>)


## function trimRightFunc


```haxe
function trimRightFunc(_s:stdgo.GoString, _f:()):stdgo.GoString
```


TrimRightFunc returns a slice of the string s with all trailing  
Unicode code points c satisfying f\(c\) removed.  



### exampleTrimRightFunc


<details><summary></summary>
<p>


```haxe
function exampleTrimRightFunc():Void {
        stdgo.fmt.Fmt.print(Go.toInterface(stdgo.strings.Strings.trimRightFunc(("¡¡¡Hello, Gophers!!!" : GoString), function(_r:GoRune):Bool {
            return !stdgo.unicode.Unicode.isLetter(_r) && !stdgo.unicode.Unicode.isNumber(_r);
        })));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1316>)


## function trimSpace


```haxe
function trimSpace(_s:stdgo.GoString):stdgo.GoString
```


TrimSpace returns a slice of the string s, with all leading  
and trailing white space removed, as defined by Unicode.  



### exampleTrimSpace


<details><summary></summary>
<p>


```haxe
function exampleTrimSpace():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.trimSpace((" \t\n Hello, Gophers \n\t\r\n" : GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1525>)


## function trimSuffix


```haxe
function trimSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):stdgo.GoString
```


TrimSuffix returns s without the provided trailing suffix string.  
If s doesn't end with suffix, s is returned unchanged.  



### exampleTrimSuffix


<details><summary></summary>
<p>


```haxe
function exampleTrimSuffix():Void {
        var _s:GoString = ("¡¡¡Hello, Gophers!!!" : GoString);
        _s = stdgo.strings.Strings.trimSuffix(_s, (", Gophers!!!" : GoString));
        _s = stdgo.strings.Strings.trimSuffix(_s, (", Marmots!!!" : GoString));
        stdgo.fmt.Fmt.print(Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1562>)


# Classes


```haxe
import stdgo.strings.*
```


## class Builder


A Builder is used to efficiently build a string using Write methods.  
It minimizes memory copying. The zero value is ready to use.  
Do not copy a non\-zero Builder.  



```haxe
var _addr:stdgo.Ref<stdgo.strings.Builder>
```


```haxe
var _buf:stdgo.Slice<stdgo.GoUInt8>
```


### Builder function new


```haxe
function new(?_addr:stdgo.Ref<stdgo.strings.Builder>, ?_buf:stdgo.Slice<stdgo.GoUInt8>):Void
```





[\(view code\)](<./Strings.hx#L73>)


### Builder function \_copyCheck


```haxe
function _copyCheck():Void
```





[\(view code\)](<./Strings.hx#L1991>)


### Builder function \_grow


```haxe
function _grow( _n:stdgo.GoInt):Void
```


grow copies the buffer to a new, larger buffer so that there are at least n  
bytes of capacity beyond len\(b.buf\).  



[\(view code\)](<./Strings.hx#L1954>)


### Builder function cap


```haxe
function cap():stdgo.GoInt
```


Cap returns the capacity of the builder's underlying byte slice. It is the  
total space allocated for the string being built and includes any bytes  
already written.  



[\(view code\)](<./Strings.hx#L1973>)


### Builder function grow


```haxe
function grow( _n:stdgo.GoInt):Void
```


Grow grows b's capacity, if necessary, to guarantee space for  
another n bytes. After Grow\(n\), at least n bytes can be written to b  
without another allocation. If n is negative, Grow panics.  



[\(view code\)](<./Strings.hx#L1940>)


### Builder function len


```haxe
function len():stdgo.GoInt
```


Len returns the number of accumulated bytes; b.Len\(\) == len\(b.String\(\)\).  



[\(view code\)](<./Strings.hx#L1980>)


### Builder function reset


```haxe
function reset():Void
```


Reset resets the Builder to be empty.  



[\(view code\)](<./Strings.hx#L1963>)


### Builder function string


```haxe
function string():stdgo.GoString
```


String returns the accumulated string.  



[\(view code\)](<./Strings.hx#L1987>)


### Builder function write


```haxe
function write( _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


Write appends the contents of p to b's buffer.  
Write always returns len\(p\), nil.  



[\(view code\)](<./Strings.hx#L1929>)


### Builder function writeByte


```haxe
function writeByte( _c:stdgo.GoByte):stdgo.Error
```


WriteByte appends the byte c to b's buffer.  
The returned error is always nil.  



[\(view code\)](<./Strings.hx#L1919>)


### Builder function writeRune


```haxe
function writeRune( _r:stdgo.GoRune):{_1:stdgo.Error, _0:stdgo.GoInt}
```


WriteRune appends the UTF\-8 encoding of Unicode code point r to b's buffer.  
It returns the length of r and a nil error.  



[\(view code\)](<./Strings.hx#L1908>)


### Builder function writeString


```haxe
function writeString( _s:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.GoInt}
```


WriteString appends the contents of s to b's buffer.  
It returns the length of s and a nil error.  



[\(view code\)](<./Strings.hx#L1898>)


## class Reader


A Reader implements the io.Reader, io.ReaderAt, io.ByteReader, io.ByteScanner,  
io.RuneReader, io.RuneScanner, io.Seeker, and io.WriterTo interfaces by reading  
from a string.  
The zero value for Reader operates like a Reader of an empty string.  



```haxe
var _i:stdgo.GoInt64
```


```haxe
var _prevRune:stdgo.GoInt
```


```haxe
var _s:stdgo.GoString
```


### Reader function new


```haxe
function new(?_s:stdgo.GoString, ?_i:stdgo.GoInt64, ?_prevRune:Null<stdgo.GoInt>):Void
```





[\(view code\)](<./Strings.hx#L94>)


### Reader function len


```haxe
function len():stdgo.GoInt
```


Len returns the number of bytes of the unread portion of the  
string.  



[\(view code\)](<./Strings.hx#L2231>)


### Reader function read


```haxe
function read( _b:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


Read implements the io.Reader interface.  



[\(view code\)](<./Strings.hx#L2206>)


### Reader function readAt


```haxe
function readAt( _b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{_1:stdgo.Error, _0:stdgo.GoInt}
```


ReadAt implements the io.ReaderAt interface.  



[\(view code\)](<./Strings.hx#L2188>)


### Reader function readByte


```haxe
function readByte():{_1:stdgo.Error, _0:stdgo.GoByte}
```


ReadByte implements the io.ByteReader interface.  



[\(view code\)](<./Strings.hx#L2175>)


### Reader function readRune


```haxe
function readRune():{_2:stdgo.Error, _1:stdgo.GoInt, _0:stdgo.GoRune}
```


ReadRune implements the io.RuneReader interface.  



[\(view code\)](<./Strings.hx#L2137>)


### Reader function reset


```haxe
function reset( _s:stdgo.GoString):Void
```


Reset resets the Reader to be reading from s.  



[\(view code\)](<./Strings.hx#L2066>)


### Reader function seek


```haxe
function seek( _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{_1:stdgo.Error, _0:stdgo.GoInt64}
```


Seek implements the io.Seeker interface.  



[\(view code\)](<./Strings.hx#L2100>)


### Reader function size


```haxe
function size():stdgo.GoInt64
```


Size returns the original length of the underlying string.  
Size is the number of bytes available for reading via ReadAt.  
The returned value is always the same and is not affected by calls  
to any other method.  



[\(view code\)](<./Strings.hx#L2223>)


### Reader function unreadByte


```haxe
function unreadByte():stdgo.Error
```


UnreadByte implements the io.ByteScanner interface.  



[\(view code\)](<./Strings.hx#L2163>)


### Reader function unreadRune


```haxe
function unreadRune():stdgo.Error
```


UnreadRune implements the io.RuneScanner interface.  



[\(view code\)](<./Strings.hx#L2122>)


### Reader function writeTo


```haxe
function writeTo( _w:stdgo.io.Writer):{_1:stdgo.Error, _0:stdgo.GoInt64}
```


WriteTo implements the io.WriterTo interface.  



[\(view code\)](<./Strings.hx#L2078>)


## class Replacer


Replacer replaces a list of strings with replacements.  
It is safe for concurrent use by multiple goroutines.  



```haxe
var _oldnew:stdgo.Slice<stdgo.GoString>
```


```haxe
var _once:stdgo.sync.Once
```


```haxe
var _r:stdgo.strings._Strings.T_replacer
```


### Replacer function new


```haxe
function new(?_once:stdgo.sync.Once, ?_r:Null<stdgo.strings._Strings.T_replacer>, ?_oldnew:stdgo.Slice<stdgo.GoString>):Void
```





[\(view code\)](<./Strings.hx#L114>)


### Replacer function \_build


```haxe
function _build():stdgo.strings._Strings.T_replacer
```





[\(view code\)](<./Strings.hx#L2284>)


### Replacer function \_buildOnce


```haxe
function _buildOnce():Void
```





[\(view code\)](<./Strings.hx#L2331>)


### Replacer function printTrie


```haxe
function printTrie():stdgo.GoString
```





[\(view code\)](<./Strings.hx#L2336>)


### Replacer function replace


```haxe
function replace( _s:stdgo.GoString):stdgo.GoString
```


Replace returns a copy of s with all replacements performed.  



[\(view code\)](<./Strings.hx#L2279>)


### Replacer function replacer


```haxe
function replacer():stdgo.AnyInterface
```





[\(view code\)](<./Strings.hx#L2342>)


### Replacer function writeString


```haxe
function writeString( _w:stdgo.io.Writer, _s:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.GoInt}
```


WriteString writes s to w with all replacements performed.  



[\(view code\)](<./Strings.hx#L2270>)


## class T\_fieldsFunc\_0\_\_\_localname\_\_\_span


A span is used to record a slice of s of the form s\[start:end\].  
The start index is inclusive and the end index is exclusive.  



```haxe
var _end:stdgo.GoInt
```


```haxe
var _start:stdgo.GoInt
```


### T\_fieldsFunc\_0\_\_\_localname\_\_\_span function new


```haxe
function new(?_start:Null<stdgo.GoInt>, ?_end:Null<stdgo.GoInt>):Void
```





[\(view code\)](<./Strings.hx#L927>)


