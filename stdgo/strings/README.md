# Module: `stdgo.strings`

[(view library index)](../stdgo.md)


# Overview


# Index


- [class Strings](<#class-strings>)

  - [`function clone(_s:String):String`](<#strings-function-clone>)

  - [`function compare(_a:String, _b:String):Int`](<#strings-function-compare>)

  - [`function contains(_s:String, _substr:String):Bool`](<#strings-function-contains>)

  - [`function containsAny(_s:String, _chars:String):Bool`](<#strings-function-containsany>)

  - [`function containsFunc(_s:String, _f:()):Bool`](<#strings-function-containsfunc>)

  - [`function containsRune(_s:String, _r:Int):Bool`](<#strings-function-containsrune>)

  - [`function count(_s:String, _substr:String):Int`](<#strings-function-count>)

  - [`function cut(_s:String, _sep:String):stdgo.Tuple3<String, String, Bool>`](<#strings-function-cut>)

  - [`function cutPrefix(_s:String, _prefix:String):stdgo.Tuple<String, Bool>`](<#strings-function-cutprefix>)

  - [`function cutSuffix(_s:String, _suffix:String):stdgo.Tuple<String, Bool>`](<#strings-function-cutsuffix>)

  - [`function dumpTables(_pattern:String):stdgo.Tuple<Array<Int>, Array<Int>>`](<#strings-function-dumptables>)

  - [`function equalFold(_s:String, _t:String):Bool`](<#strings-function-equalfold>)

  - [`function fields(_s:String):Array<String>`](<#strings-function-fields>)

  - [`function fieldsFunc(_s:String, _f:()):Array<String>`](<#strings-function-fieldsfunc>)

  - [`function hasPrefix(_s:String, _prefix:String):Bool`](<#strings-function-hasprefix>)

  - [`function hasSuffix(_s:String, _suffix:String):Bool`](<#strings-function-hassuffix>)

  - [`function index(_s:String, _substr:String):Int`](<#strings-function-index>)

  - [`function indexAny(_s:String, _chars:String):Int`](<#strings-function-indexany>)

  - [`function indexByte(_s:String, _c:UInt):Int`](<#strings-function-indexbyte>)

  - [`function indexFunc(_s:String, _f:()):Int`](<#strings-function-indexfunc>)

  - [`function indexRune(_s:String, _r:Int):Int`](<#strings-function-indexrune>)

  - [`function join(_elems:Array<String>, _sep:String):String`](<#strings-function-join>)

  - [`function lastIndex(_s:String, _substr:String):Int`](<#strings-function-lastindex>)

  - [`function lastIndexAny(_s:String, _chars:String):Int`](<#strings-function-lastindexany>)

  - [`function lastIndexByte(_s:String, _c:UInt):Int`](<#strings-function-lastindexbyte>)

  - [`function lastIndexFunc(_s:String, _f:()):Int`](<#strings-function-lastindexfunc>)

  - [`function map_(_mapping:(), _s:String):String`](<#strings-function-map_>)

  - [`function newReader(_s:String):stdgo.strings.Reader`](<#strings-function-newreader>)

  - [`function newReplacer(_oldnew:haxe.Rest<String>):stdgo.strings.Replacer`](<#strings-function-newreplacer>)

  - [`function repeat(_s:String, _count:Int):String`](<#strings-function-repeat>)

  - [`function replace(_s:String, _old:String, _new:String, _n:Int):String`](<#strings-function-replace>)

  - [`function replaceAll(_s:String, _old:String, _new:String):String`](<#strings-function-replaceall>)

  - [`function split(_s:String, _sep:String):Array<String>`](<#strings-function-split>)

  - [`function splitAfter(_s:String, _sep:String):Array<String>`](<#strings-function-splitafter>)

  - [`function splitAfterN(_s:String, _sep:String, _n:Int):Array<String>`](<#strings-function-splitaftern>)

  - [`function splitN(_s:String, _sep:String, _n:Int):Array<String>`](<#strings-function-splitn>)

  - [`function stringFind(_pattern:String, _text:String):Int`](<#strings-function-stringfind>)

  - [`function title(_s:String):String`](<#strings-function-title>)

  - [`function toLower(_s:String):String`](<#strings-function-tolower>)

  - [`function toLowerSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:String):String`](<#strings-function-tolowerspecial>)

  - [`function toTitle(_s:String):String`](<#strings-function-totitle>)

  - [`function toTitleSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:String):String`](<#strings-function-totitlespecial>)

  - [`function toUpper(_s:String):String`](<#strings-function-toupper>)

  - [`function toUpperSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:String):String`](<#strings-function-toupperspecial>)

  - [`function toValidUTF8(_s:String, _replacement:String):String`](<#strings-function-tovalidutf8>)

  - [`function trim(_s:String, _cutset:String):String`](<#strings-function-trim>)

  - [`function trimFunc(_s:String, _f:()):String`](<#strings-function-trimfunc>)

  - [`function trimLeft(_s:String, _cutset:String):String`](<#strings-function-trimleft>)

  - [`function trimLeftFunc(_s:String, _f:()):String`](<#strings-function-trimleftfunc>)

  - [`function trimPrefix(_s:String, _prefix:String):String`](<#strings-function-trimprefix>)

  - [`function trimRight(_s:String, _cutset:String):String`](<#strings-function-trimright>)

  - [`function trimRightFunc(_s:String, _f:()):String`](<#strings-function-trimrightfunc>)

  - [`function trimSpace(_s:String):String`](<#strings-function-trimspace>)

  - [`function trimSuffix(_s:String, _suffix:String):String`](<#strings-function-trimsuffix>)

- [typedef T\_appendSliceWriter](<#typedef-t_appendslicewriter>)

- [typedef T\_asciiSet](<#typedef-t_asciiset>)

- [typedef T\_byteReplacer](<#typedef-t_bytereplacer>)

- [typedef T\_replacer](<#typedef-t_replacer>)

- [abstract Builder](<#abstract-builder>)

- [abstract Reader](<#abstract-reader>)

- [abstract Replacer](<#abstract-replacer>)

- [abstract T\_trieNode](<#abstract-t_trienode>)

- [abstract T\_genericReplacer](<#abstract-t_genericreplacer>)

- [abstract T\_stringWriter](<#abstract-t_stringwriter>)

- [abstract T\_singleStringReplacer](<#abstract-t_singlestringreplacer>)

- [abstract T\_byteStringReplacer](<#abstract-t_bytestringreplacer>)

- [abstract T\_stringFinder](<#abstract-t_stringfinder>)

- [abstract T\_fieldsFunc\_\_\_localname\_\_\_span\_9921](<#abstract-t_fieldsfunclocalnamespan_9921>)

# Classes


```haxe
import
```


## class Strings


```
{
    	i_2805469 = 0
    	_ = 0
    	gotoNext = 2805477
    	_ = gotoNext == 2805477
    	if i_2805469 < len(s) && i_2805469 < len(t) {
    		gotoNext = 2805513
    		_ = gotoNext == 2805513
    		sr_2805517 = s[i_2805469]
    		tr_2805530 = t[i_2805469]
    		if sr_2805517|tr_2805530 >= 128 {
    			gotoNext = 2805569
    			_ = gotoNext == 2805569
    			gotoNext = 2805927
    			gotoNext = 2805613
    		} else {
    			gotoNext = 2805613
}
    		_ = gotoNext == 2805613
    		if tr_2805530 == sr_2805517 {
    			gotoNext = 2805625
    			_ = gotoNext == 2805625
    			i_2805469++
    			gotoNext = 2805477
    			gotoNext = 2805690
    		} else {
    			gotoNext = 2805690
}
    		_ = gotoNext == 2805690
    		if tr_2805530 < sr_2805517 {
    			gotoNext = 2805701
    			_ = gotoNext == 2805701
    			tr_2805530, sr_2805517 = sr_2805517, tr_2805530
    			gotoNext = 2805776
    		} else {
    			gotoNext = 2805776
}
    		_ = gotoNext == 2805776
    		if 65 <= sr_2805517 && sr_2805517 <= 90 && tr_2805530 == sr_2805517+97-65 {
    			gotoNext = 2805822
    			_ = gotoNext == 2805822
    			i_2805469++
    			gotoNext = 2805477
    			gotoNext = 2805842
    		} else {
    			gotoNext = 2805842
}
    		_ = gotoNext == 2805842
    		return false
    		i_2805469++
    		gotoNext = 2805477
    	} else {
    		gotoNext = 2805902
}
    	_ = gotoNext == 2805902
    	return len(s) == len(t)
    	gotoNext = 2805927
    	_ = gotoNext == 2805927
    	s = s[i_2805469:]
    	t = t[i_2805469:]
    	keys_2805962 = []int{}
    	values_2805962 = []rune{}
    	for key, value := range s {
    		keys_2805962 = append(keys_2805962, key)
    		values_2805962 = append(values_2805962, value)
}
    	if 0 < len(keys_2805962) {
    		gotoNext = 2806893
    		_ = gotoNext == 2806893
    		i_2805975 = 0
    		gotoNext = 2806894
    		_ = gotoNext == 2806894
    		if i_2805975 < len(keys_2805962) {
    			gotoNext = 2805983
    			_ = gotoNext == 2805983
    			sr_2805969 = values_2805962[i_2805975]
    			_ = keys_2805962[i_2805975]
    			if len(t) == 0 {
    				gotoNext = 2806052
    				_ = gotoNext == 2806052
    				return false
    				gotoNext = 2806121
    			} else {
    				gotoNext = 2806121
}
    			_ = gotoNext == 2806121
    			if t[0] < 128 {
    				gotoNext = 2806159
    				_ = gotoNext == 2806159
    				tr_2806125, t = rune(t[0]), t[1:]
    				gotoNext = 2806343
    			} else {
    				gotoNext = 2806199
    				_ = gotoNext == 2806199
    				r_2806204, size_2806207 = utf8.DecodeRuneInString(t)
    				tr_2806125, t = r_2806204, t[size_2806207:]
    				gotoNext = 2806343
}
    			_ = gotoNext == 2806343
    			if tr_2806125 == sr_2805969 {
    				gotoNext = 2806355
    				_ = gotoNext == 2806355
    				i_2805975++
    				gotoNext = 2806894
    				gotoNext = 2806420
    			} else {
    				gotoNext = 2806420
}
    			_ = gotoNext == 2806420
    			if tr_2806125 < sr_2805969 {
    				gotoNext = 2806431
    				_ = gotoNext == 2806431
    				tr_2806125, sr_2805969 = sr_2805969, tr_2806125
    				gotoNext = 2806485
    			} else {
    				gotoNext = 2806485
}
    			_ = gotoNext == 2806485
    			if tr_2806125 < 128 {
    				gotoNext = 2806507
    				_ = gotoNext == 2806507
    				if 65 <= sr_2805969 && sr_2805969 <= 90 && tr_2806125 == sr_2805969+97-65 {
    					gotoNext = 2806607
    					_ = gotoNext == 2806607
    					i_2805975++
    					gotoNext = 2806894
    					gotoNext = 2806630
    				} else {
    					gotoNext = 2806630
}
    				_ = gotoNext == 2806630
    				return false
    				gotoNext = 2806760
    			} else {
    				gotoNext = 2806760
}
    			_ = gotoNext == 2806760
    			r_2806760 = unicode.SimpleFold(sr_2805969)
    			_ = 0
    			gotoNext = 2806790
    			_ = gotoNext == 2806790
    			if r_2806760 != sr_2805969 && r_2806760 < tr_2806125 {
    				gotoNext = 2806812
    				_ = gotoNext == 2806812
    				r_2806760 = unicode.SimpleFold(r_2806760)
    				gotoNext = 2806790
    			} else {
    				gotoNext = 2806849
}
    			_ = gotoNext == 2806849
    			if r_2806760 == tr_2806125 {
    				gotoNext = 2806860
    				_ = gotoNext == 2806860
    				i_2805975++
    				gotoNext = 2806894
    				gotoNext = 2806880
    			} else {
    				gotoNext = 2806880
}
    			_ = gotoNext == 2806880
    			return false
    			i_2805975++
    			gotoNext = 2806894
    		} else {
    			gotoNext = 2806967
}
    		gotoNext = 2806967
    	} else {
    		gotoNext = 2806967
}
    	_ = gotoNext == 2806967
    	return len(t) == 0
    	gotoNext = -1
    }
```
### Strings function clone


```haxe
function clone(_s:String):String
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
[\(view code\)](<./Strings.hx#L626>)


### Strings function compare


```haxe
function compare(_a:String, _b:String):Int
```


```
Compare returns an integer comparing two strings lexicographically.
        The result will be 0 if a == b, -1 if a < b, and +1 if a > b.
```

Compare is included only for symmetry with package bytes.
It is usually clearer and always faster to use the built\-in
string comparison operators ==, \<, \>, and so on.  

[\(view code\)](<./Strings.hx#L637>)


### Strings function contains


```haxe
function contains(_s:String, _substr:String):Bool
```



Contains reports whether substr is within s.  

[\(view code\)](<./Strings.hx#L677>)


### Strings function containsAny


```haxe
function containsAny(_s:String, _chars:String):Bool
```



ContainsAny reports whether any Unicode code points in chars are within s.  

[\(view code\)](<./Strings.hx#L683>)


### Strings function containsFunc


```haxe
function containsFunc(_s:String, _f:()):Bool
```



ContainsFunc reports whether any Unicode code points r within s satisfy f\(r\).  

[\(view code\)](<./Strings.hx#L695>)


### Strings function containsRune


```haxe
function containsRune(_s:String, _r:Int):Bool
```



ContainsRune reports whether the Unicode code point r is within s.  

[\(view code\)](<./Strings.hx#L689>)


### Strings function count


```haxe
function count(_s:String, _substr:String):Int
```


```
Count counts the number of non-overlapping instances of substr in s.
        If substr is an empty string, Count returns 1 + the number of Unicode code points in s.
```
[\(view code\)](<./Strings.hx#L671>)


### Strings function cut


```haxe
function cut(_s:String, _sep:String):stdgo.Tuple3<String, String, Bool>
```


```
Cut slices s around the first instance of sep,
        returning the text before and after sep.
        The found result reports whether sep appears in s.
        If sep does not appear in s, cut returns s, "", false.
```
[\(view code\)](<./Strings.hx#L1049>)


### Strings function cutPrefix


```haxe
function cutPrefix(_s:String, _prefix:String):stdgo.Tuple<String, Bool>
```


```
CutPrefix returns s without the provided leading prefix string
        and reports whether it found the prefix.
        If s doesn't start with prefix, CutPrefix returns s, false.
        If prefix is the empty string, CutPrefix returns s, true.
```
[\(view code\)](<./Strings.hx#L1061>)


### Strings function cutSuffix


```haxe
function cutSuffix(_s:String, _suffix:String):stdgo.Tuple<String, Bool>
```


```
CutSuffix returns s without the provided ending suffix string
        and reports whether it found the suffix.
        If s doesn't end with suffix, CutSuffix returns s, false.
        If suffix is the empty string, CutSuffix returns s, true.
```
[\(view code\)](<./Strings.hx#L1073>)


### Strings function dumpTables


```haxe
function dumpTables(_pattern:String):stdgo.Tuple<Array<Int>, Array<Int>>
```


[\(view code\)](<./Strings.hx#L643>)


### Strings function equalFold


```haxe
function equalFold(_s:String, _t:String):Bool
```


```
EqualFold reports whether s and t, interpreted as UTF-8 strings,
        are equal under simple Unicode case-folding, which is a more general
        form of case-insensitivity.
```
[\(view code\)](<./Strings.hx#L1034>)


### Strings function fields


```haxe
function fields(_s:String):Array<String>
```


```
Fields splits the string s around each instance of one or more consecutive white space
        characters, as defined by unicode.IsSpace, returning a slice of substrings of s or an
        empty slice if s contains only white space.
```
[\(view code\)](<./Strings.hx#L812>)


### Strings function fieldsFunc


```haxe
function fieldsFunc(_s:String, _f:()):Array<String>
```


```
FieldsFunc splits the string s at each run of Unicode code points c satisfying f(c)
        and returns an array of slices of s. If all code points in s satisfy f(c) or the
        string is empty, an empty slice is returned.
```

FieldsFunc makes no guarantees about the order in which it calls f\(c\)
and assumes that f always returns the same value for a given c.  

[\(view code\)](<./Strings.hx#L823>)


### Strings function hasPrefix


```haxe
function hasPrefix(_s:String, _prefix:String):Bool
```



HasPrefix tests whether the string s begins with prefix.  

[\(view code\)](<./Strings.hx#L838>)


### Strings function hasSuffix


```haxe
function hasSuffix(_s:String, _suffix:String):Bool
```



HasSuffix tests whether the string s ends with suffix.  

[\(view code\)](<./Strings.hx#L844>)


### Strings function index


```haxe
function index(_s:String, _substr:String):Int
```



Index returns the index of the first instance of substr in s, or \-1 if substr is not present in s.  

[\(view code\)](<./Strings.hx#L1040>)


### Strings function indexAny


```haxe
function indexAny(_s:String, _chars:String):Int
```


```
IndexAny returns the index of the first instance of any Unicode code point
        from chars in s, or -1 if no Unicode code point from chars is present in s.
```
[\(view code\)](<./Strings.hx#L724>)


### Strings function indexByte


```haxe
function indexByte(_s:String, _c:UInt):Int
```



IndexByte returns the index of the first instance of c in s, or \-1 if c is not present in s.  

[\(view code\)](<./Strings.hx#L708>)


### Strings function indexFunc


```haxe
function indexFunc(_s:String, _f:()):Int
```


```
IndexFunc returns the index into s of the first Unicode
        code point satisfying f(c), or -1 if none do.
```
[\(view code\)](<./Strings.hx#L950>)


### Strings function indexRune


```haxe
function indexRune(_s:String, _r:Int):Int
```


```
IndexRune returns the index of the first instance of the Unicode code point
        r, or -1 if rune is not present in s.
        If r is utf8.RuneError, it returns the first instance of any
        invalid UTF-8 byte sequence.
```
[\(view code\)](<./Strings.hx#L717>)


### Strings function join


```haxe
function join(_elems:Array<String>, _sep:String):String
```


```
Join concatenates the elements of its first argument to create a single string. The separator
        string sep is placed between elements in the resulting string.
```
[\(view code\)](<./Strings.hx#L831>)


### Strings function lastIndex


```haxe
function lastIndex(_s:String, _substr:String):Int
```



LastIndex returns the index of the last instance of substr in s, or \-1 if substr is not present in s.  

[\(view code\)](<./Strings.hx#L702>)


### Strings function lastIndexAny


```haxe
function lastIndexAny(_s:String, _chars:String):Int
```


```
LastIndexAny returns the index of the last instance of any Unicode code
        point from chars in s, or -1 if no Unicode code point from chars is
        present in s.
```
[\(view code\)](<./Strings.hx#L732>)


### Strings function lastIndexByte


```haxe
function lastIndexByte(_s:String, _c:UInt):Int
```



LastIndexByte returns the index of the last instance of c in s, or \-1 if c is not present in s.  

[\(view code\)](<./Strings.hx#L738>)


### Strings function lastIndexFunc


```haxe
function lastIndexFunc(_s:String, _f:()):Int
```


```
LastIndexFunc returns the index into s of the last
        Unicode code point satisfying f(c), or -1 if none do.
```
[\(view code\)](<./Strings.hx#L958>)


### Strings function map\_


```haxe
function map_(_mapping:(), _s:String):String
```


```
Map returns a copy of the string s with all its characters modified
        according to the mapping function. If mapping returns a negative value, the character is
        dropped from the string with no replacement.
```
[\(view code\)](<./Strings.hx#L852>)


### Strings function newReader


```haxe
function newReader(_s:String):stdgo.strings.Reader
```


```
NewReader returns a new Reader reading from s.
        It is similar to bytes.NewBufferString but more efficient and non-writable.
```
[\(view code\)](<./Strings.hx#L653>)


### Strings function newReplacer


```haxe
function newReplacer(_oldnew:haxe.Rest<String>):stdgo.strings.Replacer
```


```
NewReplacer returns a new Replacer from a list of old, new string
        pairs. Replacements are performed in the order they appear in the
        target string, without overlapping matches. The old string
        comparisons are done in argument order.
```

NewReplacer panics if given an odd number of arguments.  

[\(view code\)](<./Strings.hx#L664>)


### Strings function repeat


```haxe
function repeat(_s:String, _count:Int):String
```



Repeat returns a new string consisting of count copies of the string s.  


It panics if count is negative or if the result of \(len\(s\) \* count\)
overflows.  

[\(view code\)](<./Strings.hx#L862>)


### Strings function replace


```haxe
function replace(_s:String, _old:String, _new:String, _n:Int):String
```


```
Replace returns a copy of the string s with the first n
        non-overlapping instances of old replaced by new.
        If old is empty, it matches at the beginning of the string
        and after each UTF-8 sequence, yielding up to k+1 replacements
        for a k-rune string.
        If n < 0, there is no limit on the number of replacements.
```
[\(view code\)](<./Strings.hx#L1016>)


### Strings function replaceAll


```haxe
function replaceAll(_s:String, _old:String, _new:String):String
```


```
ReplaceAll returns a copy of the string s with all
        non-overlapping instances of old replaced by new.
        If old is empty, it matches at the beginning of the string
        and after each UTF-8 sequence, yielding up to k+1 replacements
        for a k-rune string.
```
[\(view code\)](<./Strings.hx#L1026>)


### Strings function split


```haxe
function split(_s:String, _sep:String):Array<String>
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

[\(view code\)](<./Strings.hx#L789>)


### Strings function splitAfter


```haxe
function splitAfter(_s:String, _sep:String):Array<String>
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

[\(view code\)](<./Strings.hx#L804>)


### Strings function splitAfterN


```haxe
function splitAfterN(_s:String, _sep:String, _n:Int):Array<String>
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

[\(view code\)](<./Strings.hx#L772>)


### Strings function splitN


```haxe
function splitN(_s:String, _sep:String, _n:Int):Array<String>
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

[\(view code\)](<./Strings.hx#L756>)


### Strings function stringFind


```haxe
function stringFind(_pattern:String, _text:String):Int
```


[\(view code\)](<./Strings.hx#L640>)


### Strings function title


```haxe
function title(_s:String):String
```


```
Title returns a copy of the string s with all Unicode letters that begin words
        mapped to their Unicode title case.
```

Deprecated: The rule Title uses for word boundaries does not handle Unicode
punctuation properly. Use golang.org/x/text/cases instead.  

[\(view code\)](<./Strings.hx#L919>)


### Strings function toLower


```haxe
function toLower(_s:String):String
```



ToLower returns s with all Unicode letters mapped to their lower case.  

[\(view code\)](<./Strings.hx#L874>)


### Strings function toLowerSpecial


```haxe
function toLowerSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:String):String
```


```
ToLowerSpecial returns a copy of the string s with all Unicode letters mapped to their
        lower case using the case mapping specified by c.
```
[\(view code\)](<./Strings.hx#L895>)


### Strings function toTitle


```haxe
function toTitle(_s:String):String
```


```
ToTitle returns a copy of the string s with all Unicode letters mapped to
        their Unicode title case.
```
[\(view code\)](<./Strings.hx#L881>)


### Strings function toTitleSpecial


```haxe
function toTitleSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:String):String
```


```
ToTitleSpecial returns a copy of the string s with all Unicode letters mapped to their
        Unicode title case, giving priority to the special casing rules.
```
[\(view code\)](<./Strings.hx#L902>)


### Strings function toUpper


```haxe
function toUpper(_s:String):String
```



ToUpper returns s with all Unicode letters mapped to their upper case.  

[\(view code\)](<./Strings.hx#L868>)


### Strings function toUpperSpecial


```haxe
function toUpperSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:String):String
```


```
ToUpperSpecial returns a copy of the string s with all Unicode letters mapped to their
        upper case using the case mapping specified by c.
```
[\(view code\)](<./Strings.hx#L888>)


### Strings function toValidUTF8


```haxe
function toValidUTF8(_s:String, _replacement:String):String
```


```
ToValidUTF8 returns a copy of the string s with each run of invalid UTF-8 byte sequences
        replaced by the replacement string, which may be empty.
```
[\(view code\)](<./Strings.hx#L909>)


### Strings function trim


```haxe
function trim(_s:String, _cutset:String):String
```


```
Trim returns a slice of the string s with all leading and
        trailing Unicode code points contained in cutset removed.
```
[\(view code\)](<./Strings.hx#L966>)


### Strings function trimFunc


```haxe
function trimFunc(_s:String, _f:()):String
```


```
TrimFunc returns a slice of the string s with all leading
        and trailing Unicode code points c satisfying f(c) removed.
```
[\(view code\)](<./Strings.hx#L942>)


### Strings function trimLeft


```haxe
function trimLeft(_s:String, _cutset:String):String
```


```
TrimLeft returns a slice of the string s with all leading
        Unicode code points contained in cutset removed.
```

To remove a prefix, use TrimPrefix instead.  

[\(view code\)](<./Strings.hx#L975>)


### Strings function trimLeftFunc


```haxe
function trimLeftFunc(_s:String, _f:()):String
```


```
TrimLeftFunc returns a slice of the string s with all leading
        Unicode code points c satisfying f(c) removed.
```
[\(view code\)](<./Strings.hx#L926>)


### Strings function trimPrefix


```haxe
function trimPrefix(_s:String, _prefix:String):String
```


```
TrimPrefix returns s without the provided leading prefix string.
        If s doesn't start with prefix, s is returned unchanged.
```
[\(view code\)](<./Strings.hx#L998>)


### Strings function trimRight


```haxe
function trimRight(_s:String, _cutset:String):String
```


```
TrimRight returns a slice of the string s, with all trailing
        Unicode code points contained in cutset removed.
```

To remove a suffix, use TrimSuffix instead.  

[\(view code\)](<./Strings.hx#L984>)


### Strings function trimRightFunc


```haxe
function trimRightFunc(_s:String, _f:()):String
```


```
TrimRightFunc returns a slice of the string s with all trailing
        Unicode code points c satisfying f(c) removed.
```
[\(view code\)](<./Strings.hx#L934>)


### Strings function trimSpace


```haxe
function trimSpace(_s:String):String
```


```
TrimSpace returns a slice of the string s, with all leading
        and trailing white space removed, as defined by Unicode.
```
[\(view code\)](<./Strings.hx#L991>)


### Strings function trimSuffix


```haxe
function trimSuffix(_s:String, _suffix:String):String
```


```
TrimSuffix returns s without the provided trailing suffix string.
        If s doesn't end with suffix, s is returned unchanged.
```
[\(view code\)](<./Strings.hx#L1005>)


# Typedefs


```haxe
import
```


## typedef T\_appendSliceWriter


```haxe
typedef T_appendSliceWriter = stdgo._internal.strings.T_appendSliceWriter;
```


## typedef T\_asciiSet


```haxe
typedef T_asciiSet = stdgo._internal.strings.T_asciiSet;
```


## typedef T\_byteReplacer


```haxe
typedef T_byteReplacer = stdgo._internal.strings.T_byteReplacer;
```


## typedef T\_replacer


```haxe
typedef T_replacer = stdgo._internal.strings.T_replacer;
```


# Abstracts


## abstract Builder


[\(view file containing code\)](<./Strings.hx>)


## abstract Reader


[\(view file containing code\)](<./Strings.hx>)


## abstract Replacer


[\(view file containing code\)](<./Strings.hx>)


## abstract T\_trieNode


[\(view file containing code\)](<./Strings.hx>)


## abstract T\_genericReplacer


[\(view file containing code\)](<./Strings.hx>)


## abstract T\_stringWriter


[\(view file containing code\)](<./Strings.hx>)


## abstract T\_singleStringReplacer


[\(view file containing code\)](<./Strings.hx>)


## abstract T\_byteStringReplacer


[\(view file containing code\)](<./Strings.hx>)


## abstract T\_stringFinder


[\(view file containing code\)](<./Strings.hx>)


## abstract T\_fieldsFunc\_\_\_localname\_\_\_span\_9921


[\(view file containing code\)](<./Strings.hx>)


