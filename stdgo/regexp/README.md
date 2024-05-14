# Module: `stdgo.regexp`

[(view library index)](../stdgo.md)


# Overview


# Index


- [class Regexp](<#class-regexp>)

  - [`function benchmarkAnchoredLiteralLongNonMatch(b:stdgo._internal.testing.B):Void`](<#regexp-function-benchmarkanchoredliterallongnonmatch>)

  - [`function benchmarkAnchoredLiteralShortNonMatch(b:stdgo._internal.testing.B):Void`](<#regexp-function-benchmarkanchoredliteralshortnonmatch>)

  - [`function benchmarkAnchoredLongMatch(b:stdgo._internal.testing.B):Void`](<#regexp-function-benchmarkanchoredlongmatch>)

  - [`function benchmarkAnchoredShortMatch(b:stdgo._internal.testing.B):Void`](<#regexp-function-benchmarkanchoredshortmatch>)

  - [`function benchmarkCompile(b:stdgo._internal.testing.B):Void`](<#regexp-function-benchmarkcompile>)

  - [`function benchmarkFind(b:stdgo._internal.testing.B):Void`](<#regexp-function-benchmarkfind>)

  - [`function benchmarkFindAllNoMatches(b:stdgo._internal.testing.B):Void`](<#regexp-function-benchmarkfindallnomatches>)

  - [`function benchmarkFindString(b:stdgo._internal.testing.B):Void`](<#regexp-function-benchmarkfindstring>)

  - [`function benchmarkFindStringSubmatch(b:stdgo._internal.testing.B):Void`](<#regexp-function-benchmarkfindstringsubmatch>)

  - [`function benchmarkFindSubmatch(b:stdgo._internal.testing.B):Void`](<#regexp-function-benchmarkfindsubmatch>)

  - [`function benchmarkLiteral(b:stdgo._internal.testing.B):Void`](<#regexp-function-benchmarkliteral>)

  - [`function benchmarkMatch(b:stdgo._internal.testing.B):Void`](<#regexp-function-benchmarkmatch>)

  - [`function benchmarkMatchClass(b:stdgo._internal.testing.B):Void`](<#regexp-function-benchmarkmatchclass>)

  - [`function benchmarkMatchClass_InRange(b:stdgo._internal.testing.B):Void`](<#regexp-function-benchmarkmatchclass_inrange>)

  - [`function benchmarkMatchParallelCopied(b:stdgo._internal.testing.B):Void`](<#regexp-function-benchmarkmatchparallelcopied>)

  - [`function benchmarkMatchParallelShared(b:stdgo._internal.testing.B):Void`](<#regexp-function-benchmarkmatchparallelshared>)

  - [`function benchmarkMatch_onepass_regex(b:stdgo._internal.testing.B):Void`](<#regexp-function-benchmarkmatch_onepass_regex>)

  - [`function benchmarkNotLiteral(b:stdgo._internal.testing.B):Void`](<#regexp-function-benchmarknotliteral>)

  - [`function benchmarkNotOnePassShortA(b:stdgo._internal.testing.B):Void`](<#regexp-function-benchmarknotonepassshorta>)

  - [`function benchmarkNotOnePassShortB(b:stdgo._internal.testing.B):Void`](<#regexp-function-benchmarknotonepassshortb>)

  - [`function benchmarkOnePassLongNotPrefix(b:stdgo._internal.testing.B):Void`](<#regexp-function-benchmarkonepasslongnotprefix>)

  - [`function benchmarkOnePassLongPrefix(b:stdgo._internal.testing.B):Void`](<#regexp-function-benchmarkonepasslongprefix>)

  - [`function benchmarkOnePassShortA(b:stdgo._internal.testing.B):Void`](<#regexp-function-benchmarkonepassshorta>)

  - [`function benchmarkOnePassShortB(b:stdgo._internal.testing.B):Void`](<#regexp-function-benchmarkonepassshortb>)

  - [`function benchmarkQuoteMetaAll(b:stdgo._internal.testing.B):Void`](<#regexp-function-benchmarkquotemetaall>)

  - [`function benchmarkQuoteMetaNone(b:stdgo._internal.testing.B):Void`](<#regexp-function-benchmarkquotemetanone>)

  - [`function benchmarkReplaceAll(b:stdgo._internal.testing.B):Void`](<#regexp-function-benchmarkreplaceall>)

  - [`function compile(expr:String):stdgo.Tuple<stdgo.regexp.Regexp_, stdgo.Error>`](<#regexp-function-compile>)

  - [`function compilePOSIX(expr:String):stdgo.Tuple<stdgo.regexp.Regexp_, stdgo.Error>`](<#regexp-function-compileposix>)

  - [`function match(pattern:String, b:Array<Int>):stdgo.Tuple<Bool, stdgo.Error>`](<#regexp-function-match>)

  - [`function matchReader(pattern:String, r:stdgo._internal.io.RuneReader):stdgo.Tuple<Bool, stdgo.Error>`](<#regexp-function-matchreader>)

  - [`function matchString(pattern:String, s:String):stdgo.Tuple<Bool, stdgo.Error>`](<#regexp-function-matchstring>)

  - [`function mustCompile(str:String):stdgo.regexp.Regexp_`](<#regexp-function-mustcompile>)

  - [`function mustCompilePOSIX(str:String):stdgo.regexp.Regexp_`](<#regexp-function-mustcompileposix>)

  - [`function quoteMeta(s:String):String`](<#regexp-function-quotemeta>)

  - [`function testBadCompile(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testbadcompile>)

  - [`function testCompileOnePass(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testcompileonepass>)

  - [`function testCopyMatch(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testcopymatch>)

  - [`function testDeepEqual(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testdeepequal>)

  - [`function testFind(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testfind>)

  - [`function testFindAll(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testfindall>)

  - [`function testFindAllIndex(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testfindallindex>)

  - [`function testFindAllString(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testfindallstring>)

  - [`function testFindAllStringIndex(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testfindallstringindex>)

  - [`function testFindAllStringSubmatch(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testfindallstringsubmatch>)

  - [`function testFindAllStringSubmatchIndex(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testfindallstringsubmatchindex>)

  - [`function testFindAllSubmatch(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testfindallsubmatch>)

  - [`function testFindAllSubmatchIndex(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testfindallsubmatchindex>)

  - [`function testFindIndex(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testfindindex>)

  - [`function testFindReaderIndex(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testfindreaderindex>)

  - [`function testFindReaderSubmatchIndex(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testfindreadersubmatchindex>)

  - [`function testFindString(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testfindstring>)

  - [`function testFindStringIndex(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testfindstringindex>)

  - [`function testFindStringSubmatch(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testfindstringsubmatch>)

  - [`function testFindStringSubmatchIndex(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testfindstringsubmatchindex>)

  - [`function testFindSubmatch(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testfindsubmatch>)

  - [`function testFindSubmatchIndex(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testfindsubmatchindex>)

  - [`function testFowler(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testfowler>)

  - [`function testGoodCompile(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testgoodcompile>)

  - [`function testLiteralPrefix(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testliteralprefix>)

  - [`function testLongest(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testlongest>)

  - [`function testMatch(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testmatch>)

  - [`function testMatchFunction(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testmatchfunction>)

  - [`function testMergeRuneSet(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testmergeruneset>)

  - [`function testMinInputLen(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testmininputlen>)

  - [`function testOnePassCutoff(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testonepasscutoff>)

  - [`function testParseAndCompile(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testparseandcompile>)

  - [`function testProgramTooLongForBacktrack(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testprogramtoolongforbacktrack>)

  - [`function testQuoteMeta(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testquotemeta>)

  - [`function testRE2Exhaustive(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testre2exhaustive>)

  - [`function testRE2Search(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testre2search>)

  - [`function testReplaceAll(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testreplaceall>)

  - [`function testReplaceAllFunc(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testreplaceallfunc>)

  - [`function testReplaceAllLiteral(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testreplaceallliteral>)

  - [`function testRunOnePass(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testrunonepass>)

  - [`function testSplit(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testsplit>)

  - [`function testSubexp(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testsubexp>)

  - [`function testSwitchBacktrack(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testswitchbacktrack>)

  - [`function testUnmarshalText(t:stdgo._internal.testing.T_):Void`](<#regexp-function-testunmarshaltext>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

- [typedef T\_\_struct\_3](<#typedef-t__struct_3>)

- [typedef T\_\_struct\_4](<#typedef-t__struct_4>)

- [typedef T\_\_struct\_5](<#typedef-t__struct_5>)

- [typedef T\_\_struct\_6](<#typedef-t__struct_6>)

- [typedef T\_\_struct\_7](<#typedef-t__struct_7>)

- [typedef T\_input](<#typedef-t_input>)

- [typedef T\_lazyFlag](<#typedef-t_lazyflag>)

- [typedef T\_runeSlice](<#typedef-t_runeslice>)

- [abstract T\_stringError](<#abstract-t_stringerror>)

- [abstract ReplaceTest](<#abstract-replacetest>)

- [abstract ReplaceFuncTest](<#abstract-replacefunctest>)

- [abstract MetaTest](<#abstract-metatest>)

- [abstract T\_subexpIndex](<#abstract-t_subexpindex>)

- [abstract T\_subexpCase](<#abstract-t_subexpcase>)

- [abstract T\_job](<#abstract-t_job>)

- [abstract T\_bitState](<#abstract-t_bitstate>)

- [abstract T\_queue](<#abstract-t_queue>)

- [abstract T\_entry](<#abstract-t_entry>)

- [abstract T\_thread](<#abstract-t_thread>)

- [abstract T\_machine](<#abstract-t_machine>)

- [abstract T\_inputs](<#abstract-t_inputs>)

- [abstract T\_onePassMachine](<#abstract-t_onepassmachine>)

- [abstract FindTest](<#abstract-findtest>)

- [abstract T\_onePassProg](<#abstract-t_onepassprog>)

- [abstract T\_onePassInst](<#abstract-t_onepassinst>)

- [abstract T\_queueOnePass](<#abstract-t_queueonepass>)

- [abstract Regexp\_](<#abstract-regexp_>)

- [abstract T\_inputString](<#abstract-t_inputstring>)

- [abstract T\_inputBytes](<#abstract-t_inputbytes>)

- [abstract T\_inputReader](<#abstract-t_inputreader>)

# Classes


```haxe
import
```


## class Regexp



Package regexp implements regular expression search.  


The syntax of the regular expressions accepted is the same
general syntax used by Perl, Python, and other languages.
More precisely, it is the syntax accepted by RE2 and described at
https://golang.org/s/re2syntax, except for \\C.
For an overview of the syntax, run  

```
    	go doc regexp/syntax
```

The regexp implementation provided by this package is
guaranteed to run in time linear in the size of the input.
\(This is a property not guaranteed by most open source
implementations of regular expressions.\) For more information
about this property, see  

```
    	https://swtch.com/~rsc/regexp/regexp1.html
```

or any book about automata theory.  


All characters are UTF\-8\-encoded code points.
Following utf8.DecodeRune, each byte of an invalid UTF\-8 sequence
is treated as if it encoded utf8.RuneError \(U\+FFFD\).  


There are 16 methods of Regexp that match a regular expression and identify
the matched text. Their names are matched by this regular expression:  

```
    	Find(All)?(String)?(Submatch)?(Index)?
```

If 'All' is present, the routine matches successive non\-overlapping
matches of the entire expression. Empty matches abutting a preceding
match are ignored. The return value is a slice containing the successive
return values of the corresponding non\-'All' routine. These routines take
an extra integer argument, n. If n \>= 0, the function returns at most n
matches/submatches; otherwise, it returns all of them.  


If 'String' is present, the argument is a string; otherwise it is a slice
of bytes; return values are adjusted as appropriate.  


If 'Submatch' is present, the return value is a slice identifying the
successive submatches of the expression. Submatches are matches of
parenthesized subexpressions \(also known as capturing groups\) within the
regular expression, numbered from left to right in order of opening
parenthesis. Submatch 0 is the match of the entire expression, submatch 1 is
the match of the first parenthesized subexpression, and so on.  


If 'Index' is present, matches and submatches are identified by byte index
pairs within the input string: result\[2\*n:2\*n\+2\] identifies the indexes of
the nth submatch. The pair for n==0 identifies the match of the entire
expression. If 'Index' is not present, the match is identified by the text
of the match/submatch. If an index is negative or text is nil, it means that
subexpression did not match any string in the input. For 'String' versions
an empty string means either no match or an empty match.  


There is also a subset of the methods that can be applied to text read
from a RuneReader:  

```
    	MatchReader, FindReaderIndex, FindReaderSubmatchIndex
```

This set may grow. Note that regular expression matches may need to
examine text beyond the text returned by a match, so the methods that
match text from a RuneReader may read arbitrarily far into the input
before returning.  


\(There are a few other methods that do not match this pattern.\)  

### Regexp function benchmarkAnchoredLiteralLongNonMatch


```haxe
function benchmarkAnchoredLiteralLongNonMatch(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L1193>)


### Regexp function benchmarkAnchoredLiteralShortNonMatch


```haxe
function benchmarkAnchoredLiteralShortNonMatch(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L1190>)


### Regexp function benchmarkAnchoredLongMatch


```haxe
function benchmarkAnchoredLongMatch(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L1199>)


### Regexp function benchmarkAnchoredShortMatch


```haxe
function benchmarkAnchoredShortMatch(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L1196>)


### Regexp function benchmarkCompile


```haxe
function benchmarkCompile(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L1232>)


### Regexp function benchmarkFind


```haxe
function benchmarkFind(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L1160>)


### Regexp function benchmarkFindAllNoMatches


```haxe
function benchmarkFindAllNoMatches(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L1163>)


### Regexp function benchmarkFindString


```haxe
function benchmarkFindString(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L1166>)


### Regexp function benchmarkFindStringSubmatch


```haxe
function benchmarkFindStringSubmatch(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L1172>)


### Regexp function benchmarkFindSubmatch


```haxe
function benchmarkFindSubmatch(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L1169>)


### Regexp function benchmarkLiteral


```haxe
function benchmarkLiteral(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L1175>)


### Regexp function benchmarkMatch


```haxe
function benchmarkMatch(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L1307>)


### Regexp function benchmarkMatchClass


```haxe
function benchmarkMatchClass(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L1181>)


### Regexp function benchmarkMatchClass\_InRange


```haxe
function benchmarkMatchClass_InRange(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L1184>)


### Regexp function benchmarkMatchParallelCopied


```haxe
function benchmarkMatchParallelCopied(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L1223>)


### Regexp function benchmarkMatchParallelShared


```haxe
function benchmarkMatchParallelShared(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L1220>)


### Regexp function benchmarkMatch\_onepass\_regex


```haxe
function benchmarkMatch_onepass_regex(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L1310>)


### Regexp function benchmarkNotLiteral


```haxe
function benchmarkNotLiteral(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L1178>)


### Regexp function benchmarkNotOnePassShortA


```haxe
function benchmarkNotOnePassShortA(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L1205>)


### Regexp function benchmarkNotOnePassShortB


```haxe
function benchmarkNotOnePassShortB(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L1211>)


### Regexp function benchmarkOnePassLongNotPrefix


```haxe
function benchmarkOnePassLongNotPrefix(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L1217>)


### Regexp function benchmarkOnePassLongPrefix


```haxe
function benchmarkOnePassLongPrefix(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L1214>)


### Regexp function benchmarkOnePassShortA


```haxe
function benchmarkOnePassShortA(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L1202>)


### Regexp function benchmarkOnePassShortB


```haxe
function benchmarkOnePassShortB(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L1208>)


### Regexp function benchmarkQuoteMetaAll


```haxe
function benchmarkQuoteMetaAll(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L1226>)


### Regexp function benchmarkQuoteMetaNone


```haxe
function benchmarkQuoteMetaNone(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L1229>)


### Regexp function benchmarkReplaceAll


```haxe
function benchmarkReplaceAll(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L1187>)


### Regexp function compile


```haxe
function compile(expr:String):stdgo.Tuple<stdgo.regexp.Regexp_, stdgo.Error>
```


```
Compile parses a regular expression and returns, if successful,
        a Regexp object that can be used to match against text.
```

When matching against text, the regexp returns a match that
begins as early as possible in the input \(leftmost\), and among those
it chooses the one that a backtracking search would have found first.
This so\-called leftmost\-first matching is the same semantics
that Perl, Python, and other implementations use, although this
package implements it without the expense of backtracking.
For POSIX leftmost\-longest matching, see CompilePOSIX.  

[\(view code\)](<./Regexp.hx#L1398>)


### Regexp function compilePOSIX


```haxe
function compilePOSIX(expr:String):stdgo.Tuple<stdgo.regexp.Regexp_, stdgo.Error>
```


```
CompilePOSIX is like Compile but restricts the regular expression
        to POSIX ERE (egrep) syntax and changes the match semantics to
        leftmost-longest.
```

That is, when matching against text, the regexp returns a match that
begins as early as possible in the input \(leftmost\), and among those
it chooses a match that is as long as possible.
This so\-called leftmost\-longest matching is the same semantics
that early regular expression implementations used and that POSIX
specifies.  


However, there can be multiple leftmost\-longest matches, with different
submatch choices, and here this package diverges from POSIX.
Among the possible leftmost\-longest matches, this package chooses
the one that a backtracking search would have found first, while POSIX
specifies that the match be chosen to maximize the length of the first
subexpression, then the second, and so on from left to right.
The POSIX rule is computationally prohibitive and not even well\-defined.
See https://swtch.com/~rsc/regexp/regexp2.html#posix for details.  

[\(view code\)](<./Regexp.hx#L1425>)


### Regexp function match


```haxe
function match(pattern:String, b:Array<Int>):stdgo.Tuple<Bool, stdgo.Error>
```


```
Match reports whether the byte slice b
        contains any match of the regular expression pattern.
        More complicated queries need to use Compile and the full Regexp interface.
```
[\(view code\)](<./Regexp.hx#L1474>)


### Regexp function matchReader


```haxe
function matchReader(pattern:String, r:stdgo._internal.io.RuneReader):stdgo.Tuple<Bool, stdgo.Error>
```


```
MatchReader reports whether the text returned by the RuneReader
        contains any match of the regular expression pattern.
        More complicated queries need to use Compile and the full Regexp interface.
```
[\(view code\)](<./Regexp.hx#L1452>)


### Regexp function matchString


```haxe
function matchString(pattern:String, s:String):stdgo.Tuple<Bool, stdgo.Error>
```


```
MatchString reports whether the string s
        contains any match of the regular expression pattern.
        More complicated queries need to use Compile and the full Regexp interface.
```
[\(view code\)](<./Regexp.hx#L1463>)


### Regexp function mustCompile


```haxe
function mustCompile(str:String):stdgo.regexp.Regexp_
```


```
MustCompile is like Compile but panics if the expression cannot be parsed.
        It simplifies safe initialization of global variables holding compiled regular
        expressions.
```
[\(view code\)](<./Regexp.hx#L1436>)


### Regexp function mustCompilePOSIX


```haxe
function mustCompilePOSIX(str:String):stdgo.regexp.Regexp_
```


```
MustCompilePOSIX is like CompilePOSIX but panics if the expression cannot be parsed.
        It simplifies safe initialization of global variables holding compiled regular
        expressions.
```
[\(view code\)](<./Regexp.hx#L1444>)


### Regexp function quoteMeta


```haxe
function quoteMeta(s:String):String
```


```
QuoteMeta returns a string that escapes all regular expression metacharacters
        inside the argument text; the returned string is a regular expression matching
        the literal text.
```
[\(view code\)](<./Regexp.hx#L1486>)


### Regexp function testBadCompile


```haxe
function testBadCompile(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1108>)


### Regexp function testCompileOnePass


```haxe
function testCompileOnePass(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1380>)


### Regexp function testCopyMatch


```haxe
function testCopyMatch(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1117>)


### Regexp function testDeepEqual


```haxe
function testDeepEqual(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1235>)


### Regexp function testFind


```haxe
function testFind(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1323>)


### Regexp function testFindAll


```haxe
function testFindAll(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1338>)


### Regexp function testFindAllIndex


```haxe
function testFindAllIndex(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1344>)


### Regexp function testFindAllString


```haxe
function testFindAllString(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1341>)


### Regexp function testFindAllStringIndex


```haxe
function testFindAllStringIndex(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1347>)


### Regexp function testFindAllStringSubmatch


```haxe
function testFindAllStringSubmatch(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1368>)


### Regexp function testFindAllStringSubmatchIndex


```haxe
function testFindAllStringSubmatchIndex(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1374>)


### Regexp function testFindAllSubmatch


```haxe
function testFindAllSubmatch(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1365>)


### Regexp function testFindAllSubmatchIndex


```haxe
function testFindAllSubmatchIndex(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1371>)


### Regexp function testFindIndex


```haxe
function testFindIndex(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1329>)


### Regexp function testFindReaderIndex


```haxe
function testFindReaderIndex(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1335>)


### Regexp function testFindReaderSubmatchIndex


```haxe
function testFindReaderSubmatchIndex(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1362>)


### Regexp function testFindString


```haxe
function testFindString(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1326>)


### Regexp function testFindStringIndex


```haxe
function testFindStringIndex(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1332>)


### Regexp function testFindStringSubmatch


```haxe
function testFindStringSubmatch(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1353>)


### Regexp function testFindStringSubmatchIndex


```haxe
function testFindStringSubmatchIndex(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1359>)


### Regexp function testFindSubmatch


```haxe
function testFindSubmatch(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1350>)


### Regexp function testFindSubmatchIndex


```haxe
function testFindSubmatchIndex(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1356>)


### Regexp function testFowler


```haxe
function testFowler(t:stdgo._internal.testing.T_):Void
```


```
TestFowler runs this package's regexp API against the
        POSIX regular expression tests collected by Glenn Fowler
        at http://www2.research.att.com/~astopen/testregex/testregex.html.
```
[\(view code\)](<./Regexp.hx#L1304>)


### Regexp function testGoodCompile


```haxe
function testGoodCompile(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1105>)


### Regexp function testLiteralPrefix


```haxe
function testLiteralPrefix(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1132>)


### Regexp function testLongest


```haxe
function testLongest(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1313>)


### Regexp function testMatch


```haxe
function testMatch(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1111>)


### Regexp function testMatchFunction


```haxe
function testMatchFunction(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1114>)


### Regexp function testMergeRuneSet


```haxe
function testMergeRuneSet(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1377>)


### Regexp function testMinInputLen


```haxe
function testMinInputLen(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1238>)


### Regexp function testOnePassCutoff


```haxe
function testOnePassCutoff(t:stdgo._internal.testing.T_):Void
```



Check that one\-pass cutoff does trigger.  

[\(view code\)](<./Regexp.hx#L1150>)


### Regexp function testParseAndCompile


```haxe
function testParseAndCompile(t:stdgo._internal.testing.T_):Void
```



The following sequence of Match calls used to panic. See issue \#12980.  

[\(view code\)](<./Regexp.hx#L1144>)


### Regexp function testProgramTooLongForBacktrack


```haxe
function testProgramTooLongForBacktrack(t:stdgo._internal.testing.T_):Void
```


```
TestProgramTooLongForBacktrack tests that a regex which is too long
        for the backtracker still executes properly.
```
[\(view code\)](<./Regexp.hx#L1320>)


### Regexp function testQuoteMeta


```haxe
function testQuoteMeta(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1129>)


### Regexp function testRE2Exhaustive


```haxe
function testRE2Exhaustive(t:stdgo._internal.testing.T_):Void
```


```
This test is excluded when running under the race detector because
        it is a very expensive test and takes too long.
```
[\(view code\)](<./Regexp.hx#L1248>)


### Regexp function testRE2Search


```haxe
function testRE2Search(t:stdgo._internal.testing.T_):Void
```


```
TestRE2 tests this package's regexp API against test cases
        considered during RE2's exhaustive tests, which run all possible
        regexps over a given set of atoms and operators, up to a given
        complexity, over all possible strings over a given alphabet,
        up to a given size. Rather than try to link with RE2, we read a
        log file containing the test cases and the expected matches.
        The log file, re2-exhaustive.txt, is generated by running 'make log'
        in the open source RE2 distribution https://github.com/google/re2/.
```

The test file format is a sequence of stanzas like:  

```
        	strings
        	"abc"
        	"123x"
        	regexps
        	"[a-z]+"
        	0-3;0-3
        	-;-
        	"([0-9])([0-9])([0-9])"
        	-;-
        	-;0-3 0-1 1-2 2-3
```

The stanza begins by defining a set of strings, quoted
using Go double\-quote syntax, one per line. Then the
regexps section gives a sequence of regexps to run on
the strings. In the block that follows a regexp, each line
gives the semicolon\-separated match results of running
the regexp on the corresponding string.
Each match result is either a single \-, meaning no match, or a
space\-separated sequence of pairs giving the match and
submatch indices. An unmatched subexpression formats
its pair as a single \- \(not illustrated above\).  For now
each regexp run produces two match results, one for a
“full match” that restricts the regexp to matching the entire
string or nothing, and one for a “partial match” that gives
the leftmost first match found in the string.  


Lines beginning with \# are comments. Lines beginning with
a capital letter are test names printed during RE2's test suite
and are echoed into t but otherwise ignored.  


At time of writing, re2\-exhaustive.txt is 59 MB but compresses to 385 kB,
so we store re2\-exhaustive.txt.bz2 in the repository and decompress it on the fly.  

[\(view code\)](<./Regexp.hx#L1296>)


### Regexp function testReplaceAll


```haxe
function testReplaceAll(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1120>)


### Regexp function testReplaceAllFunc


```haxe
function testReplaceAllFunc(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1126>)


### Regexp function testReplaceAllLiteral


```haxe
function testReplaceAllLiteral(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1123>)


### Regexp function testRunOnePass


```haxe
function testRunOnePass(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1383>)


### Regexp function testSplit


```haxe
function testSplit(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1138>)


### Regexp function testSubexp


```haxe
function testSubexp(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1135>)


### Regexp function testSwitchBacktrack


```haxe
function testSwitchBacktrack(t:stdgo._internal.testing.T_):Void
```


```
Check that the same machine can be used with the standard matcher
        and then the backtracker when there are no captures.
```
[\(view code\)](<./Regexp.hx#L1157>)


### Regexp function testUnmarshalText


```haxe
function testUnmarshalText(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L1241>)


# Typedefs


```haxe
import
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.regexp.T__struct_0;
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = stdgo._internal.regexp.T__struct_1;
```


## typedef T\_\_struct\_2


```haxe
typedef T__struct_2 = stdgo._internal.regexp.T__struct_2;
```


## typedef T\_\_struct\_3


```haxe
typedef T__struct_3 = stdgo._internal.regexp.T__struct_3;
```


## typedef T\_\_struct\_4


```haxe
typedef T__struct_4 = stdgo._internal.regexp.T__struct_4;
```


## typedef T\_\_struct\_5


```haxe
typedef T__struct_5 = stdgo._internal.regexp.T__struct_5;
```


## typedef T\_\_struct\_6


```haxe
typedef T__struct_6 = stdgo._internal.regexp.T__struct_6;
```


## typedef T\_\_struct\_7


```haxe
typedef T__struct_7 = stdgo._internal.regexp.T__struct_7;
```


## typedef T\_input


```haxe
typedef T_input = stdgo._internal.regexp.T_input;
```


## typedef T\_lazyFlag


```haxe
typedef T_lazyFlag = stdgo._internal.regexp.T_lazyFlag;
```


## typedef T\_runeSlice


```haxe
typedef T_runeSlice = stdgo._internal.regexp.T_runeSlice;
```


# Abstracts


## abstract T\_stringError


[\(view file containing code\)](<./Regexp.hx>)


## abstract ReplaceTest


[\(view file containing code\)](<./Regexp.hx>)


## abstract ReplaceFuncTest


[\(view file containing code\)](<./Regexp.hx>)


## abstract MetaTest


[\(view file containing code\)](<./Regexp.hx>)


## abstract T\_subexpIndex


[\(view file containing code\)](<./Regexp.hx>)


## abstract T\_subexpCase


[\(view file containing code\)](<./Regexp.hx>)


## abstract T\_job


[\(view file containing code\)](<./Regexp.hx>)


## abstract T\_bitState


[\(view file containing code\)](<./Regexp.hx>)


## abstract T\_queue


[\(view file containing code\)](<./Regexp.hx>)


## abstract T\_entry


[\(view file containing code\)](<./Regexp.hx>)


## abstract T\_thread


[\(view file containing code\)](<./Regexp.hx>)


## abstract T\_machine


[\(view file containing code\)](<./Regexp.hx>)


## abstract T\_inputs


[\(view file containing code\)](<./Regexp.hx>)


## abstract T\_onePassMachine


[\(view file containing code\)](<./Regexp.hx>)


## abstract FindTest


[\(view file containing code\)](<./Regexp.hx>)


## abstract T\_onePassProg


[\(view file containing code\)](<./Regexp.hx>)


## abstract T\_onePassInst


[\(view file containing code\)](<./Regexp.hx>)


## abstract T\_queueOnePass


[\(view file containing code\)](<./Regexp.hx>)


## abstract Regexp\_


[\(view file containing code\)](<./Regexp.hx>)


## abstract T\_inputString


[\(view file containing code\)](<./Regexp.hx>)


## abstract T\_inputBytes


[\(view file containing code\)](<./Regexp.hx>)


## abstract T\_inputReader


[\(view file containing code\)](<./Regexp.hx>)


