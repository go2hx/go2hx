package stdgo.strings;
typedef Builder = stdgo._internal.strings.Strings_builder.Builder;
typedef Reader = stdgo._internal.strings.Strings_reader.Reader;
typedef Replacer = stdgo._internal.strings.Strings_replacer.Replacer;
typedef BuilderPointer = stdgo._internal.strings.Strings_builderpointer.BuilderPointer;
typedef ReaderPointer = stdgo._internal.strings.Strings_readerpointer.ReaderPointer;
typedef ReplacerPointer = stdgo._internal.strings.Strings_replacerpointer.ReplacerPointer;
/**
    * Package strings implements simple functions to manipulate UTF-8 encoded strings.
    * 
    * For information about UTF-8 strings in Go, see https://blog.golang.org/strings.
**/
class Strings {
    /**
        * Clone returns a fresh copy of s.
        * It guarantees to make a copy of s into a new allocation,
        * which can be important when retaining only a small substring
        * of a much larger string. Using Clone can help such programs
        * use less memory. Of course, since using Clone makes a copy,
        * overuse of Clone can make programs use more memory.
        * Clone should typically be used only rarely, and only when
        * profiling indicates that it is needed.
        * For strings of length zero the string "" will be returned
        * and no allocation is made.
    **/
    static public inline function clone(_s:stdgo.GoString):stdgo.GoString return stdgo._internal.strings.Strings_clone.clone(_s);
    /**
        * Compare returns an integer comparing two strings lexicographically.
        * The result will be 0 if a == b, -1 if a < b, and +1 if a > b.
        * 
        * Compare is included only for symmetry with package bytes.
        * It is usually clearer and always faster to use the built-in
        * string comparison operators ==, <, >, and so on.
    **/
    static public inline function compare(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt return stdgo._internal.strings.Strings_compare.compare(_a, _b);
    static public inline function stringFind(_pattern:stdgo.GoString, _text:stdgo.GoString):stdgo.GoInt return stdgo._internal.strings.Strings_stringfind.stringFind(_pattern, _text);
    static public inline function dumpTables(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoInt>; var _1 : stdgo.Slice<stdgo.GoInt>; } return stdgo._internal.strings.Strings_dumptables.dumpTables(_pattern);
    /**
        * NewReader returns a new Reader reading from s.
        * It is similar to bytes.NewBufferString but more efficient and non-writable.
    **/
    static public inline function newReader(_s:stdgo.GoString):stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader> return stdgo._internal.strings.Strings_newreader.newReader(_s);
    /**
        * NewReplacer returns a new Replacer from a list of old, new string
        * pairs. Replacements are performed in the order they appear in the
        * target string, without overlapping matches. The old string
        * comparisons are done in argument order.
        * 
        * NewReplacer panics if given an odd number of arguments.
    **/
    static public inline function newReplacer(_oldnew:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.strings.Strings_replacer.Replacer> return stdgo._internal.strings.Strings_newreplacer.newReplacer(...[for (i in _oldnew) i]);
    /**
        * Count counts the number of non-overlapping instances of substr in s.
        * If substr is an empty string, Count returns 1 + the number of Unicode code points in s.
    **/
    static public inline function count(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt return stdgo._internal.strings.Strings_count.count(_s, _substr);
    /**
        * Contains reports whether substr is within s.
    **/
    static public inline function contains(_s:stdgo.GoString, _substr:stdgo.GoString):Bool return stdgo._internal.strings.Strings_contains.contains(_s, _substr);
    /**
        * ContainsAny reports whether any Unicode code points in chars are within s.
    **/
    static public inline function containsAny(_s:stdgo.GoString, _chars:stdgo.GoString):Bool return stdgo._internal.strings.Strings_containsany.containsAny(_s, _chars);
    /**
        * ContainsRune reports whether the Unicode code point r is within s.
    **/
    static public inline function containsRune(_s:stdgo.GoString, _r:stdgo.GoInt32):Bool return stdgo._internal.strings.Strings_containsrune.containsRune(_s, _r);
    /**
        * ContainsFunc reports whether any Unicode code points r within s satisfy f(r).
    **/
    static public inline function containsFunc(_s:stdgo.GoString, _f:stdgo.GoInt32 -> Bool):Bool return stdgo._internal.strings.Strings_containsfunc.containsFunc(_s, _f);
    /**
        * LastIndex returns the index of the last instance of substr in s, or -1 if substr is not present in s.
    **/
    static public inline function lastIndex(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt return stdgo._internal.strings.Strings_lastindex.lastIndex(_s, _substr);
    /**
        * IndexByte returns the index of the first instance of c in s, or -1 if c is not present in s.
    **/
    static public inline function indexByte(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoInt return stdgo._internal.strings.Strings_indexbyte.indexByte(_s, _c);
    /**
        * IndexRune returns the index of the first instance of the Unicode code point
        * r, or -1 if rune is not present in s.
        * If r is utf8.RuneError, it returns the first instance of any
        * invalid UTF-8 byte sequence.
    **/
    static public inline function indexRune(_s:stdgo.GoString, _r:stdgo.GoInt32):stdgo.GoInt return stdgo._internal.strings.Strings_indexrune.indexRune(_s, _r);
    /**
        * IndexAny returns the index of the first instance of any Unicode code point
        * from chars in s, or -1 if no Unicode code point from chars is present in s.
    **/
    static public inline function indexAny(_s:stdgo.GoString, _chars:stdgo.GoString):stdgo.GoInt return stdgo._internal.strings.Strings_indexany.indexAny(_s, _chars);
    /**
        * LastIndexAny returns the index of the last instance of any Unicode code
        * point from chars in s, or -1 if no Unicode code point from chars is
        * present in s.
    **/
    static public inline function lastIndexAny(_s:stdgo.GoString, _chars:stdgo.GoString):stdgo.GoInt return stdgo._internal.strings.Strings_lastindexany.lastIndexAny(_s, _chars);
    /**
        * LastIndexByte returns the index of the last instance of c in s, or -1 if c is not present in s.
    **/
    static public inline function lastIndexByte(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoInt return stdgo._internal.strings.Strings_lastindexbyte.lastIndexByte(_s, _c);
    /**
        * SplitN slices s into substrings separated by sep and returns a slice of
        * the substrings between those separators.
        * 
        * The count determines the number of substrings to return:
        * 
        * 	n > 0: at most n substrings; the last substring will be the unsplit remainder.
        * 	n == 0: the result is nil (zero substrings)
        * 	n < 0: all substrings
        * 
        * Edge cases for s and sep (for example, empty strings) are handled
        * as described in the documentation for Split.
        * 
        * To split around the first instance of a separator, see Cut.
    **/
    static public inline function splitN(_s:stdgo.GoString, _sep:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> return stdgo._internal.strings.Strings_splitn.splitN(_s, _sep, _n);
    /**
        * SplitAfterN slices s into substrings after each instance of sep and
        * returns a slice of those substrings.
        * 
        * The count determines the number of substrings to return:
        * 
        * 	n > 0: at most n substrings; the last substring will be the unsplit remainder.
        * 	n == 0: the result is nil (zero substrings)
        * 	n < 0: all substrings
        * 
        * Edge cases for s and sep (for example, empty strings) are handled
        * as described in the documentation for SplitAfter.
    **/
    static public inline function splitAfterN(_s:stdgo.GoString, _sep:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> return stdgo._internal.strings.Strings_splitaftern.splitAfterN(_s, _sep, _n);
    /**
        * Split slices s into all substrings separated by sep and returns a slice of
        * the substrings between those separators.
        * 
        * If s does not contain sep and sep is not empty, Split returns a
        * slice of length 1 whose only element is s.
        * 
        * If sep is empty, Split splits after each UTF-8 sequence. If both s
        * and sep are empty, Split returns an empty slice.
        * 
        * It is equivalent to SplitN with a count of -1.
        * 
        * To split around the first instance of a separator, see Cut.
    **/
    static public inline function split(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.Slice<stdgo.GoString> return stdgo._internal.strings.Strings_split.split(_s, _sep);
    /**
        * SplitAfter slices s into all substrings after each instance of sep and
        * returns a slice of those substrings.
        * 
        * If s does not contain sep and sep is not empty, SplitAfter returns
        * a slice of length 1 whose only element is s.
        * 
        * If sep is empty, SplitAfter splits after each UTF-8 sequence. If
        * both s and sep are empty, SplitAfter returns an empty slice.
        * 
        * It is equivalent to SplitAfterN with a count of -1.
    **/
    static public inline function splitAfter(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.Slice<stdgo.GoString> return stdgo._internal.strings.Strings_splitafter.splitAfter(_s, _sep);
    /**
        * Fields splits the string s around each instance of one or more consecutive white space
        * characters, as defined by unicode.IsSpace, returning a slice of substrings of s or an
        * empty slice if s contains only white space.
    **/
    static public inline function fields(_s:stdgo.GoString):stdgo.Slice<stdgo.GoString> return stdgo._internal.strings.Strings_fields.fields(_s);
    /**
        * FieldsFunc splits the string s at each run of Unicode code points c satisfying f(c)
        * and returns an array of slices of s. If all code points in s satisfy f(c) or the
        * string is empty, an empty slice is returned.
        * 
        * FieldsFunc makes no guarantees about the order in which it calls f(c)
        * and assumes that f always returns the same value for a given c.
    **/
    static public inline function fieldsFunc(_s:stdgo.GoString, _f:stdgo.GoInt32 -> Bool):stdgo.Slice<stdgo.GoString> return stdgo._internal.strings.Strings_fieldsfunc.fieldsFunc(_s, _f);
    /**
        * Join concatenates the elements of its first argument to create a single string. The separator
        * string sep is placed between elements in the resulting string.
    **/
    static public inline function join(_elems:stdgo.Slice<stdgo.GoString>, _sep:stdgo.GoString):stdgo.GoString return stdgo._internal.strings.Strings_join.join(_elems, _sep);
    /**
        * HasPrefix tests whether the string s begins with prefix.
    **/
    static public inline function hasPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):Bool return stdgo._internal.strings.Strings_hasprefix.hasPrefix(_s, _prefix);
    /**
        * HasSuffix tests whether the string s ends with suffix.
    **/
    static public inline function hasSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):Bool return stdgo._internal.strings.Strings_hassuffix.hasSuffix(_s, _suffix);
    /**
        * Map returns a copy of the string s with all its characters modified
        * according to the mapping function. If mapping returns a negative value, the character is
        * dropped from the string with no replacement.
    **/
    static public inline function map_(_mapping:stdgo.GoInt32 -> stdgo.GoInt32, _s:stdgo.GoString):stdgo.GoString return stdgo._internal.strings.Strings_map_.map_(_mapping, _s);
    /**
        * Repeat returns a new string consisting of count copies of the string s.
        * 
        * It panics if count is negative or if the result of (len(s) * count)
        * overflows.
    **/
    static public inline function repeat(_s:stdgo.GoString, _count:stdgo.GoInt):stdgo.GoString return stdgo._internal.strings.Strings_repeat.repeat(_s, _count);
    /**
        * ToUpper returns s with all Unicode letters mapped to their upper case.
    **/
    static public inline function toUpper(_s:stdgo.GoString):stdgo.GoString return stdgo._internal.strings.Strings_toupper.toUpper(_s);
    /**
        * ToLower returns s with all Unicode letters mapped to their lower case.
    **/
    static public inline function toLower(_s:stdgo.GoString):stdgo.GoString return stdgo._internal.strings.Strings_tolower.toLower(_s);
    /**
        * ToTitle returns a copy of the string s with all Unicode letters mapped to
        * their Unicode title case.
    **/
    static public inline function toTitle(_s:stdgo.GoString):stdgo.GoString return stdgo._internal.strings.Strings_totitle.toTitle(_s);
    /**
        * ToUpperSpecial returns a copy of the string s with all Unicode letters mapped to their
        * upper case using the case mapping specified by c.
    **/
    static public inline function toUpperSpecial(_c:stdgo._internal.unicode.Unicode_specialcase.SpecialCase, _s:stdgo.GoString):stdgo.GoString return stdgo._internal.strings.Strings_toupperspecial.toUpperSpecial(_c, _s);
    /**
        * ToLowerSpecial returns a copy of the string s with all Unicode letters mapped to their
        * lower case using the case mapping specified by c.
    **/
    static public inline function toLowerSpecial(_c:stdgo._internal.unicode.Unicode_specialcase.SpecialCase, _s:stdgo.GoString):stdgo.GoString return stdgo._internal.strings.Strings_tolowerspecial.toLowerSpecial(_c, _s);
    /**
        * ToTitleSpecial returns a copy of the string s with all Unicode letters mapped to their
        * Unicode title case, giving priority to the special casing rules.
    **/
    static public inline function toTitleSpecial(_c:stdgo._internal.unicode.Unicode_specialcase.SpecialCase, _s:stdgo.GoString):stdgo.GoString return stdgo._internal.strings.Strings_totitlespecial.toTitleSpecial(_c, _s);
    /**
        * ToValidUTF8 returns a copy of the string s with each run of invalid UTF-8 byte sequences
        * replaced by the replacement string, which may be empty.
    **/
    static public inline function toValidUTF8(_s:stdgo.GoString, _replacement:stdgo.GoString):stdgo.GoString return stdgo._internal.strings.Strings_tovalidutf8.toValidUTF8(_s, _replacement);
    /**
        * Title returns a copy of the string s with all Unicode letters that begin words
        * mapped to their Unicode title case.
        * 
        * Deprecated: The rule Title uses for word boundaries does not handle Unicode
        * punctuation properly. Use golang.org/x/text/cases instead.
    **/
    static public inline function title(_s:stdgo.GoString):stdgo.GoString return stdgo._internal.strings.Strings_title.title(_s);
    /**
        * TrimLeftFunc returns a slice of the string s with all leading
        * Unicode code points c satisfying f(c) removed.
    **/
    static public inline function trimLeftFunc(_s:stdgo.GoString, _f:stdgo.GoInt32 -> Bool):stdgo.GoString return stdgo._internal.strings.Strings_trimleftfunc.trimLeftFunc(_s, _f);
    /**
        * TrimRightFunc returns a slice of the string s with all trailing
        * Unicode code points c satisfying f(c) removed.
    **/
    static public inline function trimRightFunc(_s:stdgo.GoString, _f:stdgo.GoInt32 -> Bool):stdgo.GoString return stdgo._internal.strings.Strings_trimrightfunc.trimRightFunc(_s, _f);
    /**
        * TrimFunc returns a slice of the string s with all leading
        * and trailing Unicode code points c satisfying f(c) removed.
    **/
    static public inline function trimFunc(_s:stdgo.GoString, _f:stdgo.GoInt32 -> Bool):stdgo.GoString return stdgo._internal.strings.Strings_trimfunc.trimFunc(_s, _f);
    /**
        * IndexFunc returns the index into s of the first Unicode
        * code point satisfying f(c), or -1 if none do.
    **/
    static public inline function indexFunc(_s:stdgo.GoString, _f:stdgo.GoInt32 -> Bool):stdgo.GoInt return stdgo._internal.strings.Strings_indexfunc.indexFunc(_s, _f);
    /**
        * LastIndexFunc returns the index into s of the last
        * Unicode code point satisfying f(c), or -1 if none do.
    **/
    static public inline function lastIndexFunc(_s:stdgo.GoString, _f:stdgo.GoInt32 -> Bool):stdgo.GoInt return stdgo._internal.strings.Strings_lastindexfunc.lastIndexFunc(_s, _f);
    /**
        * Trim returns a slice of the string s with all leading and
        * trailing Unicode code points contained in cutset removed.
    **/
    static public inline function trim(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString return stdgo._internal.strings.Strings_trim.trim(_s, _cutset);
    /**
        * TrimLeft returns a slice of the string s with all leading
        * Unicode code points contained in cutset removed.
        * 
        * To remove a prefix, use TrimPrefix instead.
    **/
    static public inline function trimLeft(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString return stdgo._internal.strings.Strings_trimleft.trimLeft(_s, _cutset);
    /**
        * TrimRight returns a slice of the string s, with all trailing
        * Unicode code points contained in cutset removed.
        * 
        * To remove a suffix, use TrimSuffix instead.
    **/
    static public inline function trimRight(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString return stdgo._internal.strings.Strings_trimright.trimRight(_s, _cutset);
    /**
        * TrimSpace returns a slice of the string s, with all leading
        * and trailing white space removed, as defined by Unicode.
    **/
    static public inline function trimSpace(_s:stdgo.GoString):stdgo.GoString return stdgo._internal.strings.Strings_trimspace.trimSpace(_s);
    /**
        * TrimPrefix returns s without the provided leading prefix string.
        * If s doesn't start with prefix, s is returned unchanged.
    **/
    static public inline function trimPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):stdgo.GoString return stdgo._internal.strings.Strings_trimprefix.trimPrefix(_s, _prefix);
    /**
        * TrimSuffix returns s without the provided trailing suffix string.
        * If s doesn't end with suffix, s is returned unchanged.
    **/
    static public inline function trimSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):stdgo.GoString return stdgo._internal.strings.Strings_trimsuffix.trimSuffix(_s, _suffix);
    /**
        * Replace returns a copy of the string s with the first n
        * non-overlapping instances of old replaced by new.
        * If old is empty, it matches at the beginning of the string
        * and after each UTF-8 sequence, yielding up to k+1 replacements
        * for a k-rune string.
        * If n < 0, there is no limit on the number of replacements.
    **/
    static public inline function replace(_s:stdgo.GoString, _old:stdgo.GoString, _new_:stdgo.GoString, _n:stdgo.GoInt):stdgo.GoString return stdgo._internal.strings.Strings_replace.replace(_s, _old, _new_, _n);
    /**
        * ReplaceAll returns a copy of the string s with all
        * non-overlapping instances of old replaced by new.
        * If old is empty, it matches at the beginning of the string
        * and after each UTF-8 sequence, yielding up to k+1 replacements
        * for a k-rune string.
    **/
    static public inline function replaceAll(_s:stdgo.GoString, _old:stdgo.GoString, _new_:stdgo.GoString):stdgo.GoString return stdgo._internal.strings.Strings_replaceall.replaceAll(_s, _old, _new_);
    /**
        * EqualFold reports whether s and t, interpreted as UTF-8 strings,
        * are equal under simple Unicode case-folding, which is a more general
        * form of case-insensitivity.
    **/
    static public inline function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool return stdgo._internal.strings.Strings_equalfold.equalFold(_s, _t);
    /**
        * Index returns the index of the first instance of substr in s, or -1 if substr is not present in s.
    **/
    static public inline function index(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt return stdgo._internal.strings.Strings_index.index(_s, _substr);
    /**
        * Cut slices s around the first instance of sep,
        * returning the text before and after sep.
        * The found result reports whether sep appears in s.
        * If sep does not appear in s, cut returns s, "", false.
    **/
    static public inline function cut(_s:stdgo.GoString, _sep:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } return stdgo._internal.strings.Strings_cut.cut(_s, _sep);
    /**
        * CutPrefix returns s without the provided leading prefix string
        * and reports whether it found the prefix.
        * If s doesn't start with prefix, CutPrefix returns s, false.
        * If prefix is the empty string, CutPrefix returns s, true.
    **/
    static public inline function cutPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } return stdgo._internal.strings.Strings_cutprefix.cutPrefix(_s, _prefix);
    /**
        * CutSuffix returns s without the provided ending suffix string
        * and reports whether it found the suffix.
        * If s doesn't end with suffix, CutSuffix returns s, false.
        * If suffix is the empty string, CutSuffix returns s, true.
    **/
    static public inline function cutSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } return stdgo._internal.strings.Strings_cutsuffix.cutSuffix(_s, _suffix);
}
