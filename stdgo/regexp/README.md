# Module: `stdgo.regexp`

[(view library index)](../stdgo.md)


# Overview



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

# Index


- [`function benchmarkAnchoredLiteralLongNonMatch(b:stdgo._internal.testing.B):Void`](<#function-benchmarkanchoredliterallongnonmatch>)

- [`function benchmarkAnchoredLiteralShortNonMatch(b:stdgo._internal.testing.B):Void`](<#function-benchmarkanchoredliteralshortnonmatch>)

- [`function benchmarkAnchoredLongMatch(b:stdgo._internal.testing.B):Void`](<#function-benchmarkanchoredlongmatch>)

- [`function benchmarkAnchoredShortMatch(b:stdgo._internal.testing.B):Void`](<#function-benchmarkanchoredshortmatch>)

- [`function benchmarkCompile(b:stdgo._internal.testing.B):Void`](<#function-benchmarkcompile>)

- [`function benchmarkFind(b:stdgo._internal.testing.B):Void`](<#function-benchmarkfind>)

- [`function benchmarkFindAllNoMatches(b:stdgo._internal.testing.B):Void`](<#function-benchmarkfindallnomatches>)

- [`function benchmarkFindString(b:stdgo._internal.testing.B):Void`](<#function-benchmarkfindstring>)

- [`function benchmarkFindStringSubmatch(b:stdgo._internal.testing.B):Void`](<#function-benchmarkfindstringsubmatch>)

- [`function benchmarkFindSubmatch(b:stdgo._internal.testing.B):Void`](<#function-benchmarkfindsubmatch>)

- [`function benchmarkLiteral(b:stdgo._internal.testing.B):Void`](<#function-benchmarkliteral>)

- [`function benchmarkMatch(b:stdgo._internal.testing.B):Void`](<#function-benchmarkmatch>)

- [`function benchmarkMatchClass(b:stdgo._internal.testing.B):Void`](<#function-benchmarkmatchclass>)

- [`function benchmarkMatchClass_InRange(b:stdgo._internal.testing.B):Void`](<#function-benchmarkmatchclass_inrange>)

- [`function benchmarkMatchParallelCopied(b:stdgo._internal.testing.B):Void`](<#function-benchmarkmatchparallelcopied>)

- [`function benchmarkMatchParallelShared(b:stdgo._internal.testing.B):Void`](<#function-benchmarkmatchparallelshared>)

- [`function benchmarkMatch_onepass_regex(b:stdgo._internal.testing.B):Void`](<#function-benchmarkmatch_onepass_regex>)

- [`function benchmarkNotLiteral(b:stdgo._internal.testing.B):Void`](<#function-benchmarknotliteral>)

- [`function benchmarkNotOnePassShortA(b:stdgo._internal.testing.B):Void`](<#function-benchmarknotonepassshorta>)

- [`function benchmarkNotOnePassShortB(b:stdgo._internal.testing.B):Void`](<#function-benchmarknotonepassshortb>)

- [`function benchmarkOnePassLongNotPrefix(b:stdgo._internal.testing.B):Void`](<#function-benchmarkonepasslongnotprefix>)

- [`function benchmarkOnePassLongPrefix(b:stdgo._internal.testing.B):Void`](<#function-benchmarkonepasslongprefix>)

- [`function benchmarkOnePassShortA(b:stdgo._internal.testing.B):Void`](<#function-benchmarkonepassshorta>)

- [`function benchmarkOnePassShortB(b:stdgo._internal.testing.B):Void`](<#function-benchmarkonepassshortb>)

- [`function benchmarkQuoteMetaAll(b:stdgo._internal.testing.B):Void`](<#function-benchmarkquotemetaall>)

- [`function benchmarkQuoteMetaNone(b:stdgo._internal.testing.B):Void`](<#function-benchmarkquotemetanone>)

- [`function benchmarkReplaceAll(b:stdgo._internal.testing.B):Void`](<#function-benchmarkreplaceall>)

- [`function compile(expr:String):stdgo.Tuple<stdgo.regexp.Regexp, stdgo.Error>`](<#function-compile>)

- [`function compilePOSIX(expr:String):stdgo.Tuple<stdgo.regexp.Regexp, stdgo.Error>`](<#function-compileposix>)

- [`function match(pattern:String, b:Array<Int>):stdgo.Tuple<Bool, stdgo.Error>`](<#function-match>)

- [`function matchReader(pattern:String, r:stdgo._internal.io.RuneReader):stdgo.Tuple<Bool, stdgo.Error>`](<#function-matchreader>)

- [`function matchString(pattern:String, s:String):stdgo.Tuple<Bool, stdgo.Error>`](<#function-matchstring>)

- [`function mustCompile(str:String):stdgo.regexp.Regexp`](<#function-mustcompile>)

- [`function mustCompilePOSIX(str:String):stdgo.regexp.Regexp`](<#function-mustcompileposix>)

- [`function quoteMeta(s:String):String`](<#function-quotemeta>)

- [`function testBadCompile(t:stdgo._internal.testing.T_):Void`](<#function-testbadcompile>)

- [`function testCompileOnePass(t:stdgo._internal.testing.T_):Void`](<#function-testcompileonepass>)

- [`function testCopyMatch(t:stdgo._internal.testing.T_):Void`](<#function-testcopymatch>)

- [`function testDeepEqual(t:stdgo._internal.testing.T_):Void`](<#function-testdeepequal>)

- [`function testFind(t:stdgo._internal.testing.T_):Void`](<#function-testfind>)

- [`function testFindAll(t:stdgo._internal.testing.T_):Void`](<#function-testfindall>)

- [`function testFindAllIndex(t:stdgo._internal.testing.T_):Void`](<#function-testfindallindex>)

- [`function testFindAllString(t:stdgo._internal.testing.T_):Void`](<#function-testfindallstring>)

- [`function testFindAllStringIndex(t:stdgo._internal.testing.T_):Void`](<#function-testfindallstringindex>)

- [`function testFindAllStringSubmatch(t:stdgo._internal.testing.T_):Void`](<#function-testfindallstringsubmatch>)

- [`function testFindAllStringSubmatchIndex(t:stdgo._internal.testing.T_):Void`](<#function-testfindallstringsubmatchindex>)

- [`function testFindAllSubmatch(t:stdgo._internal.testing.T_):Void`](<#function-testfindallsubmatch>)

- [`function testFindAllSubmatchIndex(t:stdgo._internal.testing.T_):Void`](<#function-testfindallsubmatchindex>)

- [`function testFindIndex(t:stdgo._internal.testing.T_):Void`](<#function-testfindindex>)

- [`function testFindReaderIndex(t:stdgo._internal.testing.T_):Void`](<#function-testfindreaderindex>)

- [`function testFindReaderSubmatchIndex(t:stdgo._internal.testing.T_):Void`](<#function-testfindreadersubmatchindex>)

- [`function testFindString(t:stdgo._internal.testing.T_):Void`](<#function-testfindstring>)

- [`function testFindStringIndex(t:stdgo._internal.testing.T_):Void`](<#function-testfindstringindex>)

- [`function testFindStringSubmatch(t:stdgo._internal.testing.T_):Void`](<#function-testfindstringsubmatch>)

- [`function testFindStringSubmatchIndex(t:stdgo._internal.testing.T_):Void`](<#function-testfindstringsubmatchindex>)

- [`function testFindSubmatch(t:stdgo._internal.testing.T_):Void`](<#function-testfindsubmatch>)

- [`function testFindSubmatchIndex(t:stdgo._internal.testing.T_):Void`](<#function-testfindsubmatchindex>)

- [`function testFowler(t:stdgo._internal.testing.T_):Void`](<#function-testfowler>)

- [`function testGoodCompile(t:stdgo._internal.testing.T_):Void`](<#function-testgoodcompile>)

- [`function testLiteralPrefix(t:stdgo._internal.testing.T_):Void`](<#function-testliteralprefix>)

- [`function testLongest(t:stdgo._internal.testing.T_):Void`](<#function-testlongest>)

- [`function testMatch(t:stdgo._internal.testing.T_):Void`](<#function-testmatch>)

- [`function testMatchFunction(t:stdgo._internal.testing.T_):Void`](<#function-testmatchfunction>)

- [`function testMergeRuneSet(t:stdgo._internal.testing.T_):Void`](<#function-testmergeruneset>)

- [`function testMinInputLen(t:stdgo._internal.testing.T_):Void`](<#function-testmininputlen>)

- [`function testOnePassCutoff(t:stdgo._internal.testing.T_):Void`](<#function-testonepasscutoff>)

- [`function testParseAndCompile(t:stdgo._internal.testing.T_):Void`](<#function-testparseandcompile>)

- [`function testProgramTooLongForBacktrack(t:stdgo._internal.testing.T_):Void`](<#function-testprogramtoolongforbacktrack>)

- [`function testQuoteMeta(t:stdgo._internal.testing.T_):Void`](<#function-testquotemeta>)

- [`function testRE2Exhaustive(t:stdgo._internal.testing.T_):Void`](<#function-testre2exhaustive>)

- [`function testRE2Search(t:stdgo._internal.testing.T_):Void`](<#function-testre2search>)

- [`function testReplaceAll(t:stdgo._internal.testing.T_):Void`](<#function-testreplaceall>)

- [`function testReplaceAllFunc(t:stdgo._internal.testing.T_):Void`](<#function-testreplaceallfunc>)

- [`function testReplaceAllLiteral(t:stdgo._internal.testing.T_):Void`](<#function-testreplaceallliteral>)

- [`function testRunOnePass(t:stdgo._internal.testing.T_):Void`](<#function-testrunonepass>)

- [`function testSplit(t:stdgo._internal.testing.T_):Void`](<#function-testsplit>)

- [`function testSubexp(t:stdgo._internal.testing.T_):Void`](<#function-testsubexp>)

- [`function testSwitchBacktrack(t:stdgo._internal.testing.T_):Void`](<#function-testswitchbacktrack>)

- [`function testUnmarshalText(t:stdgo._internal.testing.T_):Void`](<#function-testunmarshaltext>)

- [typedef FindTest](<#typedef-findtest>)

- [typedef FindTest\_asInterface](<#typedef-findtest_asinterface>)

- [typedef FindTest\_static\_extension](<#typedef-findtest_static_extension>)

- [typedef MetaTest](<#typedef-metatest>)

- [typedef Regexp](<#typedef-regexp>)

- [typedef Regexp\_asInterface](<#typedef-regexp_asinterface>)

- [typedef Regexp\_static\_extension](<#typedef-regexp_static_extension>)

- [typedef ReplaceFuncTest](<#typedef-replacefunctest>)

- [typedef ReplaceTest](<#typedef-replacetest>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_0\_asInterface](<#typedef-t__struct_0_asinterface>)

- [typedef T\_\_struct\_0\_static\_extension](<#typedef-t__struct_0_static_extension>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_1\_asInterface](<#typedef-t__struct_1_asinterface>)

- [typedef T\_\_struct\_1\_static\_extension](<#typedef-t__struct_1_static_extension>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

- [typedef T\_\_struct\_2\_asInterface](<#typedef-t__struct_2_asinterface>)

- [typedef T\_\_struct\_2\_static\_extension](<#typedef-t__struct_2_static_extension>)

- [typedef T\_\_struct\_3](<#typedef-t__struct_3>)

- [typedef T\_\_struct\_3\_asInterface](<#typedef-t__struct_3_asinterface>)

- [typedef T\_\_struct\_3\_static\_extension](<#typedef-t__struct_3_static_extension>)

- [typedef T\_\_struct\_4](<#typedef-t__struct_4>)

- [typedef T\_\_struct\_4\_asInterface](<#typedef-t__struct_4_asinterface>)

- [typedef T\_\_struct\_4\_static\_extension](<#typedef-t__struct_4_static_extension>)

- [typedef T\_\_struct\_5](<#typedef-t__struct_5>)

- [typedef T\_\_struct\_5\_asInterface](<#typedef-t__struct_5_asinterface>)

- [typedef T\_\_struct\_5\_static\_extension](<#typedef-t__struct_5_static_extension>)

- [typedef T\_\_struct\_6](<#typedef-t__struct_6>)

- [typedef T\_\_struct\_6\_asInterface](<#typedef-t__struct_6_asinterface>)

- [typedef T\_\_struct\_6\_static\_extension](<#typedef-t__struct_6_static_extension>)

- [typedef T\_\_struct\_7](<#typedef-t__struct_7>)

- [typedef T\_\_struct\_7\_asInterface](<#typedef-t__struct_7_asinterface>)

- [typedef T\_\_struct\_7\_static\_extension](<#typedef-t__struct_7_static_extension>)

- [typedef T\_bitState](<#typedef-t_bitstate>)

- [typedef T\_bitState\_asInterface](<#typedef-t_bitstate_asinterface>)

- [typedef T\_bitState\_static\_extension](<#typedef-t_bitstate_static_extension>)

- [typedef T\_entry](<#typedef-t_entry>)

- [typedef T\_input](<#typedef-t_input>)

- [typedef T\_inputBytes](<#typedef-t_inputbytes>)

- [typedef T\_inputBytes\_asInterface](<#typedef-t_inputbytes_asinterface>)

- [typedef T\_inputBytes\_static\_extension](<#typedef-t_inputbytes_static_extension>)

- [typedef T\_inputReader](<#typedef-t_inputreader>)

- [typedef T\_inputReader\_asInterface](<#typedef-t_inputreader_asinterface>)

- [typedef T\_inputReader\_static\_extension](<#typedef-t_inputreader_static_extension>)

- [typedef T\_inputString](<#typedef-t_inputstring>)

- [typedef T\_inputString\_asInterface](<#typedef-t_inputstring_asinterface>)

- [typedef T\_inputString\_static\_extension](<#typedef-t_inputstring_static_extension>)

- [typedef T\_input\_static\_extension](<#typedef-t_input_static_extension>)

- [typedef T\_inputs](<#typedef-t_inputs>)

- [typedef T\_inputs\_asInterface](<#typedef-t_inputs_asinterface>)

- [typedef T\_inputs\_static\_extension](<#typedef-t_inputs_static_extension>)

- [typedef T\_job](<#typedef-t_job>)

- [typedef T\_lazyFlag](<#typedef-t_lazyflag>)

- [typedef T\_lazyFlag\_asInterface](<#typedef-t_lazyflag_asinterface>)

- [typedef T\_lazyFlag\_static\_extension](<#typedef-t_lazyflag_static_extension>)

- [typedef T\_machine](<#typedef-t_machine>)

- [typedef T\_machine\_asInterface](<#typedef-t_machine_asinterface>)

- [typedef T\_machine\_static\_extension](<#typedef-t_machine_static_extension>)

- [typedef T\_onePassInst](<#typedef-t_onepassinst>)

- [typedef T\_onePassInst\_asInterface](<#typedef-t_onepassinst_asinterface>)

- [typedef T\_onePassInst\_static\_extension](<#typedef-t_onepassinst_static_extension>)

- [typedef T\_onePassMachine](<#typedef-t_onepassmachine>)

- [typedef T\_onePassProg](<#typedef-t_onepassprog>)

- [typedef T\_queue](<#typedef-t_queue>)

- [typedef T\_queueOnePass](<#typedef-t_queueonepass>)

- [typedef T\_queueOnePass\_asInterface](<#typedef-t_queueonepass_asinterface>)

- [typedef T\_queueOnePass\_static\_extension](<#typedef-t_queueonepass_static_extension>)

- [typedef T\_runeSlice](<#typedef-t_runeslice>)

- [typedef T\_runeSlice\_asInterface](<#typedef-t_runeslice_asinterface>)

- [typedef T\_runeSlice\_static\_extension](<#typedef-t_runeslice_static_extension>)

- [typedef T\_stringError](<#typedef-t_stringerror>)

- [typedef T\_subexpCase](<#typedef-t_subexpcase>)

- [typedef T\_subexpIndex](<#typedef-t_subexpindex>)

- [typedef T\_thread](<#typedef-t_thread>)

# Functions


```haxe
import stdgo.regexp.Regexp
```


## function benchmarkAnchoredLiteralLongNonMatch


```haxe
function benchmarkAnchoredLiteralLongNonMatch(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L156>)


## function benchmarkAnchoredLiteralShortNonMatch


```haxe
function benchmarkAnchoredLiteralShortNonMatch(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L155>)


## function benchmarkAnchoredLongMatch


```haxe
function benchmarkAnchoredLongMatch(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L158>)


## function benchmarkAnchoredShortMatch


```haxe
function benchmarkAnchoredShortMatch(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L157>)


## function benchmarkCompile


```haxe
function benchmarkCompile(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L169>)


## function benchmarkFind


```haxe
function benchmarkFind(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L145>)


## function benchmarkFindAllNoMatches


```haxe
function benchmarkFindAllNoMatches(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L146>)


## function benchmarkFindString


```haxe
function benchmarkFindString(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L147>)


## function benchmarkFindStringSubmatch


```haxe
function benchmarkFindStringSubmatch(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L149>)


## function benchmarkFindSubmatch


```haxe
function benchmarkFindSubmatch(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L148>)


## function benchmarkLiteral


```haxe
function benchmarkLiteral(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L150>)


## function benchmarkMatch


```haxe
function benchmarkMatch(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L230>)


## function benchmarkMatchClass


```haxe
function benchmarkMatchClass(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L152>)


## function benchmarkMatchClass\_InRange


```haxe
function benchmarkMatchClass_InRange(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L153>)


## function benchmarkMatchParallelCopied


```haxe
function benchmarkMatchParallelCopied(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L166>)


## function benchmarkMatchParallelShared


```haxe
function benchmarkMatchParallelShared(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L165>)


## function benchmarkMatch\_onepass\_regex


```haxe
function benchmarkMatch_onepass_regex(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L231>)


## function benchmarkNotLiteral


```haxe
function benchmarkNotLiteral(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L151>)


## function benchmarkNotOnePassShortA


```haxe
function benchmarkNotOnePassShortA(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L160>)


## function benchmarkNotOnePassShortB


```haxe
function benchmarkNotOnePassShortB(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L162>)


## function benchmarkOnePassLongNotPrefix


```haxe
function benchmarkOnePassLongNotPrefix(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L164>)


## function benchmarkOnePassLongPrefix


```haxe
function benchmarkOnePassLongPrefix(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L163>)


## function benchmarkOnePassShortA


```haxe
function benchmarkOnePassShortA(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L159>)


## function benchmarkOnePassShortB


```haxe
function benchmarkOnePassShortB(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L161>)


## function benchmarkQuoteMetaAll


```haxe
function benchmarkQuoteMetaAll(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L167>)


## function benchmarkQuoteMetaNone


```haxe
function benchmarkQuoteMetaNone(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L168>)


## function benchmarkReplaceAll


```haxe
function benchmarkReplaceAll(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Regexp.hx#L154>)


## function compile


```haxe
function compile(expr:String):stdgo.Tuple<stdgo.regexp.Regexp, stdgo.Error>
```



Compile parses a regular expression and returns, if successful,
a Regexp object that can be used to match against text.  


When matching against text, the regexp returns a match that
begins as early as possible in the input \(leftmost\), and among those
it chooses the one that a backtracking search would have found first.
This so\-called leftmost\-first matching is the same semantics
that Perl, Python, and other implementations use, although this
package implements it without the expense of backtracking.
For POSIX leftmost\-longest matching, see CompilePOSIX.  

[\(view code\)](<./Regexp.hx#L271>)


## function compilePOSIX


```haxe
function compilePOSIX(expr:String):stdgo.Tuple<stdgo.regexp.Regexp, stdgo.Error>
```



CompilePOSIX is like Compile but restricts the regular expression
to POSIX ERE \(egrep\) syntax and changes the match semantics to
leftmost\-longest.  


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

[\(view code\)](<./Regexp.hx#L293>)


## function match


```haxe
function match(pattern:String, b:Array<Int>):stdgo.Tuple<Bool, stdgo.Error>
```



Match reports whether the byte slice b
contains any match of the regular expression pattern.
More complicated queries need to use Compile and the full Regexp interface.  

[\(view code\)](<./Regexp.hx#L323>)


## function matchReader


```haxe
function matchReader(pattern:String, r:stdgo._internal.io.RuneReader):stdgo.Tuple<Bool, stdgo.Error>
```



MatchReader reports whether the text returned by the RuneReader
contains any match of the regular expression pattern.
More complicated queries need to use Compile and the full Regexp interface.  

[\(view code\)](<./Regexp.hx#L311>)


## function matchString


```haxe
function matchString(pattern:String, s:String):stdgo.Tuple<Bool, stdgo.Error>
```



MatchString reports whether the string s
contains any match of the regular expression pattern.
More complicated queries need to use Compile and the full Regexp interface.  

[\(view code\)](<./Regexp.hx#L317>)


## function mustCompile


```haxe
function mustCompile(str:String):stdgo.regexp.Regexp
```



MustCompile is like Compile but panics if the expression cannot be parsed.
It simplifies safe initialization of global variables holding compiled regular
expressions.  

[\(view code\)](<./Regexp.hx#L299>)


## function mustCompilePOSIX


```haxe
function mustCompilePOSIX(str:String):stdgo.regexp.Regexp
```



MustCompilePOSIX is like CompilePOSIX but panics if the expression cannot be parsed.
It simplifies safe initialization of global variables holding compiled regular
expressions.  

[\(view code\)](<./Regexp.hx#L305>)


## function quoteMeta


```haxe
function quoteMeta(s:String):String
```



QuoteMeta returns a string that escapes all regular expression metacharacters
inside the argument text; the returned string is a regular expression matching
the literal text.  

[\(view code\)](<./Regexp.hx#L329>)


## function testBadCompile


```haxe
function testBadCompile(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L121>)


## function testCompileOnePass


```haxe
function testCompileOnePass(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L257>)


## function testCopyMatch


```haxe
function testCopyMatch(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L124>)


## function testDeepEqual


```haxe
function testDeepEqual(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L170>)


## function testFind


```haxe
function testFind(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L238>)


## function testFindAll


```haxe
function testFindAll(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L243>)


## function testFindAllIndex


```haxe
function testFindAllIndex(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L245>)


## function testFindAllString


```haxe
function testFindAllString(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L244>)


## function testFindAllStringIndex


```haxe
function testFindAllStringIndex(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L246>)


## function testFindAllStringSubmatch


```haxe
function testFindAllStringSubmatch(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L253>)


## function testFindAllStringSubmatchIndex


```haxe
function testFindAllStringSubmatchIndex(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L255>)


## function testFindAllSubmatch


```haxe
function testFindAllSubmatch(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L252>)


## function testFindAllSubmatchIndex


```haxe
function testFindAllSubmatchIndex(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L254>)


## function testFindIndex


```haxe
function testFindIndex(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L240>)


## function testFindReaderIndex


```haxe
function testFindReaderIndex(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L242>)


## function testFindReaderSubmatchIndex


```haxe
function testFindReaderSubmatchIndex(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L251>)


## function testFindString


```haxe
function testFindString(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L239>)


## function testFindStringIndex


```haxe
function testFindStringIndex(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L241>)


## function testFindStringSubmatch


```haxe
function testFindStringSubmatch(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L248>)


## function testFindStringSubmatchIndex


```haxe
function testFindStringSubmatchIndex(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L250>)


## function testFindSubmatch


```haxe
function testFindSubmatch(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L247>)


## function testFindSubmatchIndex


```haxe
function testFindSubmatchIndex(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L249>)


## function testFowler


```haxe
function testFowler(t:stdgo._internal.testing.T_):Void
```



TestFowler runs this package's regexp API against the
POSIX regular expression tests collected by Glenn Fowler
at http://www2.research.att.com/~astopen/testregex/testregex.html.  

[\(view code\)](<./Regexp.hx#L229>)


## function testGoodCompile


```haxe
function testGoodCompile(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L120>)


## function testLiteralPrefix


```haxe
function testLiteralPrefix(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L129>)


## function testLongest


```haxe
function testLongest(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L232>)


## function testMatch


```haxe
function testMatch(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L122>)


## function testMatchFunction


```haxe
function testMatchFunction(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L123>)


## function testMergeRuneSet


```haxe
function testMergeRuneSet(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L256>)


## function testMinInputLen


```haxe
function testMinInputLen(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L171>)


## function testOnePassCutoff


```haxe
function testOnePassCutoff(t:stdgo._internal.testing.T_):Void
```



Check that one\-pass cutoff does trigger.  

[\(view code\)](<./Regexp.hx#L139>)


## function testParseAndCompile


```haxe
function testParseAndCompile(t:stdgo._internal.testing.T_):Void
```



The following sequence of Match calls used to panic. See issue \#12980.  

[\(view code\)](<./Regexp.hx#L135>)


## function testProgramTooLongForBacktrack


```haxe
function testProgramTooLongForBacktrack(t:stdgo._internal.testing.T_):Void
```



TestProgramTooLongForBacktrack tests that a regex which is too long
for the backtracker still executes properly.  

[\(view code\)](<./Regexp.hx#L237>)


## function testQuoteMeta


```haxe
function testQuoteMeta(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L128>)


## function testRE2Exhaustive


```haxe
function testRE2Exhaustive(t:stdgo._internal.testing.T_):Void
```



This test is excluded when running under the race detector because
it is a very expensive test and takes too long.  

[\(view code\)](<./Regexp.hx#L177>)


## function testRE2Search


```haxe
function testRE2Search(t:stdgo._internal.testing.T_):Void
```



TestRE2 tests this package's regexp API against test cases
considered during RE2's exhaustive tests, which run all possible
regexps over a given set of atoms and operators, up to a given
complexity, over all possible strings over a given alphabet,
up to a given size. Rather than try to link with RE2, we read a
log file containing the test cases and the expected matches.
The log file, re2\-exhaustive.txt, is generated by running 'make log'
in the open source RE2 distribution https://github.com/google/re2/.  


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

[\(view code\)](<./Regexp.hx#L223>)


## function testReplaceAll


```haxe
function testReplaceAll(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L125>)


## function testReplaceAllFunc


```haxe
function testReplaceAllFunc(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L127>)


## function testReplaceAllLiteral


```haxe
function testReplaceAllLiteral(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L126>)


## function testRunOnePass


```haxe
function testRunOnePass(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L258>)


## function testSplit


```haxe
function testSplit(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L131>)


## function testSubexp


```haxe
function testSubexp(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L130>)


## function testSwitchBacktrack


```haxe
function testSwitchBacktrack(t:stdgo._internal.testing.T_):Void
```



Check that the same machine can be used with the standard matcher
and then the backtracker when there are no captures.  

[\(view code\)](<./Regexp.hx#L144>)


## function testUnmarshalText


```haxe
function testUnmarshalText(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Regexp.hx#L172>)


# Typedefs


```haxe
import stdgo.regexp.*
```


## typedef FindTest


```haxe
typedef FindTest = Dynamic;
```


## typedef FindTest\_asInterface


```haxe
typedef FindTest_asInterface = Dynamic;
```


## typedef FindTest\_static\_extension


```haxe
typedef FindTest_static_extension = Dynamic;
```


## typedef MetaTest


```haxe
typedef MetaTest = Dynamic;
```


## typedef Regexp


```haxe
typedef Regexp = Dynamic;
```


## typedef Regexp\_asInterface


```haxe
typedef Regexp_asInterface = Dynamic;
```


## typedef Regexp\_static\_extension


```haxe
typedef Regexp_static_extension = Dynamic;
```


## typedef ReplaceFuncTest


```haxe
typedef ReplaceFuncTest = Dynamic;
```


## typedef ReplaceTest


```haxe
typedef ReplaceTest = Dynamic;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.regexp.T__struct_0;
```


## typedef T\_\_struct\_0\_asInterface


```haxe
typedef T__struct_0_asInterface = Dynamic;
```


## typedef T\_\_struct\_0\_static\_extension


```haxe
typedef T__struct_0_static_extension = Dynamic;
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = stdgo._internal.regexp.T__struct_1;
```


## typedef T\_\_struct\_1\_asInterface


```haxe
typedef T__struct_1_asInterface = Dynamic;
```


## typedef T\_\_struct\_1\_static\_extension


```haxe
typedef T__struct_1_static_extension = Dynamic;
```


## typedef T\_\_struct\_2


```haxe
typedef T__struct_2 = stdgo._internal.regexp.T__struct_2;
```


## typedef T\_\_struct\_2\_asInterface


```haxe
typedef T__struct_2_asInterface = Dynamic;
```


## typedef T\_\_struct\_2\_static\_extension


```haxe
typedef T__struct_2_static_extension = Dynamic;
```


## typedef T\_\_struct\_3


```haxe
typedef T__struct_3 = stdgo._internal.regexp.T__struct_3;
```


## typedef T\_\_struct\_3\_asInterface


```haxe
typedef T__struct_3_asInterface = Dynamic;
```


## typedef T\_\_struct\_3\_static\_extension


```haxe
typedef T__struct_3_static_extension = Dynamic;
```


## typedef T\_\_struct\_4


```haxe
typedef T__struct_4 = stdgo._internal.regexp.T__struct_4;
```


## typedef T\_\_struct\_4\_asInterface


```haxe
typedef T__struct_4_asInterface = Dynamic;
```


## typedef T\_\_struct\_4\_static\_extension


```haxe
typedef T__struct_4_static_extension = Dynamic;
```


## typedef T\_\_struct\_5


```haxe
typedef T__struct_5 = stdgo._internal.regexp.T__struct_5;
```


## typedef T\_\_struct\_5\_asInterface


```haxe
typedef T__struct_5_asInterface = Dynamic;
```


## typedef T\_\_struct\_5\_static\_extension


```haxe
typedef T__struct_5_static_extension = Dynamic;
```


## typedef T\_\_struct\_6


```haxe
typedef T__struct_6 = stdgo._internal.regexp.T__struct_6;
```


## typedef T\_\_struct\_6\_asInterface


```haxe
typedef T__struct_6_asInterface = Dynamic;
```


## typedef T\_\_struct\_6\_static\_extension


```haxe
typedef T__struct_6_static_extension = Dynamic;
```


## typedef T\_\_struct\_7


```haxe
typedef T__struct_7 = stdgo._internal.regexp.T__struct_7;
```


## typedef T\_\_struct\_7\_asInterface


```haxe
typedef T__struct_7_asInterface = Dynamic;
```


## typedef T\_\_struct\_7\_static\_extension


```haxe
typedef T__struct_7_static_extension = Dynamic;
```


## typedef T\_bitState


```haxe
typedef T_bitState = Dynamic;
```


## typedef T\_bitState\_asInterface


```haxe
typedef T_bitState_asInterface = Dynamic;
```


## typedef T\_bitState\_static\_extension


```haxe
typedef T_bitState_static_extension = Dynamic;
```


## typedef T\_entry


```haxe
typedef T_entry = Dynamic;
```


## typedef T\_input


```haxe
typedef T_input = stdgo._internal.regexp.T_input;
```


## typedef T\_inputBytes


```haxe
typedef T_inputBytes = Dynamic;
```


## typedef T\_inputBytes\_asInterface


```haxe
typedef T_inputBytes_asInterface = Dynamic;
```


## typedef T\_inputBytes\_static\_extension


```haxe
typedef T_inputBytes_static_extension = Dynamic;
```


## typedef T\_inputReader


```haxe
typedef T_inputReader = Dynamic;
```


## typedef T\_inputReader\_asInterface


```haxe
typedef T_inputReader_asInterface = Dynamic;
```


## typedef T\_inputReader\_static\_extension


```haxe
typedef T_inputReader_static_extension = Dynamic;
```


## typedef T\_inputString


```haxe
typedef T_inputString = Dynamic;
```


## typedef T\_inputString\_asInterface


```haxe
typedef T_inputString_asInterface = Dynamic;
```


## typedef T\_inputString\_static\_extension


```haxe
typedef T_inputString_static_extension = Dynamic;
```


## typedef T\_input\_static\_extension


```haxe
typedef T_input_static_extension = Dynamic;
```


## typedef T\_inputs


```haxe
typedef T_inputs = Dynamic;
```


## typedef T\_inputs\_asInterface


```haxe
typedef T_inputs_asInterface = Dynamic;
```


## typedef T\_inputs\_static\_extension


```haxe
typedef T_inputs_static_extension = Dynamic;
```


## typedef T\_job


```haxe
typedef T_job = Dynamic;
```


## typedef T\_lazyFlag


```haxe
typedef T_lazyFlag = stdgo._internal.regexp.T_lazyFlag;
```


## typedef T\_lazyFlag\_asInterface


```haxe
typedef T_lazyFlag_asInterface = Dynamic;
```


## typedef T\_lazyFlag\_static\_extension


```haxe
typedef T_lazyFlag_static_extension = Dynamic;
```


## typedef T\_machine


```haxe
typedef T_machine = Dynamic;
```


## typedef T\_machine\_asInterface


```haxe
typedef T_machine_asInterface = Dynamic;
```


## typedef T\_machine\_static\_extension


```haxe
typedef T_machine_static_extension = Dynamic;
```


## typedef T\_onePassInst


```haxe
typedef T_onePassInst = Dynamic;
```


## typedef T\_onePassInst\_asInterface


```haxe
typedef T_onePassInst_asInterface = Dynamic;
```


## typedef T\_onePassInst\_static\_extension


```haxe
typedef T_onePassInst_static_extension = Dynamic;
```


## typedef T\_onePassMachine


```haxe
typedef T_onePassMachine = Dynamic;
```


## typedef T\_onePassProg


```haxe
typedef T_onePassProg = Dynamic;
```


## typedef T\_queue


```haxe
typedef T_queue = Dynamic;
```


## typedef T\_queueOnePass


```haxe
typedef T_queueOnePass = Dynamic;
```


## typedef T\_queueOnePass\_asInterface


```haxe
typedef T_queueOnePass_asInterface = Dynamic;
```


## typedef T\_queueOnePass\_static\_extension


```haxe
typedef T_queueOnePass_static_extension = Dynamic;
```


## typedef T\_runeSlice


```haxe
typedef T_runeSlice = stdgo._internal.regexp.T_runeSlice;
```


## typedef T\_runeSlice\_asInterface


```haxe
typedef T_runeSlice_asInterface = Dynamic;
```


## typedef T\_runeSlice\_static\_extension


```haxe
typedef T_runeSlice_static_extension = Dynamic;
```


## typedef T\_stringError


```haxe
typedef T_stringError = Dynamic;
```


## typedef T\_subexpCase


```haxe
typedef T_subexpCase = Dynamic;
```


## typedef T\_subexpIndex


```haxe
typedef T_subexpIndex = Dynamic;
```


## typedef T\_thread


```haxe
typedef T_thread = Dynamic;
```


