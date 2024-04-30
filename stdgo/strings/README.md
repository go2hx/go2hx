# Module: `stdgo.strings`

[(view library index)](../stdgo.md)


# Overview



Package strings implements simple functions to manipulate UTF\-8 encoded strings.  


For information about UTF\-8 strings in Go, see https://blog.golang.org/strings.  

# Index


- [`function clone(s:String):String`](<#function-clone>)

- [`function compare(a:String, b:String):Int`](<#function-compare>)

- [`function contains(s:String, substr:String):Bool`](<#function-contains>)

- [`function containsAny(s:String, chars:String):Bool`](<#function-containsany>)

- [`function containsFunc(s:String, f:()):Bool`](<#function-containsfunc>)

- [`function containsRune(s:String, r:Int):Bool`](<#function-containsrune>)

- [`function count(s:String, substr:String):Int`](<#function-count>)

- [`function cut(s:String, sep:String):stdgo.Tuple3<String, String, Bool>`](<#function-cut>)

- [`function cutPrefix(s:String, prefix:String):stdgo.Tuple<String, Bool>`](<#function-cutprefix>)

- [`function cutSuffix(s:String, suffix:String):stdgo.Tuple<String, Bool>`](<#function-cutsuffix>)

- [`function dumpTables(pattern:String):stdgo.Tuple<Array<Int>, Array<Int>>`](<#function-dumptables>)

- [`function equalFold(s:String, t:String):Bool`](<#function-equalfold>)

- [`function fields(s:String):Array<String>`](<#function-fields>)

- [`function fieldsFunc(s:String, f:()):Array<String>`](<#function-fieldsfunc>)

- [`function hasPrefix(s:String, prefix:String):Bool`](<#function-hasprefix>)

- [`function hasSuffix(s:String, suffix:String):Bool`](<#function-hassuffix>)

- [`function index(s:String, substr:String):Int`](<#function-index>)

- [`function indexAny(s:String, chars:String):Int`](<#function-indexany>)

- [`function indexByte(s:String, c:Int):Int`](<#function-indexbyte>)

- [`function indexFunc(s:String, f:()):Int`](<#function-indexfunc>)

- [`function indexRune(s:String, r:Int):Int`](<#function-indexrune>)

- [`function join(elems:Array<String>, sep:String):String`](<#function-join>)

- [`function lastIndex(s:String, substr:String):Int`](<#function-lastindex>)

- [`function lastIndexAny(s:String, chars:String):Int`](<#function-lastindexany>)

- [`function lastIndexByte(s:String, c:Int):Int`](<#function-lastindexbyte>)

- [`function lastIndexFunc(s:String, f:()):Int`](<#function-lastindexfunc>)

- [`function map_(mapping:(), s:String):String`](<#function-map_>)

- [`function newReader(s:String):stdgo.strings.Reader`](<#function-newreader>)

- [`function newReplacer(oldnew:haxe.Rest<stdgo.GoString>):stdgo.strings.Replacer`](<#function-newreplacer>)

- [`function repeat(s:String, count:Int):String`](<#function-repeat>)

- [`function replace(s:String, old:String, _new:String, n:Int):String`](<#function-replace>)

- [`function replaceAll(s:String, old:String, _new:String):String`](<#function-replaceall>)

- [`function split(s:String, sep:String):Array<String>`](<#function-split>)

- [`function splitAfter(s:String, sep:String):Array<String>`](<#function-splitafter>)

- [`function splitAfterN(s:String, sep:String, n:Int):Array<String>`](<#function-splitaftern>)

- [`function splitN(s:String, sep:String, n:Int):Array<String>`](<#function-splitn>)

- [`function stringFind(pattern:String, text:String):Int`](<#function-stringfind>)

- [`function title(s:String):String`](<#function-title>)

- [`function toLower(s:String):String`](<#function-tolower>)

- [`function toLowerSpecial(c:stdgo._internal.unicode.SpecialCase, s:String):String`](<#function-tolowerspecial>)

- [`function toTitle(s:String):String`](<#function-totitle>)

- [`function toTitleSpecial(c:stdgo._internal.unicode.SpecialCase, s:String):String`](<#function-totitlespecial>)

- [`function toUpper(s:String):String`](<#function-toupper>)

- [`function toUpperSpecial(c:stdgo._internal.unicode.SpecialCase, s:String):String`](<#function-toupperspecial>)

- [`function toValidUTF8(s:String, replacement:String):String`](<#function-tovalidutf8>)

- [`function trim(s:String, cutset:String):String`](<#function-trim>)

- [`function trimFunc(s:String, f:()):String`](<#function-trimfunc>)

- [`function trimLeft(s:String, cutset:String):String`](<#function-trimleft>)

- [`function trimLeftFunc(s:String, f:()):String`](<#function-trimleftfunc>)

- [`function trimPrefix(s:String, prefix:String):String`](<#function-trimprefix>)

- [`function trimRight(s:String, cutset:String):String`](<#function-trimright>)

- [`function trimRightFunc(s:String, f:()):String`](<#function-trimrightfunc>)

- [`function trimSpace(s:String):String`](<#function-trimspace>)

- [`function trimSuffix(s:String, suffix:String):String`](<#function-trimsuffix>)

- [typedef Builder](<#typedef-builder>)

- [typedef Builder\_asInterface](<#typedef-builder_asinterface>)

- [typedef Builder\_static\_extension](<#typedef-builder_static_extension>)

- [typedef Reader](<#typedef-reader>)

- [typedef Reader\_asInterface](<#typedef-reader_asinterface>)

- [typedef Reader\_static\_extension](<#typedef-reader_static_extension>)

- [typedef Replacer](<#typedef-replacer>)

- [typedef Replacer\_asInterface](<#typedef-replacer_asinterface>)

- [typedef Replacer\_static\_extension](<#typedef-replacer_static_extension>)

- [typedef T\_appendSliceWriter](<#typedef-t_appendslicewriter>)

- [typedef T\_appendSliceWriter\_asInterface](<#typedef-t_appendslicewriter_asinterface>)

- [typedef T\_appendSliceWriter\_static\_extension](<#typedef-t_appendslicewriter_static_extension>)

- [typedef T\_asciiSet](<#typedef-t_asciiset>)

- [typedef T\_asciiSet\_asInterface](<#typedef-t_asciiset_asinterface>)

- [typedef T\_asciiSet\_static\_extension](<#typedef-t_asciiset_static_extension>)

- [typedef T\_byteReplacer](<#typedef-t_bytereplacer>)

- [typedef T\_byteReplacer\_asInterface](<#typedef-t_bytereplacer_asinterface>)

- [typedef T\_byteReplacer\_static\_extension](<#typedef-t_bytereplacer_static_extension>)

- [typedef T\_byteStringReplacer](<#typedef-t_bytestringreplacer>)

- [typedef T\_byteStringReplacer\_asInterface](<#typedef-t_bytestringreplacer_asinterface>)

- [typedef T\_byteStringReplacer\_static\_extension](<#typedef-t_bytestringreplacer_static_extension>)

- [typedef T\_fieldsFunc\_1\_\_\_localname\_\_\_span](<#typedef-t_fieldsfunc_1localnamespan>)

- [typedef T\_genericReplacer](<#typedef-t_genericreplacer>)

- [typedef T\_genericReplacer\_asInterface](<#typedef-t_genericreplacer_asinterface>)

- [typedef T\_genericReplacer\_static\_extension](<#typedef-t_genericreplacer_static_extension>)

- [typedef T\_replacer](<#typedef-t_replacer>)

- [typedef T\_replacer\_static\_extension](<#typedef-t_replacer_static_extension>)

- [typedef T\_singleStringReplacer](<#typedef-t_singlestringreplacer>)

- [typedef T\_singleStringReplacer\_asInterface](<#typedef-t_singlestringreplacer_asinterface>)

- [typedef T\_singleStringReplacer\_static\_extension](<#typedef-t_singlestringreplacer_static_extension>)

- [typedef T\_stringFinder](<#typedef-t_stringfinder>)

- [typedef T\_stringFinder\_asInterface](<#typedef-t_stringfinder_asinterface>)

- [typedef T\_stringFinder\_static\_extension](<#typedef-t_stringfinder_static_extension>)

- [typedef T\_stringWriter](<#typedef-t_stringwriter>)

- [typedef T\_stringWriter\_asInterface](<#typedef-t_stringwriter_asinterface>)

- [typedef T\_stringWriter\_static\_extension](<#typedef-t_stringwriter_static_extension>)

- [typedef T\_trieNode](<#typedef-t_trienode>)

- [typedef T\_trieNode\_asInterface](<#typedef-t_trienode_asinterface>)

- [typedef T\_trieNode\_static\_extension](<#typedef-t_trienode_static_extension>)

# Functions


```haxe
import stdgo.strings.Strings
```


## function clone


```haxe
function clone(s:String):String
```


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
```
[\(view code\)](<./Strings.hx#L34>)


## function compare


```haxe
function compare(a:String, b:String):Int
```


```
Compare returns an integer comparing two strings lexicographically.
    The result will be 0 if a == b, -1 if a < b, and +1 if a > b.
```

Compare is included only for symmetry with package bytes.
It is usually clearer and always faster to use the built\-in
string comparison operators ==, \<, \>, and so on.  

[\(view code\)](<./Strings.hx#L43>)


## function contains


```haxe
function contains(s:String, substr:String):Bool
```



Contains reports whether substr is within s.  

[\(view code\)](<./Strings.hx#L68>)


## function containsAny


```haxe
function containsAny(s:String, chars:String):Bool
```



ContainsAny reports whether any Unicode code points in chars are within s.  

[\(view code\)](<./Strings.hx#L72>)


## function containsFunc


```haxe
function containsFunc(s:String, f:()):Bool
```



ContainsFunc reports whether any Unicode code points r within s satisfy f\(r\).  

[\(view code\)](<./Strings.hx#L80>)


## function containsRune


```haxe
function containsRune(s:String, r:Int):Bool
```



ContainsRune reports whether the Unicode code point r is within s.  

[\(view code\)](<./Strings.hx#L76>)


## function count


```haxe
function count(s:String, substr:String):Int
```


```
Count counts the number of non-overlapping instances of substr in s.
    If substr is an empty string, Count returns 1 + the number of Unicode code points in s.
```
[\(view code\)](<./Strings.hx#L64>)


## function cut


```haxe
function cut(s:String, sep:String):stdgo.Tuple3<String, String, Bool>
```


```
Cut slices s around the first instance of sep,
    returning the text before and after sep.
    The found result reports whether sep appears in s.
    If sep does not appear in s, cut returns s, "", false.
```
[\(view code\)](<./Strings.hx#L344>)


## function cutPrefix


```haxe
function cutPrefix(s:String, prefix:String):stdgo.Tuple<String, Bool>
```


```
CutPrefix returns s without the provided leading prefix string
    and reports whether it found the prefix.
    If s doesn't start with prefix, CutPrefix returns s, false.
    If prefix is the empty string, CutPrefix returns s, true.
```
[\(view code\)](<./Strings.hx#L351>)


## function cutSuffix


```haxe
function cutSuffix(s:String, suffix:String):stdgo.Tuple<String, Bool>
```


```
CutSuffix returns s without the provided ending suffix string
    and reports whether it found the suffix.
    If s doesn't end with suffix, CutSuffix returns s, false.
    If suffix is the empty string, CutSuffix returns s, true.
```
[\(view code\)](<./Strings.hx#L358>)


## function dumpTables


```haxe
function dumpTables(pattern:String):stdgo.Tuple<Array<Int>, Array<Int>>
```


[\(view code\)](<./Strings.hx#L45>)


## function equalFold


```haxe
function equalFold(s:String, t:String):Bool
```


```
EqualFold reports whether s and t, interpreted as UTF-8 strings,
    are equal under simple Unicode case-folding, which is a more general
    form of case-insensitivity.
```
[\(view code\)](<./Strings.hx#L333>)


## function fields


```haxe
function fields(s:String):Array<String>
```


```
Fields splits the string s around each instance of one or more consecutive white space
    characters, as defined by unicode.IsSpace, returning a slice of substrings of s or an
    empty slice if s contains only white space.
```
[\(view code\)](<./Strings.hx#L174>)


## function fieldsFunc


```haxe
function fieldsFunc(s:String, f:()):Array<String>
```


```
FieldsFunc splits the string s at each run of Unicode code points c satisfying f(c)
    and returns an array of slices of s. If all code points in s satisfy f(c) or the
    string is empty, an empty slice is returned.
```

FieldsFunc makes no guarantees about the order in which it calls f\(c\)
and assumes that f always returns the same value for a given c.  

[\(view code\)](<./Strings.hx#L184>)


## function hasPrefix


```haxe
function hasPrefix(s:String, prefix:String):Bool
```



HasPrefix tests whether the string s begins with prefix.  

[\(view code\)](<./Strings.hx#L193>)


## function hasSuffix


```haxe
function hasSuffix(s:String, suffix:String):Bool
```



HasSuffix tests whether the string s ends with suffix.  

[\(view code\)](<./Strings.hx#L197>)


## function index


```haxe
function index(s:String, substr:String):Int
```



Index returns the index of the first instance of substr in s, or \-1 if substr is not present in s.  

[\(view code\)](<./Strings.hx#L337>)


## function indexAny


```haxe
function indexAny(s:String, chars:String):Int
```


```
IndexAny returns the index of the first instance of any Unicode code point
    from chars in s, or -1 if no Unicode code point from chars is present in s.
```
[\(view code\)](<./Strings.hx#L100>)


## function indexByte


```haxe
function indexByte(s:String, c:Int):Int
```



IndexByte returns the index of the first instance of c in s, or \-1 if c is not present in s.  

[\(view code\)](<./Strings.hx#L88>)


## function indexFunc


```haxe
function indexFunc(s:String, f:()):Int
```


```
IndexFunc returns the index into s of the first Unicode
    code point satisfying f(c), or -1 if none do.
```
[\(view code\)](<./Strings.hx#L271>)


## function indexRune


```haxe
function indexRune(s:String, r:Int):Int
```


```
IndexRune returns the index of the first instance of the Unicode code point
    r, or -1 if rune is not present in s.
    If r is utf8.RuneError, it returns the first instance of any
    invalid UTF-8 byte sequence.
```
[\(view code\)](<./Strings.hx#L95>)


## function join


```haxe
function join(elems:Array<String>, sep:String):String
```


```
Join concatenates the elements of its first argument to create a single string. The separator
    string sep is placed between elements in the resulting string.
```
[\(view code\)](<./Strings.hx#L189>)


## function lastIndex


```haxe
function lastIndex(s:String, substr:String):Int
```



LastIndex returns the index of the last instance of substr in s, or \-1 if substr is not present in s.  

[\(view code\)](<./Strings.hx#L84>)


## function lastIndexAny


```haxe
function lastIndexAny(s:String, chars:String):Int
```


```
LastIndexAny returns the index of the last instance of any Unicode code
    point from chars in s, or -1 if no Unicode code point from chars is
    present in s.
```
[\(view code\)](<./Strings.hx#L106>)


## function lastIndexByte


```haxe
function lastIndexByte(s:String, c:Int):Int
```



LastIndexByte returns the index of the last instance of c in s, or \-1 if c is not present in s.  

[\(view code\)](<./Strings.hx#L110>)


## function lastIndexFunc


```haxe
function lastIndexFunc(s:String, f:()):Int
```


```
LastIndexFunc returns the index into s of the last
    Unicode code point satisfying f(c), or -1 if none do.
```
[\(view code\)](<./Strings.hx#L276>)


## function map\_


```haxe
function map_(mapping:(), s:String):String
```


```
Map returns a copy of the string s with all its characters modified
    according to the mapping function. If mapping returns a negative value, the character is
    dropped from the string with no replacement.
```
[\(view code\)](<./Strings.hx#L203>)


## function newReader


```haxe
function newReader(s:String):stdgo.strings.Reader
```


```
NewReader returns a new Reader reading from s.
    It is similar to bytes.NewBufferString but more efficient and non-writable.
```
[\(view code\)](<./Strings.hx#L50>)


## function newReplacer


```haxe
function newReplacer(oldnew:haxe.Rest<stdgo.GoString>):stdgo.strings.Replacer
```


```
NewReplacer returns a new Replacer from a list of old, new string
    pairs. Replacements are performed in the order they appear in the
    target string, without overlapping matches. The old string
    comparisons are done in argument order.
```

NewReplacer panics if given an odd number of arguments.  

[\(view code\)](<./Strings.hx#L59>)


## function repeat


```haxe
function repeat(s:String, count:Int):String
```



Repeat returns a new string consisting of count copies of the string s.  


It panics if count is negative or if the result of \(len\(s\) \* count\)
overflows.  

[\(view code\)](<./Strings.hx#L210>)


## function replace


```haxe
function replace(s:String, old:String, _new:String, n:Int):String
```


```
Replace returns a copy of the string s with the first n
    non-overlapping instances of old replaced by new.
    If old is empty, it matches at the beginning of the string
    and after each UTF-8 sequence, yielding up to k+1 replacements
    for a k-rune string.
    If n < 0, there is no limit on the number of replacements.
```
[\(view code\)](<./Strings.hx#L319>)


## function replaceAll


```haxe
function replaceAll(s:String, old:String, _new:String):String
```


```
ReplaceAll returns a copy of the string s with all
    non-overlapping instances of old replaced by new.
    If old is empty, it matches at the beginning of the string
    and after each UTF-8 sequence, yielding up to k+1 replacements
    for a k-rune string.
```
[\(view code\)](<./Strings.hx#L327>)


## function split


```haxe
function split(s:String, sep:String):Array<String>
```


```
Split slices s into all substrings separated by sep and returns a slice of
    the substrings between those separators.
```

If s does not contain sep and sep is not empty, Split returns a
slice of length 1 whose only element is s.  


If sep is empty, Split splits after each UTF\-8 sequence. If both s
and sep are empty, Split returns an empty slice.  


It is equivalent to SplitN with a count of \-1.  


To split around the first instance of a separator, see Cut.  

[\(view code\)](<./Strings.hx#L155>)


## function splitAfter


```haxe
function splitAfter(s:String, sep:String):Array<String>
```


```
SplitAfter slices s into all substrings after each instance of sep and
    returns a slice of those substrings.
```

If s does not contain sep and sep is not empty, SplitAfter returns
a slice of length 1 whose only element is s.  


If sep is empty, SplitAfter splits after each UTF\-8 sequence. If
both s and sep are empty, SplitAfter returns an empty slice.  


It is equivalent to SplitAfterN with a count of \-1.  

[\(view code\)](<./Strings.hx#L168>)


## function splitAfterN


```haxe
function splitAfterN(s:String, sep:String, n:Int):Array<String>
```


```
SplitAfterN slices s into substrings after each instance of sep and
    returns a slice of those substrings.
```

The count determines the number of substrings to return:  

```
    	n > 0: at most n substrings; the last substring will be the unsplit remainder.
    	n == 0: the result is nil (zero substrings)
    	n < 0: all substrings
```

Edge cases for s and sep \(for example, empty strings\) are handled
as described in the documentation for SplitAfter.  

[\(view code\)](<./Strings.hx#L140>)


## function splitN


```haxe
function splitN(s:String, sep:String, n:Int):Array<String>
```


```
SplitN slices s into substrings separated by sep and returns a slice of
    the substrings between those separators.
```

The count determines the number of substrings to return:  

```
    	n > 0: at most n substrings; the last substring will be the unsplit remainder.
    	n == 0: the result is nil (zero substrings)
    	n < 0: all substrings
```

Edge cases for s and sep \(for example, empty strings\) are handled
as described in the documentation for Split.  


To split around the first instance of a separator, see Cut.  

[\(view code\)](<./Strings.hx#L126>)


## function stringFind


```haxe
function stringFind(pattern:String, text:String):Int
```


[\(view code\)](<./Strings.hx#L44>)


## function title


```haxe
function title(s:String):String
```


```
Title returns a copy of the string s with all Unicode letters that begin words
    mapped to their Unicode title case.
```

Deprecated: The rule Title uses for word boundaries does not handle Unicode
punctuation properly. Use golang.org/x/text/cases instead.  

[\(view code\)](<./Strings.hx#L251>)


## function toLower


```haxe
function toLower(s:String):String
```



ToLower returns s with all Unicode letters mapped to their lower case.  

[\(view code\)](<./Strings.hx#L218>)


## function toLowerSpecial


```haxe
function toLowerSpecial(c:stdgo._internal.unicode.SpecialCase, s:String):String
```


```
ToLowerSpecial returns a copy of the string s with all Unicode letters mapped to their
    lower case using the case mapping specified by c.
```
[\(view code\)](<./Strings.hx#L233>)


## function toTitle


```haxe
function toTitle(s:String):String
```


```
ToTitle returns a copy of the string s with all Unicode letters mapped to
    their Unicode title case.
```
[\(view code\)](<./Strings.hx#L223>)


## function toTitleSpecial


```haxe
function toTitleSpecial(c:stdgo._internal.unicode.SpecialCase, s:String):String
```


```
ToTitleSpecial returns a copy of the string s with all Unicode letters mapped to their
    Unicode title case, giving priority to the special casing rules.
```
[\(view code\)](<./Strings.hx#L238>)


## function toUpper


```haxe
function toUpper(s:String):String
```



ToUpper returns s with all Unicode letters mapped to their upper case.  

[\(view code\)](<./Strings.hx#L214>)


## function toUpperSpecial


```haxe
function toUpperSpecial(c:stdgo._internal.unicode.SpecialCase, s:String):String
```


```
ToUpperSpecial returns a copy of the string s with all Unicode letters mapped to their
    upper case using the case mapping specified by c.
```
[\(view code\)](<./Strings.hx#L228>)


## function toValidUTF8


```haxe
function toValidUTF8(s:String, replacement:String):String
```


```
ToValidUTF8 returns a copy of the string s with each run of invalid UTF-8 byte sequences
    replaced by the replacement string, which may be empty.
```
[\(view code\)](<./Strings.hx#L243>)


## function trim


```haxe
function trim(s:String, cutset:String):String
```


```
Trim returns a slice of the string s with all leading and
    trailing Unicode code points contained in cutset removed.
```
[\(view code\)](<./Strings.hx#L281>)


## function trimFunc


```haxe
function trimFunc(s:String, f:()):String
```


```
TrimFunc returns a slice of the string s with all leading
    and trailing Unicode code points c satisfying f(c) removed.
```
[\(view code\)](<./Strings.hx#L266>)


## function trimLeft


```haxe
function trimLeft(s:String, cutset:String):String
```


```
TrimLeft returns a slice of the string s with all leading
    Unicode code points contained in cutset removed.
```

To remove a prefix, use TrimPrefix instead.  

[\(view code\)](<./Strings.hx#L288>)


## function trimLeftFunc


```haxe
function trimLeftFunc(s:String, f:()):String
```


```
TrimLeftFunc returns a slice of the string s with all leading
    Unicode code points c satisfying f(c) removed.
```
[\(view code\)](<./Strings.hx#L256>)


## function trimPrefix


```haxe
function trimPrefix(s:String, prefix:String):String
```


```
TrimPrefix returns s without the provided leading prefix string.
    If s doesn't start with prefix, s is returned unchanged.
```
[\(view code\)](<./Strings.hx#L305>)


## function trimRight


```haxe
function trimRight(s:String, cutset:String):String
```


```
TrimRight returns a slice of the string s, with all trailing
    Unicode code points contained in cutset removed.
```

To remove a suffix, use TrimSuffix instead.  

[\(view code\)](<./Strings.hx#L295>)


## function trimRightFunc


```haxe
function trimRightFunc(s:String, f:()):String
```


```
TrimRightFunc returns a slice of the string s with all trailing
    Unicode code points c satisfying f(c) removed.
```
[\(view code\)](<./Strings.hx#L261>)


## function trimSpace


```haxe
function trimSpace(s:String):String
```


```
TrimSpace returns a slice of the string s, with all leading
    and trailing white space removed, as defined by Unicode.
```
[\(view code\)](<./Strings.hx#L300>)


## function trimSuffix


```haxe
function trimSuffix(s:String, suffix:String):String
```


```
TrimSuffix returns s without the provided trailing suffix string.
    If s doesn't end with suffix, s is returned unchanged.
```
[\(view code\)](<./Strings.hx#L310>)


# Typedefs


```haxe
import stdgo.strings.*
```


## typedef Builder


```haxe
typedef Builder = Dynamic;
```


## typedef Builder\_asInterface


```haxe
typedef Builder_asInterface = Dynamic;
```


## typedef Builder\_static\_extension


```haxe
typedef Builder_static_extension = Dynamic;
```


## typedef Reader


```haxe
typedef Reader = Dynamic;
```


## typedef Reader\_asInterface


```haxe
typedef Reader_asInterface = Dynamic;
```


## typedef Reader\_static\_extension


```haxe
typedef Reader_static_extension = Dynamic;
```


## typedef Replacer


```haxe
typedef Replacer = Dynamic;
```


## typedef Replacer\_asInterface


```haxe
typedef Replacer_asInterface = Dynamic;
```


## typedef Replacer\_static\_extension


```haxe
typedef Replacer_static_extension = Dynamic;
```


## typedef T\_appendSliceWriter


```haxe
typedef T_appendSliceWriter = stdgo._internal.strings.T_appendSliceWriter;
```


## typedef T\_appendSliceWriter\_asInterface


```haxe
typedef T_appendSliceWriter_asInterface = Dynamic;
```


## typedef T\_appendSliceWriter\_static\_extension


```haxe
typedef T_appendSliceWriter_static_extension = Dynamic;
```


## typedef T\_asciiSet


```haxe
typedef T_asciiSet = stdgo._internal.strings.T_asciiSet;
```


## typedef T\_asciiSet\_asInterface


```haxe
typedef T_asciiSet_asInterface = Dynamic;
```


## typedef T\_asciiSet\_static\_extension


```haxe
typedef T_asciiSet_static_extension = Dynamic;
```


## typedef T\_byteReplacer


```haxe
typedef T_byteReplacer = stdgo._internal.strings.T_byteReplacer;
```


## typedef T\_byteReplacer\_asInterface


```haxe
typedef T_byteReplacer_asInterface = Dynamic;
```


## typedef T\_byteReplacer\_static\_extension


```haxe
typedef T_byteReplacer_static_extension = Dynamic;
```


## typedef T\_byteStringReplacer


```haxe
typedef T_byteStringReplacer = Dynamic;
```


## typedef T\_byteStringReplacer\_asInterface


```haxe
typedef T_byteStringReplacer_asInterface = Dynamic;
```


## typedef T\_byteStringReplacer\_static\_extension


```haxe
typedef T_byteStringReplacer_static_extension = Dynamic;
```


## typedef T\_fieldsFunc\_1\_\_\_localname\_\_\_span


```haxe
typedef T_fieldsFunc_1___localname___span = Dynamic;
```


## typedef T\_genericReplacer


```haxe
typedef T_genericReplacer = Dynamic;
```


## typedef T\_genericReplacer\_asInterface


```haxe
typedef T_genericReplacer_asInterface = Dynamic;
```


## typedef T\_genericReplacer\_static\_extension


```haxe
typedef T_genericReplacer_static_extension = Dynamic;
```


## typedef T\_replacer


```haxe
typedef T_replacer = stdgo._internal.strings.T_replacer;
```


## typedef T\_replacer\_static\_extension


```haxe
typedef T_replacer_static_extension = Dynamic;
```


## typedef T\_singleStringReplacer


```haxe
typedef T_singleStringReplacer = Dynamic;
```


## typedef T\_singleStringReplacer\_asInterface


```haxe
typedef T_singleStringReplacer_asInterface = Dynamic;
```


## typedef T\_singleStringReplacer\_static\_extension


```haxe
typedef T_singleStringReplacer_static_extension = Dynamic;
```


## typedef T\_stringFinder


```haxe
typedef T_stringFinder = Dynamic;
```


## typedef T\_stringFinder\_asInterface


```haxe
typedef T_stringFinder_asInterface = Dynamic;
```


## typedef T\_stringFinder\_static\_extension


```haxe
typedef T_stringFinder_static_extension = Dynamic;
```


## typedef T\_stringWriter


```haxe
typedef T_stringWriter = Dynamic;
```


## typedef T\_stringWriter\_asInterface


```haxe
typedef T_stringWriter_asInterface = Dynamic;
```


## typedef T\_stringWriter\_static\_extension


```haxe
typedef T_stringWriter_static_extension = Dynamic;
```


## typedef T\_trieNode


```haxe
typedef T_trieNode = Dynamic;
```


## typedef T\_trieNode\_asInterface


```haxe
typedef T_trieNode_asInterface = Dynamic;
```


## typedef T\_trieNode\_static\_extension


```haxe
typedef T_trieNode_static_extension = Dynamic;
```


