package stdgo.strings;
/**
    // Package strings implements simple functions to manipulate UTF-8 encoded strings.
    //
    // For information about UTF-8 strings in Go, see https://blog.golang.org/strings.
**/
private var __go2hxdoc__package : Bool;
typedef T_replacer = stdgo._internal.strings.Strings.T_replacer;
@:invalid typedef Builder = Dynamic;
@:invalid typedef Reader = Dynamic;
@:invalid typedef Replacer = Dynamic;
@:invalid typedef T_trieNode = Dynamic;
@:invalid typedef T_genericReplacer = Dynamic;
@:invalid typedef T_stringWriter = Dynamic;
@:invalid typedef T_singleStringReplacer = Dynamic;
@:invalid typedef T_byteStringReplacer = Dynamic;
@:invalid typedef T_stringFinder = Dynamic;
typedef T_appendSliceWriter = stdgo._internal.strings.Strings.T_appendSliceWriter;
typedef T_byteReplacer = stdgo._internal.strings.Strings.T_byteReplacer;
typedef T_asciiSet = stdgo._internal.strings.Strings.T_asciiSet;
/**
    // Clone returns a fresh copy of s.
    // It guarantees to make a copy of s into a new allocation,
    // which can be important when retaining only a small substring
    // of a much larger string. Using Clone can help such programs
    // use less memory. Of course, since using Clone makes a copy,
    // overuse of Clone can make programs use more memory.
    // Clone should typically be used only rarely, and only when
    // profiling indicates that it is needed.
    // For strings of length zero the string "" will be returned
    // and no allocation is made.
**/
inline function clone(s:String):String throw "not implemented";
/**
    // Compare returns an integer comparing two strings lexicographically.
    // The result will be 0 if a == b, -1 if a < b, and +1 if a > b.
    //
    // Compare is included only for symmetry with package bytes.
    // It is usually clearer and always faster to use the built-in
    // string comparison operators ==, <, >, and so on.
**/
inline function compare(a:String, b:String):Int throw "not implemented";
inline function stringFind(pattern:String, text:String):Int throw "not implemented";
inline function dumpTables(pattern:String):stdgo.Tuple<Array<Int>, Array<Int>> throw "not implemented";
/**
    // NewReader returns a new Reader reading from s.
    // It is similar to bytes.NewBufferString but more efficient and non-writable.
**/
inline function newReader(s:String):Reader throw "not implemented";
/**
    // NewReplacer returns a new Replacer from a list of old, new string
    // pairs. Replacements are performed in the order they appear in the
    // target string, without overlapping matches. The old string
    // comparisons are done in argument order.
    //
    // NewReplacer panics if given an odd number of arguments.
**/
inline function newReplacer(oldnew:haxe.Rest<stdgo.GoString>):Replacer throw "not implemented";
/**
    // Count counts the number of non-overlapping instances of substr in s.
    // If substr is an empty string, Count returns 1 + the number of Unicode code points in s.
**/
inline function count(s:String, substr:String):Int throw "not implemented";
/**
    // Contains reports whether substr is within s.
**/
inline function contains(s:String, substr:String):Bool throw "not implemented";
/**
    // ContainsAny reports whether any Unicode code points in chars are within s.
**/
inline function containsAny(s:String, chars:String):Bool throw "not implemented";
/**
    // ContainsRune reports whether the Unicode code point r is within s.
**/
inline function containsRune(s:String, r:Int):Bool throw "not implemented";
/**
    // ContainsFunc reports whether any Unicode code points r within s satisfy f(r).
**/
inline function containsFunc(s:String, f:stdgo.GoRune -> Bool):Bool throw "not implemented";
/**
    // LastIndex returns the index of the last instance of substr in s, or -1 if substr is not present in s.
**/
inline function lastIndex(s:String, substr:String):Int throw "not implemented";
/**
    // IndexByte returns the index of the first instance of c in s, or -1 if c is not present in s.
**/
inline function indexByte(s:String, c:Int):Int throw "not implemented";
/**
    // IndexRune returns the index of the first instance of the Unicode code point
    // r, or -1 if rune is not present in s.
    // If r is utf8.RuneError, it returns the first instance of any
    // invalid UTF-8 byte sequence.
**/
inline function indexRune(s:String, r:Int):Int throw "not implemented";
/**
    // IndexAny returns the index of the first instance of any Unicode code point
    // from chars in s, or -1 if no Unicode code point from chars is present in s.
**/
inline function indexAny(s:String, chars:String):Int throw "not implemented";
/**
    // LastIndexAny returns the index of the last instance of any Unicode code
    // point from chars in s, or -1 if no Unicode code point from chars is
    // present in s.
**/
inline function lastIndexAny(s:String, chars:String):Int throw "not implemented";
/**
    // LastIndexByte returns the index of the last instance of c in s, or -1 if c is not present in s.
**/
inline function lastIndexByte(s:String, c:Int):Int throw "not implemented";
/**
    // SplitN slices s into substrings separated by sep and returns a slice of
    // the substrings between those separators.
    //
    // The count determines the number of substrings to return:
    //
    //	n > 0: at most n substrings; the last substring will be the unsplit remainder.
    //	n == 0: the result is nil (zero substrings)
    //	n < 0: all substrings
    //
    // Edge cases for s and sep (for example, empty strings) are handled
    // as described in the documentation for Split.
    //
    // To split around the first instance of a separator, see Cut.
**/
inline function splitN(s:String, sep:String, n:Int):Array<String> throw "not implemented";
/**
    // SplitAfterN slices s into substrings after each instance of sep and
    // returns a slice of those substrings.
    //
    // The count determines the number of substrings to return:
    //
    //	n > 0: at most n substrings; the last substring will be the unsplit remainder.
    //	n == 0: the result is nil (zero substrings)
    //	n < 0: all substrings
    //
    // Edge cases for s and sep (for example, empty strings) are handled
    // as described in the documentation for SplitAfter.
**/
inline function splitAfterN(s:String, sep:String, n:Int):Array<String> throw "not implemented";
/**
    // Split slices s into all substrings separated by sep and returns a slice of
    // the substrings between those separators.
    //
    // If s does not contain sep and sep is not empty, Split returns a
    // slice of length 1 whose only element is s.
    //
    // If sep is empty, Split splits after each UTF-8 sequence. If both s
    // and sep are empty, Split returns an empty slice.
    //
    // It is equivalent to SplitN with a count of -1.
    //
    // To split around the first instance of a separator, see Cut.
**/
inline function split(s:String, sep:String):Array<String> throw "not implemented";
/**
    // SplitAfter slices s into all substrings after each instance of sep and
    // returns a slice of those substrings.
    //
    // If s does not contain sep and sep is not empty, SplitAfter returns
    // a slice of length 1 whose only element is s.
    //
    // If sep is empty, SplitAfter splits after each UTF-8 sequence. If
    // both s and sep are empty, SplitAfter returns an empty slice.
    //
    // It is equivalent to SplitAfterN with a count of -1.
**/
inline function splitAfter(s:String, sep:String):Array<String> throw "not implemented";
/**
    // Fields splits the string s around each instance of one or more consecutive white space
    // characters, as defined by unicode.IsSpace, returning a slice of substrings of s or an
    // empty slice if s contains only white space.
**/
inline function fields(s:String):Array<String> throw "not implemented";
@:invalid typedef T_fieldsFunc_1___localname___span = Dynamic;
/**
    // FieldsFunc splits the string s at each run of Unicode code points c satisfying f(c)
    // and returns an array of slices of s. If all code points in s satisfy f(c) or the
    // string is empty, an empty slice is returned.
    //
    // FieldsFunc makes no guarantees about the order in which it calls f(c)
    // and assumes that f always returns the same value for a given c.
**/
inline function fieldsFunc(s:String, f:stdgo.GoRune -> Bool):Array<String> throw "not implemented";
/**
    // Join concatenates the elements of its first argument to create a single string. The separator
    // string sep is placed between elements in the resulting string.
**/
inline function join(elems:Array<String>, sep:String):String throw "not implemented";
/**
    // HasPrefix tests whether the string s begins with prefix.
**/
inline function hasPrefix(s:String, prefix:String):Bool throw "not implemented";
/**
    // HasSuffix tests whether the string s ends with suffix.
**/
inline function hasSuffix(s:String, suffix:String):Bool throw "not implemented";
/**
    // Map returns a copy of the string s with all its characters modified
    // according to the mapping function. If mapping returns a negative value, the character is
    // dropped from the string with no replacement.
**/
inline function map_(mapping:stdgo.GoRune -> stdgo.GoRune, s:String):String throw "not implemented";
/**
    // Repeat returns a new string consisting of count copies of the string s.
    //
    // It panics if count is negative or if the result of (len(s) * count)
    // overflows.
**/
inline function repeat(s:String, count:Int):String throw "not implemented";
/**
    // ToUpper returns s with all Unicode letters mapped to their upper case.
**/
inline function toUpper(s:String):String throw "not implemented";
/**
    // ToLower returns s with all Unicode letters mapped to their lower case.
**/
inline function toLower(s:String):String throw "not implemented";
/**
    // ToTitle returns a copy of the string s with all Unicode letters mapped to
    // their Unicode title case.
**/
inline function toTitle(s:String):String throw "not implemented";
/**
    // ToUpperSpecial returns a copy of the string s with all Unicode letters mapped to their
    // upper case using the case mapping specified by c.
**/
inline function toUpperSpecial(c:stdgo._internal.unicode.Unicode.SpecialCase, s:String):String throw "not implemented";
/**
    // ToLowerSpecial returns a copy of the string s with all Unicode letters mapped to their
    // lower case using the case mapping specified by c.
**/
inline function toLowerSpecial(c:stdgo._internal.unicode.Unicode.SpecialCase, s:String):String throw "not implemented";
/**
    // ToTitleSpecial returns a copy of the string s with all Unicode letters mapped to their
    // Unicode title case, giving priority to the special casing rules.
**/
inline function toTitleSpecial(c:stdgo._internal.unicode.Unicode.SpecialCase, s:String):String throw "not implemented";
/**
    // ToValidUTF8 returns a copy of the string s with each run of invalid UTF-8 byte sequences
    // replaced by the replacement string, which may be empty.
**/
inline function toValidUTF8(s:String, replacement:String):String throw "not implemented";
/**
    // Title returns a copy of the string s with all Unicode letters that begin words
    // mapped to their Unicode title case.
    //
    // Deprecated: The rule Title uses for word boundaries does not handle Unicode
    // punctuation properly. Use golang.org/x/text/cases instead.
**/
inline function title(s:String):String throw "not implemented";
/**
    // TrimLeftFunc returns a slice of the string s with all leading
    // Unicode code points c satisfying f(c) removed.
**/
inline function trimLeftFunc(s:String, f:stdgo.GoRune -> Bool):String throw "not implemented";
/**
    // TrimRightFunc returns a slice of the string s with all trailing
    // Unicode code points c satisfying f(c) removed.
**/
inline function trimRightFunc(s:String, f:stdgo.GoRune -> Bool):String throw "not implemented";
/**
    // TrimFunc returns a slice of the string s with all leading
    // and trailing Unicode code points c satisfying f(c) removed.
**/
inline function trimFunc(s:String, f:stdgo.GoRune -> Bool):String throw "not implemented";
/**
    // IndexFunc returns the index into s of the first Unicode
    // code point satisfying f(c), or -1 if none do.
**/
inline function indexFunc(s:String, f:stdgo.GoRune -> Bool):Int throw "not implemented";
/**
    // LastIndexFunc returns the index into s of the last
    // Unicode code point satisfying f(c), or -1 if none do.
**/
inline function lastIndexFunc(s:String, f:stdgo.GoRune -> Bool):Int throw "not implemented";
/**
    // Trim returns a slice of the string s with all leading and
    // trailing Unicode code points contained in cutset removed.
**/
inline function trim(s:String, cutset:String):String throw "not implemented";
/**
    // TrimLeft returns a slice of the string s with all leading
    // Unicode code points contained in cutset removed.
    //
    // To remove a prefix, use TrimPrefix instead.
**/
inline function trimLeft(s:String, cutset:String):String throw "not implemented";
/**
    // TrimRight returns a slice of the string s, with all trailing
    // Unicode code points contained in cutset removed.
    //
    // To remove a suffix, use TrimSuffix instead.
**/
inline function trimRight(s:String, cutset:String):String throw "not implemented";
/**
    // TrimSpace returns a slice of the string s, with all leading
    // and trailing white space removed, as defined by Unicode.
**/
inline function trimSpace(s:String):String throw "not implemented";
/**
    // TrimPrefix returns s without the provided leading prefix string.
    // If s doesn't start with prefix, s is returned unchanged.
**/
inline function trimPrefix(s:String, prefix:String):String throw "not implemented";
/**
    // TrimSuffix returns s without the provided trailing suffix string.
    // If s doesn't end with suffix, s is returned unchanged.
**/
inline function trimSuffix(s:String, suffix:String):String throw "not implemented";
/**
    // Replace returns a copy of the string s with the first n
    // non-overlapping instances of old replaced by new.
    // If old is empty, it matches at the beginning of the string
    // and after each UTF-8 sequence, yielding up to k+1 replacements
    // for a k-rune string.
    // If n < 0, there is no limit on the number of replacements.
**/
inline function replace(s:String, old:String, _new:String, n:Int):String throw "not implemented";
/**
    // ReplaceAll returns a copy of the string s with all
    // non-overlapping instances of old replaced by new.
    // If old is empty, it matches at the beginning of the string
    // and after each UTF-8 sequence, yielding up to k+1 replacements
    // for a k-rune string.
**/
inline function replaceAll(s:String, old:String, _new:String):String throw "not implemented";
/**
    // EqualFold reports whether s and t, interpreted as UTF-8 strings,
    // are equal under simple Unicode case-folding, which is a more general
    // form of case-insensitivity.
**/
inline function equalFold(s:String, t:String):Bool throw "not implemented";
/**
    // Index returns the index of the first instance of substr in s, or -1 if substr is not present in s.
**/
inline function index(s:String, substr:String):Int throw "not implemented";
/**
    // Cut slices s around the first instance of sep,
    // returning the text before and after sep.
    // The found result reports whether sep appears in s.
    // If sep does not appear in s, cut returns s, "", false.
**/
inline function cut(s:String, sep:String):stdgo.Tuple.Tuple3<String, String, Bool> throw "not implemented";
/**
    // CutPrefix returns s without the provided leading prefix string
    // and reports whether it found the prefix.
    // If s doesn't start with prefix, CutPrefix returns s, false.
    // If prefix is the empty string, CutPrefix returns s, true.
**/
inline function cutPrefix(s:String, prefix:String):stdgo.Tuple<String, Bool> throw "not implemented";
/**
    // CutSuffix returns s without the provided ending suffix string
    // and reports whether it found the suffix.
    // If s doesn't end with suffix, CutSuffix returns s, false.
    // If suffix is the empty string, CutSuffix returns s, true.
**/
inline function cutSuffix(s:String, suffix:String):stdgo.Tuple<String, Bool> throw "not implemented";
@:invalid typedef Builder_asInterface = Dynamic;
@:invalid typedef Builder_static_extension = Dynamic;
@:invalid typedef Reader_asInterface = Dynamic;
@:invalid typedef Reader_static_extension = Dynamic;
@:invalid typedef Replacer_asInterface = Dynamic;
@:invalid typedef Replacer_static_extension = Dynamic;
@:invalid typedef T_trieNode_asInterface = Dynamic;
@:invalid typedef T_trieNode_static_extension = Dynamic;
@:invalid typedef T_genericReplacer_asInterface = Dynamic;
@:invalid typedef T_genericReplacer_static_extension = Dynamic;
@:invalid typedef T_stringWriter_asInterface = Dynamic;
@:invalid typedef T_stringWriter_static_extension = Dynamic;
@:invalid typedef T_singleStringReplacer_asInterface = Dynamic;
@:invalid typedef T_singleStringReplacer_static_extension = Dynamic;
@:invalid typedef T_byteStringReplacer_asInterface = Dynamic;
@:invalid typedef T_byteStringReplacer_static_extension = Dynamic;
@:invalid typedef T_stringFinder_asInterface = Dynamic;
@:invalid typedef T_stringFinder_static_extension = Dynamic;
@:invalid typedef T_appendSliceWriter_asInterface = Dynamic;
@:invalid typedef T_appendSliceWriter_static_extension = Dynamic;
@:invalid typedef T_byteReplacer_asInterface = Dynamic;
@:invalid typedef T_byteReplacer_static_extension = Dynamic;
@:invalid typedef T_asciiSet_asInterface = Dynamic;
@:invalid typedef T_asciiSet_static_extension = Dynamic;
