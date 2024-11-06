# Module: `stdgo.regexp.syntax`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [class Syntax](<#class-syntax>)

  - [`function benchmarkEmptyOpContext(_b:stdgo._internal.testing.B):Void`](<#syntax-function-benchmarkemptyopcontext>)

  - [`function benchmarkIsWordChar(_b:stdgo._internal.testing.B):Void`](<#syntax-function-benchmarkiswordchar>)

  - [`function compile(_re:stdgo.regexp.syntax.Regexp):stdgo.Tuple<stdgo.regexp.syntax.Prog, stdgo.Error>`](<#syntax-function-compile>)

  - [`function emptyOpContext(_r1:Int, _r2:Int):stdgo.regexp.syntax.EmptyOp`](<#syntax-function-emptyopcontext>)

  - [`function isWordChar(_r:Int):Bool`](<#syntax-function-iswordchar>)

  - [`function parse(_s:String, _flags:stdgo.regexp.syntax.Flags):stdgo.Tuple<stdgo.regexp.syntax.Regexp, stdgo.Error>`](<#syntax-function-parse>)

  - [`function testAppendRangeCollapse(_t:stdgo._internal.testing.T_):Void`](<#syntax-function-testappendrangecollapse>)

  - [`function testCompile(_t:stdgo._internal.testing.T_):Void`](<#syntax-function-testcompile>)

  - [`function testFoldConstants(_t:stdgo._internal.testing.T_):Void`](<#syntax-function-testfoldconstants>)

  - [`function testParseFoldCase(_t:stdgo._internal.testing.T_):Void`](<#syntax-function-testparsefoldcase>)

  - [`function testParseInvalidRegexps(_t:stdgo._internal.testing.T_):Void`](<#syntax-function-testparseinvalidregexps>)

  - [`function testParseLiteral(_t:stdgo._internal.testing.T_):Void`](<#syntax-function-testparseliteral>)

  - [`function testParseMatchNL(_t:stdgo._internal.testing.T_):Void`](<#syntax-function-testparsematchnl>)

  - [`function testParseNoMatchNL(_t:stdgo._internal.testing.T_):Void`](<#syntax-function-testparsenomatchnl>)

  - [`function testParseSimple(_t:stdgo._internal.testing.T_):Void`](<#syntax-function-testparsesimple>)

  - [`function testSimplify(_t:stdgo._internal.testing.T_):Void`](<#syntax-function-testsimplify>)

  - [`function testToStringEquivalentParse(_t:stdgo._internal.testing.T_):Void`](<#syntax-function-testtostringequivalentparse>)

- [typedef EmptyOp](<#typedef-emptyop>)

- [typedef ErrorCode](<#typedef-errorcode>)

- [typedef Flags](<#typedef-flags>)

- [typedef InstOp](<#typedef-instop>)

- [typedef Op](<#typedef-op>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

- [abstract T\_patchList](<#abstract-t_patchlist>)

- [abstract T\_frag](<#abstract-t_frag>)

- [abstract T\_compiler](<#abstract-t_compiler>)

- [abstract Error](<#abstract-error>)

- [abstract T\_parser](<#abstract-t_parser>)

- [abstract T\_charGroup](<#abstract-t_chargroup>)

- [abstract T\_ranges](<#abstract-t_ranges>)

- [abstract T\_parseTest](<#abstract-t_parsetest>)

- [abstract Prog](<#abstract-prog>)

- [abstract Inst](<#abstract-inst>)

- [abstract Regexp](<#abstract-regexp>)

# Constants


```haxe
import stdgo.regexp.syntax.Syntax
```


```haxe
final classNL:stdgo._internal.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax_classNL.classNL
```


```haxe
final dotNL:stdgo._internal.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax_dotNL.dotNL
```


```haxe
final emptyBeginLine:stdgo.regexp.syntax.EmptyOp = stdgo._internal.regexp.syntax.Syntax_emptyBeginLine.emptyBeginLine
```


```haxe
final emptyBeginText:stdgo._internal.regexp.syntax.EmptyOp = stdgo._internal.regexp.syntax.Syntax_emptyBeginText.emptyBeginText
```


```haxe
final emptyEndLine:stdgo._internal.regexp.syntax.EmptyOp = stdgo._internal.regexp.syntax.Syntax_emptyEndLine.emptyEndLine
```


```haxe
final emptyEndText:stdgo._internal.regexp.syntax.EmptyOp = stdgo._internal.regexp.syntax.Syntax_emptyEndText.emptyEndText
```


```haxe
final emptyNoWordBoundary:stdgo._internal.regexp.syntax.EmptyOp = stdgo._internal.regexp.syntax.Syntax_emptyNoWordBoundary.emptyNoWordBoundary
```


```haxe
final emptyWordBoundary:stdgo._internal.regexp.syntax.EmptyOp = stdgo._internal.regexp.syntax.Syntax_emptyWordBoundary.emptyWordBoundary
```


```haxe
final errInternalError:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax_errInternalError.errInternalError
```


```haxe
final errInvalidCharClass:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax_errInvalidCharClass.errInvalidCharClass
```


```haxe
final errInvalidCharRange:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax_errInvalidCharRange.errInvalidCharRange
```


```haxe
final errInvalidEscape:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax_errInvalidEscape.errInvalidEscape
```


```haxe
final errInvalidNamedCapture:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax_errInvalidNamedCapture.errInvalidNamedCapture
```


```haxe
final errInvalidPerlOp:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax_errInvalidPerlOp.errInvalidPerlOp
```


```haxe
final errInvalidRepeatOp:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax_errInvalidRepeatOp.errInvalidRepeatOp
```


```haxe
final errInvalidRepeatSize:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax_errInvalidRepeatSize.errInvalidRepeatSize
```


```haxe
final errInvalidUTF8:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax_errInvalidUTF8.errInvalidUTF8
```


```haxe
final errLarge:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax_errLarge.errLarge
```


```haxe
final errMissingBracket:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax_errMissingBracket.errMissingBracket
```


```haxe
final errMissingParen:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax_errMissingParen.errMissingParen
```


```haxe
final errMissingRepeatArgument:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax_errMissingRepeatArgument.errMissingRepeatArgument
```


```haxe
final errNestingDepth:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax_errNestingDepth.errNestingDepth
```


```haxe
final errTrailingBackslash:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax_errTrailingBackslash.errTrailingBackslash
```


```haxe
final errUnexpectedParen:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax_errUnexpectedParen.errUnexpectedParen
```


```haxe
final foldCase:stdgo.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax_foldCase.foldCase
```


```haxe
final instAlt:stdgo.regexp.syntax.InstOp = stdgo._internal.regexp.syntax.Syntax_instAlt.instAlt
```


```haxe
final instAltMatch:stdgo._internal.regexp.syntax.InstOp = stdgo._internal.regexp.syntax.Syntax_instAltMatch.instAltMatch
```


```haxe
final instCapture:stdgo._internal.regexp.syntax.InstOp = stdgo._internal.regexp.syntax.Syntax_instCapture.instCapture
```


```haxe
final instEmptyWidth:stdgo._internal.regexp.syntax.InstOp = stdgo._internal.regexp.syntax.Syntax_instEmptyWidth.instEmptyWidth
```


```haxe
final instFail:stdgo._internal.regexp.syntax.InstOp = stdgo._internal.regexp.syntax.Syntax_instFail.instFail
```


```haxe
final instMatch:stdgo._internal.regexp.syntax.InstOp = stdgo._internal.regexp.syntax.Syntax_instMatch.instMatch
```


```haxe
final instNop:stdgo._internal.regexp.syntax.InstOp = stdgo._internal.regexp.syntax.Syntax_instNop.instNop
```


```haxe
final instRune:stdgo._internal.regexp.syntax.InstOp = stdgo._internal.regexp.syntax.Syntax_instRune.instRune
```


```haxe
final instRune1:stdgo._internal.regexp.syntax.InstOp = stdgo._internal.regexp.syntax.Syntax_instRune1.instRune1
```


```haxe
final instRuneAny:stdgo._internal.regexp.syntax.InstOp = stdgo._internal.regexp.syntax.Syntax_instRuneAny.instRuneAny
```


```haxe
final instRuneAnyNotNL:stdgo._internal.regexp.syntax.InstOp = stdgo._internal.regexp.syntax.Syntax_instRuneAnyNotNL.instRuneAnyNotNL
```


```haxe
final literal:stdgo._internal.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax_literal.literal
```


```haxe
final matchNL:stdgo.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax_matchNL.matchNL
```


```haxe
final nonGreedy:stdgo._internal.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax_nonGreedy.nonGreedy
```


```haxe
final oneLine:stdgo._internal.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax_oneLine.oneLine
```


```haxe
final opAlternate:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax_opAlternate.opAlternate
```


```haxe
final opAnyChar:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax_opAnyChar.opAnyChar
```


```haxe
final opAnyCharNotNL:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax_opAnyCharNotNL.opAnyCharNotNL
```


```haxe
final opBeginLine:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax_opBeginLine.opBeginLine
```


```haxe
final opBeginText:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax_opBeginText.opBeginText
```


```haxe
final opCapture:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax_opCapture.opCapture
```


```haxe
final opCharClass:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax_opCharClass.opCharClass
```


```haxe
final opConcat:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax_opConcat.opConcat
```


```haxe
final opEmptyMatch:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax_opEmptyMatch.opEmptyMatch
```


```haxe
final opEndLine:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax_opEndLine.opEndLine
```


```haxe
final opEndText:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax_opEndText.opEndText
```


```haxe
final opLiteral:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax_opLiteral.opLiteral
```


```haxe
final opNoMatch:stdgo.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax_opNoMatch.opNoMatch
```


```haxe
final opNoWordBoundary:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax_opNoWordBoundary.opNoWordBoundary
```


```haxe
final opPlus:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax_opPlus.opPlus
```


```haxe
final opQuest:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax_opQuest.opQuest
```


```haxe
final opRepeat:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax_opRepeat.opRepeat
```


```haxe
final opStar:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax_opStar.opStar
```


```haxe
final opWordBoundary:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax_opWordBoundary.opWordBoundary
```


```haxe
final perl:stdgo.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax_perl.perl
```


```haxe
final perlX:stdgo._internal.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax_perlX.perlX
```


```haxe
final posix:stdgo.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax_posix.posix
```


```haxe
final simple:stdgo._internal.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax_simple.simple
```


```haxe
final unicodeGroups:stdgo._internal.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax_unicodeGroups.unicodeGroups
```


```haxe
final wasDollar:stdgo._internal.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax_wasDollar.wasDollar
```


# Classes


```haxe
import stdgo.regexp.syntax.*
```


## class Syntax


```
{
    	pc_3436175 = uint32(p.Start)
    	i_3436198 = &p.Inst[pc_3436175]
    	gotoNext = 3436215
    	_ = gotoNext == 3436215
    	_ = 0
    	LoopBreak = false
    	gotoNext = 3436222
    	_ = gotoNext == 3436222
    	if !LoopBreak {
    		gotoNext = 3436226
    		_ = gotoNext == 3436226
    		_ = 0
    		gotoNext = 3436230
    		_ = gotoNext == 3436230
    		switch i_3436198.Op {
    		case 3:
    			gotoNext = 3436246
    			_ = gotoNext == 3436246
    			flag_3436161 |= EmptyOp(i_3436198.Arg)
    			gotoNext = 3436403
    		case 5:
    			gotoNext = 3436295
    			_ = gotoNext == 3436295
    			return 255
    			gotoNext = 3436403
    		case 2, 6:
    			gotoNext = 3436334
    			_ = gotoNext == 3436334
    			gotoNext = 3436403
    		default:
    			gotoNext = 3436374
    			_ = gotoNext == 3436374
    			LoopBreak = true
    			gotoNext = 3436222
    			gotoNext = 3436403
}
    		_ = gotoNext == 3436403
    		pc_3436175 = i_3436198.Out
    		i_3436198 = &p.Inst[pc_3436175]
    		gotoNext = 3436222
    	} else {
    		gotoNext = 3436436
}
    	_ = gotoNext == 3436436
    	return flag_3436161
    	gotoNext = -1
    }
```
### Syntax function benchmarkEmptyOpContext


```haxe
function benchmarkEmptyOpContext(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Syntax.hx#L796>)


### Syntax function benchmarkIsWordChar


```haxe
function benchmarkIsWordChar(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Syntax.hx#L799>)


### Syntax function compile


```haxe
function compile(_re:stdgo.regexp.syntax.Regexp):stdgo.Tuple<stdgo.regexp.syntax.Prog, stdgo.Error>
```


```
Compile compiles the regexp into a program to be executed.
        The regexp should have been simplified already (returned from re.Simplify).
```
[\(view code\)](<./Syntax.hx#L730>)


### Syntax function emptyOpContext


```haxe
function emptyOpContext(_r1:Int, _r2:Int):stdgo.regexp.syntax.EmptyOp
```


```
EmptyOpContext returns the zero-width assertions
        satisfied at the position between the runes r1 and r2.
        Passing r1 == -1 indicates that the position is
        at the beginning of the text.
        Passing r2 == -1 indicates that the position is
        at the end of the text.
```
[\(view code\)](<./Syntax.hx#L782>)


### Syntax function isWordChar


```haxe
function isWordChar(_r:Int):Bool
```


```
IsWordChar reports whether r is considered a “word character”
        during the evaluation of the \b and \B zero-width assertions.
        These assertions are ASCII-only: the word characters are [A-Za-z0-9_].
```
[\(view code\)](<./Syntax.hx#L790>)


### Syntax function parse


```haxe
function parse(_s:String, _flags:stdgo.regexp.syntax.Flags):stdgo.Tuple<stdgo.regexp.syntax.Regexp, stdgo.Error>
```


```
Parse parses a regular expression string s, controlled by the specified
        Flags, and returns a regular expression parse tree. The syntax is
        described in the top-level comment.
```
[\(view code\)](<./Syntax.hx#L741>)


### Syntax function testAppendRangeCollapse


```haxe
function testAppendRangeCollapse(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L765>)


### Syntax function testCompile


```haxe
function testCompile(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L793>)


### Syntax function testFoldConstants


```haxe
function testFoldConstants(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L762>)


### Syntax function testParseFoldCase


```haxe
function testParseFoldCase(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L750>)


### Syntax function testParseInvalidRegexps


```haxe
function testParseInvalidRegexps(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L768>)


### Syntax function testParseLiteral


```haxe
function testParseLiteral(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L753>)


### Syntax function testParseMatchNL


```haxe
function testParseMatchNL(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L756>)


### Syntax function testParseNoMatchNL


```haxe
function testParseNoMatchNL(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L759>)


### Syntax function testParseSimple


```haxe
function testParseSimple(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L747>)


### Syntax function testSimplify


```haxe
function testSimplify(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L802>)


### Syntax function testToStringEquivalentParse


```haxe
function testToStringEquivalentParse(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L771>)


# Typedefs


```haxe
import stdgo.regexp.syntax.*
```


## typedef EmptyOp


```haxe
typedef EmptyOp = stdgo._internal.regexp.syntax.EmptyOp;
```


## typedef ErrorCode


```haxe
typedef ErrorCode = stdgo._internal.regexp.syntax.ErrorCode;
```


## typedef Flags


```haxe
typedef Flags = stdgo._internal.regexp.syntax.Flags;
```


## typedef InstOp


```haxe
typedef InstOp = stdgo._internal.regexp.syntax.InstOp;
```


## typedef Op


```haxe
typedef Op = stdgo._internal.regexp.syntax.Op;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.regexp.syntax.T__struct_0;
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = stdgo._internal.regexp.syntax.T__struct_1;
```


## typedef T\_\_struct\_2


```haxe
typedef T__struct_2 = stdgo._internal.regexp.syntax.T__struct_2;
```


# Abstracts


## abstract T\_patchList


[\(view file containing code\)](<./Syntax.hx>)


## abstract T\_frag


[\(view file containing code\)](<./Syntax.hx>)


## abstract T\_compiler


[\(view file containing code\)](<./Syntax.hx>)


## abstract Error


[\(view file containing code\)](<./Syntax.hx>)


## abstract T\_parser


[\(view file containing code\)](<./Syntax.hx>)


## abstract T\_charGroup


[\(view file containing code\)](<./Syntax.hx>)


## abstract T\_ranges


[\(view file containing code\)](<./Syntax.hx>)


## abstract T\_parseTest


[\(view file containing code\)](<./Syntax.hx>)


## abstract Prog


[\(view file containing code\)](<./Syntax.hx>)


## abstract Inst


[\(view file containing code\)](<./Syntax.hx>)


## abstract Regexp


[\(view file containing code\)](<./Syntax.hx>)


