package stdgo.bytes;
/**
    // Package bytes implements functions for the manipulation of byte slices.
    // It is analogous to the facilities of the [strings] package.
**/
private var __go2hxdoc__package : Bool;
var errTooLarge(get, set) : stdgo.Error;
function get_errTooLarge():stdgo.Error return stdgo._internal.bytes.Bytes.errTooLarge;
function set_errTooLarge(v:stdgo.Error):stdgo.Error return stdgo._internal.bytes.Bytes.errTooLarge = v;
var indexBytePortable(get, set) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt8) -> stdgo.GoInt;
function get_indexBytePortable():(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt8) -> stdgo.GoInt return stdgo._internal.bytes.Bytes.indexBytePortable;
function set_indexBytePortable(v:(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt8) -> stdgo.GoInt):(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt8) -> stdgo.GoInt return stdgo._internal.bytes.Bytes.indexBytePortable = v;
final minRead : haxe.UInt64 = stdgo._internal.bytes.Bytes.minRead;
@:invalid typedef Buffer = Dynamic;
@:invalid typedef Reader = Dynamic;
typedef T_readOp = stdgo._internal.bytes.Bytes.T_readOp;
typedef T_asciiSet = stdgo._internal.bytes.Bytes.T_asciiSet;
/**
    // NewBuffer creates and initializes a new Buffer using buf as its
    // initial contents. The new Buffer takes ownership of buf, and the
    // caller should not use buf after this call. NewBuffer is intended to
    // prepare a Buffer to read existing data. It can also be used to set
    // the initial size of the internal buffer for writing. To do that,
    // buf should have the desired capacity but a length of zero.
    //
    // In most cases, new(Buffer) (or just declaring a Buffer variable) is
    // sufficient to initialize a Buffer.
**/
inline function newBuffer(buf:Array<Int>):Buffer throw "not implemented";
/**
    // NewBufferString creates and initializes a new Buffer using string s as its
    // initial contents. It is intended to prepare a buffer to read an existing
    // string.
    //
    // In most cases, new(Buffer) (or just declaring a Buffer variable) is
    // sufficient to initialize a Buffer.
**/
inline function newBufferString(s:String):Buffer throw "not implemented";
/**
    // Equal reports whether a and b
    // are the same length and contain the same bytes.
    // A nil argument is equivalent to an empty slice.
**/
inline function equal(a:Array<Int>, b:Array<Int>):Bool throw "not implemented";
/**
    // Compare returns an integer comparing two byte slices lexicographically.
    // The result will be 0 if a == b, -1 if a < b, and +1 if a > b.
    // A nil argument is equivalent to an empty slice.
**/
inline function compare(a:Array<Int>, b:Array<Int>):Int throw "not implemented";
/**
    // Count counts the number of non-overlapping instances of sep in s.
    // If sep is an empty slice, Count returns 1 + the number of UTF-8-encoded code points in s.
**/
inline function count(s:Array<Int>, sep:Array<Int>):Int throw "not implemented";
/**
    // Contains reports whether subslice is within b.
**/
inline function contains(b:Array<Int>, subslice:Array<Int>):Bool throw "not implemented";
/**
    // ContainsAny reports whether any of the UTF-8-encoded code points in chars are within b.
**/
inline function containsAny(b:Array<Int>, chars:String):Bool throw "not implemented";
/**
    // ContainsRune reports whether the rune is contained in the UTF-8-encoded byte slice b.
**/
inline function containsRune(b:Array<Int>, r:Int):Bool throw "not implemented";
/**
    // ContainsFunc reports whether any of the UTF-8-encoded code points r within b satisfy f(r).
**/
inline function containsFunc(b:Array<Int>, f:stdgo.GoRune -> Bool):Bool throw "not implemented";
/**
    // IndexByte returns the index of the first instance of c in b, or -1 if c is not present in b.
**/
inline function indexByte(b:Array<Int>, c:Int):Int throw "not implemented";
/**
    // LastIndex returns the index of the last instance of sep in s, or -1 if sep is not present in s.
**/
inline function lastIndex(s:Array<Int>, sep:Array<Int>):Int throw "not implemented";
/**
    // LastIndexByte returns the index of the last instance of c in s, or -1 if c is not present in s.
**/
inline function lastIndexByte(s:Array<Int>, c:Int):Int throw "not implemented";
/**
    // IndexRune interprets s as a sequence of UTF-8-encoded code points.
    // It returns the byte index of the first occurrence in s of the given rune.
    // It returns -1 if rune is not present in s.
    // If r is utf8.RuneError, it returns the first instance of any
    // invalid UTF-8 byte sequence.
**/
inline function indexRune(s:Array<Int>, r:Int):Int throw "not implemented";
/**
    // IndexAny interprets s as a sequence of UTF-8-encoded Unicode code points.
    // It returns the byte index of the first occurrence in s of any of the Unicode
    // code points in chars. It returns -1 if chars is empty or if there is no code
    // point in common.
**/
inline function indexAny(s:Array<Int>, chars:String):Int throw "not implemented";
/**
    // LastIndexAny interprets s as a sequence of UTF-8-encoded Unicode code
    // points. It returns the byte index of the last occurrence in s of any of
    // the Unicode code points in chars. It returns -1 if chars is empty or if
    // there is no code point in common.
**/
inline function lastIndexAny(s:Array<Int>, chars:String):Int throw "not implemented";
/**
    // SplitN slices s into subslices separated by sep and returns a slice of
    // the subslices between those separators.
    // If sep is empty, SplitN splits after each UTF-8 sequence.
    // The count determines the number of subslices to return:
    //
    //	n > 0: at most n subslices; the last subslice will be the unsplit remainder.
    //	n == 0: the result is nil (zero subslices)
    //	n < 0: all subslices
    //
    // To split around the first instance of a separator, see Cut.
**/
inline function splitN(s:Array<Int>, sep:Array<Int>, n:Int):Array<Array<Int>> throw "not implemented";
/**
    // SplitAfterN slices s into subslices after each instance of sep and
    // returns a slice of those subslices.
    // If sep is empty, SplitAfterN splits after each UTF-8 sequence.
    // The count determines the number of subslices to return:
    //
    //	n > 0: at most n subslices; the last subslice will be the unsplit remainder.
    //	n == 0: the result is nil (zero subslices)
    //	n < 0: all subslices
**/
inline function splitAfterN(s:Array<Int>, sep:Array<Int>, n:Int):Array<Array<Int>> throw "not implemented";
/**
    // Split slices s into all subslices separated by sep and returns a slice of
    // the subslices between those separators.
    // If sep is empty, Split splits after each UTF-8 sequence.
    // It is equivalent to SplitN with a count of -1.
    //
    // To split around the first instance of a separator, see Cut.
**/
inline function split(s:Array<Int>, sep:Array<Int>):Array<Array<Int>> throw "not implemented";
/**
    // SplitAfter slices s into all subslices after each instance of sep and
    // returns a slice of those subslices.
    // If sep is empty, SplitAfter splits after each UTF-8 sequence.
    // It is equivalent to SplitAfterN with a count of -1.
**/
inline function splitAfter(s:Array<Int>, sep:Array<Int>):Array<Array<Int>> throw "not implemented";
/**
    // Fields interprets s as a sequence of UTF-8-encoded code points.
    // It splits the slice s around each instance of one or more consecutive white space
    // characters, as defined by unicode.IsSpace, returning a slice of subslices of s or an
    // empty slice if s contains only white space.
**/
inline function fields(s:Array<Int>):Array<Array<Int>> throw "not implemented";
@:invalid typedef T_fieldsFunc_7___localname___span = Dynamic;
/**
    // FieldsFunc interprets s as a sequence of UTF-8-encoded code points.
    // It splits the slice s at each run of code points c satisfying f(c) and
    // returns a slice of subslices of s. If all code points in s satisfy f(c), or
    // len(s) == 0, an empty slice is returned.
    //
    // FieldsFunc makes no guarantees about the order in which it calls f(c)
    // and assumes that f always returns the same value for a given c.
**/
inline function fieldsFunc(s:Array<Int>, f:stdgo.GoRune -> Bool):Array<Array<Int>> throw "not implemented";
/**
    // Join concatenates the elements of s to create a new byte slice. The separator
    // sep is placed between elements in the resulting slice.
**/
inline function join(s:Array<Array<Int>>, sep:Array<Int>):Array<Int> throw "not implemented";
/**
    // HasPrefix tests whether the byte slice s begins with prefix.
**/
inline function hasPrefix(s:Array<Int>, prefix:Array<Int>):Bool throw "not implemented";
/**
    // HasSuffix tests whether the byte slice s ends with suffix.
**/
inline function hasSuffix(s:Array<Int>, suffix:Array<Int>):Bool throw "not implemented";
/**
    // Map returns a copy of the byte slice s with all its characters modified
    // according to the mapping function. If mapping returns a negative value, the character is
    // dropped from the byte slice with no replacement. The characters in s and the
    // output are interpreted as UTF-8-encoded code points.
**/
inline function map_(mapping:(_r:stdgo.GoRune) -> stdgo.GoRune, s:Array<Int>):Array<Int> throw "not implemented";
/**
    // Repeat returns a new byte slice consisting of count copies of b.
    //
    // It panics if count is negative or if the result of (len(b) * count)
    // overflows.
**/
inline function repeat(b:Array<Int>, count:Int):Array<Int> throw "not implemented";
/**
    // ToUpper returns a copy of the byte slice s with all Unicode letters mapped to
    // their upper case.
**/
inline function toUpper(s:Array<Int>):Array<Int> throw "not implemented";
/**
    // ToLower returns a copy of the byte slice s with all Unicode letters mapped to
    // their lower case.
**/
inline function toLower(s:Array<Int>):Array<Int> throw "not implemented";
/**
    // ToTitle treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their title case.
**/
inline function toTitle(s:Array<Int>):Array<Int> throw "not implemented";
/**
    // ToUpperSpecial treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their
    // upper case, giving priority to the special casing rules.
**/
inline function toUpperSpecial(c:stdgo._internal.unicode.Unicode.SpecialCase, s:Array<Int>):Array<Int> throw "not implemented";
/**
    // ToLowerSpecial treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their
    // lower case, giving priority to the special casing rules.
**/
inline function toLowerSpecial(c:stdgo._internal.unicode.Unicode.SpecialCase, s:Array<Int>):Array<Int> throw "not implemented";
/**
    // ToTitleSpecial treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their
    // title case, giving priority to the special casing rules.
**/
inline function toTitleSpecial(c:stdgo._internal.unicode.Unicode.SpecialCase, s:Array<Int>):Array<Int> throw "not implemented";
/**
    // ToValidUTF8 treats s as UTF-8-encoded bytes and returns a copy with each run of bytes
    // representing invalid UTF-8 replaced with the bytes in replacement, which may be empty.
**/
inline function toValidUTF8(s:Array<Int>, replacement:Array<Int>):Array<Int> throw "not implemented";
/**
    // Title treats s as UTF-8-encoded bytes and returns a copy with all Unicode letters that begin
    // words mapped to their title case.
    //
    // Deprecated: The rule Title uses for word boundaries does not handle Unicode
    // punctuation properly. Use golang.org/x/text/cases instead.
**/
inline function title(s:Array<Int>):Array<Int> throw "not implemented";
/**
    // TrimLeftFunc treats s as UTF-8-encoded bytes and returns a subslice of s by slicing off
    // all leading UTF-8-encoded code points c that satisfy f(c).
**/
inline function trimLeftFunc(s:Array<Int>, f:(_r:stdgo.GoRune) -> Bool):Array<Int> throw "not implemented";
/**
    // TrimRightFunc returns a subslice of s by slicing off all trailing
    // UTF-8-encoded code points c that satisfy f(c).
**/
inline function trimRightFunc(s:Array<Int>, f:(_r:stdgo.GoRune) -> Bool):Array<Int> throw "not implemented";
/**
    // TrimFunc returns a subslice of s by slicing off all leading and trailing
    // UTF-8-encoded code points c that satisfy f(c).
**/
inline function trimFunc(s:Array<Int>, f:(_r:stdgo.GoRune) -> Bool):Array<Int> throw "not implemented";
/**
    // TrimPrefix returns s without the provided leading prefix string.
    // If s doesn't start with prefix, s is returned unchanged.
**/
inline function trimPrefix(s:Array<Int>, prefix:Array<Int>):Array<Int> throw "not implemented";
/**
    // TrimSuffix returns s without the provided trailing suffix string.
    // If s doesn't end with suffix, s is returned unchanged.
**/
inline function trimSuffix(s:Array<Int>, suffix:Array<Int>):Array<Int> throw "not implemented";
/**
    // IndexFunc interprets s as a sequence of UTF-8-encoded code points.
    // It returns the byte index in s of the first Unicode
    // code point satisfying f(c), or -1 if none do.
**/
inline function indexFunc(s:Array<Int>, f:(_r:stdgo.GoRune) -> Bool):Int throw "not implemented";
/**
    // LastIndexFunc interprets s as a sequence of UTF-8-encoded code points.
    // It returns the byte index in s of the last Unicode
    // code point satisfying f(c), or -1 if none do.
**/
inline function lastIndexFunc(s:Array<Int>, f:(_r:stdgo.GoRune) -> Bool):Int throw "not implemented";
/**
    // Trim returns a subslice of s by slicing off all leading and
    // trailing UTF-8-encoded code points contained in cutset.
**/
inline function trim(s:Array<Int>, cutset:String):Array<Int> throw "not implemented";
/**
    // TrimLeft returns a subslice of s by slicing off all leading
    // UTF-8-encoded code points contained in cutset.
**/
inline function trimLeft(s:Array<Int>, cutset:String):Array<Int> throw "not implemented";
/**
    // TrimRight returns a subslice of s by slicing off all trailing
    // UTF-8-encoded code points that are contained in cutset.
**/
inline function trimRight(s:Array<Int>, cutset:String):Array<Int> throw "not implemented";
/**
    // TrimSpace returns a subslice of s by slicing off all leading and
    // trailing white space, as defined by Unicode.
**/
inline function trimSpace(s:Array<Int>):Array<Int> throw "not implemented";
/**
    // Runes interprets s as a sequence of UTF-8-encoded code points.
    // It returns a slice of runes (Unicode code points) equivalent to s.
**/
inline function runes(s:Array<Int>):Array<Int> throw "not implemented";
/**
    // Replace returns a copy of the slice s with the first n
    // non-overlapping instances of old replaced by new.
    // If old is empty, it matches at the beginning of the slice
    // and after each UTF-8 sequence, yielding up to k+1 replacements
    // for a k-rune slice.
    // If n < 0, there is no limit on the number of replacements.
**/
inline function replace(s:Array<Int>, old:Array<Int>, _new:Array<Int>, n:Int):Array<Int> throw "not implemented";
/**
    // ReplaceAll returns a copy of the slice s with all
    // non-overlapping instances of old replaced by new.
    // If old is empty, it matches at the beginning of the slice
    // and after each UTF-8 sequence, yielding up to k+1 replacements
    // for a k-rune slice.
**/
inline function replaceAll(s:Array<Int>, old:Array<Int>, _new:Array<Int>):Array<Int> throw "not implemented";
/**
    // EqualFold reports whether s and t, interpreted as UTF-8 strings,
    // are equal under simple Unicode case-folding, which is a more general
    // form of case-insensitivity.
**/
inline function equalFold(s:Array<Int>, t:Array<Int>):Bool throw "not implemented";
/**
    // Index returns the index of the first instance of sep in s, or -1 if sep is not present in s.
**/
inline function index(s:Array<Int>, sep:Array<Int>):Int throw "not implemented";
/**
    // Cut slices s around the first instance of sep,
    // returning the text before and after sep.
    // The found result reports whether sep appears in s.
    // If sep does not appear in s, cut returns s, nil, false.
    //
    // Cut returns slices of the original slice s, not copies.
**/
inline function cut(s:Array<Int>, sep:Array<Int>):stdgo.Tuple.Tuple3<Array<Int>, Array<Int>, Bool> throw "not implemented";
/**
    // Clone returns a copy of b[:len(b)].
    // The result may have additional unused capacity.
    // Clone(nil) returns nil.
**/
inline function clone(b:Array<Int>):Array<Int> throw "not implemented";
/**
    // CutPrefix returns s without the provided leading prefix byte slice
    // and reports whether it found the prefix.
    // If s doesn't start with prefix, CutPrefix returns s, false.
    // If prefix is the empty byte slice, CutPrefix returns s, true.
    //
    // CutPrefix returns slices of the original slice s, not copies.
**/
inline function cutPrefix(s:Array<Int>, prefix:Array<Int>):stdgo.Tuple<Array<Int>, Bool> throw "not implemented";
/**
    // CutSuffix returns s without the provided ending suffix byte slice
    // and reports whether it found the suffix.
    // If s doesn't end with suffix, CutSuffix returns s, false.
    // If suffix is the empty byte slice, CutSuffix returns s, true.
    //
    // CutSuffix returns slices of the original slice s, not copies.
**/
inline function cutSuffix(s:Array<Int>, suffix:Array<Int>):stdgo.Tuple<Array<Int>, Bool> throw "not implemented";
/**
    // NewReader returns a new Reader reading from b.
**/
inline function newReader(b:Array<Int>):Reader throw "not implemented";
@:invalid typedef Buffer_asInterface = Dynamic;
@:invalid typedef Buffer_static_extension = Dynamic;
@:invalid typedef Reader_asInterface = Dynamic;
@:invalid typedef Reader_static_extension = Dynamic;
@:invalid typedef T_asciiSet_asInterface = Dynamic;
@:invalid typedef T_asciiSet_static_extension = Dynamic;
